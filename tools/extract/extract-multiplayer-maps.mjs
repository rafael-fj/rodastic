#!/usr/bin/env node
/**
 * Phase 2 Extractor: Multiplayer Maps & Simulation Constants
 *
 * Parses all multiplayer/PS3 `*_refm.pc` and `*_fetm.pc` packages in
 * `reference/game-files/packages/` and generates a complete specification in
 * `reference/decompiled/multiplayer-maps-spec.json`, including:
 *   1. Exact REFD property schemas & default values for `RotasticSimulation`,
 *      `WorldNodeSimulation`, `AttachPoint`, `Wall`, `PickUp`, `GravityVortex`,
 *      `ModeMultiDeathMatch`, `ModeMultiCollecte`, and `RotasticTimer`.
 *   2. Per-map `RotasticSimulation` overrides and `WorldNodeSimulation` gravity.
 *   3. Per-map entities: attach points (`CAttachPoint`), walls (`CWall`),
 *      pickups (`CPickUp`), gravity vortices (`CGravityVortex`), death triggers
 *      (`CRotasticPlayerDeathTrigger`), player spawns (`CSpawnArea`/`CSpawnPoint`),
 *      and mode rules (`CModeMultiDeathMatch` / `CModeMultiCollecte`).
 */

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = path.resolve(__dirname, "../..");
const PKG_DIR = path.join(REPO_ROOT, "reference/game-files/packages");
const FETM_JSON_DIR = path.join(REPO_ROOT, "reference/decompiled/fetm");
const OUT_FILE = path.join(REPO_ROOT, "reference/decompiled/multiplayer-maps-spec.json");

function parsePackageIndex(filePath) {
  const buf = fs.readFileSync(filePath);
  const entryCount = buf.readUInt32LE(0x0c);
  const strTableLen = buf.readUInt32LE(0x1c);
  const dirSize = buf.readUInt32LE(0x30);
  const dirBuf = buf.subarray(0x190, 0x190 + dirSize);
  const strBuf = buf.subarray(0x190 + dirSize, 0x190 + dirSize + strTableLen);

  const entries = [];
  for (let i = 0; i < entryCount; i++) {
    const off = i * 32;
    const sectorOff = dirBuf.readUInt32LE(off + 0);
    const hash = dirBuf.readUInt32LE(off + 4);
    const size = dirBuf.readUInt32LE(off + 8);
    const nameOff = dirBuf.readUInt32LE(off + 12);
    let endStr = nameOff;
    while (endStr < strTableLen && strBuf[endStr] !== 0) endStr++;
    const name = strBuf.toString("ascii", nameOff, endStr);
    const fileOffset = sectorOff * 16;
    entries.push({
      name,
      hash: "0x" + (hash >>> 0).toString(16).toUpperCase().padStart(8, "0"),
      size,
      chunk: buf.subarray(fileOffset, fileOffset + size),
    });
  }
  return entries;
}

function round4(n) {
  return typeof n === "number" && Number.isFinite(n) ? Number(n.toFixed(4)) : n;
}

function parseRefdSchema(chunk, name) {
  if (chunk.length < 0x50 || chunk.readUInt32LE(0x38) !== 0x0bbde358) return null;
  const propCount = chunk.readUInt32LE(0x40);
  const propTableOff = chunk.readUInt32LE(0x44);
  const valPoolOff = chunk.readUInt32LE(0x48);
  const properties = [];
  for (let i = 0; i < propCount; i++) {
    const pOff = propTableOff + i * 20;
    if (pOff + 20 > chunk.length) break;
    const propHash = chunk.readUInt32LE(pOff + 0);
    const parentIdx = chunk.readInt16LE(pOff + 4);
    const propType = chunk.readUInt16LE(pOff + 6);
    const countOrMode = chunk.readUInt32LE(pOff + 8);
    const flags = chunk.readUInt32LE(pOff + 12);
    const relOff = chunk.readUInt32LE(pOff + 16);

    let meta = null;
    if (relOff > 0 && relOff + 16 <= chunk.length) {
      if (propType === 0) {
        meta = {
          kind: "float",
          min: round4(chunk.readFloatLE(relOff + 0)),
          max: round4(chunk.readFloatLE(relOff + 4)),
          default: round4(chunk.readFloatLE(relOff + 8)),
          step: round4(chunk.readFloatLE(relOff + 12)),
        };
      } else {
        meta = {
          kind: "int_or_enum",
          min: chunk.readInt32LE(relOff + 0),
          max: chunk.readInt32LE(relOff + 4),
          default: chunk.readInt32LE(relOff + 8),
          step: chunk.readInt32LE(relOff + 12),
        };
      }
    }

    properties.push({
      index: i,
      structOffsetHex: "0x" + (0x10 + i * 4).toString(16),
      hash: "0x" + (propHash >>> 0).toString(16).toUpperCase().padStart(8, "0"),
      parentIdx,
      propType,
      countOrMode,
      flags,
      relOffHex: "0x" + relOff.toString(16),
      meta,
    });
  }
  return {
    schemaName: name,
    propCount,
    propTableOffHex: "0x" + propTableOff.toString(16),
    valPoolOffHex: "0x" + valPoolOff.toString(16),
    properties,
  };
}

/**
 * Decodes the binary tag stream immediately following `RotasticSimulation\0` in a FETM chunk.
 */
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
      fields.push({ tag: "bool", value: fetmBuf[p + 1] !== 0, raw: fetmBuf[p + 1] });
      p += 2;
    } else if (tag === 0x02 || tag === 0x03 || tag === 0x04 || tag === 0x05) {
      fields.push({ tag: `int32_t${tag}`, value: fetmBuf.readInt32LE(p + 1) });
      p += 5;
    } else {
      break;
    }
  }

  // Map fields to named simulation parameters (verified against CRotasticPhysicPlayer.asm & REFD schema)
  const getVal = (i) => (fields[i] ? fields[i].value : null);
  const baseMaxTangentialSpeed = getVal(10);
  const baseMaxAngularSpeed = getVal(11);
  return {
    gravity: {
      x: getVal(5),
      y: getVal(6),
      z: getVal(7),
    },
    airDampingOrFallbackGravityScalar: getVal(8),
    maxLinearSpeed: getVal(9),
    baseMaxTangentialSpeed,
    baseMaxAngularSpeed,
    baseRopeRadius:
      baseMaxTangentialSpeed && baseMaxAngularSpeed
        ? round4(baseMaxTangentialSpeed / baseMaxAngularSpeed)
        : 150,
    turnBoostSpeedPerStack: getVal(12),
    turnBoostCosBase: getVal(13),
    turnBoostCosStep: getVal(14),
    swingBoostTargetSpeed: getVal(15),
    swingBoostDuration: getVal(16),
    tangentialGravityScale: getVal(17),
    releaseLookbackWindow: getVal(18),
    releaseGaussianSigma: getVal(19),
    releaseBoostMultiplier: getVal(20),
    wallBounceRestitution: getVal(21),
    grappleReattachLockout: getVal(22),
    chargeFillRate: getVal(23),
    chargeEnabledFlag: getVal(24),
    minSpeedForChargeAndPvpClamp: getVal(25),
    stunChargeMultiplier: getVal(26),
    stunDuration: getVal(27),
    respawnInvulnDuration: getVal(28),
    airControlParam0: getVal(29),
    airControlParam1: getVal(30),
    airControlParam2: getVal(31),
    airControlParam3: getVal(32),
    oobReelinSpeed: getVal(33),
    oobMargin: getVal(34),
    allowRegrappleOnFreshPress: getVal(35),
    rawFields: fields,
  };
}

/**
 * Extracts transform [x, y, z, sx, sy, sz, qx, qy, qz, qw, minX, minY, minZ, maxX, maxY, maxZ]
 * from the tail of a node's taggedFloats array.
 * Every WorldNode in FEngine ends its float property list with:
 *   pos(3), scale(3), quat(4), bboxMin(3), bboxMax(3), [optional lod/cull floats (1..2)]
 */
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
      return {
        customProps: floats.slice(0, base).map(round4),
        position: {
          x: round4(floats[base + 0]),
          y: round4(floats[base + 1]),
          z: round4(floats[base + 2]),
        },
        scale: {
          x: round4(sx),
          y: round4(sy),
          z: round4(sz),
        },
        rotationQuat: {
          x: round4(qx),
          y: round4(qy),
          z: round4(qz),
          w: round4(qw),
        },
        bboxMin,
        bboxMax,
      };
    }
  }
  return { customProps: floats.map(round4) };
}

/**
 * Decodes the raw tag stream between `nodeOffset` and `nextNodeOffset` in `fetmBuf`
 * so we also capture integer/enum/boolean properties (like Pickup type or Wall flags).
 */
function decodeRawTagsBetween(fetmBuf, startOffset, endOffset) {
  // Advance past the null-terminated string at startOffset
  let p = startOffset;
  while (p < endOffset && fetmBuf[p] !== 0) p++;
  p++; // skip null byte

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

function parseMapSpec(fetmJsonPath) {
  const fetmData = JSON.parse(fs.readFileSync(fetmJsonPath, "utf8"));
  const pcPath = path.join(PKG_DIR, fetmData.fileName);
  const pkgEntries = parsePackageIndex(pcPath);
  const fetmBuf = pkgEntries[0].chunk;

  const simulation = parseRotasticSimulationFromFetm(fetmBuf);
  const nodes = fetmData.nodes;

  let viewportSize = { width: 1920, height: 1080 };
  let gameMode = null;
  let matchTimerSeconds = null;
  const attachPoints = [];
  const walls = [];
  const pickups = [];
  const gravityVortices = [];
  const deathTriggers = [];
  const playerSpawns = [];

  for (let i = 0; i < nodes.length; i++) {
    const n = nodes[i];
    const prev = i > 0 ? nodes[i - 1] : null;
    const next = i + 1 < nodes.length ? nodes[i + 1] : null;

    if (n.text === "ec_stock_viewport_size" && n.taggedFloats.length >= 2) {
      viewportSize = { width: n.taggedFloats[0], height: n.taggedFloats[1] };
    }

    if (
      n.text === "CModeMultiDeathMatch" ||
      n.text === "CModeMultiCollecte" ||
      n.text === "CRotasticGameModeSoloCollectPickup" ||
      n.text === "CRotasticGameModeSoloDeathmatch" ||
      n.text === "CRotasticGameModeSoloMakeFrag" ||
      n.text === "CRotasticGameModeSoloKill"
    ) {
      const nextOff = i + 2 < nodes.length ? nodes[i + 2].offset : fetmBuf.length;
      const rawTags = next ? decodeRawTagsBetween(fetmBuf, next.offset, nextOff) : [];
      const isDm =
        n.text === "CModeMultiDeathMatch" ||
        n.text === "CRotasticGameModeSoloDeathmatch" ||
        n.text === "CRotasticGameModeSoloMakeFrag" ||
        n.text === "CRotasticGameModeSoloKill" ||
        fetmData.fetmName.includes("deathmatch");
      gameMode = {
        className: n.text,
        instanceName: prev ? prev.text : n.text,
        modeType: isDm ? "deathmatch" : "collect",
        rawTags: rawTags.slice(0, 10),
      };
    }

    if (n.text === "CRotasticTimer" && next) {
      const tf = parseWorldNodeTransform(next.taggedFloats);
      matchTimerSeconds = tf && tf.customProps.length > 0 ? tf.customProps[0] : null;
    }

    if (n.text === "CAttachPoint" && next) {
      const tf = parseWorldNodeTransform(next.taggedFloats);
      const nextOff = i + 2 < nodes.length ? nodes[i + 2].offset : fetmBuf.length;
      const rawTags = decodeRawTagsBetween(fetmBuf, next.offset, nextOff);
      attachPoints.push({
        name: prev ? prev.text : `attach_${attachPoints.length}`,
        position: tf?.position ?? null,
        bboxMin: tf?.bboxMin ?? null,
        bboxMax: tf?.bboxMax ?? null,
        customProps: tf?.customProps ?? [],
        leadingTags: rawTags.slice(0, 6),
      });
    }

    if (n.text === "CWall" && next) {
      const tf = parseWorldNodeTransform(next.taggedFloats);
      const nextOff = i + 2 < nodes.length ? nodes[i + 2].offset : fetmBuf.length;
      const rawTags = decodeRawTagsBetween(fetmBuf, next.offset, nextOff);
      // Look ahead for mesh and SimBodyBox/SimBodySphere
      let meshName = null;
      let simBody = null;
      for (let k = i + 2; k < Math.min(nodes.length, i + 15); k++) {
        if (nodes[k].text.startsWith("o_") || nodes[k].text.startsWith("w_")) {
          meshName = meshName || nodes[k].text;
        }
        if (nodes[k].text.startsWith("SimBody")) {
          simBody = {
            type: nodes[k].text,
            params: nodes[k].taggedFloats.map(round4),
          };
          break;
        }
      }
      walls.push({
        name: prev ? prev.text : `wall_${walls.length}`,
        position: tf?.position ?? null,
        rotationQuat: tf?.rotationQuat ?? null,
        scale: tf?.scale ?? null,
        bboxMin: tf?.bboxMin ?? null,
        bboxMax: tf?.bboxMax ?? null,
        wallPhysicsParams: tf?.customProps ?? [],
        leadingTags: rawTags.slice(0, 8),
        meshName,
        simBody,
      });
    }

    if (n.text === "CPickUp" && next) {
      const tf = parseWorldNodeTransform(next.taggedFloats);
      const nextOff = i + 2 < nodes.length ? nodes[i + 2].offset : fetmBuf.length;
      const rawTags = decodeRawTagsBetween(fetmBuf, next.offset, nextOff);
      let meshName = null;
      for (let k = i + 2; k < Math.min(nodes.length, i + 10); k++) {
        if (nodes[k].text.startsWith("o_")) {
          meshName = nodes[k].text;
          break;
        }
      }
      // Classify pickup type from leadingTags[5] ([pickup + 0x1E8] enum verified at 0x00537BA0)
      const instName = prev ? prev.text : `pickup_${pickups.length}`;
      const enumVal = rawTags[5]?.val ?? 3;
      let pickupCategory = "jewel_yellow_1pt";
      let pointValue = 1;
      if (enumVal === 1) {
        pickupCategory = "jewel_blue_5pt";
        pointValue = 5;
      } else if (enumVal === 2) {
        pickupCategory = "jewel_green_5pt";
        pointValue = 5;
      } else if (enumVal === 3) {
        pickupCategory = "jewel_yellow_1pt";
        pointValue = 1;
      } else if (enumVal === 4) {
        pickupCategory = "jewel_red_25pt";
        pointValue = 25;
      } else if (enumVal === 5) {
        pickupCategory = "diamond_powerup";
        pointValue = 0;
      }
      pickups.push({
        name: instName,
        pickupEnum: enumVal,
        category: pickupCategory,
        pointValue,
        meshName,
        position: tf?.position ?? null,
        bboxMin: tf?.bboxMin ?? null,
        bboxMax: tf?.bboxMax ?? null,
        customProps: tf?.customProps ?? [],
        leadingTags: rawTags.slice(0, 6),
      });
    }

    if (n.text === "CGravityVortex" && next) {
      const tf = parseWorldNodeTransform(next.taggedFloats);
      const nextOff = i + 2 < nodes.length ? nodes[i + 2].offset : fetmBuf.length;
      const rawTags = decodeRawTagsBetween(fetmBuf, next.offset, nextOff);
      gravityVortices.push({
        name: prev ? prev.text : `vortex_${gravityVortices.length}`,
        position: tf?.position ?? null,
        bboxMin: tf?.bboxMin ?? null,
        bboxMax: tf?.bboxMax ?? null,
        vortexParams: tf?.customProps ?? [],
        leadingTags: rawTags.slice(0, 8),
      });
    }

    if (n.text === "CRotasticPlayerDeathTrigger" && next) {
      const tf = parseWorldNodeTransform(next.taggedFloats);
      deathTriggers.push({
        name: prev ? prev.text : `deathTrigger_${deathTriggers.length}`,
        position: tf?.position ?? null,
        bboxMin: tf?.bboxMin ?? null,
        bboxMax: tf?.bboxMax ?? null,
        customProps: tf?.customProps ?? [],
      });
    }

    if ((n.text === "CSpawnArea" || n.text === "CSpawnPoint") && next) {
      const tf = parseWorldNodeTransform(next.taggedFloats);
      playerSpawns.push({
        className: n.text,
        name: prev ? prev.text : `spawn_${playerSpawns.length}`,
        position: tf?.position ?? null,
        bboxMin: tf?.bboxMin ?? null,
        bboxMax: tf?.bboxMax ?? null,
        spawnParams: tf?.customProps ?? [],
      });
    }
  }

  return {
    mapId: fetmData.fetmName.replace(/\.fetm$/i, ""),
    packageFile: fetmData.fileName,
    authorAndDate: fetmData.authorAndDate,
    viewportSize,
    gameMode,
    matchTimerSeconds,
    simulation,
    counts: {
      attachPoints: attachPoints.length,
      walls: walls.length,
      pickups: pickups.length,
      gravityVortices: gravityVortices.length,
      deathTriggers: deathTriggers.length,
      playerSpawns: playerSpawns.length,
    },
    attachPoints,
    walls,
    pickups,
    gravityVortices,
    deathTriggers,
    playerSpawns,
  };
}

function main() {
  // 1. Extract REFD schemas from w_multi_dm_lvl01_refm.pc and w_multi_coll_lvl04_refm.pc (which has CGravityVortex if present)
  const schemaKeywords = [
    "rotasticsimulation",
    "worldnodesimulation",
    "attachpoint_",
    "wall_",
    "pickup_",
    "gravityvortex",
    "modemultideathmatch",
    "modemulticollecte",
    "rotasticplayer_",
    "rotasticrope_",
    "spawnarea",
    "spawnpoint",
  ];
  const refdSchemas = {};
  const refmFiles = fs
    .readdirSync(PKG_DIR)
    .filter((f) => f.endsWith("_refm.pc"))
    .sort();

  for (const rf of refmFiles) {
    const entries = parsePackageIndex(path.join(PKG_DIR, rf));
    for (const e of entries) {
      if (
        !refdSchemas[e.name] &&
        schemaKeywords.some((kw) => e.name.toLowerCase().includes(kw))
      ) {
        const parsed = parseRefdSchema(e.chunk, e.name);
        if (parsed) {
          refdSchemas[e.name] = parsed;
        }
      }
    }
  }

  // 2. Parse all multiplayer & PS3 level FETM files
  const fetmJsonFiles = fs
    .readdirSync(FETM_JSON_DIR)
    .filter(
      (f) =>
        f.endsWith("_fetm.json") &&
        (f.startsWith("w_multi_") || f.startsWith("w_ps3_"))
    )
    .sort();

  const maps = [];
  for (const fj of fetmJsonFiles) {
    const spec = parseMapSpec(path.join(FETM_JSON_DIR, fj));
    maps.push(spec);
  }

  const output = {
    generatedAt: new Date().toISOString(),
    totalMultiplayerPackages: maps.length,
    refdSchemas,
    maps,
  };

  fs.writeFileSync(OUT_FILE, JSON.stringify(output, null, 2), "utf8");
  console.log(`Wrote ${OUT_FILE} with ${maps.length} maps and ${Object.keys(refdSchemas).length} REFD schemas.`);
  for (const m of maps) {
    console.log(
      `  - ${m.mapId.padEnd(22)} mode=${(m.gameMode?.modeType ?? "menu").padEnd(10)} attach=${String(m.counts.attachPoints).padStart(2)} walls=${String(m.counts.walls).padStart(2)} pickups=${String(m.counts.pickups).padStart(3)} vortices=${String(m.counts.gravityVortices).padStart(2)} timer=${m.matchTimerSeconds ?? "-"}s`
    );
  }
}

main();
