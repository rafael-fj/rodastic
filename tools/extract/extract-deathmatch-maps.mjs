#!/usr/bin/env node
/**
 * Deep Extractor for the 8 Official Multiplayer Deathmatch Maps
 * (`w_multi_dm_lvl01`, `02`, `04`, `07`, `09`, `10`, `11`, `13`).
 *
 * 1. Parses `.pc`, `_fetm.pc`, and `_refm.pc` (+ `w_global.pc` if present on Steam)
 *    to resolve every `ACTR` -> `TEXR` texture dependency.
 * 2. Extracts missing Deathmatch background, attach-point, and rope DDS textures from
 *    `w_global.pc` into `assets-original/textures/backgrounds/` and `assets-original/textures/global/`.
 * 3. Extracts every `WorldNode`, `CWall` (flags, physics, dimensions, rotation, SimBodyBox,
 *    resolved textures, parent transforms), `CAttachPoint`, `CMecaSwitchObject`, `decorativeProps`,
 *    `CSpawnArea`/`CSpawnPoint`, `CRotasticPlayerDeathTrigger`, and animated FlowGraph behaviors
 *    (`RotateNode`, `MoveNode`, `TimerWait`, `AttachPointRef` shifts).
 * 4. Writes:
 *    - `reference/decompiled/deathmatch-maps-spec.json`
 *    - `docs/spec/deathmatch-maps-objects.md`
 */

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = path.resolve(__dirname, "../..");
const PKG_DIR = path.join(REPO_ROOT, "reference/game-files/packages");
const FETM_JSON_DIR = path.join(REPO_ROOT, "reference/decompiled/fetm");
const SOURCE_GLOBAL_PC = process.env.ROTASTIC_GLOBAL_PC || path.join(PKG_DIR, "w_global.pc");

const OUT_TEX_BG_DIR = path.join(REPO_ROOT, "assets-original/textures/backgrounds");
const OUT_TEX_GLOBAL_DIR = path.join(REPO_ROOT, "assets-original/textures/global");
const OUT_SPEC_JSON = path.join(REPO_ROOT, "reference/decompiled/deathmatch-maps-spec.json");
const OUT_DOC_MD = path.join(REPO_ROOT, "docs/spec/deathmatch-maps-objects.md");

const DM_MAP_IDS = [
  "w_multi_dm_lvl01",
  "w_multi_dm_lvl02",
  "w_multi_dm_lvl04",
  "w_multi_dm_lvl07",
  "w_multi_dm_lvl09",
  "w_multi_dm_lvl10",
  "w_multi_dm_lvl11",
  "w_multi_dm_lvl13",
];

function round4(n) {
  return typeof n === "number" && Number.isFinite(n) ? Number(n.toFixed(4)) : n;
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
    const name = str.subarray(nameOff, e).toString("ascii");
    entries.push({
      name,
      fourCC,
      size,
      hash: toHex32(hash),
      chunk: buf.subarray(sec * 16, sec * 16 + size),
    });
  }
  return entries;
}

function createDdsBuffer(texrChunkBuf) {
  if (texrChunkBuf.length <= 0x84) return null;
  const fmtCode = texrChunkBuf.readUInt16LE(0x3c);
  const width = texrChunkBuf.readUInt16LE(0x3e);
  const height = texrChunkBuf.readUInt16LE(0x40);
  const mipCount = texrChunkBuf[0x4d] || 1;
  const frameCount = texrChunkBuf[0x4e] || 1;
  const headerSize = 0x84 + Math.max(0, frameCount - 1) * 8;
  if (width === 0 || height === 0 || headerSize >= texrChunkBuf.length) return null;

  const pixelData = texrChunkBuf.subarray(headerSize);
  const ddsHdr = Buffer.alloc(128, 0);
  ddsHdr.write("DDS ", 0, 4, "ascii");
  ddsHdr.writeUInt32LE(124, 4);
  const flags =
    0x1 | 0x2 | 0x4 | 0x1000 | (mipCount > 1 ? 0x20000 : 0) | (fmtCode === 0x0001 ? 0x8 : 0x80000);
  ddsHdr.writeUInt32LE(flags, 8);
  ddsHdr.writeUInt32LE(height, 12);
  ddsHdr.writeUInt32LE(width, 16);

  if (fmtCode === 0x0014 || fmtCode === 0x0012) {
    const blockBytes = fmtCode === 0x0014 ? 16 : 8;
    const linearSize =
      Math.max(1, Math.floor((width + 3) / 4)) *
      Math.max(1, Math.floor((height + 3) / 4)) *
      blockBytes;
    ddsHdr.writeUInt32LE(linearSize, 20);
    ddsHdr.writeUInt32LE(mipCount, 28);
    ddsHdr.writeUInt32LE(32, 76);
    ddsHdr.writeUInt32LE(0x4, 80);
    ddsHdr.write(fmtCode === 0x0014 ? "DXT5" : "DXT1", 84, 4, "ascii");
  } else {
    ddsHdr.writeUInt32LE(width * 4, 20);
    ddsHdr.writeUInt32LE(mipCount, 28);
    ddsHdr.writeUInt32LE(32, 76);
    ddsHdr.writeUInt32LE(0x41, 80);
    ddsHdr.writeUInt32LE(32, 88);
    ddsHdr.writeUInt32LE(0x00ff0000, 92);
    ddsHdr.writeUInt32LE(0x0000ff00, 96);
    ddsHdr.writeUInt32LE(0x000000ff, 100);
    ddsHdr.writeUInt32LE(0xff000000, 104);
  }
  ddsHdr.writeUInt32LE(0x1000 | (mipCount > 1 ? 0x400008 : 0), 108);
  return {
    ddsBuffer: Buffer.concat([ddsHdr, pixelData]),
    width,
    height,
    format: fmtCode === 0x0014 ? "DXT5" : fmtCode === 0x0012 ? "DXT1" : "A8R8G8B8",
  };
}

function resolveActorTextures(actrEntry, assetByHash) {
  const texSet = new Set();
  for (let off = 0x30; off + 4 <= actrEntry.chunk.length; off += 4) {
    const h = toHex32(actrEntry.chunk.readUInt32LE(off));
    const target = assetByHash.get(h);
    if (target && target.fourCC === "TEXR") {
      texSet.add(target.name);
    }
  }
  return [...texSet];
}

function quatToDegZ(q) {
  if (!q) return 0;
  // Standard Z-axis angle from quaternion (0, 0, z, w)
  const siny = 2 * (q.w * q.z + q.x * q.y);
  const cosy = 1 - 2 * (q.y * q.y + q.z * q.z);
  return round4((Math.atan2(siny, cosy) * 180) / Math.PI);
}

function parseWorldNodeTransform(floats) {
  if (!Array.isArray(floats) || floats.length < 10) return null;
  for (let base = 0; base <= floats.length - 10; base++) {
    const sx = floats[base + 3];
    const sy = floats[base + 4];
    const sz = floats[base + 5];
    const qx = floats[base + 6];
    const qy = floats[base + 7];
    const qz = floats[base + 8];
    const qw = floats[base + 9];
    const qNorm = qx * qx + qy * qy + qz * qz + qw * qw;
    if (
      sx > 0 &&
      sx <= 100 &&
      sy > 0 &&
      sy <= 100 &&
      sz > 0 &&
      sz <= 100 &&
      Math.abs(qNorm - 1.0) < 0.02
    ) {
      const rem = floats.slice(base + 10).map(round4);
      let bboxMin = null;
      let bboxMax = null;
      if (rem.length >= 6) {
        bboxMin = { x: rem[0], y: rem[1], z: rem[2] };
        bboxMax = { x: rem[3], y: rem[4], z: rem[5] };
      } else if (rem.length >= 3) {
        bboxMin = { x: rem[0], y: rem[1], z: 0 };
        bboxMax = { x: Math.abs(rem[0]), y: rem[2], z: 0 };
      }
      const rot = { x: round4(qx), y: round4(qy), z: round4(qz), w: round4(qw) };
      return {
        customProps: floats.slice(0, base).map(round4),
        position: {
          x: round4(floats[base + 0]),
          y: round4(floats[base + 1]),
          z: round4(floats[base + 2]),
        },
        scale: { x: round4(sx), y: round4(sy), z: round4(sz) },
        rotationQuat: rot,
        rotationDegZ: quatToDegZ(rot),
        bboxMin,
        bboxMax,
      };
    }
  }
  return { customProps: floats.map(round4) };
}

function extractRawFloatsAfter(fetmBuf, startOffset, maxScanBytes = 220) {
  let p = startOffset;
  while (p < fetmBuf.length && fetmBuf[p] !== 0) p++;
  p++; // skip null terminator
  const end = Math.min(fetmBuf.length, p + maxScanBytes);
  const floats = [];
  while (p < end && floats.length < 24) {
    if (fetmBuf[p] === 0x06 && p + 5 <= end) {
      floats.push(round4(fetmBuf.readFloatLE(p + 1)));
      p += 5;
    } else if (fetmBuf[p] === 0x01 && p + 2 <= end) {
      p += 2;
    } else if (fetmBuf[p] >= 0x02 && fetmBuf[p] <= 0x05 && p + 5 <= end) {
      p += 5;
    } else {
      p++;
    }
  }
  return floats;
}

function decodeRawTagsBetween(fetmBuf, startOffset, endOffset) {
  let p = startOffset;
  while (p < endOffset && fetmBuf[p] !== 0) p++;
  p++;
  const tags = [];
  while (p < endOffset && tags.length < 32) {
    const t = fetmBuf[p];
    if (t === 0x06 && p + 5 <= endOffset) {
      tags.push({ type: "f32", val: round4(fetmBuf.readFloatLE(p + 1)) });
      p += 5;
    } else if (t === 0x01 && p + 2 <= endOffset) {
      tags.push({ type: "bool", val: fetmBuf[p + 1] });
      p += 2;
    } else if ((t === 0x02 || t === 0x03 || t === 0x04 || t === 0x05) && p + 5 <= endOffset) {
      tags.push({ type: `i32_${t}`, val: fetmBuf.readInt32LE(p + 1) });
      p += 5;
    } else {
      p++;
    }
  }
  return tags;
}

function parseRotasticSimulationFromFetm(fetmBuf) {
  const marker = Buffer.from("RotasticSimulation\0", "ascii");
  const idx = fetmBuf.indexOf(marker);
  if (idx === -1) return null;
  let p = idx + marker.length;
  const fields = [];
  while (p < Math.min(fetmBuf.length, idx + 260) && fields.length < 36) {
    const tag = fetmBuf[p];
    if (tag === 0x06) {
      fields.push({ tag: "float32", value: round4(fetmBuf.readFloatLE(p + 1)) });
      p += 5;
    } else if (tag === 0x01) {
      fields.push({ tag: "bool", value: fetmBuf[p + 1] !== 0 });
      p += 2;
    } else if (tag >= 0x02 && tag <= 0x05) {
      fields.push({ tag: `int32_t${tag}`, value: fetmBuf.readInt32LE(p + 1) });
      p += 5;
    } else {
      break;
    }
  }
  const v = (i) => (fields[i] ? fields[i].value : null);
  return {
    gravity: { x: v(5), y: v(6), z: v(7) },
    airDampingScalar: v(8),
    maxLinearSpeed: v(9),
    baseMaxTangentialSpeed: v(10),
    baseMaxAngularSpeed: v(11),
    baseRopeRadius: v(10) && v(11) ? round4(v(10) / v(11)) : 150,
    turnBoostSpeedPerStack: v(12),
    turnBoostCosBase: v(13),
    turnBoostCosStep: v(14),
    swingBoostTargetSpeed: v(15),
    swingBoostDuration: v(16),
    tangentialGravityScale: v(17),
    releaseLookbackWindow: v(18),
    releaseGaussianSigma: v(19),
    releaseBoostMultiplier: v(20),
    wallBounceRestitution: v(21),
    grappleReattachLockout: v(22),
    chargeFillRate: v(23),
    chargeEnabled: v(24),
    minSpeedForChargeAndPvpClamp: v(25),
    stunChargeMultiplier: v(26),
    stunDuration: v(27),
    respawnInvulnDuration: v(28),
    oobReelinSpeed: v(33),
    oobMargin: v(34),
    allowRegrappleOnFreshPress: v(35),
  };
}

/**
 * Extracts FlowGraph animation actions (`RotateNode`, `MoveNode`, `TimerWait`) directly
 * from the raw FETM byte stream so dynamic level hazards are 100% faithfully captured.
 */
function extractFlowMotions(fetmBuf) {
  const MOVE_HASH = -680835946; // 0xD76B5CD6 (MoveTo absolute)
  const MOVE_REL_HASH = 2127667906; // 0x7ED2AE42 (MoveBy relative delta)
  const ROTATE_HASH = -1702484359; // 0x9A86A6F9 (RotateBy delta)
  const TIMER_HASH = 1697474303; // 0x652D66FF
  const SHAKE_HASH = -978391924; // 0xC5AEA98C

  function scanTokens(start, count) {
    let p = start;
    const toks = [];
    while (p < fetmBuf.length && toks.length < count) {
      const t = fetmBuf[p];
      if (t === 0x06 && p + 5 <= fetmBuf.length) {
        toks.push({ type: "f", val: round4(fetmBuf.readFloatLE(p + 1)) });
        p += 5;
      } else if (t === 0x01 && p + 2 <= fetmBuf.length) {
        toks.push({ type: "b", val: fetmBuf[p + 1] });
        p += 2;
      } else if (t >= 0x02 && t <= 0x05 && p + 5 <= fetmBuf.length) {
        toks.push({ type: "i", val: fetmBuf.readInt32LE(p + 1) });
        p += 5;
      } else {
        p++;
      }
    }
    return toks;
  }

  const rotations = [];
  const moves = [];
  const timers = [];
  const shakes = [];

  for (let off = 0; off + 5 <= fetmBuf.length; off++) {
    if (fetmBuf[off] !== 0x05) continue;
    const h = fetmBuf.readInt32LE(off + 1);
    if (h === ROTATE_HASH) {
      const toks = scanTokens(off + 5, 16);
      const floats = toks.filter((x) => x.type === "f").map((x) => x.val);
      const targetGuid = toks.find((x) => x.type === "i" && x.val !== 196993880 && x.val !== 1827877772)?.val;
      if (floats.length >= 4) {
        rotations.push({
          offsetHex: "0x" + off.toString(16),
          targetGuid,
          deltaEulerDeg: { x: floats[0], y: floats[1], z: floats[2] },
          durationSec: floats[3],
        });
      }
    } else if (h === MOVE_HASH || h === MOVE_REL_HASH) {
      const toks = scanTokens(off + 5, 16);
      const floats = toks.filter((x) => x.type === "f").map((x) => x.val);
      const targetGuid = toks.find(
        (x) =>
          x.type === "i" &&
          x.val !== 196993880 &&
          x.val !== -1704638597 &&
          x.val !== -1780553426
      )?.val;
      if (floats.length >= 4) {
        moves.push({
          kind: h === MOVE_REL_HASH ? "MoveBy" : "MoveTo",
          offsetHex: "0x" + off.toString(16),
          targetGuid,
          targetPos: { x: floats[0], y: floats[1], z: floats[2] },
          durationSec: floats[3],
        });
      }
    } else if (h === TIMER_HASH) {
      const toks = scanTokens(off + 5, 12);
      const floats = toks.filter((x) => x.type === "f").map((x) => x.val);
      if (floats.length >= 1) {
        timers.push({ offsetHex: "0x" + off.toString(16), delaySec: floats[0] });
      }
    } else if (h === SHAKE_HASH) {
      const toks = scanTokens(off + 5, 14);
      const floats = toks.filter((x) => x.type === "f").map((x) => x.val);
      const targetGuid = toks.find((x) => x.type === "i" && x.val !== 196993880 && x.val !== 1061800524)?.val;
      if (floats.length >= 6) {
        shakes.push({
          offsetHex: "0x" + off.toString(16),
          targetGuid,
          params: floats.slice(0, 6),
        });
      }
    }
  }

  return { rotations, moves, timers, shakes };
}

function main() {
  fs.mkdirSync(OUT_TEX_BG_DIR, { recursive: true });
  fs.mkdirSync(OUT_TEX_GLOBAL_DIR, { recursive: true });

  // 1. Load w_global.pc (if available on Steam) for ACTR -> TEXR resolution & extraction
  let globalEntries = [];
  const globalByHash = new Map();
  const globalByName = new Map();
  if (fs.existsSync(SOURCE_GLOBAL_PC)) {
    globalEntries = parsePackageEntries(SOURCE_GLOBAL_PC);
    for (const e of globalEntries) {
      globalByHash.set(e.hash, e);
      globalByName.set(`${e.fourCC}:${e.name.toLowerCase()}`, e);
    }
    console.log(`[dm-extract] Loaded w_global.pc (${globalEntries.length} entries)`);
  } else {
    console.warn("[dm-extract] w_global.pc not found locally; skipping extra DDS extraction.");
  }

  const extractedGlobalTex = new Set();
  const extractedBgTex = new Set();

  function ensureGlobalTexExtracted(texName, isBg) {
    const e = globalByName.get(`TEXR:${texName.toLowerCase()}`);
    if (!e) return;
    const targetDir = isBg ? OUT_TEX_BG_DIR : OUT_TEX_GLOBAL_DIR;
    const outPath = path.join(targetDir, `${e.name}.dds`);
    if (!fs.existsSync(outPath)) {
      const res = createDdsBuffer(e.chunk);
      if (res) {
        fs.writeFileSync(outPath, res.ddsBuffer);
      }
    }
    if (isBg) extractedBgTex.add(e.name);
    else extractedGlobalTex.add(e.name);
  }

  const maps = [];

  for (const mapId of DM_MAP_IDS) {
    const fetmJson = JSON.parse(
      fs.readFileSync(path.join(FETM_JSON_DIR, `${mapId}_fetm.json`), "utf8")
    );
    const fetmEntries = parsePackageEntries(path.join(PKG_DIR, `${mapId}_fetm.pc`));
    const fetmBuf = fetmEntries[0].chunk;
    const pkgEntries = parsePackageEntries(path.join(PKG_DIR, `${mapId}.pc`));

    const assetByHash = new Map(globalByHash);
    const assetByName = new Map(globalByName);
    for (const e of pkgEntries) {
      assetByHash.set(e.hash, e);
      assetByName.set(`${e.fourCC}:${e.name.toLowerCase()}`, e);
    }

    const simulation = parseRotasticSimulationFromFetm(fetmBuf);
    const flowMotions = extractFlowMotions(fetmBuf);
    const nodes = fetmJson.nodes;

    let viewportSize = { width: 1920, height: 1080 };
    let camera = null;
    let matchTimerSeconds = 120;
    let bgmTrack = null;
    const backgroundLayers = [];
    const decorativeProps = [];
    const attachPoints = [];
    const walls = [];
    const switches = [];
    const playerSpawns = [];
    let deathTrigger = null;

    // Build refpoint lookup (e.g., RefPoint001 in lvl01)
    const refPointsByName = new Map();
    for (let i = 0; i < nodes.length; i++) {
      if (nodes[i].text === "CRotasticRefPoint" && i > 0 && nodes[i + 1]) {
        const tf = parseWorldNodeTransform(nodes[i + 1].taggedFloats);
        refPointsByName.set(nodes[i - 1].text, tf);
      }
    }

    for (let i = 0; i < nodes.length; i++) {
      const n = nodes[i];
      const prev = i > 0 ? nodes[i - 1] : null;
      const next = i + 1 < nodes.length ? nodes[i + 1] : null;

      if (n.text === "ec_stock_viewport_size" && n.taggedFloats.length >= 2) {
        viewportSize = { width: n.taggedFloats[0], height: n.taggedFloats[1] };
      }

      if (n.text === "CRotasticCamera" && next) {
        const tf = parseWorldNodeTransform(next.taggedFloats);
        if (tf?.position) camera = tf.position;
      }

      if (n.text === "CRotasticTimer" && next) {
        const tf = parseWorldNodeTransform(next.taggedFloats);
        if (tf?.customProps?.length) matchTimerSeconds = tf.customProps[0];
      }

      if (n.text === "CRotasticAudioStreamEmitter") {
        for (let k = i + 1; k < Math.min(nodes.length, i + 6); k++) {
          if (nodes[k].text.startsWith("bgm_")) {
            bgmTrack = nodes[k].text;
            break;
          }
        }
      }

      if (n.text === "CAttachPoint" && next) {
        const tf = parseWorldNodeTransform(next.taggedFloats);
        const textures = ["t_accroche01_c", "t_accrocheaura_c"];
        textures.forEach((tx) => ensureGlobalTexExtracted(tx, false));
        attachPoints.push({
          name: prev ? prev.text : `attach_${attachPoints.length}`,
          position: tf?.position ?? null,
          bboxMin: tf?.bboxMin ?? null,
          bboxMax: tf?.bboxMax ?? null,
          textures,
        });
      }

      if (n.text === "CWall" && next) {
        const rawFloats = extractRawFloatsAfter(fetmBuf, next.offset, 180);
        const tf = parseWorldNodeTransform(rawFloats.length >= 10 ? rawFloats : next.taggedFloats);
        const nextOff = i + 2 < nodes.length ? nodes[i + 2].offset : fetmBuf.length;
        const rawTags = decodeRawTagsBetween(fetmBuf, next.offset, nextOff);

        // If `next` didn't contain position directly (e.g. parented Mur001 in lvl01), check nodes[i+2]
        let localParent = null;
        let resolvedPos = tf?.position ?? null;
        let resolvedScale = tf?.scale ?? { x: 1, y: 1, z: 1 };
        let resolvedQuat = tf?.rotationQuat ?? { x: 0, y: 0, z: 0, w: 1 };
        let resolvedDegZ = tf?.rotationDegZ ?? 0;
        let resolvedBboxMin = tf?.bboxMin ?? null;
        let resolvedBboxMax = tf?.bboxMax ?? null;

        if (!resolvedPos && nodes[i + 2]) {
          const childTf = parseWorldNodeTransform(nodes[i + 2].taggedFloats);
          const parentName = nodes[i + 2].text;
          const parentTf = refPointsByName.get(parentName);
          localParent = parentName;
          if (childTf?.position) {
            resolvedPos = parentTf?.position
              ? {
                  x: round4(parentTf.position.x + childTf.position.x),
                  y: round4(parentTf.position.y + childTf.position.y),
                  z: round4(parentTf.position.z + childTf.position.z),
                }
              : childTf.position;
            resolvedScale = childTf.scale ?? resolvedScale;
            resolvedQuat = childTf.rotationQuat ?? resolvedQuat;
            resolvedDegZ = childTf.rotationDegZ ?? resolvedDegZ;
          }
          // Inherit bbox from wall customProps if split
          if (!resolvedBboxMin && next.taggedFloats.length >= 9) {
            resolvedBboxMin = {
              x: round4(next.taggedFloats[3]),
              y: round4(next.taggedFloats[4]),
              z: round4(next.taggedFloats[5]),
            };
            resolvedBboxMax = {
              x: round4(next.taggedFloats[6]),
              y: round4(next.taggedFloats[7]),
              z: round4(next.taggedFloats[8]),
            };
          }
        }

        let meshActor = null;
        let simBody = null;
        for (let k = i + 2; k < Math.min(nodes.length, i + 15); k++) {
          if (nodes[k].text.startsWith("o_")) {
            meshActor = meshActor || nodes[k].text;
          }
          if (nodes[k].text.startsWith("SimBody")) {
            simBody = {
              type: nodes[k].text,
              params: nodes[k].taggedFloats.map(round4),
            };
            break;
          }
        }

        const actr = meshActor ? assetByName.get(`ACTR:${meshActor.toLowerCase()}`) : null;
        const textures = actr ? resolveActorTextures(actr, assetByHash) : [];

        // Exact REFD wall flag at rawTags[5]: 1 = deadly/killer, 0 = bouncy/solid
        const isDeadly = rawTags[5]?.val === 1;
        const isSticky = rawTags[6]?.val === 1;

        walls.push({
          name: prev ? prev.text : `wall_${walls.length}`,
          parentRef: localParent,
          position: resolvedPos,
          scale: resolvedScale,
          rotationQuat: resolvedQuat,
          rotationDegZ: resolvedDegZ,
          bboxMin: resolvedBboxMin,
          bboxMax: resolvedBboxMax,
          isDeadly,
          isSticky,
          physicsParams: {
            restitution: tf?.customProps?.[0] ?? 1.0,
            repulsion: tf?.customProps?.[1] ?? 500.0,
            slide: tf?.customProps?.[2] ?? 200.0,
          },
          linkHash: rawTags[12]?.val ?? 0,
          simBody,
          meshActor,
          textures,
        });
      }

      if (n.text === "CMecaSwitchObject" && next) {
        const tf = parseWorldNodeTransform(next.taggedFloats);
        const leverTextures = [];
        for (const lname of [
          "o_levierbase_back",
          "o_levierbase_off",
          "o_levierbase_on",
          "o_levierbois",
          "o_leviercrapeau",
          "o_leviercrapeaudead",
        ]) {
          const a = assetByName.get(`ACTR:${lname}`);
          if (a) leverTextures.push(...resolveActorTextures(a, assetByHash));
        }
        switches.push({
          name: prev ? prev.text : "MecaSwitch",
          position: tf?.position ?? null,
          rotationDegZ: tf?.rotationDegZ ?? 0,
          textures: [...new Set(leverTextures)],
        });
      }

      if (n.text === "CRotasticPlayerDeathTrigger" && next) {
        const tf = parseWorldNodeTransform(next.taggedFloats);
        deathTrigger = {
          name: prev ? prev.text : "TriggerPlanePlayerDeath",
          position: tf?.position ?? null,
          bboxMin: tf?.bboxMin ?? null,
          bboxMax: tf?.bboxMax ?? null,
        };
      }

      if ((n.text === "CSpawnArea" || n.text === "CSpawnPoint") && next) {
        const tf = parseWorldNodeTransform(next.taggedFloats);
        playerSpawns.push({
          className: n.text,
          name: prev ? prev.text : `spawn_${playerSpawns.length}`,
          position: tf?.position ?? null,
          bboxMin: tf?.bboxMin ?? null,
          bboxMax: tf?.bboxMax ?? null,
        });
      }

      // Visual scene props & background actors (`prop` node followed by `o_*` or `O_*`)
      if (
        n.text === "prop" &&
        next &&
        /^o_/i.test(next.text) &&
        !/character|playeringame|coin|accroche/i.test(next.text)
      ) {
        const propName = next.text;
        const tfNode = nodes[i + 2];
        const tf = tfNode ? parseWorldNodeTransform(tfNode.taggedFloats) : null;
        // Find actual actor mesh string in lookahead (lowercase `o_*`)
        let actorMeshName = propName.toLowerCase();
        for (let k = i + 2; k < Math.min(nodes.length, i + 7); k++) {
          if (/^o_/i.test(nodes[k].text) && assetByName.has(`ACTR:${nodes[k].text.toLowerCase()}`)) {
            actorMeshName = nodes[k].text.toLowerCase();
            break;
          }
        }
        const actr = assetByName.get(`ACTR:${actorMeshName}`);
        const textures = actr ? resolveActorTextures(actr, assetByHash) : [];
        const isBackground = /bg|fond_|home_|ruine_/i.test(propName);

        for (const tx of textures) {
          if (isBackground || tx.startsWith("t_bg")) {
            ensureGlobalTexExtracted(tx, true);
          } else {
            ensureGlobalTexExtracted(tx, false);
          }
        }

        const entry = {
          name: propName,
          actorMeshName,
          position: tf?.position ?? null,
          scale: tf?.scale ?? null,
          rotationDegZ: tf?.rotationDegZ ?? 0,
          bboxMin: tf?.bboxMin ?? null,
          bboxMax: tf?.bboxMax ?? null,
          textures,
        };

        if (isBackground) {
          backgroundLayers.push(entry);
        } else {
          decorativeProps.push(entry);
        }
      }
    }

    // Ensure rope textures are extracted once
    for (const rTex of ["t_corde_c", "t_cordebeam_c", "t_cordeuberbeam_c"]) {
      ensureGlobalTexExtracted(rTex, false);
    }

    maps.push({
      mapId,
      packageFile: `${mapId}.pc`,
      authorAndDate: fetmJson.authorAndDate,
      viewportSize,
      camera,
      bgmTrack,
      matchTimerSeconds,
      simulation,
      counts: {
        attachPoints: attachPoints.length,
        walls: walls.length,
        deadlyWalls: walls.filter((w) => w.isDeadly).length,
        backgroundLayers: backgroundLayers.length,
        decorativeProps: decorativeProps.length,
        switches: switches.length,
        playerSpawns: playerSpawns.length,
      },
      backgroundLayers,
      decorativeProps,
      attachPoints,
      walls,
      switches,
      flowMotions,
      deathTrigger,
      playerSpawns,
    });
  }

  fs.writeFileSync(
    OUT_SPEC_JSON,
    JSON.stringify(
      {
        generatedAt: new Date().toISOString(),
        totalDeathmatchMaps: maps.length,
        extractedBackgroundTextures: [...extractedBgTex].sort(),
        extractedGlobalGameplayTextures: [...extractedGlobalTex].sort(),
        maps,
      },
      null,
      2
    ),
    "utf8"
  );

  // Write human-readable specification document
  let md = `# Catálogo Completo de Objetos e Mecânicas — 8 Mapas Multiplayer Deathmatch\n\n`;
  md += `> Gerado automaticamente por [\`tools/extract/extract-deathmatch-maps.mjs\`](tools/extract/extract-deathmatch-maps.mjs) a partir dos pacotes \`w_multi_dm_lvl*_fetm.pc\`, \`w_multi_dm_lvl*.pc\` e \`w_global.pc\`.\n`;
  md += `> JSON completo em [\`reference/decompiled/deathmatch-maps-spec.json\`](reference/decompiled/deathmatch-maps-spec.json).\n\n`;
  md += `> **Escopo:** Conforme verificado em \`Lobby MapList DataTable\` (\`w_menurotastic_fetm.pc\`), existem **8 arenas oficiais de Multiplayer Deathmatch** (\`w_multi_dm_lvl01, 02, 04, 07, 09, 10, 11, 13\`). Os mapas do modo **Collect** (\`*coll*\`) foram arquivados em \`archive/collect-mode/\`, e os mapas \`w_ps3_deathmatch_*\` pertencem à lista de campanha Solo.\n\n`;

  md += `## Resumo Geral dos 8 Mapas Deathmatch\n\n`;
  md += `| Mapa | Cenário / BGM | Pivôs | Paredes (Letais) | Movimentos / Mecânicas Especiais |\n`;
  md += `| :--- | :--- | :---: | :---: | :--- |\n`;
  for (const m of maps) {
    const bgNames = m.backgroundLayers.map((b) => b.name).join(", ") || "-";
    const mechParts = [];
    if (m.flowMotions.rotations.length) mechParts.push(`${m.flowMotions.rotations.length} rotações`);
    if (m.flowMotions.moves.length) mechParts.push(`${m.flowMotions.moves.length} translações`);
    if (m.switches.length) mechParts.push(`${m.switches.length} CMecaSwitchObject`);
    if (m.flowMotions.shakes.length) mechParts.push(`${m.flowMotions.shakes.length} avisos/pulsos`);
    md += `| \`${m.mapId}\` | ${bgNames} (\`${m.bgmTrack ?? "-"}\`) | ${m.counts.attachPoints} | ${m.counts.walls} (${m.counts.deadlyWalls}) | ${mechParts.join(", ") || "Arena estática"} |\n`;
  }
  md += `\n---\n\n`;

  for (const m of maps) {
    md += `## \`${m.mapId}\`\n\n`;
    md += `- **BGM:** \`${m.bgmTrack}\` | **Timer:** \`${m.matchTimerSeconds}s\` | **Viewport:** \`${m.viewportSize.width}×${m.viewportSize.height}\`\n`;
    md += `- **Camadas de Background (${m.backgroundLayers.length}):**\n`;
    for (const bg of m.backgroundLayers) {
      md += `  - \`${bg.name}\` (\`${bg.actorMeshName}\`): texturas = [${bg.textures.map((t) => `\`${t}\``).join(", ")}]\n`;
    }
    if (m.decorativeProps.length > 0) {
      md += `- **Props Visuais / Cenário (${m.decorativeProps.length}):**\n`;
      for (const dp of m.decorativeProps) {
        md += `  - \`${dp.name}\` pos=\`(${dp.position?.x ?? "?"}, ${dp.position?.y ?? "?"})\` rot=\`${dp.rotationDegZ}°\` tex=[${dp.textures.map((t) => `\`${t}\``).join(", ")}]\n`;
      }
    }
    md += `- **Pivôs / Âncoras (\`CAttachPoint\`, ${m.attachPoints.length}):**\n`;
    for (const ap of m.attachPoints) {
      md += `  - \`${ap.name}\`: \`(${ap.position?.x}, ${ap.position?.y})\`\n`;
    }
    md += `- **Paredes & Armadilhas (\`CWall\`, ${m.walls.length}):**\n`;
    for (const w of m.walls) {
      md += `  - \`${w.name}\` [${w.isDeadly ? "**LETAL**" : "ELÁSTICA"}]: pos=\`(${w.position?.x}, ${w.position?.y})\` scale=\`(${w.scale?.x}, ${w.scale?.y})\` rot=\`${w.rotationDegZ}°\` bbox=\`[${w.bboxMin?.x},${w.bboxMin?.y}]..[${w.bboxMax?.x},${w.bboxMax?.y}]\` mesh=\`${w.meshActor ?? "-"}\`\n`;
    }
    if (m.switches.length > 0) {
      md += `- **Interruptores (\`CMecaSwitchObject\`):**\n`;
      for (const sw of m.switches) {
        md += `  - \`${sw.name}\`: pos=\`(${sw.position?.x}, ${sw.position?.y})\` rot=\`${sw.rotationDegZ}°\` tex=[${sw.textures.map((t) => `\`${t}\``).join(", ")}]\n`;
      }
    }
    if (m.flowMotions.rotations.length || m.flowMotions.moves.length) {
      md += `- **Animações / Trajetórias Dinâmicas (\`FlowGraph\`):**\n`;
      for (const r of m.flowMotions.rotations) {
        md += `  - \`Rotate\` (\`${r.offsetHex}\`, target=\`${r.targetGuid}\`): $\\Delta\\theta_Z = ${r.deltaEulerDeg.z}^\\circ$ em \`${r.durationSec}s\`\n`;
      }
      for (const mv of m.flowMotions.moves) {
        md += `  - \`MoveTo\` (\`${mv.offsetHex}\`, target=\`${mv.targetGuid}\`): destino \`(${mv.targetPos.x}, ${mv.targetPos.y})\` em \`${mv.durationSec}s\`\n`;
      }
    }
    md += `\n`;
  }

  fs.writeFileSync(OUT_DOC_MD, md, "utf8");

  console.log(`[dm-extract] Wrote ${OUT_SPEC_JSON}`);
  console.log(`[dm-extract] Wrote ${OUT_DOC_MD}`);
  console.log(
    `[dm-extract] Extracted ${extractedBgTex.size} background DDS + ${extractedGlobalTex.size} gameplay global DDS from w_global.pc`
  );
}

main();
