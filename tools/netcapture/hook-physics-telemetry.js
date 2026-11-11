/**
 * Frida Runtime Physics & Gameplay Telemetry Hook for Rotastic.exe (x86 32-bit, ImageBase 0x00400000)
 *
 * Designed specifically for Multiplayer Deathmatch frame-by-frame capture:
 *   1. Respawn indicator & spawn drop trigger (`CSpawnArea` cursor + `spawnPlayer` @ 0x00540DE0 / 0x00540EF0)
 *   2. Orange protection ring / score charge (`chargeGauge` @ +0xD48, `chargeGauge2` @ +0xD4C, `chargeMultiplier` @ +0xD5C)
 *   3. Velocity, acceleration, Gaussian release, wall bounce & PvP velocity transfer (`+0x28C..+0x294`, `0x00576E30`, `0x00577A20`)
 *   4. Dynamic obstacles per arena (`CWall` world pos/quat/isDeadly + `CAttachPoint` world pos)
 *
 * Emits structured JSON payloads via Frida `send(...)` for consumption by `capture-gameplay.py`
 * (or console JSON fallback when run via `frida -l`).
 */

'use strict';

const IMAGE_BASE = 0x00400000;
const mod = Process.findModuleByName('Rotastic.exe') || Process.enumerateModules()[0];
const base = mod.base;

function rva(va) {
  return base.add(va - IMAGE_BASE);
}

// Globals verified from disassembly
const PTR_DT = rva(0x00b76120);
const PTR_GAME_PAUSE = rva(0x00b1aa84);

// Function addresses (RVAs relative to 0x00400000)
const ADDR = {
  UpdatePhysics: rva(0x0056c090),
  AttachToPoint: rva(0x0056b3d0),
  ReleaseVelocity: rva(0x0056aa70),
  WallCollisionAttached: rva(0x005769e0),
  WallCollisionAir: rva(0x00576be0),
  ResolvePlayerPlayerBounce: rva(0x00576e30),
  PvPCollision: rva(0x00577a20),
  SpawnDrop: rva(0x00540de0),
  EnterSpawnCursor: rva(0x00540ef0),
  NotifyDeath: rva(0x005409f0),
  CWall_ctor: rva(0x00507d50),
  CAttachPoint_ctor: rva(0x00521290),
  CAttachPoint_vfunc44: rva(0x00520af0),
  SceneObj_dtor: rva(0x00506b40),
  DM_vfunc3: rva(0x005345c0),
  DM_dtor: rva(0x005352e0),
};

// Safe memory helpers (never crash the game thread on stale pointers)
function isValidPtr(p) {
  return p && !p.isNull() && p.compare(ptr(0x10000)) >= 0;
}
function readPtr(addr) {
  try {
    return isValidPtr(addr) ? addr.readPointer() : ptr(0);
  } catch (_) {
    return ptr(0);
  }
}
function readU8(addr, fallback = 0) {
  try {
    return isValidPtr(addr) ? addr.readU8() : fallback;
  } catch (_) {
    return fallback;
  }
}
function readS8(addr, fallback = 0) {
  try {
    return isValidPtr(addr) ? addr.readS8() : fallback;
  } catch (_) {
    return fallback;
  }
}
function readU32(addr, fallback = 0) {
  try {
    return isValidPtr(addr) ? addr.readU32() : fallback;
  } catch (_) {
    return fallback;
  }
}
function readS32(addr, fallback = 0) {
  try {
    return isValidPtr(addr) ? addr.readS32() : fallback;
  } catch (_) {
    return fallback;
  }
}
function readF32(addr, fallback = 0) {
  try {
    if (!isValidPtr(addr)) return fallback;
    const v = addr.readFloat();
    return Number.isFinite(v) ? v : fallback;
  } catch (_) {
    return fallback;
  }
}

function round3(n) {
  return Math.round(n * 1000) / 1000;
}

function readEntityTransform(handlePtr) {
  if (!isValidPtr(handlePtr)) return null;
  try {
    const idx = readU8(handlePtr.add(1), 255);
    const mgr = readPtr(handlePtr.add(4));
    if (!isValidPtr(mgr)) return null;

    const slot1cArr = readPtr(mgr.add(0x1c));
    const slot20Arr = readPtr(mgr.add(0x20));
    const flagsArr = readPtr(mgr.add(0x0c));
    if (!isValidPtr(slot1cArr)) return null;

    const slot1c = readPtr(slot1cArr.add(idx * 4));
    if (!isValidPtr(slot1c)) return null;

    let posNode = slot1c;
    let slot20 = ptr(0);
    if (isValidPtr(slot20Arr)) {
      slot20 = readPtr(slot20Arr.add(idx * 4));
    }

    // Per 0x0056D034: parented/transformed entities override world pos in slot20 when flags&0x200 && slot1c[8]&8
    if (isValidPtr(flagsArr) && isValidPtr(slot20)) {
      const f = readU32(flagsArr.add(idx * 4));
      const b = readU8(slot1c.add(8));
      if ((f & 0x200) !== 0 && (b & 8) !== 0) {
        posNode = slot20;
      }
    }

    const pos = {
      x: round3(readF32(posNode.add(0x0c))),
      y: round3(readF32(posNode.add(0x10))),
      z: round3(readF32(posNode.add(0x14))),
    };

    // Quaternion orientation stored in slot20 or slot1c sibling (0x00576A75 reads slot20 +0x0c..+0x18)
    let quat = null;
    if (isValidPtr(slot20) && slot20.compare(posNode) !== 0) {
      quat = {
        x: round3(readF32(slot20.add(0x0c))),
        y: round3(readF32(slot20.add(0x10))),
        z: round3(readF32(slot20.add(0x14))),
        w: round3(readF32(slot20.add(0x18), 1)),
      };
    }

    return { pos, quat, posNodeHex: posNode.toString(), slot1cHex: slot1c.toString(), slot20Hex: slot20.toString() };
  } catch (_) {
    return null;
  }
}

function readSceneObjTransform(objPtr) {
  const handle = readPtr(objPtr.add(0x08));
  if (!isValidPtr(handle)) return null;
  return {
    handleHex: handle.toString(),
    ...readEntityTransform(handle),
  };
}

// Read wall gameplay component attributes if mapped in entity component list (0x00576C4C chain)
function readWallProps(wallPtr) {
  try {
    const handle = readPtr(wallPtr.add(0x08));
    if (!isValidPtr(handle)) return null;
    // Try direct wall entity handle -> look at slot 0x38 component or CWall inline bytes if any
    const idx = readU8(handle.add(1), 255);
    const mgr = readPtr(handle.add(4));
    if (!isValidPtr(mgr)) return null;
    const compArr = readPtr(mgr.add(0x14));
    if (!isValidPtr(compArr)) return null;
    const entry = compArr.add(idx * 36); // idx * 9 * 4 = 0x24
    // In 0x00507F1E, sub-entries at +0x04..+0x10 tagged by +0x14..+0x17 == 0x14 or 0x1c
    let wallComp = ptr(0);
    for (let k = 0; k < 4; k++) {
      const tag = readU8(entry.add(0x14 + k));
      if (tag === 0x14 || tag === 0x1c) {
        wallComp = readPtr(entry.add(4 + k * 4));
        if (isValidPtr(wallComp)) break;
      }
    }
    if (!isValidPtr(wallComp)) return null;
    return {
      isDeadly: readU8(wallComp.add(0x3a)) !== 0,
      bounciness: round3(readF32(wallComp.add(0x3c))),
      prop40: round3(readF32(wallComp.add(0x40))),
      prop44: round3(readF32(wallComp.add(0x44))),
    };
  } catch (_) {
    return null;
  }
}

// Live registries
const trackedPlayers = new Map(); // playerPtrHex -> { playerPtr, subcompPtr }
const trackedWalls = new Map(); // wallPtrHex -> { wallPtr, hitCount }
const trackedAttachPoints = new Map(); // apPtrHex -> { apPtr }
let gameModePtr = ptr(0);
let simRefSent = false;

let frameId = 0;
const seenSubcompsThisFrame = new Set();
let pendingPlayerSnapshots = [];
let startTimeNs = null;

function nowMs() {
  const now = Process.getCurrentThreadId ? Date.now() : Date.now();
  if (startTimeNs === null) startTimeNs = Date.now();
  return now - startTimeNs;
}

function emit(type, data) {
  send({
    type,
    frameId,
    tsMs: nowMs(),
    ...data,
  });
}

function readPlayerSnapshot(playerPtr, subcompPtr, inputMask = null) {
  const metaPtr = readPtr(playerPtr.add(0x1dc));
  const playerIdx = isValidPtr(metaPtr) ? readS8(metaPtr, -1) : -1;
  const isHumanOrLocal = isValidPtr(metaPtr) ? readU8(metaPtr.add(1), 0) : 0;

  let xf = null;
  if (isValidPtr(subcompPtr)) {
    xf = readSceneObjTransform(subcompPtr);
  }
  if (!xf) {
    xf = readSceneObjTransform(playerPtr);
  }

  const vx = readF32(playerPtr.add(0x28c));
  const vy = readF32(playerPtr.add(0x290));
  const vz = readF32(playerPtr.add(0x294));
  const speed = Math.hypot(vx, vy);

  const pivotHandle = readPtr(playerPtr.add(0x23c));
  const pivotXf = isValidPtr(pivotHandle) ? readEntityTransform(pivotHandle) : null;

  const chargeGauge = readF32(playerPtr.add(0xd48));
  const chargeGauge2 = readF32(playerPtr.add(0xd4c));

  const simRefPtr = readPtr(playerPtr.add(0x1e4));
  if (!simRefSent && isValidPtr(simRefPtr)) {
    simRefSent = true;
    const floats = [];
    for (let off = 0; off <= 0x80; off += 4) {
      floats.push({ off: `0x${off.toString(16)}`, f32: round3(readF32(simRefPtr.add(off))), u32: readU32(simRefPtr.add(off)) });
    }
    emit('SESSION_META', {
      moduleBase: base.toString(),
      simRefPtr: simRefPtr.toString(),
      simRefTable: floats,
    });
  }

  return {
    playerPtr: playerPtr.toString(),
    subcompPtr: isValidPtr(subcompPtr) ? subcompPtr.toString() : null,
    playerIdx,
    isHumanOrLocal,
    pos: xf ? xf.pos : null,
    vx: round3(vx),
    vy: round3(vy),
    vz: round3(vz),
    speed: round3(speed),
    physMode: readU32(playerPtr.add(0x204)),
    attached: !pivotHandle.isNull(),
    pivotHandle: pivotHandle.toString(),
    pivotPos: pivotXf ? pivotXf.pos : null,
    angularSpeed: round3(readF32(playerPtr.add(0xc34))),
    ropeRadius: round3(readF32(playerPtr.add(0xc38))),
    minRopeRadius: round3(readF32(playerPtr.add(0xc44))),
    swingBoostTimer: round3(readF32(playerPtr.add(0xc4c))),
    regrappleCooldown: round3(readF32(playerPtr.add(0xc50))),
    turnBoostCount: readU32(playerPtr.add(0xd64)),
    wallBounceFactor: round3(readF32(playerPtr.add(0xc54))),
    chargeGauge: round3(chargeGauge),
    chargeGauge2: round3(chargeGauge2),
    shieldReady: chargeGauge >= 1.0 || chargeGauge2 >= 1.0,
    chargeMultiplier: readS32(playerPtr.add(0xd5c)),
    stunTimer: round3(readF32(playerPtr.add(0xd50))),
    invulnTimer: round3(readF32(playerPtr.add(0xd54))),
    killAttributionTimer: round3(readF32(playerPtr.add(0xdf4))),
    lastAttacker: readPtr(playerPtr.add(0xdfc)).toString(),
    spawn: {
      awaitingInitialSpawn: readU32(playerPtr.add(0x1e8)),
      hasSpawnedOnce: readU32(playerPtr.add(0x1ec)),
      spawnCursorActive: readU32(playerPtr.add(0x1f4)),
      allowInputForSpawn: readU32(playerPtr.add(0x1f8)),
      justDropped1: readU32(playerPtr.add(0x1fc)),
      justDropped2: readU32(playerPtr.add(0x200)),
      respawnWaiting: readU32(playerPtr.add(0xd74)),
      respawnTimer: round3(readF32(playerPtr.add(0xd78))),
      isDead: readU32(playerPtr.add(0xe10)),
    },
    inputMask,
  };
}

function readAllObstacles() {
  const walls = [];
  for (const [key, entry] of trackedWalls.entries()) {
    const xf = readSceneObjTransform(entry.wallPtr);
    if (!xf) continue;
    const props = readWallProps(entry.wallPtr);
    walls.push({
      ptr: key,
      handle: xf.handleHex,
      pos: xf.pos,
      quat: xf.quat,
      isDeadly: props ? props.isDeadly : null,
      bounciness: props ? props.bounciness : null,
    });
  }

  const attachPoints = [];
  for (const [key, entry] of trackedAttachPoints.entries()) {
    const xf = readSceneObjTransform(entry.apPtr);
    if (!xf) continue;
    attachPoints.push({
      ptr: key,
      handle: xf.handleHex,
      pos: xf.pos,
      activeFlags: readU32(entry.apPtr.add(0x1cc)),
    });
  }

  return { walls, attachPoints };
}

function readDeathmatchHud() {
  if (!isValidPtr(gameModePtr)) return null;
  const obj8 = readPtr(gameModePtr.add(8));
  const matchTimer = isValidPtr(obj8) ? round3(readF32(obj8.add(0x164))) : null;
  const slots = [];
  for (let i = 0; i < 4; i++) {
    const pPtr = readPtr(gameModePtr.add(0x80 + i * 4));
    if (!isValidPtr(pPtr)) continue;
    slots.push({
      slot: i,
      playerPtr: pPtr.toString(),
      deathsOrStat40: readS32(gameModePtr.add(0x40 + i * 4)),
      killsOrScore60: readS32(gameModePtr.add(0x60 + i * 4)),
    });
  }
  return { matchTimer, slots };
}

function flushFrameIfReady(subcompHex) {
  if (seenSubcompsThisFrame.has(subcompHex) && pendingPlayerSnapshots.length > 0) {
    const obstacles = readAllObstacles();
    emit('FRAME_SYNC', {
      dt: round3(readF32(PTR_DT)),
      players: pendingPlayerSnapshots,
      walls: obstacles.walls,
      attachPoints: obstacles.attachPoints,
      dm: readDeathmatchHud(),
    });
    frameId++;
    seenSubcompsThisFrame.clear();
    pendingPlayerSnapshots = [];
  }
}

function installHooks() {
  // 1. Physics tick per player
  Interceptor.attach(ADDR.UpdatePhysics, {
    onEnter() {
      this.subcompPtr = this.context.ecx;
      this.playerPtr = readPtr(this.subcompPtr.add(0x40));
      const subHex = this.subcompPtr.toString();
      flushFrameIfReady(subHex);
      seenSubcompsThisFrame.add(subHex);

      if (isValidPtr(this.playerPtr)) {
        trackedPlayers.set(this.playerPtr.toString(), {
          playerPtr: this.playerPtr,
          subcompPtr: this.subcompPtr,
        });
      }
    },
    onLeave() {
      if (!isValidPtr(this.playerPtr)) return;
      const pauseObj = readPtr(PTR_GAME_PAUSE);
      if (isValidPtr(pauseObj)) {
        if (readU32(pauseObj.add(0x30)) !== 0 || readU32(pauseObj.add(0x8c)) !== 0) {
          return;
        }
      }
      pendingPlayerSnapshots.push(readPlayerSnapshot(this.playerPtr, this.subcompPtr));
    },
  });

  // 2. Spawn cursor & drop signal
  Interceptor.attach(ADDR.EnterSpawnCursor, {
    onEnter() {
      const playerPtr = this.context.ecx;
      emit('SPAWN_CURSOR_ENTER', {
        player: readPlayerSnapshot(playerPtr, trackedPlayers.get(playerPtr.toString())?.subcompPtr || ptr(0)),
      });
    },
  });

  Interceptor.attach(ADDR.SpawnDrop, {
    onEnter() {
      this.playerPtr = this.context.ecx;
    },
    onLeave() {
      emit('SPAWN_DROP', {
        player: readPlayerSnapshot(this.playerPtr, trackedPlayers.get(this.playerPtr.toString())?.subcompPtr || ptr(0)),
      });
    },
  });

  Interceptor.attach(ADDR.NotifyDeath, {
    onEnter() {
      const playerPtr = this.context.ecx;
      emit('PLAYER_DEATH', {
        player: readPlayerSnapshot(playerPtr, trackedPlayers.get(playerPtr.toString())?.subcompPtr || ptr(0)),
      });
    },
  });

  // 3. Attach & Release velocity transfer
  Interceptor.attach(ADDR.AttachToPoint, {
    onEnter() {
      this.subcompPtr = this.context.ecx;
      this.playerPtr = readPtr(this.subcompPtr.add(0x40));
      this.before = isValidPtr(this.playerPtr) ? readPlayerSnapshot(this.playerPtr, this.subcompPtr) : null;
    },
    onLeave() {
      if (!isValidPtr(this.playerPtr)) return;
      emit('ATTACH', {
        before: this.before,
        after: readPlayerSnapshot(this.playerPtr, this.subcompPtr),
      });
    },
  });

  Interceptor.attach(ADDR.ReleaseVelocity, {
    onEnter() {
      this.subcompPtr = this.context.ecx;
      this.playerPtr = readPtr(this.subcompPtr.add(0x40));
      this.before = isValidPtr(this.playerPtr) ? readPlayerSnapshot(this.playerPtr, this.subcompPtr) : null;
    },
    onLeave() {
      if (!isValidPtr(this.playerPtr)) return;
      emit('RELEASE', {
        before: this.before,
        after: readPlayerSnapshot(this.playerPtr, this.subcompPtr),
      });
    },
  });

  // 4. Wall collisions (attached & air)
  // args[0] = collision manifold / contact struct (0x00576BE0: +0x0C pushVec, +0x48 contactList)
  function readManifoldWallDeadly(manifoldPtr) {
    try {
      const list = readPtr(manifoldPtr.add(0x48));
      if (!isValidPtr(list)) return null;
      const count = readU8(list.add(0x28), 0);
      const arr = readPtr(list.add(0x24));
      if (!isValidPtr(arr) || count === 0) return null;
      const shapePtr = readPtr(arr.add(8));
      const handle = isValidPtr(shapePtr) ? readPtr(shapePtr.add(0x11c)) : ptr(0);
      if (!isValidPtr(handle)) return null;
      const idx = readU8(handle.add(1), 255);
      const mgr = readPtr(handle.add(4));
      const arr38 = isValidPtr(mgr) ? readPtr(mgr.add(0x38)) : ptr(0);
      const wallComp = isValidPtr(arr38) ? readPtr(arr38.add(idx * 4)) : ptr(0);
      if (!isValidPtr(wallComp)) return null;
      return {
        isDeadly: readU8(wallComp.add(0x3a)) !== 0,
        bounciness: round3(readF32(wallComp.add(0x3c))),
      };
    } catch (_) {
      return null;
    }
  }

  function attachWallHook(addr, mode) {
    Interceptor.attach(addr, {
      onEnter(args) {
        this.subcompPtr = this.context.ecx;
        this.playerPtr = readPtr(this.subcompPtr.add(0x40));
        this.manifoldPtr = args[0];
        this.before = isValidPtr(this.playerPtr) ? readPlayerSnapshot(this.playerPtr, this.subcompPtr) : null;
      },
      onLeave() {
        if (!isValidPtr(this.playerPtr)) return;
        const contactNormal = isValidPtr(this.manifoldPtr)
          ? {
              x: round3(readF32(this.manifoldPtr.add(0x0c))),
              y: round3(readF32(this.manifoldPtr.add(0x10))),
            }
          : null;
        emit('WALL_HIT', {
          mode,
          contactNormal,
          wallProps: isValidPtr(this.manifoldPtr) ? readManifoldWallDeadly(this.manifoldPtr) : null,
          before: this.before,
          after: readPlayerSnapshot(this.playerPtr, this.subcompPtr),
        });
      },
    });
  }
  attachWallHook(ADDR.WallCollisionAttached, 'attached');
  attachWallHook(ADDR.WallCollisionAir, 'air');

  // 5. PvP Collision & Shield Protection (chargeGauge >= 1.0)
  Interceptor.attach(ADDR.PvPCollision, {
    onEnter() {
      this.subcompPtr = this.context.ecx;
      this.selfPtr = readPtr(this.subcompPtr.add(0x40));
      this.beforeAll = [];
      for (const entry of trackedPlayers.values()) {
        this.beforeAll.push(readPlayerSnapshot(entry.playerPtr, entry.subcompPtr));
      }
    },
    onLeave() {
      const afterAll = [];
      for (const entry of trackedPlayers.values()) {
        afterAll.push(readPlayerSnapshot(entry.playerPtr, entry.subcompPtr));
      }
      emit('PVP_HIT', {
        selfPlayerPtr: isValidPtr(this.selfPtr) ? this.selfPtr.toString() : null,
        beforePlayers: this.beforeAll,
        afterPlayers: afterAll,
      });
    },
  });

  Interceptor.attach(ADDR.ResolvePlayerPlayerBounce, {
    onEnter(args) {
      this.pairPtr = args[0];
      this.outV1Ptr = args[1];
      this.outV2Ptr = args[2];
      this.input = isValidPtr(this.pairPtr)
        ? {
            p1Pos: { x: round3(readF32(this.pairPtr)), y: round3(readF32(this.pairPtr.add(4))) },
            p2Pos: { x: round3(readF32(this.pairPtr.add(0x10))), y: round3(readF32(this.pairPtr.add(0x14))) },
            p1Vel: { x: round3(readF32(this.pairPtr.add(0x20))), y: round3(readF32(this.pairPtr.add(0x24))) },
            p2Vel: { x: round3(readF32(this.pairPtr.add(0x30))), y: round3(readF32(this.pairPtr.add(0x34))) },
            m1: round3(readF32(this.pairPtr.add(0x40))),
            m2: round3(readF32(this.pairPtr.add(0x44))),
          }
        : null;
    },
    onLeave() {
      const outV1 = isValidPtr(this.outV1Ptr)
        ? { vx: round3(readF32(this.outV1Ptr)), vy: round3(readF32(this.outV1Ptr.add(4))) }
        : null;
      const outV2 = isValidPtr(this.outV2Ptr)
        ? { vx: round3(readF32(this.outV2Ptr)), vy: round3(readF32(this.outV2Ptr.add(4))) }
        : null;
      emit('PVP_BOUNCE_SOLVER', {
        input: this.input,
        outV1,
        outV2,
      });
    },
  });

  // 6. Scene object lifecycle (walls & attach points)
  Interceptor.attach(ADDR.CWall_ctor, {
    onLeave(retval) {
      if (isValidPtr(retval)) {
        trackedWalls.set(retval.toString(), { wallPtr: retval, hitCount: 0 });
      }
    },
  });

  Interceptor.attach(ADDR.CAttachPoint_ctor, {
    onLeave(retval) {
      if (isValidPtr(retval)) {
        trackedAttachPoints.set(retval.toString(), { apPtr: retval });
      }
    },
  });

  Interceptor.attach(ADDR.CAttachPoint_vfunc44, {
    onEnter() {
      const apPtr = this.context.ecx;
      if (isValidPtr(apPtr)) {
        const k = apPtr.toString();
        if (!trackedAttachPoints.has(k)) {
          trackedAttachPoints.set(k, { apPtr });
        }
      }
    },
  });

  Interceptor.attach(ADDR.SceneObj_dtor, {
    onEnter() {
      const k = this.context.ecx.toString();
      trackedWalls.delete(k);
      trackedAttachPoints.delete(k);
      trackedPlayers.delete(k);
    },
  });

  // 7. Deathmatch mode tracking
  Interceptor.attach(ADDR.DM_vfunc3, {
    onEnter() {
      gameModePtr = this.context.ecx;
    },
  });

  Interceptor.attach(ADDR.DM_dtor, {
    onEnter() {
      if (gameModePtr.equals(this.context.ecx)) {
        gameModePtr = ptr(0);
      }
    },
  });

  emit('HOOK_READY', {
    moduleName: mod.name,
    moduleBase: base.toString(),
    pid: Process.id,
  });
}

installHooks();
