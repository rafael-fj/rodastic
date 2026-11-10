#!/usr/bin/env node
/**
 * Fase 1 — Extrator de Mapa de Código e Símbolos de Rotastic.exe (BlitzTech x86)
 *
 * Extrai estaticamente de reference/game-files/Rotastic.exe:
 * 1. Tabela de Importação PE (IAT VAs para steam_api.dll, WS2_32.dll, d3d9.dll, etc.)
 *    e todas as referências cruzadas (call dword ptr [IAT] / mov reg, dword ptr [IAT]) em .text.
 * 2. Todas as classes C++ registradas na BlitzTech (CRotastic*, CF*, C*, CAIEval*),
 *    incluindo sizeof(Class), FactoryVA, InitReflectionVA, ConstructorVA, VTableVA e métodos virtuais.
 * 3. Todas as Flow Actions (fa*) e Flow Functions (ff*) registradas nas tabelas de despacho (.data / .text).
 *
 * Saídas:
 * - reference/decompiled/rotastic-code-map.json
 * - docs/02-code-map.md
 */

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = path.resolve(__dirname, "../..");
const EXE_PATH = path.join(REPO_ROOT, "reference/game-files/Rotastic.exe");
const OUT_JSON = path.join(REPO_ROOT, "reference/decompiled/rotastic-code-map.json");
const OUT_DOC = path.join(REPO_ROOT, "docs/02-code-map.md");

const buf = fs.readFileSync(EXE_PATH);
const peOffset = buf.readInt32LE(0x3c);
const numSections = buf.readUInt16LE(peOffset + 6);
const optHeaderSize = buf.readUInt16LE(peOffset + 20);
const imageBase = buf.readUInt32LE(peOffset + 24 + 28);
const secTableOff = peOffset + 24 + optHeaderSize;

const sections = [];
for (let i = 0; i < numSections; i++) {
  const pos = secTableOff + i * 40;
  const name = buf.toString("ascii", pos, pos + 8).replace(/\0+$/, "");
  const vSize = buf.readUInt32LE(pos + 8);
  const vAddr = buf.readUInt32LE(pos + 12);
  const rawSize = buf.readUInt32LE(pos + 16);
  const rawPtr = buf.readUInt32LE(pos + 20);
  sections.push({ name, vAddr, vSize, rawPtr, rawSize });
}

function rvaToOffset(rva) {
  for (const s of sections) {
    const maxLen = Math.max(s.vSize, s.rawSize);
    if (rva >= s.vAddr && rva < s.vAddr + maxLen) {
      const off = s.rawPtr + (rva - s.vAddr);
      return off < buf.length ? off : -1;
    }
  }
  return -1;
}

function vaToOffset(va) {
  if (va < imageBase) return -1;
  return rvaToOffset(va - imageBase);
}

function offsetToVa(offset) {
  for (const s of sections) {
    if (offset >= s.rawPtr && offset < s.rawPtr + s.rawSize) {
      return (imageBase + s.vAddr + (offset - s.rawPtr)) >>> 0;
    }
  }
  return 0;
}

function readAsciiZ(offset, maxLen = 256) {
  if (offset < 0 || offset >= buf.length) return "";
  let end = offset;
  while (end < buf.length && end - offset < maxLen && buf[end] !== 0) {
    if (buf[end] < 0x20 || buf[end] > 0x7e) return "";
    end++;
  }
  return buf.toString("ascii", offset, end);
}

function toHex(val) {
  return "0x" + (val >>> 0).toString(16).toUpperCase().padStart(8, "0");
}

const textSec = sections.find((s) => s.name === ".text");
const rdataSec = sections.find((s) => s.name === ".rdata");
const dataSec = sections.find((s) => s.name === ".data");

// 1. Parse PE Imports & Find Call Sites in .text
const importRva = buf.readUInt32LE(peOffset + 24 + 104);
let importOff = rvaToOffset(importRva);
const imports = [];
const iatMap = new Map();

while (importOff > 0 && importOff + 20 <= buf.length) {
  const iltRva = buf.readUInt32LE(importOff);
  const nameRva = buf.readUInt32LE(importOff + 12);
  const iatRva = buf.readUInt32LE(importOff + 16);
  if (nameRva === 0) break;

  const dllName = readAsciiZ(rvaToOffset(nameRva));
  let thunkRva = iltRva !== 0 ? iltRva : iatRva;
  let thunkOff = rvaToOffset(thunkRva);
  let iatSlotVa = (imageBase + iatRva) >>> 0;
  const funcs = [];

  while (thunkOff > 0 && thunkOff + 4 <= buf.length) {
    const val = buf.readUInt32LE(thunkOff);
    if (val === 0) break;
    let fnName;
    if ((val & 0x80000000) !== 0) {
      fnName = `Ordinal#${val & 0xffff}`;
    } else {
      fnName = readAsciiZ(rvaToOffset(val) + 2);
    }
    const entry = {
      name: fnName,
      iatVA: toHex(iatSlotVa),
      callSites: [],
    };
    funcs.push(entry);
    iatMap.set(iatSlotVa, { dll: dllName, entry });
    thunkOff += 4;
    iatSlotVa += 4;
  }

  imports.push({ dll: dllName, count: funcs.length, functions: funcs });
  importOff += 20;
}

// Scan .text for indirect calls/jumps/loads referencing IAT entries:
// FF 15 <iatVA> (call dword ptr [iatVA])
// FF 25 <iatVA> (jmp dword ptr [iatVA])
// 8B 35 / 8B 1D / 8B 2D / 8B 0D / 8B 15 / A1 <iatVA> (mov reg, dword ptr [iatVA])
for (let pos = textSec.rawPtr; pos < textSec.rawPtr + textSec.rawSize - 6; pos++) {
  const b0 = buf[pos];
  const b1 = buf[pos + 1];
  let iatCandidate = 0;
  let kind = "";
  if (b0 === 0xff && (b1 === 0x15 || b1 === 0x25)) {
    iatCandidate = buf.readUInt32LE(pos + 2);
    kind = b1 === 0x15 ? "call" : "jmp";
  } else if (b0 === 0x8b && (b1 === 0x0d || b1 === 0x15 || b1 === 0x1d || b1 === 0x2d || b1 === 0x35 || b1 === 0x3d)) {
    iatCandidate = buf.readUInt32LE(pos + 2);
    kind = "mov_reg";
  } else if (b0 === 0xa1) {
    iatCandidate = buf.readUInt32LE(pos + 1);
    kind = "mov_eax";
  }
  if (iatCandidate && iatMap.has(iatCandidate)) {
    iatMap.get(iatCandidate).entry.callSites.push({
      va: toHex(offsetToVa(pos)),
      kind,
    });
  }
}

// 2. Extract Registered BlitzTech C++ Classes (CRotastic*, CF*, C*, CAIEval*)
const classes = [];
const seenClasses = new Set();

for (let i = textSec.rawPtr; i < textSec.rawPtr + textSec.rawSize - 32; i++) {
  if (
    buf[i] === 0x6a &&
    buf[i + 1] === 0x01 &&
    buf[i + 2] === 0x6a &&
    buf[i + 3] === 0x01 &&
    buf[i + 4] === 0x6a &&
    buf[i + 6] === 0x68 &&
    buf[i + 11] === 0xe8
  ) {
    const align = buf[i + 5];
    const nameVa = buf.readUInt32LE(i + 7);
    const className = readAsciiZ(vaToOffset(nameVa));
    if (!className || !/^[A-Za-z0-9_:]+$/.test(className) || seenClasses.has(className)) {
      continue;
    }
    seenClasses.add(className);

    let sizeBytes = 0;
    let initRefVa = 0;
    let factoryVa = 0;
    if (buf[i - 2] === 0x6a) {
      sizeBytes = buf[i - 1];
      initRefVa = buf.readUInt32LE(i - 6);
      factoryVa = buf.readUInt32LE(i - 11);
    } else if (buf[i - 5] === 0x68) {
      sizeBytes = buf.readUInt32LE(i - 4);
      initRefVa = buf.readUInt32LE(i - 9);
      factoryVa = buf.readUInt32LE(i - 14);
    }

    let ctorVa = 0;
    let vtableVa = 0;
    const vtableMethods = [];

    const factoryOff = vaToOffset(factoryVa);
    if (factoryOff > 0) {
      for (let k = 0; k < 96; k++) {
        if (buf[factoryOff + k] === 0x8b && buf[factoryOff + k + 1] === 0xc8 && buf[factoryOff + k + 2] === 0xe8) {
          const rel = buf.readInt32LE(factoryOff + k + 3);
          const callVa = factoryVa + k + 2;
          ctorVa = (callVa + 5 + rel) >>> 0;
          break;
        }
      }
    }

    if (ctorVa > 0) {
      const ctorOff = vaToOffset(ctorVa);
      if (ctorOff > 0) {
        for (let k = 0; k < 140; k++) {
          if (buf[ctorOff + k] === 0xc7 && [0x00, 0x01, 0x02, 0x03, 0x06, 0x07].includes(buf[ctorOff + k + 1])) {
            const cand = buf.readUInt32LE(ctorOff + k + 2);
            if (cand >= imageBase + rdataSec.vAddr && cand < imageBase + rdataSec.vAddr + rdataSec.rawSize) {
              vtableVa = cand;
            }
          }
        }
      }
    }

    if (vtableVa > 0) {
      const vtOff = vaToOffset(vtableVa);
      if (vtOff > 0) {
        for (let m = 0; m < 64; m++) {
          const fnPtr = buf.readUInt32LE(vtOff + m * 4);
          if (fnPtr >= imageBase + textSec.vAddr && fnPtr < imageBase + textSec.vAddr + textSec.rawSize) {
            vtableMethods.push(toHex(fnPtr));
          } else {
            break;
          }
        }
      }
    }

    classes.push({
      className,
      category: categorizeClass(className),
      sizeBytes,
      align,
      registerSiteVA: toHex(offsetToVa(i)),
      factoryVA: toHex(factoryVa),
      initReflectionVA: toHex(initRefVa),
      constructorVA: ctorVa ? toHex(ctorVa) : null,
      vtableVA: vtableVa ? toHex(vtableVa) : null,
      vtableMethodCount: vtableMethods.length,
      vtableMethods,
    });
  }
}

function categorizeClass(name) {
  if (/Rope|AttachPoint/.test(name)) return "Rope & Swinging Mechanics";
  if (/PhysicPlayer|Player|Spawn|Trail/.test(name)) return "Player & Spawn";
  if (/Multi|DeathMatch|Collecte|CTF|MultiBall|EndMulti/.test(name)) return "Multiplayer Modes & Match";
  if (/Online|Lobby|Leaderboard/.test(name)) return "Online, Lobby & Steam";
  if (/Gravity|Wall|Breakable|Switch|Canon|Projectile|Tueur|WarpZone|Arkanoid/.test(name))
    return "Physics, Hazards & Arena Objects";
  if (/PickUp/.test(name)) return "Pickups & Scoring Items";
  if (/AI|Fuzzy/.test(name)) return "AI & Bots";
  if (/Sound|Audio|Music|Speaker|Jingle/.test(name)) return "Audio & Music";
  if (/Menu|Hud|Gui|Banner|Overlay|Camera|Screen|Instruction/.test(name)) return "UI, HUD & Camera";
  return "Core Engine & Misc";
}

// 3. Extract Flow Actions (fa*) and Flow Functions (ff*) from .data dispatch tables
const flowHandlers = [];
const seenFlow = new Set();

for (let pos = dataSec.rawPtr; pos < dataSec.rawPtr + dataSec.rawSize - 16; pos += 4) {
  const fnExec = buf.readUInt32LE(pos);
  const hash = buf.readUInt32LE(pos + 4);
  const fnCreate = buf.readUInt32LE(pos + 8);
  const strVa = buf.readUInt32LE(pos + 12);

  if (
    fnExec >= imageBase + textSec.vAddr &&
    fnExec < imageBase + textSec.vAddr + textSec.rawSize &&
    strVa >= imageBase + rdataSec.vAddr &&
    strVa < imageBase + rdataSec.vAddr + rdataSec.rawSize
  ) {
    const name = readAsciiZ(vaToOffset(strVa), 100);
    if (/^(fa|ff)[A-Z][A-Za-z0-9_]+$/.test(name) && !seenFlow.has(name)) {
      seenFlow.add(name);
      flowHandlers.push({
        name,
        type: name.startsWith("fa") ? "FlowAction" : "FlowFunction",
        hash: toHex(hash),
        executeVA: toHex(fnExec),
        factoryVA: toHex(fnCreate),
        tableEntryVA: toHex(offsetToVa(pos)),
      });
    }
  }
}

// Also scan .text for "B8 <strVA> C3" (GetName() virtual getters of Rotastic-specific fa*/ff* classes)
for (let pos = textSec.rawPtr; pos < textSec.rawPtr + textSec.rawSize - 6; pos++) {
  if (buf[pos] === 0xb8 && buf[pos + 5] === 0xc3) {
    const strVa = buf.readUInt32LE(pos + 1);
    if (strVa >= imageBase + rdataSec.vAddr && strVa < imageBase + rdataSec.vAddr + rdataSec.rawSize) {
      const name = readAsciiZ(vaToOffset(strVa), 100);
      if (/^(fa|ff)[A-Z][A-Za-z0-9_]+$/.test(name) && !seenFlow.has(name)) {
        seenFlow.add(name);
        // Find its VTable in .rdata that references this GetName() function
        const fnVa = offsetToVa(pos);
        let vtVa = null;
        let execVa = null;
        for (let r = rdataSec.rawPtr; r < rdataSec.rawPtr + rdataSec.rawSize - 8; r += 4) {
          if (buf.readUInt32LE(r) === fnVa) {
            vtVa = toHex(offsetToVa(r - 4));
            execVa = toHex(buf.readUInt32LE(r + 4));
            break;
          }
        }
        flowHandlers.push({
          name,
          type: name.startsWith("fa") ? "FlowAction" : "FlowFunction",
          hash: null,
          getNameVA: toHex(fnVa),
          vtableVA: vtVa,
          executeVA: execVa,
        });
      }
    }
  }
}

flowHandlers.sort((a, b) => a.name.localeCompare(b.name));
classes.sort((a, b) => a.className.localeCompare(b.className));

const codeMap = {
  binary: "Rotastic.exe",
  imageBase: toHex(imageBase),
  compileTimestampUTC: new Date(buf.readUInt32LE(peOffset + 8) * 1000).toISOString(),
  summary: {
    importedDlls: imports.length,
    registeredClasses: classes.length,
    flowActionsAndFunctions: flowHandlers.length,
  },
  imports,
  classes,
  flowHandlers,
};

fs.mkdirSync(path.dirname(OUT_JSON), { recursive: true });
fs.writeFileSync(OUT_JSON, JSON.stringify(codeMap, null, 2), "utf8");

// Generate docs/02-code-map.md
const steamImp = imports.find((d) => d.dll.toLowerCase() === "steam_api.dll");
const ws2Imp = imports.find((d) => d.dll.toLowerCase() === "ws2_32.dll");

let md = `# Fase 1 — Mapa de Código e Arquitetura de Classes (\`02-code-map.md\`)\n\n`;
md += `> Gerado automaticamente por [\`tools/extract/extract-code-map.mjs\`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/tools/extract/extract-code-map.mjs) a partir de \`reference/game-files/Rotastic.exe\`.\n`;
md += `> Dump completo em JSON disponível em [\`reference/decompiled/rotastic-code-map.json\`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/reference/decompiled/rotastic-code-map.json).\n\n`;

md += `## 1. Visão Geral dos Símbolos Extraídos\n\n`;
md += `- **Binário:** \`Rotastic.exe\` (\`ImageBase = ${toHex(imageBase)}\`, compilado em \`${codeMap.compileTimestampUTC}\`)\n`;
md += `- **Classes C++ Registradas Mapeadas:** \`${classes.length}\` classes (com \`sizeof\`, \`ConstructorVA\`, \`FactoryVA\` e \`VTableVA\`)\n`;
md += `- **Flow Actions (\`fa*\`) e Flow Functions (\`ff*\`) Mapeadas:** \`${flowHandlers.length}\` rotinas de lógica de estado/eventos\n`;
md += `- **DLLs Importadas:** \`${imports.length}\` (\`steam_api.dll\` com ${steamImp?.count ?? 0} imports, \`WS2_32.dll\` com ${ws2Imp?.count ?? 0} imports)\n\n`;

md += `---\n\n## 2. Mapa de Chamadas de Rede e Steamworks (\`steam_api.dll\` & \`WS2_32.dll\`)\n\n`;
md += `| Função (\`steam_api.dll\`) | Slot IAT | Total Call Sites | Endereços VA em \`.text\` |\n`;
md += `| :--- | :--- | :---: | :--- |\n`;
for (const fn of steamImp?.functions ?? []) {
  const sites = fn.callSites.map((c) => `\`${c.va}\` (${c.kind})`).join(", ") || "*(via tabela)*";
  md += `| \`${fn.name}\` | \`${fn.iatVA}\` | ${fn.callSites.length} | ${sites} |\n`;
}

md += `\n### Call Sites de Winsock2 (\`WS2_32.dll\`)\n\n`;
md += `| Ordinal / Função | Slot IAT | Call Sites em \`.text\` |\n`;
md += `| :--- | :--- | :--- |\n`;
for (const fn of ws2Imp?.functions ?? []) {
  if (fn.callSites.length > 0) {
    const sites = fn.callSites.map((c) => `\`${c.va}\``).join(", ");
    md += `| \`${fn.name}\` | \`${fn.iatVA}\` | ${sites} |\n`;
  }
}

md += `\n---\n\n## 3. Mapa de Classes C++ por Subsistema\n\n`;
const categories = [
  "Player & Spawn",
  "Rope & Swinging Mechanics",
  "Multiplayer Modes & Match",
  "Physics, Hazards & Arena Objects",
  "Pickups & Scoring Items",
  "AI & Bots",
  "UI, HUD & Camera",
  "Audio & Music",
  "Core Engine & Misc",
];

for (const cat of categories) {
  const subset = classes.filter((c) => c.category === cat);
  if (subset.length === 0) continue;
  md += `### 3.${categories.indexOf(cat) + 1}. ${cat} (${subset.length} classes)\n\n`;
  md += `| Classe C++ | \`sizeof\` (bytes) | \`ConstructorVA\` | \`VTableVA\` | Métodos Virtuais | \`InitReflectionVA\` |\n`;
  md += `| :--- | :---: | :---: | :---: | :---: | :---: |\n`;
  for (const c of subset) {
    md += `| \`${c.className}\` | \`${c.sizeBytes}\` | \`${c.constructorVA ?? "-"}\` | \`${c.vtableVA ?? "-"}\` | ${c.vtableMethodCount} | \`${c.initReflectionVA}\` |\n`;
  }
  md += `\n`;
}

md += `---\n\n## 4. Flow Actions (\`fa*\`) e Flow Functions (\`ff*\`) Relevantes ao Gameplay, Física e Rede\n\n`;
md += `| Nome | Tipo | Hash BlitzTech | \`ExecuteVA\` / \`VTableVA\` | \`FactoryVA\` / \`GetNameVA\` |\n`;
md += `| :--- | :--- | :---: | :---: | :---: |\n`;
const keyFlows = flowHandlers.filter((f) =>
  /Rotastic|Online|Replicate|Gravity|Wall|Velocity|Angular|Friction|Player|PickUp|Spawn|GameManager|AttachPoint|Rope|Switch|Breakable|Canon|LanceProjectile|WarpZone/i.test(
    f.name
  )
);
for (const f of keyFlows) {
  md += `| \`${f.name}\` | ${f.type} | \`${f.hash ?? "-"}\` | \`${f.executeVA ?? f.vtableVA ?? "-"}\` | \`${f.factoryVA ?? f.getNameVA ?? "-"}\` |\n`;
}

fs.writeFileSync(OUT_DOC, md, "utf8");
console.log(
  `[extract-code-map] Sucesso! ${classes.length} classes e ${flowHandlers.length} flow handlers salvos em:\n - ${OUT_JSON}\n - ${OUT_DOC}`
);
