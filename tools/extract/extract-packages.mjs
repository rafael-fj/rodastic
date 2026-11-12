#!/usr/bin/env node
/**
 * Fase 1 — Extrator e Desempacotador de Pacotes BlitzTech (.pc, _fetm.pc, _refm.pc)
 *
 * Funcionalidades:
 * 1. Lê o índice de todos os pacotes em reference/game-files/packages/ (+ w_global.pc da Steam se disponível).
 * 2. Decodifica todos os blocos REFD (*_refm.pc) em reference/decompiled/refm/*.json.
 * 3. Decodifica os mapas de entidades (*_fetm.pc) das 19 arenas multiplayer e pacotes core em reference/decompiled/fetm/*.json.
 * 4. Extrai os 172 efeitos sonoros (SAMP) de gameplay/multiplayer de w_global.pc convertendo-os para RIFF WAVE (.wav) em assets-original/audio/sfx/.
 * 5. Extrai as texturas (TEXR) de personagens, cordas, joias, HUD, FX e arenas multiplayer convertendo-as para DirectDraw Surface (.dds) em assets-original/textures/.
 * 6. Gera reference/decompiled/packages-catalog.json e docs/01-assets-catalog.md.
 */

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = path.resolve(__dirname, "../..");
const PKG_DIR = path.join(REPO_ROOT, "reference/game-files/packages");
const STEAM_GLOBAL_PC = "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Rotastic\\packages\\w_global.pc";

const OUT_DECOMPILED = path.join(REPO_ROOT, "reference/decompiled");
const OUT_REFM_DIR = path.join(OUT_DECOMPILED, "refm");
const OUT_FETM_DIR = path.join(OUT_DECOMPILED, "fetm");
const OUT_AUDIO_DIR = path.join(REPO_ROOT, "assets-original/audio/sfx");
const OUT_TEX_GLOBAL_DIR = path.join(REPO_ROOT, "assets-original/textures/global");
const OUT_TEX_MULTI_DIR = path.join(REPO_ROOT, "assets-original/textures/multiplayer");
const OUT_CATALOG_JSON = path.join(OUT_DECOMPILED, "packages-catalog.json");
const OUT_CATALOG_DOC = path.join(REPO_ROOT, "docs/01-assets-catalog.md");

for (const d of [OUT_REFM_DIR, OUT_FETM_DIR, OUT_AUDIO_DIR, OUT_TEX_GLOBAL_DIR, OUT_TEX_MULTI_DIR]) {
  fs.mkdirSync(d, { recursive: true });
}

function toHex(val) {
  return "0x" + (val >>> 0).toString(16).toUpperCase().padStart(8, "0");
}

function parsePackageIndex(filePath) {
  const fd = fs.openSync(filePath, "r");
  const stat = fs.fstatSync(fd);
  if (stat.size < 0x190) {
    fs.closeSync(fd);
    return { fileName: path.basename(filePath), sizeBytes: stat.size, entries: [] };
  }

  const hdr = Buffer.alloc(0x190);
  fs.readSync(fd, hdr, 0, 0x190, 0);

  const packageCrc = hdr.readUInt32LE(0x00);
  const sectorAlign = hdr.readUInt32LE(0x04);
  const entryCount = hdr.readUInt32LE(0x0c);
  const dataStartSector = hdr.readUInt32LE(0x18);
  const strTableLen = hdr.readUInt32LE(0x1c);
  const payloadSize = hdr.readUInt32LE(0x20);
  const dirSize = hdr.readUInt32LE(0x30);

  if (entryCount === 0 || dirSize === 0 || 0x190 + dirSize + strTableLen > stat.size) {
    fs.closeSync(fd);
    return {
      fileName: path.basename(filePath),
      sizeBytes: stat.size,
      packageCrc: toHex(packageCrc),
      entryCount: 0,
      entries: [],
    };
  }

  const dirBuf = Buffer.alloc(dirSize);
  fs.readSync(fd, dirBuf, 0, dirSize, 0x190);
  const strBuf = Buffer.alloc(strTableLen);
  fs.readSync(fd, strBuf, 0, strTableLen, 0x190 + dirSize);
  fs.closeSync(fd);

  const entries = [];
  for (let i = 0; i < entryCount; i++) {
    const off = i * 32;
    const sectorOff = dirBuf.readUInt32LE(off + 0);
    const hash = dirBuf.readUInt32LE(off + 4);
    const size = dirBuf.readUInt32LE(off + 8);
    const nameOff = dirBuf.readUInt32LE(off + 12);
    const fcc0 = dirBuf[off + 16];
    const fourCC =
      fcc0 >= 32 && fcc0 <= 126 ? dirBuf.toString("ascii", off + 16, off + 20) : "FETM";
    const typeHash = dirBuf.readUInt32LE(off + 20);

    let endStr = nameOff;
    while (endStr < strTableLen && strBuf[endStr] !== 0) endStr++;
    const name = endStr > nameOff ? strBuf.toString("ascii", nameOff, endStr) : `entry_${i}`;

    entries.push({
      index: i,
      fourCC,
      name,
      fileOffset: sectorOff * 16,
      sizeBytes: size,
      hash: toHex(hash),
      typeHash: toHex(typeHash),
    });
  }

  return {
    fileName: path.basename(filePath),
    sizeBytes: stat.size,
    packageCrc: toHex(packageCrc),
    sectorAlign,
    dataStartSector,
    payloadSize,
    entryCount,
    entries,
  };
}

function decodeRefdChunk(chunkBuf, entry) {
  if (chunkBuf.length < 0x58) {
    return { name: entry.name, hash: entry.hash, sizeBytes: entry.sizeBytes, raw: true };
  }
  const versionOrDepth = chunkBuf.readUInt32LE(0x30);
  const instanceHash = toHex(chunkBuf.readUInt32LE(0x34));
  const magic = toHex(chunkBuf.readUInt32LE(0x38));
  const classTypeHash = toHex(chunkBuf.readUInt32LE(0x3c));
  const propCount = chunkBuf.readUInt32LE(0x40);
  const propTableOffset = chunkBuf.readUInt32LE(0x44);
  const valuePoolOffset = chunkBuf.readUInt32LE(0x48);

  const properties = [];
  for (let i = 0; i < propCount; i++) {
    const pOff = propTableOffset + i * 20;
    if (pOff + 20 > chunkBuf.length) break;
    const propHash = toHex(chunkBuf.readUInt32LE(pOff + 0));
    const parentIdx = chunkBuf.readInt16LE(pOff + 4);
    const propType = chunkBuf.readUInt16LE(pOff + 6);
    const countOrMode = chunkBuf.readUInt32LE(pOff + 8);
    const flags = chunkBuf.readUInt32LE(pOff + 12);
    const poolRelOffset = chunkBuf.readUInt32LE(pOff + 16);
    properties.push({
      index: i,
      propHash,
      propType,
      parentIdx,
      countOrMode,
      flags: toHex(flags),
      poolRelOffset,
    });
  }

  // Extract readable ASCII strings and candidate float32 values from valuePool
  const poolBuf = valuePoolOffset < chunkBuf.length ? chunkBuf.subarray(valuePoolOffset) : Buffer.alloc(0);
  const strings = [];
  const strMatches = poolBuf.toString("latin1").match(/[\x20-\x7E]{3,120}/g) || [];
  for (const s of strMatches) {
    if (!strings.includes(s)) strings.push(s);
  }

  const floats = [];
  for (let off = 0; off + 4 <= poolBuf.length; off += 4) {
    const u32 = poolBuf.readUInt32LE(off);
    if (u32 === 0) continue;
    const f = poolBuf.readFloatLE(off);
    if (Number.isFinite(f) && Math.abs(f) >= 0.001 && Math.abs(f) <= 100000 && Math.abs(f) === Math.round(Math.abs(f) * 10000) / 10000) {
      floats.push({ poolOffset: off, floatValue: Number(f.toFixed(5)), hex: toHex(u32) });
    }
  }

  return {
    name: entry.name,
    hash: entry.hash,
    sizeBytes: entry.sizeBytes,
    versionOrDepth,
    instanceHash,
    magic,
    classTypeHash,
    propCount,
    propTableOffset,
    valuePoolOffset,
    properties,
    extractedStrings: strings,
    candidateFloats: floats.slice(0, 64),
  };
}

function decodeFetmPackage(filePath, pkgIndex) {
  const buf = fs.readFileSync(filePath);
  const entry = pkgIndex.entries[0];
  if (!entry) return null;
  const payload = buf.subarray(entry.fileOffset, entry.fileOffset + entry.sizeBytes);
  const latin = payload.toString("latin1");

  // Extract all null-terminated printable ASCII strings with their offsets in the FETM payload
  const stringTokens = [];
  let i = 0;
  while (i < payload.length) {
    if (payload[i] >= 0x20 && payload[i] <= 0x7e) {
      let end = i;
      while (end < payload.length && payload[end] >= 0x20 && payload[end] <= 0x7e) end++;
      const len = end - i;
      if (len >= 3 && payload[end] === 0) {
        const str = payload.toString("ascii", i, end);
        stringTokens.push({ offset: i, value: str });
      }
      i = end + 1;
    } else {
      i++;
    }
  }

  // Extract tagged floats (tag 0x06 followed by float32 LE in BlitzTech FETM stream!)
  // Look at our earlier hexdump of w_multi_dm_lvl01_fetm.pc:
  // "06 00 00 80 3F (1.0f) 06 00 00 C8 42 (100.0f)" -> 0x06 is literally the FETM type tag for float32!
  // And 0x05 is the FETM type tag for uint32 / hash!
  // And 0x07 is the FETM type tag for null-terminated string!
  const entityClasses = [];
  for (const t of stringTokens) {
    if (
      t.value.startsWith("ec_") ||
      t.value.startsWith("CRotastic") ||
      t.value.startsWith("CAttach") ||
      t.value.startsWith("CSpawn") ||
      t.value.startsWith("CPickUp") ||
      t.value.startsWith("CWall") ||
      t.value.startsWith("CGravity") ||
      t.value.startsWith("CModeMulti") ||
      t.value.startsWith("CTueur") ||
      t.value.startsWith("CBreakable") ||
      t.value.startsWith("CSwitch") ||
      t.value.startsWith("CMecaSwitch")
    ) {
      entityClasses.push(t.value);
    }
  }

  // Group strings and nearby tagged floats to reconstruct map entities
  const nodes = [];
  for (let idx = 0; idx < stringTokens.length; idx++) {
    const tok = stringTokens[idx];
    // Look ahead up to 256 bytes (or until next string) for tagged floats (0x06 <f32>)
    const nextOff = idx + 1 < stringTokens.length ? Math.min(tok.offset + 256, stringTokens[idx + 1].offset) : Math.min(tok.offset + 256, payload.length);
    const floats = [];
    for (let p = tok.offset + tok.value.length + 1; p + 5 <= nextOff; p++) {
      if (payload[p] === 0x06) {
        const val = payload.readFloatLE(p + 1);
        if (Number.isFinite(val) && Math.abs(val) < 1e6 && (val === 0 || Math.abs(val) >= 1e-4)) {
          floats.push(Number(val.toFixed(4)));
          p += 4;
        }
      }
    }
    nodes.push({
      offset: tok.offset,
      text: tok.value,
      taggedFloats: floats,
    });
  }

  const classCounts = {};
  for (const c of entityClasses) {
    classCounts[c] = (classCounts[c] || 0) + 1;
  }

  return {
    fileName: pkgIndex.fileName,
    fetmName: entry.name,
    sizeBytes: entry.sizeBytes,
    authorAndDate: stringTokens[0]?.value ?? null,
    entityClassSummary: classCounts,
    totalStrings: stringTokens.length,
    nodes,
  };
}

function createWavBuffer(sampChunkBuf) {
  if (sampChunkBuf.length <= 0x50) return null;
  const sampleRate = sampChunkBuf.readUInt32LE(0x30);
  const numSamples = sampChunkBuf.readUInt32LE(0x34);
  const channels = sampChunkBuf.readUInt32LE(0x3c) || 1;
  const bitsPerSample = sampChunkBuf.readUInt32LE(0x40) || 16;
  const pcmData = sampChunkBuf.subarray(0x50);

  const byteRate = sampleRate * channels * (bitsPerSample >> 3);
  const blockAlign = channels * (bitsPerSample >> 3);
  const wavHeader = Buffer.alloc(44);

  wavHeader.write("RIFF", 0, 4, "ascii");
  wavHeader.writeUInt32LE(36 + pcmData.length, 4);
  wavHeader.write("WAVE", 8, 4, "ascii");
  wavHeader.write("fmt ", 12, 4, "ascii");
  wavHeader.writeUInt32LE(16, 16); // PCM chunk size
  wavHeader.writeUInt16LE(1, 20); // AudioFormat = 1 (PCM)
  wavHeader.writeUInt16LE(channels, 22);
  wavHeader.writeUInt32LE(sampleRate, 24);
  wavHeader.writeUInt32LE(byteRate, 28);
  wavHeader.writeUInt16LE(blockAlign, 32);
  wavHeader.writeUInt16LE(bitsPerSample, 34);
  wavHeader.write("data", 36, 4, "ascii");
  wavHeader.writeUInt32LE(pcmData.length, 40);

  return Buffer.concat([wavHeader, pcmData]);
}

function getTexrFormatInfo(fmtCode) {
  // Validated against native lookup switch 0x006725C0 in Rotastic.exe
  switch (fmtCode) {
    case 0x0012:
      return { name: "DXT1", fourCC: "DXT1", compressed: true, blockBytes: 8 };
    case 0x0013:
      return { name: "DXT2", fourCC: "DXT2", compressed: true, blockBytes: 16 };
    case 0x0014:
      return { name: "DXT3", fourCC: "DXT3", compressed: true, blockBytes: 16 };
    case 0x0015:
      return { name: "DXT4", fourCC: "DXT4", compressed: true, blockBytes: 16 };
    case 0x0016:
      return { name: "DXT5", fourCC: "DXT5", compressed: true, blockBytes: 16 };
    case 0x0001:
    case 0x0007:
    case 0x000a:
    default:
      return { name: "A8R8G8B8", fourCC: null, compressed: false, blockBytes: 4 };
  }
}

function computeTexrFrameBytes(width, height, mipCount, fmtInfo) {
  let total = 0;
  let w = width;
  let h = height;
  for (let m = 0; m < mipCount; m++) {
    if (fmtInfo.compressed) {
      total += Math.max(1, Math.floor((w + 3) / 4)) * Math.max(1, Math.floor((h + 3) / 4)) * fmtInfo.blockBytes;
    } else {
      total += w * h * fmtInfo.blockBytes;
    }
    w = Math.max(1, w >> 1);
    h = Math.max(1, h >> 1);
  }
  return total;
}

function createDdsBuffer(texrChunkBuf) {
  // Layout decoded from Rotastic.exe 0x00672B30 + 0x00672760 + 0x00548D65
  if (texrChunkBuf.length <= 0x84) return null;
  const fmtCode = texrChunkBuf.readUInt16LE(0x3c);
  const width = texrChunkBuf.readUInt16LE(0x3e);
  const height = texrChunkBuf.readUInt16LE(0x40);
  const flagsByte = texrChunkBuf.readUInt16LE(0x42);
  const mipCount = texrChunkBuf[0x4d] || 1;
  const frameCount = texrChunkBuf[0x4e] || 1;
  const totalDurationMs = texrChunkBuf.readUInt32LE(0x54);
  const ptrArrayOffset = 0x7c;
  const durArrayOffset = ptrArrayOffset + frameCount * 4;
  const headerSize = ptrArrayOffset + frameCount * 8;
  if (width === 0 || height === 0 || headerSize >= texrChunkBuf.length) return null;

  const frameDurationsMs = [];
  for (let i = 0; i < frameCount; i++) {
    const off = durArrayOffset + i * 4;
    frameDurationsMs.push(off + 4 <= texrChunkBuf.length ? texrChunkBuf.readUInt32LE(off) : 0);
  }

  const fmtInfo = getTexrFormatInfo(fmtCode);
  const frameBytes = computeTexrFrameBytes(width, height, mipCount, fmtInfo);
  const pixelData = texrChunkBuf.subarray(headerSize);
  const ddsHdr = Buffer.alloc(128, 0);
  ddsHdr.write("DDS ", 0, 4, "ascii");
  ddsHdr.writeUInt32LE(124, 4); // dwSize
  // DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH | DDSD_PIXELFORMAT | (mipCount > 1 ? DDSD_MIPMAPCOUNT : 0)
  const flags =
    0x1 |
    0x2 |
    0x4 |
    0x1000 |
    (mipCount > 1 ? 0x20000 : 0) |
    (fmtInfo.compressed ? 0x80000 : 0x8);
  ddsHdr.writeUInt32LE(flags, 8);
  ddsHdr.writeUInt32LE(height, 12);
  ddsHdr.writeUInt32LE(width, 16);

  if (fmtInfo.compressed) {
    const linearSize =
      Math.max(1, Math.floor((width + 3) / 4)) * Math.max(1, Math.floor((height + 3) / 4)) * fmtInfo.blockBytes;
    ddsHdr.writeUInt32LE(linearSize, 20);
    ddsHdr.writeUInt32LE(mipCount, 28);
    ddsHdr.writeUInt32LE(32, 76); // ddspf.dwSize
    ddsHdr.writeUInt32LE(0x4, 80); // DDPF_FOURCC
    ddsHdr.write(fmtInfo.fourCC, 84, 4, "ascii");
  } else {
    // Uncompressed 32-bit A8R8G8B8
    ddsHdr.writeUInt32LE(width * 4, 20);
    ddsHdr.writeUInt32LE(mipCount, 28);
    ddsHdr.writeUInt32LE(32, 76); // ddspf.dwSize
    ddsHdr.writeUInt32LE(0x41, 80); // DDPF_RGB | DDPF_ALPHAPIXELS
    ddsHdr.writeUInt32LE(32, 88); // dwRGBBitCount
    ddsHdr.writeUInt32LE(0x00ff0000, 92); // R mask
    ddsHdr.writeUInt32LE(0x0000ff00, 96); // G mask
    ddsHdr.writeUInt32LE(0x000000ff, 100); // B mask
    ddsHdr.writeUInt32LE(0xff000000, 104); // A mask
  }

  ddsHdr.writeUInt32LE(0x1000 | (mipCount > 1 ? 0x400008 : 0), 108); // dwCaps = DDSCAPS_TEXTURE
  return {
    ddsBuffer: Buffer.concat([ddsHdr, pixelData]),
    meta: {
      format: fmtInfo.name,
      fmtCode,
      flags: flagsByte,
      width,
      height,
      mipCount,
      frameCount,
      frameBytes,
      totalDurationMs,
      frameDurationsMs,
    },
  };
}

function writeTexrAsset(outDir, baseName, texrRes) {
  fs.writeFileSync(path.join(outDir, `${baseName}.dds`), texrRes.ddsBuffer);
  if (texrRes.meta.frameCount > 1 || texrRes.meta.mipCount > 1) {
    fs.writeFileSync(path.join(outDir, `${baseName}.texr.json`), JSON.stringify(texrRes.meta, null, 2), "utf8");
  }
}

// Walk all .pc packages in reference/game-files/packages (including uk/w_loca.pc)
const pcFiles = [];
for (const item of fs.readdirSync(PKG_DIR, { withFileTypes: true })) {
  if (item.isFile() && item.name.toLowerCase().endsWith(".pc") && item.name !== "envvars.PC") {
    pcFiles.push(path.join(PKG_DIR, item.name));
  } else if (item.isDirectory()) {
    const subDir = path.join(PKG_DIR, item.name);
    for (const sub of fs.readdirSync(subDir)) {
      if (sub.toLowerCase().endsWith(".pc")) {
        pcFiles.push(path.join(subDir, sub));
      }
    }
  }
}

const packageSummaries = [];
let extractedRefdFiles = 0;
let extractedFetmFiles = 0;
let extractedMultiTextures = 0;

for (const pcPath of pcFiles) {
  const pkg = parsePackageIndex(pcPath);
  const relName = path.relative(PKG_DIR, pcPath).replace(/\\/g, "/");
  pkg.relativePath = relName;

  const byFourCC = {};
  for (const e of pkg.entries) {
    byFourCC[e.fourCC] = (byFourCC[e.fourCC] || 0) + 1;
  }
  pkg.countsByFourCC = byFourCC;
  packageSummaries.push(pkg);

  // Decode *_refm.pc -> reference/decompiled/refm/<name>.json
  if (pcPath.endsWith("_refm.pc") && pkg.entries.length > 0) {
    const buf = fs.readFileSync(pcPath);
    const decodedEntries = pkg.entries.map((e) =>
      decodeRefdChunk(buf.subarray(e.fileOffset, e.fileOffset + e.sizeBytes), e)
    );
    const outFile = path.join(OUT_REFM_DIR, path.basename(pcPath, ".pc") + ".json");
    fs.writeFileSync(outFile, JSON.stringify({ package: relName, entries: decodedEntries }, null, 2), "utf8");
    extractedRefdFiles++;
  }

  // Decode *_fetm.pc -> reference/decompiled/fetm/<name>.json
  if (pcPath.endsWith("_fetm.pc") && pkg.entries.length > 0) {
    const fetmData = decodeFetmPackage(pcPath, pkg);
    if (fetmData) {
      const outFile = path.join(OUT_FETM_DIR, path.basename(pcPath, ".pc") + ".json");
      fs.writeFileSync(outFile, JSON.stringify(fetmData, null, 2), "utf8");
      extractedFetmFiles++;
    }
  }

  // Extract textures from multiplayer maps (w_multi_*, w_ps3_*)
  const baseName = path.basename(pcPath, ".pc");
  if (/^(w_multi_|w_ps3_)/.test(baseName) && !baseName.endsWith("_fetm") && !baseName.endsWith("_refm")) {
    const buf = fs.readFileSync(pcPath);
    const mapTexDir = path.join(OUT_TEX_MULTI_DIR, baseName);
    fs.mkdirSync(mapTexDir, { recursive: true });
    for (const e of pkg.entries) {
      if (e.fourCC === "TEXR") {
        const res = createDdsBuffer(buf.subarray(e.fileOffset, e.fileOffset + e.sizeBytes));
        if (res) {
          writeTexrAsset(mapTexDir, e.name, res);
          e.textureMeta = res.meta;
          extractedMultiTextures++;
        }
      }
    }
  }
}

// Process w_global.pc (from reference/game-files or Steam installation)
let globalPcSource = path.join(PKG_DIR, "w_global.pc");
if (!fs.existsSync(globalPcSource) && fs.existsSync(STEAM_GLOBAL_PC)) {
  globalPcSource = STEAM_GLOBAL_PC;
}

let extractedAudioCount = 0;
let extractedGlobalTexCount = 0;
let globalSummary = null;

if (fs.existsSync(globalPcSource)) {
  const pkg = parsePackageIndex(globalPcSource);
  pkg.relativePath = "w_global.pc (hydrated)";
  const byFourCC = {};
  for (const e of pkg.entries) {
    byFourCC[e.fourCC] = (byFourCC[e.fourCC] || 0) + 1;
  }
  pkg.countsByFourCC = byFourCC;
  globalSummary = pkg;

  const fd = fs.openSync(globalPcSource, "r");

  for (const e of pkg.entries) {
    if (
      e.fourCC === "SAMP" &&
      /^(sfx_rope|sfx_pickup|sfx_player|sfx_gui|sfx_ing_canon|sfx_ing_breakable|sfx_ing_switch|sfx_ing_meca|sfx_ing_tueur|sfx_ing_warp|sfx_ing_wall|sfx_multi)/.test(
        e.name
      )
    ) {
      const chunkBuf = Buffer.alloc(e.sizeBytes);
      fs.readSync(fd, chunkBuf, 0, e.sizeBytes, e.fileOffset);
      const wavBuf = createWavBuffer(chunkBuf);
      if (wavBuf) {
        const safeName = e.name.endsWith(".wav") ? e.name : `${e.name}.wav`;
        fs.writeFileSync(path.join(OUT_AUDIO_DIR, safeName), wavBuf);
        extractedAudioCount++;
      }
    } else if (
      e.fourCC === "TEXR" &&
      /^(t_character|t_head|t_kill$|t_pickup|t_gui|t_rope|t_beam|t_fx|t_trail|t_attach|t_wall|t_canon|t_tueur|t_breakable|t_switch|t_warp|t_vortex|t_accroche|t_porteentre|t_bgport2wateruv_c)/.test(
        e.name
      )
    ) {
      const chunkBuf = Buffer.alloc(e.sizeBytes);
      fs.readSync(fd, chunkBuf, 0, e.sizeBytes, e.fileOffset);
      const res = createDdsBuffer(chunkBuf);
      if (res) {
        writeTexrAsset(OUT_TEX_GLOBAL_DIR, e.name, res);
        e.textureMeta = res.meta;
        extractedGlobalTexCount++;
      }
    }
  }
  fs.closeSync(fd);
}

const fullCatalog = {
  generatedAt: new Date().toISOString(),
  summary: {
    packagesIndexed: packageSummaries.length + (globalSummary ? 1 : 0),
    decodedRefmFiles: extractedRefdFiles,
    decodedFetmFiles: extractedFetmFiles,
    extractedMultiplayerAudioWav: extractedAudioCount,
    extractedGlobalTexturesDds: extractedGlobalTexCount,
    extractedMultiplayerMapTexturesDds: extractedMultiTextures,
  },
  packages: packageSummaries.map((p) => ({
    fileName: p.fileName,
    relativePath: p.relativePath,
    sizeBytes: p.sizeBytes,
    packageCrc: p.packageCrc,
    entryCount: p.entryCount,
    countsByFourCC: p.countsByFourCC,
  })),
  globalPackage: globalSummary
    ? {
        fileName: globalSummary.fileName,
        sizeBytes: globalSummary.sizeBytes,
        packageCrc: globalSummary.packageCrc,
        entryCount: globalSummary.entryCount,
        countsByFourCC: globalSummary.countsByFourCC,
      }
    : null,
};

fs.writeFileSync(OUT_CATALOG_JSON, JSON.stringify(fullCatalog, null, 2), "utf8");

// Generate docs/01-assets-catalog.md
let md = `# Fase 1 — Catálogo de Pacotes e Assets Extraídos (\`01-assets-catalog.md\`)\n\n`;
md += `> Gerado automaticamente por [\`tools/extract/extract-packages.mjs\`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/tools/extract/extract-packages.mjs).\n`;
md += `> Catálogo JSON completo em [\`reference/decompiled/packages-catalog.json\`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/reference/decompiled/packages-catalog.json).\n\n`;

md += `## 1. Formato Binário dos Pacotes BlitzTech (\`.pc\`, \`_fetm.pc\`, \`_refm.pc\`)\n\n`;
md += `A engenharia reversa dos cabeçalhos confirmou a especificação exata dos contêineres da BlitzTech:\n\n`;
md += `- **Header do Pacote (\`0x000..0x18F\`, 400 bytes):**\n`;
md += `  - \`0x00\` (\`uint32\`): Hash/CRC do pacote.\n`;
md += `  - \`0x04\` (\`uint32\`): Alinhamento de setor (\`0x10\` = 16 bytes).\n`;
md += `  - \`0x0C\` (\`uint32\`): \`entryCount\` (total de recursos empacotados).\n`;
md += `  - \`0x18\` (\`uint32\`): \`dataStartSector\` (início da área de dados em múltiplos de 16 bytes).\n`;
md += `  - \`0x1C\` (\`uint32\`): \`stringTableSize\` (tamanho da tabela de nomes em bytes).\n`;
md += `  - \`0x20\` (\`uint32\`): \`payloadSize\` (tamanho total útil após o header de \`0x190\` bytes).\n`;
md += `  - \`0x30\` (\`uint32\`): \`directorySize\` (\`entryCount * 32\` bytes).\n`;
md += `- **Tabela de Diretório (\`0x190 .. 0x190 + entryCount * 32\`):** Cada entrada possui 32 bytes:\n`;
md += `  - \`+0x00\` (\`uint32\`): \`sectorOffset\` (offset absoluto no arquivo = \`sectorOffset * 16\`).\n`;
md += `  - \`+0x04\` (\`uint32\`): \`assetHash\` (hash de 32 bits do recurso).\n`;
md += `  - \`+0x08\` (\`uint32\`): \`sizeBytes\` (tamanho exato do chunk em bytes).\n`;
md += `  - \`+0x0C\` (\`uint32\`): \`nameOffset\` (offset relativo ao início da String Table em \`0x190 + entryCount * 32\`).\n`;
md += `  - \`+0x10\` (\`char[4]\`): \`fourCC\` (\`TEXR\`, \`SAMP\`, \`MTRL\`, \`VTXD\`, \`VSHR\`, \`PSHR\`, \`ACTR\`, \`REFD\`, \`STAB\`, \`SBNK\`, \`FONT\`, \`ASTR\`, \`STRD\`, ou \`00 00 00 00\` para streams \`FETM\`).\n`;
md += `  - \`+0x14\` (\`uint32\`): \`typeOrContentHash\`.\n`;
md += `- **Header Comum de Recurso (\`0x00..0x2F\`, 48 bytes no início de cada chunk):**\n`;
md += `  - \`+0x06\` (\`uint16\`): Tipo numérico do recurso (\`0x01\` = \`TEXR\`, \`0x02\` = \`SAMP\`, \`0x04\` = \`STAB\`, \`0x0A\` = \`REFD\`, \`0x0B\` = \`SBNK\`).\n`;
md += `  - \`+0x08\` (\`uint32\`): \`assetHash\`.\n`;
md += `  - \`+0x0C\` (\`uint32\`): \`sizeBytes\`.\n`;
md += `  - \`+0x30\`: Início dos metadados específicos do formato (\`SAMP\`: \`sampleRate\` em \`+0x30\`, \`numSamples\` em \`+0x34\`, \`channels\` em \`+0x3C\`, \`bitsPerSample\` em \`+0x40\`, PCM em \`+0x50\`; \`TEXR\`: \`fmt\` em \`+0x3C\`, \`width\` em \`+0x3E\`, \`height\` em \`+0x40\`, \`mips\` em \`+0x4D\`, \`frames\` em \`+0x4E\`, pixels em \`+0x84 + (frames-1)*8\`).\n\n`;

md += `---\n\n## 2. Resumo das Extrações Realizadas\n\n`;
md += `- **Arquivos \`_refm.pc\` decodificados para JSON (\`reference/decompiled/refm/\`):** \`${extractedRefdFiles}\`\n`;
md += `- **Arquivos \`_fetm.pc\` decodificados para JSON (\`reference/decompiled/fetm/\`):** \`${extractedFetmFiles}\`\n`;
md += `- **Efeitos Sonoros Multiplayer/Core extraídos em WAV (\`assets-original/audio/sfx/\`):** \`${extractedAudioCount}\` arquivos\n`;
md += `- **Texturas Globais de Personagens/Cordas/Joias/HUD em DDS (\`assets-original/textures/global/\`):** \`${extractedGlobalTexCount}\` arquivos\n`;
md += `- **Texturas dos 19 Mapas Multiplayer em DDS (\`assets-original/textures/multiplayer/\`):** \`${extractedMultiTextures}\` arquivos\n\n`;

md += `---\n\n## 3. Catálogo dos 19 Mapas Multiplayer (\`w_multi_*\` e \`w_ps3_*\`)\n\n`;
md += `| Pacote Base | Modo | Tamanho (\`.pc\`) | Recursos (\`.pc\`) | Entidades (\`_fetm.pc\`) | Reflexão (\`_refm.pc\`) |\n`;
md += `| :--- | :--- | :---: | :--- | :---: | :---: |\n`;

const multiMaps = packageSummaries.filter(
  (p) => /^(w_multi_|w_ps3_)/.test(p.fileName) && !p.fileName.endsWith("_fetm.pc") && !p.fileName.endsWith("_refm.pc")
);
for (const m of multiMaps) {
  const base = m.fileName.replace(/\.pc$/, "");
  const fetm = packageSummaries.find((p) => p.fileName === `${base}_fetm.pc`);
  const refm = packageSummaries.find((p) => p.fileName === `${base}_refm.pc`);
  const mode = /coll/.test(base) ? "Collect (Joias)" : "Deathmatch (Batalha)";
  const fccStr = Object.entries(m.countsByFourCC)
    .map(([k, v]) => `${k}:${v}`)
    .join(", ");
  md += `| \`${base}\` | ${mode} | ${(m.sizeBytes / 1024).toFixed(1)} KB | ${fccStr} | ${fetm ? (fetm.sizeBytes / 1024).toFixed(1) + " KB" : "-"} | ${refm ? refm.entryCount + " REFD" : "-"} |\n`;
}

md += `\n---\n\n## 4. Pacotes Core, Online e Menus\n\n`;
md += `| Pacote | Tamanho | Total de Entradas | Distribuição por FourCC |\n`;
md += `| :--- | :---: | :---: | :--- |\n`;
const corePkgs = packageSummaries.filter((p) => !/^(w_multi_|w_ps3_)/.test(p.fileName));
if (globalSummary) corePkgs.unshift(globalSummary);
for (const p of corePkgs) {
  const fccStr = Object.entries(p.countsByFourCC)
    .map(([k, v]) => `${k}:${v}`)
    .join(", ");
  md += `| \`${p.relativePath}\` | ${(p.sizeBytes / 1024).toFixed(1)} KB | ${p.entryCount} | ${fccStr || "-"} |\n`;
}

fs.writeFileSync(OUT_CATALOG_DOC, md, "utf8");
console.log(
  `[extract-packages] Concluido!\n - REFM JSONs: ${extractedRefdFiles}\n - FETM JSONs: ${extractedFetmFiles}\n - Audio WAVs: ${extractedAudioCount}\n - Global DDS: ${extractedGlobalTexCount}\n - Multi Map DDS: ${extractedMultiTextures}`
);
