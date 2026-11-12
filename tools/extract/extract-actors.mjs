#!/usr/bin/env node
/**
 * Extracts structured BlitzTech ACTR geometry, materials, node hierarchies,
 * and quantized keyframe animation clips for Deathmatch maps & global props
 * into `packages/client/public/assets/actors.json`.
 *
 * All offsets verified against Rotastic.exe:
 *   - 0x00918100 (ACTR relocator)
 *   - 0x0062C140 / 0x00922F60 (Position track decompressor)
 *   - 0x008964C0 / 0x00924AD0 (Quaternion track decompressor)
 *   - 0x008967A0 (Scale track decompressor)
 */

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = path.resolve(__dirname, "../..");
const PKG_DIR = path.join(REPO_ROOT, "reference/game-files/packages");
const SOURCE_GLOBAL_PC = process.env.ROTASTIC_GLOBAL_PC || path.join(PKG_DIR, "w_global.pc");
const OUT_ACTORS_JSON = path.join(
  REPO_ROOT,
  "packages/client/public/assets/actors.json"
);

const DM_PACKAGES = [
  "w_multi_dm_lvl01.pc",
  "w_multi_dm_lvl02.pc",
  "w_multi_dm_lvl04.pc",
  "w_multi_dm_lvl07.pc",
  "w_multi_dm_lvl09.pc",
  "w_multi_dm_lvl10.pc",
  "w_multi_dm_lvl11.pc",
  "w_multi_dm_lvl13.pc",
];

// Explicit allowlist of Deathmatch foreground, pivot, switch, hazard, and background ACTRs
const TARGET_ACTORS = new Set([
  // Pivots & doors
  "o_accroche",
  "o_accroche_mobile",
  "o_accrocheaura",
  "o_porteentree",
  // Screen side borders
  "o_rebondecranbois_l",
  "o_rebondecranbois_r",
  "o_rebondecranpierre_l",
  "o_rebondecranpierre_r",
  "o_rebondecranmetal_l",
  "o_rebondecranmetal_r",
  // Obstacles, weapons, monsters, switches, and decorative props
  "o_armes",
  "o_multi04_bordtueur",
  "o_tueur_md08",
  "o_pierre_md01",
  "o_m04_cube",
  "o_rebonmetal02_md09",
  "o_levierbase_back",
  "o_levierbase_off",
  "o_levierbase_on",
  "o_levierbois",
  "o_leviercrapeau",
  "o_leviercrapeaudead",
  "o_poutremulti03",
  "o_vissemulti03",
  "o_serpentmulti03",
  "o_nacelleane",
  "o_nacellelapin",
  "o_nacellemort",
  "o_nacelleroi",
  "o_smokeonroof",
  // Multi-layer animated map backgrounds
  "o_bg_forest2",
  "o_bg_forest",
  "o_bg_villemarron2",
  "o_bg_villemarron",
  "o_bg_cimetery2",
  "o_bgchateau2",
  "o_bgchateau2_far",
  "o_bgchateau2_clouds",
  "o_bgchateau2_flags",
  "o_bg_campagne",
  "o_fond_bgcampagne",
  "o_bg_campagnewater",
  "o_home_campagne",
  "o_ruine_campagne",
  "o_bgport22",
  "o_bgport22_clouds",
  "o_bgport22_far",
  "o_bgport22_water",
]);

function round4(n) {
  return typeof n === "number" && Number.isFinite(n)
    ? Number(n.toFixed(4))
    : 0;
}

function round5(n) {
  return typeof n === "number" && Number.isFinite(n)
    ? Number(n.toFixed(5))
    : 0;
}

function toHex32(val) {
  return "0x" + (val >>> 0).toString(16).toUpperCase().padStart(8, "0");
}

function parsePackageEntries(pcPath) {
  const buf = fs.readFileSync(pcPath);
  const entryCount = buf.readUInt32LE(0x0c);
  const strLen = buf.readUInt32LE(0x1c);
  const dirSize = buf.readUInt32LE(0x30);
  const dir = buf.subarray(0x190, 0x190 + dirSize);
  const str = buf.subarray(0x190 + dirSize, 0x190 + dirSize + strLen);
  const entries = [];
  for (let i = 0; i < entryCount; i++) {
    const o = i * 32;
    const sec = dir.readUInt32LE(o + 0);
    const hash = dir.readUInt32LE(o + 4);
    const size = dir.readUInt32LE(o + 8);
    const nameOff = dir.readUInt32LE(o + 12);
    const fcc0 = dir[o + 16];
    const fourCC =
      fcc0 >= 32 && fcc0 <= 126
        ? dir.subarray(o + 16, o + 20).toString("ascii").replace(/\0/g, "")
        : "FETM";
    let e = nameOff;
    while (e < strLen && str[e] !== 0) e++;
    entries.push({
      name: str.subarray(nameOff, e).toString("ascii"),
      fourCC,
      size,
      hash: toHex32(hash),
      chunk: buf.subarray(sec * 16, sec * 16 + size),
    });
  }
  return entries;
}

function cleanTextureId(name) {
  return name.toLowerCase().replace(/[^a-z0-9_.-]/g, "_");
}

function readCString(buf, off) {
  if (!off || off >= buf.length) return "";
  let end = off;
  while (end < buf.length && buf[end] !== 0) end++;
  return buf.subarray(off, end).toString("ascii");
}

function decodeMeshRecord(d, mOff, assetByHash) {
  if (!mOff || mOff + 24 > d.length) return null;
  const nV = d.readUInt32LE(mOff);
  const vb = d.readUInt32LE(mOff + 4);
  const nSub = d.readUInt32LE(mOff + 8);
  const subArr = d.readUInt32LE(mOff + 12);
  const idxOff = d.readUInt32LE(mOff + 16);
  if (!nV || !vb || vb >= d.length) return null;

  // Detect vertex format via VTXD hash inside mesh/subArr block
  let isSkinned = false;
  for (let q = mOff; q + 4 <= Math.min(d.length, mOff + 0x90); q += 4) {
    const r = assetByHash.get(toHex32(d.readUInt32LE(q)));
    if (r && r.fourCC === "VTXD" && r.name.includes("skinned")) {
      isSkinned = true;
      break;
    }
  }

  let texture = null;
  let blend = "alpha";
  if (subArr && subArr < d.length) {
    const sa =
      nSub === 1
        ? subArr
        : subArr + 4 <= d.length && d.readUInt32LE(subArr) < d.length
          ? d.readUInt32LE(subArr)
          : subArr;
    for (let q = sa; q + 4 <= Math.min(d.length, sa + 0x58); q += 4) {
      const r = assetByHash.get(toHex32(d.readUInt32LE(q)));
      if (!r) continue;
      if (r.fourCC === "MTRL" && r.name.includes("additive")) {
        blend = "add";
      } else if (r.fourCC === "TEXR" && !texture) {
        texture = cleanTextureId(r.name);
      }
    }
  }
  if (!texture) return null;

  let nIdx =
    idxOff && idxOff + 16 <= d.length
      ? d.readUInt16LE(idxOff + 14) || d.readUInt16LE(idxOff + 4) * 3
      : 0;

  let stride = 36;
  let idxDataStart = vb + nV * stride;
  if (isSkinned && subArr > vb) {
    // vf_stock_skinnedsingle has 60-byte vertices followed immediately by uint16 triangle indices up to subArr
    for (const candStride of [60, 48, 44, 52, 40]) {
      const endVb = vb + nV * candStride;
      if (endVb < subArr) {
        const triIdxCount = Math.floor((subArr - endVb) / 2 / 3) * 3;
        if (triIdxCount >= 3) {
          stride = candStride;
          idxDataStart = endVb;
          nIdx = triIdxCount;
          break;
        }
      }
    }
  }
  if (!nIdx) return null;

  if (idxDataStart + nIdx * 2 > d.length) return null;

  const positions = [];
  const uvs = [];
  const uvOff = stride - 8;
  for (let v = 0; v < nV; v++) {
    const p = vb + v * stride;
    positions.push(
      round4(d.readFloatLE(p)),
      round4(d.readFloatLE(p + 4)),
      round4(d.readFloatLE(p + 8))
    );
    uvs.push(round5(d.readFloatLE(p + uvOff)), round5(d.readFloatLE(p + uvOff + 4)));
  }

  const indices = [];
  for (let i = 0; i < nIdx; i++) {
    const iv = d.readUInt16LE(idxDataStart + i * 2);
    indices.push(iv < nV ? iv : 0);
  }

  return { texture, blend, positions, uvs, indices };
}

function decodeTrackPayload(d, count, offset, dims, mins, scales) {
  if (!count || !offset || offset + count * (2 + dims * 2) > d.length) {
    return null;
  }
  const t = [];
  for (let k = 0; k < count; k++) {
    t.push(d.readUInt16LE(offset + k * 2));
  }
  const valStart = offset + count * 2;
  const v = [];
  const cMin = new Array(dims).fill(Infinity);
  const cMax = new Array(dims).fill(-Infinity);
  for (let k = 0; k < count; k++) {
    for (let c = 0; c < dims; c++) {
      const q = d.readUInt16LE(valStart + (k * dims + c) * 2);
      const val = round4(mins[c] + q * scales[c]);
      if (val < cMin[c]) cMin[c] = val;
      if (val > cMax[c]) cMax[c] = val;
      v.push(val);
    }
  }
  // If every component is invariant across all keyframes, keep single static value
  let isConst = true;
  for (let c = 0; c < dims; c++) {
    if (cMax[c] - cMin[c] > 1e-4) {
      isConst = false;
      break;
    }
  }
  if (isConst) {
    return { t: [t[0]], v: v.slice(0, dims) };
  }
  // Compact runs where interior keyframes equal both neighbors (step-hold plateaus)
  const ct = [t[0]];
  const cv = v.slice(0, dims);
  for (let k = 1; k < count - 1; k++) {
    let samePrev = true;
    let sameNext = true;
    for (let c = 0; c < dims; c++) {
      const cur = v[k * dims + c];
      if (Math.abs(cur - v[(k - 1) * dims + c]) > 1e-4) samePrev = false;
      if (Math.abs(cur - v[(k + 1) * dims + c]) > 1e-4) sameNext = false;
    }
    if (samePrev && sameNext) continue;
    ct.push(t[k]);
    for (let c = 0; c < dims; c++) cv.push(v[k * dims + c]);
  }
  if (count > 1) {
    ct.push(t[count - 1]);
    for (let c = 0; c < dims; c++) cv.push(v[(count - 1) * dims + c]);
  }
  return { t: ct, v: cv };
}

function extractActor(entry, assetByHash) {
  const d = entry.chunk;
  if (d.length < 0x84) return null;
  const rootOff = d.readUInt32LE(0x38);
  const clipTbl = d.readUInt32LE(0x4c);
  const nClips = d.readUInt32LE(0x50);
  const clipNamesTbl = d.readUInt32LE(0x78);
  const nodeNamesTbl = d.readUInt32LE(0x7c);

  const nodeMap = new Map();
  const seen = new Set();

  const visit = (off, treeParentIdx = -1) => {
    if (!off || off >= d.length || seen.has(off)) return;
    seen.add(off);
    const idx = d.readUInt32LE(off + 0x84);
    const rawParentIdx = d.readInt32LE(off + 0x74);
    const parentIdx = rawParentIdx >= 0 ? rawParentIdx : treeParentIdx;
    const posMin = [d.readFloatLE(off), d.readFloatLE(off + 4), d.readFloatLE(off + 8)];
    const posFlags = d.readUInt16LE(off + 0x0e);
    const posScale = [
      d.readFloatLE(off + 0x10),
      d.readFloatLE(off + 0x14),
      d.readFloatLE(off + 0x18),
    ];
    const quatMin = [
      d.readFloatLE(off + 0x20),
      d.readFloatLE(off + 0x24),
      d.readFloatLE(off + 0x28),
      d.readFloatLE(off + 0x2c),
    ];
    const quatFlags = d.readUInt16LE(off + 0x42);
    const quatScale = [
      d.readFloatLE(off + 0x30),
      d.readFloatLE(off + 0x34),
      d.readFloatLE(off + 0x38),
      d.readFloatLE(off + 0x3c),
    ];
    const scaleMin = [
      d.readFloatLE(off + 0x50),
      d.readFloatLE(off + 0x54),
      d.readFloatLE(off + 0x58),
    ];
    const scaleFlags = d.readUInt16LE(off + 0x5e);
    const scaleScale = [
      d.readFloatLE(off + 0x60),
      d.readFloatLE(off + 0x64),
      d.readFloatLE(off + 0x68),
    ];
    const meshOff = d.readUInt32LE(off + 0xb0);
    const meshCnt = d.readUInt32LE(off + 0xb4);
    const nodeName = nodeNamesTbl
      ? readCString(d, d.readUInt32LE(nodeNamesTbl + idx * 4))
      : "";

    let mesh = null;
    if (meshCnt > 0 && meshOff) {
      mesh = decodeMeshRecord(d, d.readUInt32LE(meshOff), assetByHash);
    }

    nodeMap.set(idx, {
      idx,
      name: nodeName,
      parentIdx,
      pos: posMin.map(round4),
      quat: quatMin.map(round5),
      scale: scaleMin.map(round4),
      posFlags,
      quatFlags,
      scaleFlags,
      posScale,
      quatScale,
      scaleScale,
      mesh,
    });

    const firstChild = d.readUInt32LE(off + 0xec);
    const nextSib = d.readUInt32LE(off + 0xe0);
    if (firstChild) visit(firstChild, idx);
    if (nextSib) visit(nextSib, treeParentIdx);
  };

  visit(rootOff, -1);

  const nodeCount = Math.max(0, ...nodeMap.keys()) + 1;
  const nodes = [];
  for (let i = 0; i < nodeCount; i++) {
    const n = nodeMap.get(i);
    if (!n) {
      nodes.push({
        idx: i,
        name: "",
        parentIdx: -1,
        pos: [0, 0, 0],
        quat: [0, 0, 0, 1],
        scale: [1, 1, 1],
        mesh: null,
      });
    } else {
      nodes.push({
        idx: n.idx,
        name: n.name,
        parentIdx: n.parentIdx,
        pos: n.pos,
        quat: n.quat,
        scale: n.scale,
        mesh: n.mesh,
      });
    }
  }

  // Fallback for actors whose mesh sits in the header root mesh table (e.g. skinned flags)
  let rootMesh = null;
  if (nodes.every((n) => !n.mesh)) {
    const rootMeshList = d.readUInt32LE(0x34);
    if (rootMeshList && rootMeshList + 4 <= d.length) {
      rootMesh = decodeMeshRecord(d, d.readUInt32LE(rootMeshList), assetByHash);
    }
  }

  const clips = [];
  for (let c = 0; c < nClips; c++) {
    const coff = d.readUInt32LE(clipTbl + c * 4);
    if (!coff || coff + 0x4c > d.length) continue;
    const cname = clipNamesTbl
      ? readCString(d, d.readUInt32LE(clipNamesTbl + c * 4))
      : `clip_${c}`;
    const startTick = d.readInt32LE(coff + 4) >> 10;
    const endTick = d.readInt32LE(coff + 8) >> 10;
    const nTrackNodes = d.readUInt32LE(coff + 0x20);
    const trkArr = d.readUInt32LE(coff + 0x2c) || d.readUInt32LE(coff + 0x48);
    const tracks = {};

    if (trkArr && trkArr + nTrackNodes * 4 <= d.length) {
      for (let i = 0; i < nTrackNodes; i++) {
        const toff = d.readUInt32LE(trkArr + i * 4);
        const rawNode = nodeMap.get(i);
        if (!toff || toff + 20 > d.length || !rawNode) continue;

        const nP = d.readUInt16LE(toff);
        const nS = d.readUInt16LE(toff + 2);
        const nR = d.readUInt16LE(toff + 4);
        const oP = d.readUInt32LE(toff + 8);
        const oS = d.readUInt32LE(toff + 12);
        const oR = d.readUInt32LE(toff + 16);

        const posTrack =
          (rawNode.posFlags & 1) === 0
            ? decodeTrackPayload(d, nP, oP, 3, rawNode.pos, rawNode.posScale)
            : null;
        const rotTrack =
          (rawNode.quatFlags & 1) === 0
            ? decodeTrackPayload(d, nR, oR, 4, rawNode.quat, rawNode.quatScale)
            : null;
        const scaleTrack =
          (rawNode.scaleFlags & 1) === 0
            ? decodeTrackPayload(d, nS, oS, 3, rawNode.scale, rawNode.scaleScale)
            : null;

        if (posTrack || rotTrack || scaleTrack) {
          tracks[i] = {};
          if (posTrack) tracks[i].p = posTrack;
          if (rotTrack) tracks[i].r = rotTrack;
          if (scaleTrack) tracks[i].s = scaleTrack;
        }
      }
    }

    clips.push({
      name: cname,
      startTick,
      endTick,
      tracks,
    });
  }

  return {
    name: entry.name.toLowerCase(),
    nodes,
    ...(rootMesh ? { rootMesh } : {}),
    clips,
  };
}

function main() {
  const globalPc = fs.existsSync(SOURCE_GLOBAL_PC)
    ? SOURCE_GLOBAL_PC
    : path.join(PKG_DIR, "w_global.pc");
  if (!fs.existsSync(globalPc)) {
    throw new Error(`Missing w_global.pc at ${globalPc}`);
  }

  const allEntries = [...parsePackageEntries(globalPc)];
  for (const pkgName of DM_PACKAGES) {
    const pkgPath = path.join(PKG_DIR, pkgName);
    if (fs.existsSync(pkgPath)) {
      allEntries.push(...parsePackageEntries(pkgPath));
    }
  }

  const assetByHash = new Map();
  const actorEntryByName = new Map();
  for (const e of allEntries) {
    if (!assetByHash.has(e.hash)) assetByHash.set(e.hash, e);
    if (e.fourCC === "ACTR") {
      const key = e.name.toLowerCase();
      if (TARGET_ACTORS.has(key) && !actorEntryByName.has(key)) {
        actorEntryByName.set(key, e);
      }
    }
  }

  const actors = {};
  const missing = [];
  for (const name of [...TARGET_ACTORS].sort()) {
    const entry = actorEntryByName.get(name);
    if (!entry) {
      missing.push(name);
      continue;
    }
    const parsed = extractActor(entry, assetByHash);
    if (parsed) {
      actors[name] = parsed;
    }
  }

  fs.mkdirSync(path.dirname(OUT_ACTORS_JSON), { recursive: true });
  const payload = JSON.stringify({ schemaVersion: "1.0.0", actors });
  fs.writeFileSync(OUT_ACTORS_JSON, payload, "utf-8");
  console.log(
    `[extract-actors] Extracted ${Object.keys(actors).length}/${TARGET_ACTORS.size} ACTRs (${(payload.length / 1024).toFixed(1)} KB) -> ${path.relative(REPO_ROOT, OUT_ACTORS_JSON)}`
  );
  if (missing.length > 0) {
    console.warn("[extract-actors] Missing:", missing);
  }
}

main();
