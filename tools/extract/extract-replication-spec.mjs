#!/usr/bin/env node
/**
 * Phase 3 Extractor: Replication Schema & Netcode Strings/Constants
 *
 * Scans:
 *   1. All decoded FETM & REFM packages for replication entities (`faReplicateNode`,
 *      `ReplicatingProp*`, `Online*`, `CFMode_Online`, `CFMode_PCOnline`)
 *   2. `Rotastic.exe` binary regions around the Quazal/NetZ or BlitzTech networking
 *      and replication subsystems (`0x006A0000..0x006D5000` and `0x007B8000..0x00805000`)
 *      to extract all protocol strings, packet types, and state machine transitions.
 *
 * Outputs `reference/decompiled/netcode-replication-spec.json`.
 */

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = path.resolve(__dirname, "../..");
const EXE_PATH = path.join(REPO_ROOT, "reference/game-files/Rotastic.exe");
const FETM_DIR = path.join(REPO_ROOT, "reference/decompiled/fetm");
const REFM_DIR = path.join(REPO_ROOT, "reference/decompiled/refm");
const OUT_PATH = path.join(REPO_ROOT, "reference/decompiled/netcode-replication-spec.json");

function loadPeSections(buf) {
  const e_lfanew = buf.readUInt32LE(0x3c);
  const numSec = buf.readUInt16LE(e_lfanew + 6);
  const optSize = buf.readUInt16LE(e_lfanew + 20);
  const secOff = e_lfanew + 24 + optSize;
  const sections = [];
  for (let i = 0; i < numSec; i++) {
    const off = secOff + i * 40;
    const name = buf.toString("ascii", off, off + 8).replace(/\0+$/, "");
    const vsize = buf.readUInt32LE(off + 8);
    const vaddr = buf.readUInt32LE(off + 12);
    const rawSize = buf.readUInt32LE(off + 16);
    const rawPtr = buf.readUInt32LE(off + 20);
    sections.push({ name, va: 0x00400000 + vaddr, vsize, rawPtr, rawSize });
  }
  return sections;
}

function vaToOff(va, sections) {
  for (const s of sections) {
    if (va >= s.va && va < s.va + Math.max(s.vsize, s.rawSize)) {
      return s.rawPtr + (va - s.va);
    }
  }
  return null;
}

function readCStringAtVa(buf, va, sections) {
  const off = vaToOff(va, sections);
  if (off === null || off < 0 || off >= buf.length) return null;
  let end = off;
  while (end < Math.min(buf.length, off + 160) && buf[end] >= 0x20 && buf[end] <= 0x7e) {
    end++;
  }
  if (end - off >= 3 && end < buf.length && buf[end] === 0) {
    return buf.toString("ascii", off, end);
  }
  return null;
}

function scanCodeRangeForStringRefs(buf, sections, startVa, endVa) {
  const startOff = vaToOff(startVa, sections);
  const endOff = vaToOff(endVa, sections);
  const refs = [];
  const seen = new Set();
  for (let off = startOff; off + 5 <= endOff; off++) {
    const b0 = buf[off];
    // push imm32 (0x68) or mov reg, imm32 (0xB8..0xBF) or mov [mem], imm32 (0xC7)
    if (b0 === 0x68 || (b0 >= 0xb8 && b0 <= 0xbf)) {
      const imm = buf.readUInt32LE(off + 1);
      if (imm >= 0x008f6000 && imm < 0x009c0000) {
        const s = readCStringAtVa(buf, imm, sections);
        if (s) {
          const codeVa = 0x00400000 + (off - sections[0].rawPtr) + (sections[0].va - 0x00400000);
          const key = `${codeVa.toString(16)}:${s}`;
          if (!seen.has(key)) {
            seen.add(key);
            refs.push({
              codeVA: "0x" + codeVa.toString(16).toUpperCase().padStart(8, "0"),
              stringVA: "0x" + imm.toString(16).toUpperCase().padStart(8, "0"),
              text: s,
            });
          }
        }
      }
    }
  }
  return refs;
}

function main() {
  const exeBuf = fs.readFileSync(EXE_PATH);
  const sections = loadPeSections(exeBuf);

  // 1. Scan code ranges for strings in netcode, Steamworks, Quazal/PRUDP/FEngine replication
  const steamNetStrings = scanCodeRangeForStringRefs(exeBuf, sections, 0x006a0000, 0x006d5000);
  const fengineNetStrings = scanCodeRangeForStringRefs(exeBuf, sections, 0x007b5000, 0x00805000);
  const gameOnlineStrings = scanCodeRangeForStringRefs(exeBuf, sections, 0x0052c000, 0x00555000);

  // 2. Scan FETM files (`w_multi_dm_lvl01_fetm.json`, `w_multi_coll_lvl01_fetm.json`, `w_multi_menu_fetm.json`)
  // for `faReplicateNode`, `ReplicatingProp*`, `Online*`, `CFMode_*`
  const targetFetms = [
    "w_multi_dm_lvl01_fetm.json",
    "w_multi_coll_lvl01_fetm.json",
    "w_multi_menu_fetm.json",
    "w_main_menu_fetm.json",
  ];

  const fetmReplicationNodes = {};
  for (const fn of targetFetms) {
    const p = path.join(FETM_DIR, fn);
    if (!fs.existsSync(p)) continue;
    const data = JSON.parse(fs.readFileSync(p, "utf8"));
    const nodes = data.nodes || [];
    const matches = [];
    for (let i = 0; i < nodes.length; i++) {
      const t = nodes[i].text;
      if (
        t.includes("Replicat") ||
        t.includes("Online") ||
        t.includes("Lobby") ||
        t.includes("Session") ||
        t.includes("Steam") ||
        t.includes("Network")
      ) {
        const context = nodes.slice(Math.max(0, i - 2), Math.min(nodes.length, i + 6)).map((n) => ({
          offset: n.offset,
          text: n.text,
          floats: n.taggedFloats,
        }));
        matches.push({
          nodeIndex: i,
          offset: nodes[i].offset,
          text: t,
          context,
        });
      }
    }
    fetmReplicationNodes[fn] = {
      totalMatches: matches.length,
      matches: matches.slice(0, 120),
    };
  }

  // 3. Scan REFM files for any `replicat*`, `online*`, `pc_online*`, `mode*` schemas
  const refmSchemas = {};
  const refmFiles = ["w_multi_dm_lvl01_refm.json", "w_multi_menu_refm.json", "w_main_menu_refm.json"];
  for (const rf of refmFiles) {
    const p = path.join(REFM_DIR, rf);
    if (!fs.existsSync(p)) continue;
    const data = JSON.parse(fs.readFileSync(p, "utf8"));
    for (const e of data.entries || []) {
      if (
        e.name.includes("replicat") ||
        e.name.includes("online") ||
        e.name.includes("lobby") ||
        e.name.includes("network") ||
        e.name.includes("session")
      ) {
        refmSchemas[e.name] = e;
      }
    }
  }

  const out = {
    generatedAt: new Date().toISOString(),
    counts: {
      steamNetStrings: steamNetStrings.length,
      fengineNetStrings: fengineNetStrings.length,
      gameOnlineStrings: gameOnlineStrings.length,
      refmSchemas: Object.keys(refmSchemas).length,
    },
    refmSchemas,
    fetmReplicationNodes,
    steamNetStrings,
    fengineNetStrings,
    gameOnlineStrings,
  };

  fs.writeFileSync(OUT_PATH, JSON.stringify(out, null, 2), "utf8");
  console.log(`Wrote ${OUT_PATH}`);
  console.log(`  - steamNetStrings (0x006A0000..0x006D5000): ${steamNetStrings.length}`);
  console.log(`  - fengineNetStrings (0x007B5000..0x00805000): ${fengineNetStrings.length}`);
  console.log(`  - gameOnlineStrings (0x0052C000..0x00555000): ${gameOnlineStrings.length}`);
  console.log(`  - refmSchemas: ${Object.keys(refmSchemas).length}`);
  for (const [k, v] of Object.entries(fetmReplicationNodes)) {
    console.log(`  - ${k}: ${v.totalMatches} replication/online nodes`);
  }
}

main();
