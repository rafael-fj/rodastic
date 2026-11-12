import {
  CharacterId,
  GameModeId,
  GEM_POINTS,
  GemType,
  PlayerColorId,
  PlayerStatus,
  ROTASTIC_PHYSICS_CONSTANTS as C,
} from './constants.js';
import {
  evaluateWaypointMotion,
  getMultiplayerMapById,
  getWaypointMotionDuration,
  MultiplayerMapDef,
} from './maps.js';

export interface PlayerInputCommand {
  seq: number;
  actionHeld: boolean; // Space / Click / Button A to drop or attach & swing
  reverseHeld?: boolean; // Shift / S / ArrowDown / Right-Click to invert rotation direction while swinging
  axisX: number; // -1..+1
  axisY: number; // -1..+1
}

export interface PlayerSimState {
  slotIndex: number;
  active: boolean;
  isBot: boolean;
  name: string;
  characterId: CharacterId;
  colorId: PlayerColorId;
  status: PlayerStatus;
  x: number;
  y: number;
  vx: number;
  vy: number;
  attachedPivotId: number; // -1 when not attached
  ropeLength: number;
  ropeAngle: number;
  omega: number; // rad/s (+CCW, -CW)
  attachTimer: number; // seconds since attached
  statusTimer: number; // remaining dizzy or respawn delay seconds
  invulnTimer: number; // invulnerability seconds (1.0s on drop, 0.5s on shield break)
  regrappleTimer: number; // anti-bounce guard before re-attaching after cut/release
  attachLockTimer: number; // +0xC50 lock timer (blocks grapple/swing input while > 0)
  chargeGauge: number; // 0..1 white outer bubble shield (+0xD48) & primary grapple cooldown
  chargeGauge2: number; // 0..1 orange inner combo/heavy-mass shield (+0xD4C)
  chargeMultiplier: number; // handicap multiplier (+0xD5C, +1 after 5 deaths)
  spawnCursorX: number; // oscillating X along top edge while SPAWN_CURSOR
  spawnCursorDir: number; // +1 right, -1 left
  spawnAllowDelay: number; // small delay before drop signal is accepted
  wallTrickCooldown: number;
  hitTrickCooldown: number;
  riskyArmed: boolean;
  swingLoopAccumRad: number;
  swingNetRad: number;
  pivotHistory: Array<{ id: number; x: number; y: number; netRad: number }>;
  turnBoostCount: number; // 0..5 reverse spin boost stacks
  swingBoostTimer: number; // 0..0.4s (+0xC4C) apex/reverse tangential acceleration timer
  lastActionHeld: boolean;
  lastReverseHeld: boolean;
  lastAttackerSlot: number; // -1 or 0..3
  lastAttackTimer: number;
  score: number;
  kills: number;
  deaths: number;
  gemsCollected: number;
  lastInputSeq: number;
}

export interface AttachPointSimState {
  id: number;
  name: string;
  x: number;
  y: number;
}

export interface PickupSimState {
  id: number;
  x: number;
  y: number;
  gemType: GemType;
  waveGroup: number;
  active: boolean;
}

export interface WallSimState {
  id: number;
  name: string;
  cx: number;
  cy: number;
  halfW: number;
  halfH: number;
  rotRad: number;
  type: 'normal' | 'bouncy' | 'deadly' | 'breakable' | 'slow';
  meshActor?: string;
  active: boolean;
  respawnTimer: number;
}

export interface SimEvent {
  type:
    | 'attach'
    | 'attachdenied'
    | 'release'
    | 'invert'
    | 'ropecut'
    | 'slaughter'
    | 'shieldbreak'
    | 'trick'
    | 'bounce'
    | 'wallbreak'
    | 'pickup'
    | 'death'
    | 'respawn'
    | 'spawndrop'
    | 'switchtoggle'
    | 'suddendeath'
    | 'matchfinish';
  slotIndex?: number;
  targetSlot?: number;
  points?: number;
  label?: string;
  shieldType?: 'white' | 'orange';
  x: number;
  y: number;
  gemType?: GemType;
}

export interface WorldSimState {
  tick: number;
  elapsedSec: number;
  mapId: string;
  mode: GameModeId;
  scoreLimit: number;
  timeRemainingSec: number;
  suddenDeath: boolean;
  matchFinished: boolean;
  winnerSlot: number; // -1 until finished
  activeWaveGroup: number;
  switchReversed: boolean;
  switchCooldownSec: number;
  activeSwitchWallId: number;
  activeSwitchElapsedSec: number;
  players: PlayerSimState[];
  attachPoints: AttachPointSimState[];
  pickups: PickupSimState[];
  walls: WallSimState[];
}

function clamp(v: number, min: number, max: number): number {
  return v < min ? min : v > max ? max : v;
}

/**
 * Closest point on 2D segment AB to point P, plus squared distance and parameter t in [0,1].
 */
export function closestPointOnSegment2D(
  px: number,
  py: number,
  ax: number,
  ay: number,
  bx: number,
  by: number
): { cx: number; cy: number; distSq: number; t: number; cross2D: number } {
  const abx = bx - ax;
  const aby = by - ay;
  const apx = px - ax;
  const apy = py - ay;
  const abLenSq = abx * abx + aby * aby;
  const t = abLenSq > 1e-8 ? clamp((apx * abx + apy * aby) / abLenSq, 0, 1) : 0;
  const cx = ax + abx * t;
  const cy = ay + aby * t;
  const dx = px - cx;
  const dy = py - cy;
  const cross2D = abx * apy - aby * apx;
  return { cx, cy, distSq: dx * dx + dy * dy, t, cross2D };
}

/**
 * Returns true if segment AB intersects segment CD in 2D (used for swept rope cuts).
 */
function segmentsIntersect2D(
  ax: number,
  ay: number,
  bx: number,
  by: number,
  cx: number,
  cy: number,
  dx: number,
  dy: number
): boolean {
  const ccw = (p1x: number, p1y: number, p2x: number, p2y: number, p3x: number, p3y: number) =>
    (p3y - p1y) * (p2x - p1x) - (p2y - p1y) * (p3x - p1x);
  const d1 = ccw(cx, cy, dx, dy, ax, ay);
  const d2 = ccw(cx, cy, dx, dy, bx, by);
  const d3 = ccw(ax, ay, bx, by, cx, cy);
  const d4 = ccw(ax, ay, bx, by, dx, dy);
  return ((d1 > 0 && d2 < 0) || (d1 < 0 && d2 > 0)) && ((d3 > 0 && d4 < 0) || (d3 < 0 && d4 > 0));
}

/**
 * Closest point on a 2D oriented bounding box (OBB) to circle center (px, py).
 * Returns world contact point, outward surface normal, and squared distance.
 */
export function closestPointOnOBB2D(
  px: number,
  py: number,
  cx: number,
  cy: number,
  halfW: number,
  halfH: number,
  rotRad: number
): { contactX: number; contactY: number; nx: number; ny: number; distSq: number; inside: boolean } {
  const cos = Math.cos(-rotRad);
  const sin = Math.sin(-rotRad);
  const relX = px - cx;
  const relY = py - cy;
  const lx = relX * cos - relY * sin;
  const ly = relX * sin + relY * cos;

  const clampedX = clamp(lx, -halfW, halfW);
  const clampedY = clamp(ly, -halfH, halfH);
  const inside = lx >= -halfW && lx <= halfW && ly >= -halfH && ly <= halfH;

  let lnx = 0;
  let lny = 0;
  let distSq = 0;
  let finalLx = clampedX;
  let finalLy = clampedY;

  if (inside) {
    const penX = halfW - Math.abs(lx);
    const penY = halfH - Math.abs(ly);
    if (penX < penY) {
      lnx = lx >= 0 ? 1 : -1;
      lny = 0;
      finalLx = lnx * halfW;
    } else {
      lnx = 0;
      lny = ly >= 0 ? 1 : -1;
      finalLy = lny * halfH;
    }
    distSq = 0;
  } else {
    const dx = lx - clampedX;
    const dy = ly - clampedY;
    distSq = dx * dx + dy * dy;
    const d = Math.sqrt(distSq) || 1;
    lnx = dx / d;
    lny = dy / d;
  }

  const wCos = Math.cos(rotRad);
  const wSin = Math.sin(rotRad);
  const contactX = cx + finalLx * wCos - finalLy * wSin;
  const contactY = cy + finalLx * wSin + finalLy * wCos;
  const nx = lnx * wCos - lny * wSin;
  const ny = lnx * wSin + lny * wCos;

  return { contactX, contactY, nx, ny, distSq, inside };
}

interface SweptOBBHit {
  contactX: number;
  contactY: number;
  nx: number;
  ny: number;
  distSq: number;
  inside: boolean;
  toi: number;
}

/**
 * Resolve circle-vs-OBB contact using swept local-space slab entry (`prevX,prevY` -> `px,py`)
 * against the Minkowski-expanded box `[halfW + radius, halfH + radius]` so fast upward
 * collisions against narrow blocks/ceilings always resolve along the true entry face normal.
 */
function resolveSweptCircleOBB2D(
  px: number,
  py: number,
  prevX: number,
  prevY: number,
  radius: number,
  cx: number,
  cy: number,
  halfW: number,
  halfH: number,
  rotRad: number
): SweptOBBHit | null {
  const radiusSq = radius * radius;
  const staticHit = closestPointOnOBB2D(px, py, cx, cy, halfW, halfH, rotRad);

  const lCos = Math.cos(-rotRad);
  const lSin = Math.sin(-rotRad);
  const wCos = Math.cos(rotRad);
  const wSin = Math.sin(rotRad);

  const prx = prevX - cx;
  const pry = prevY - cy;
  const plx = prx * lCos - pry * lSin;
  const ply = prx * lSin + pry * lCos;

  const crx = px - cx;
  const cry = py - cy;
  const lx = crx * lCos - cry * lSin;
  const ly = crx * lSin + cry * lCos;

  const vlx = lx - plx;
  const vly = ly - ply;
  const extW = halfW + radius;
  const extH = halfH + radius;

  // Slab ray test on expanded AABB [-extW, extW] x [-extH, extH]
  let txMin = -Infinity;
  let txMax = Infinity;
  if (Math.abs(vlx) < 1e-8) {
    if (plx < -extW || plx > extW) {
      txMin = 1;
      txMax = -1;
    }
  } else {
    const invVx = 1 / vlx;
    const t1 = (-extW - plx) * invVx;
    const t2 = (extW - plx) * invVx;
    txMin = Math.min(t1, t2);
    txMax = Math.max(t1, t2);
  }

  let tyMin = -Infinity;
  let tyMax = Infinity;
  if (Math.abs(vly) < 1e-8) {
    if (ply < -extH || ply > extH) {
      tyMin = 1;
      tyMax = -1;
    }
  } else {
    const invVy = 1 / vly;
    const t1 = (-extH - ply) * invVy;
    const t2 = (extH - ply) * invVy;
    tyMin = Math.min(t1, t2);
    tyMax = Math.max(t1, t2);
  }

  const tEnter = Math.max(txMin, tyMin);
  const tExit = Math.min(txMax, tyMax);
  const slabHit = tEnter <= tExit && tExit >= 0 && tEnter <= 1;

  const toWorld = (lcx: number, lcy: number, lnx: number, lny: number, distSq: number, inside: boolean, toi: number): SweptOBBHit => ({
    contactX: cx + lcx * wCos - lcy * wSin,
    contactY: cy + lcx * wSin + lcy * wCos,
    nx: lnx * wCos - lny * wSin,
    ny: lnx * wSin + lny * wCos,
    distSq,
    inside,
    toi,
  });

  // 1. Clean swept entry from strictly outside expanded box
  if (slabHit && tEnter > 0 && tEnter <= 1) {
    const ex = plx + vlx * tEnter;
    const ey = ply + vly * tEnter;
    if (txMin > tyMin) {
      const lnx = plx >= 0 ? 1 : -1;
      if (Math.abs(ey) <= halfH) {
        return toWorld(lnx * halfW, ey, lnx, 0, Math.min(staticHit.distSq, radiusSq), staticHit.inside, tEnter);
      }
    } else {
      const lny = ply >= 0 ? 1 : -1;
      if (Math.abs(ex) <= halfW) {
        return toWorld(ex, lny * halfH, 0, lny, Math.min(staticHit.distSq, radiusSq), staticHit.inside, tEnter);
      }
    }

    // Entered expanded box in a corner Voronoi region: test exact rounded-corner arc of radius
    const cornerX = (ex >= 0 ? 1 : -1) * halfW;
    const cornerY = (ey >= 0 ? 1 : -1) * halfH;
    const segCorner = closestPointOnSegment2D(cornerX, cornerY, plx, ply, lx, ly);
    if (segCorner.distSq <= radiusSq) {
      const dx = segCorner.cx - cornerX;
      const dy = segCorner.cy - cornerY;
      const d = Math.hypot(dx, dy);
      if (d > 1e-6) {
        return toWorld(cornerX, cornerY, dx / d, dy / d, segCorner.distSq, staticHit.inside, segCorner.t);
      }
    }
    if (staticHit.distSq > radiusSq) {
      return null;
    }
  }

  // 2. Also guard against deep fast tunnel right through a thin core without static overlap at end
  if (staticHit.distSq > radiusSq) {
    return null;
  }

  // 3. Static overlap where prev was already inside expanded box: if center is inside core OBB,
  //    filter candidate exit faces by incoming velocity so upward motion never pushes further up.
  if (staticHit.inside && Math.hypot(vlx, vly) > 1e-4) {
    const faces: Array<{ lcx: number; lcy: number; lnx: number; lny: number; pen: number }> = [
      { lcx: -halfW, lcy: clamp(ly, -halfH, halfH), lnx: -1, lny: 0, pen: lx + halfW },
      { lcx: halfW, lcy: clamp(ly, -halfH, halfH), lnx: 1, lny: 0, pen: halfW - lx },
      { lcx: clamp(lx, -halfW, halfW), lcy: -halfH, lnx: 0, lny: -1, pen: ly + halfH },
      { lcx: clamp(lx, -halfW, halfW), lcy: halfH, lnx: 0, lny: 1, pen: halfH - ly },
    ];
    let bestFace: (typeof faces)[number] | null = null;
    for (const f of faces) {
      if (vlx * f.lnx + vly * f.lny < -1e-4) {
        if (!bestFace || f.pen < bestFace.pen) {
          bestFace = f;
        }
      }
    }
    if (bestFace) {
      return toWorld(bestFace.lcx, bestFace.lcy, bestFace.lnx, bestFace.lny, 0, true, 0);
    }
  }

  return {
    contactX: staticHit.contactX,
    contactY: staticHit.contactY,
    nx: staticHit.nx,
    ny: staticHit.ny,
    distSq: staticHit.distSq,
    inside: staticHit.inside,
    toi: 0,
  };
}

export class RotasticSimulation {
  public map: MultiplayerMapDef;
  public state: WorldSimState;
  public events: SimEvent[] = [];

  constructor(
    mapId = 'w_multi_dm_lvl09',
    customScoreLimit?: number,
    customTimeLimitSec?: number
  ) {
    this.map = getMultiplayerMapById(mapId);
    this.state = this.createInitialState(
      this.map,
      customScoreLimit ?? this.map.defaultScoreLimit,
      customTimeLimitSec ?? this.map.defaultTimeLimitSec
    );
  }

  private createInitialState(
    map: MultiplayerMapDef,
    scoreLimit: number,
    timeLimitSec: number
  ): WorldSimState {
    const players: PlayerSimState[] = [];
    for (let i = 0; i < 4; i++) {
      const sp = map.spawns[i % map.spawns.length] ?? { x: 384 + i * 384, y: 1080 };
      players.push({
        slotIndex: i,
        active: false,
        isBot: false,
        name: `Knight ${i + 1}`,
        characterId: (i % 4) as CharacterId,
        colorId: (i % 4) as PlayerColorId,
        status: PlayerStatus.SPAWN_CURSOR,
        x: sp.x,
        y: C.SPAWN_DROP_Y,
        vx: 0,
        vy: 0,
        attachedPivotId: -1,
        ropeLength: C.ROPE_MIN_RADIUS,
        ropeAngle: -Math.PI / 2,
        omega: 0,
        attachTimer: 0,
        statusTimer: 0,
        invulnTimer: C.SPAWN_INVULN_SEC,
        regrappleTimer: 0,
        attachLockTimer: 0,
        chargeGauge: 1.0, // Spawn starts with full white bubble (observed c1=1.0)
        chargeGauge2: 0.0,
        chargeMultiplier: 0,
        spawnCursorX: sp.x,
        spawnCursorDir: i % 2 === 0 ? 1 : -1,
        spawnAllowDelay: C.SPAWN_ALLOW_DELAY_SEC,
        wallTrickCooldown: 0,
        hitTrickCooldown: 0,
        riskyArmed: false,
        swingLoopAccumRad: 0,
        swingNetRad: 0,
        pivotHistory: [],
        turnBoostCount: 0,
        swingBoostTimer: 0,
        lastActionHeld: false,
        lastReverseHeld: false,
        lastAttackerSlot: -1,
        lastAttackTimer: 0,
        score: 0,
        kills: 0,
        deaths: 0,
        gemsCollected: 0,
        lastInputSeq: 0,
      });
    }

    const attachPoints: AttachPointSimState[] = map.attachPoints.map((ap) => ({
      id: ap.id,
      name: ap.name,
      x: ap.x,
      y: ap.y,
    }));

    const pickups: PickupSimState[] = map.pickups.map((pk) => ({
      ...pk,
      active: pk.waveGroup === 0,
    }));

    const walls: WallSimState[] = map.walls.map((w) => ({
      id: w.id,
      name: w.name,
      cx: w.cx,
      cy: w.cy,
      halfW: w.halfW,
      halfH: w.halfH,
      rotRad: (w.rotDeg * Math.PI) / 180,
      type: w.type,
      meshActor: w.meshActor,
      active: true,
      respawnTimer: 0,
    }));

    return {
      tick: 0,
      elapsedSec: 0,
      mapId: map.id,
      mode: map.mode,
      scoreLimit,
      timeRemainingSec: timeLimitSec,
      suddenDeath: false,
      matchFinished: false,
      winnerSlot: -1,
      activeWaveGroup: 0,
      switchReversed: false,
      switchCooldownSec: 0,
      activeSwitchWallId: -1,
      activeSwitchElapsedSec: 0,
      players,
      attachPoints,
      pickups,
      walls,
    };
  }

  public configurePlayerSlot(
    slotIndex: number,
    config: {
      active: boolean;
      isBot?: boolean;
      name?: string;
      characterId?: CharacterId;
      colorId?: PlayerColorId;
    }
  ): void {
    const p = this.state.players[slotIndex];
    if (!p) return;
    p.active = config.active;
    if (config.isBot !== undefined) p.isBot = config.isBot;
    if (config.name !== undefined) p.name = config.name;
    if (config.characterId !== undefined) p.characterId = config.characterId;
    if (config.colorId !== undefined) p.colorId = config.colorId;
    if (config.active) {
      const sp = this.map.spawns[slotIndex % this.map.spawns.length] ?? {
        x: 384 + slotIndex * 384,
        y: C.SPAWN_DROP_Y,
      };
      p.status = PlayerStatus.SPAWN_CURSOR;
      p.spawnCursorX = sp.x;
      p.spawnCursorDir = slotIndex % 2 === 0 ? 1 : -1;
      p.spawnAllowDelay = C.SPAWN_ALLOW_DELAY_SEC;
      p.x = sp.x;
      p.y = C.SPAWN_DROP_Y;
      p.vx = 0;
      p.vy = 0;
      p.attachedPivotId = -1;
      p.invulnTimer = C.SPAWN_INVULN_SEC;
      p.attachLockTimer = 0;
      p.chargeGauge = 1.0;
      p.chargeGauge2 = 0.0;
      p.chargeMultiplier = 0;
      p.wallTrickCooldown = 0;
      p.hitTrickCooldown = 0;
      p.riskyArmed = false;
      p.swingLoopAccumRad = 0;
      p.swingNetRad = 0;
      p.pivotHistory = [];
      p.turnBoostCount = 0;
      p.swingBoostTimer = 0;
      p.lastReverseHeld = false;
    }
  }

  public resetMatch(
    mapId = this.state.mapId,
    scoreLimit?: number,
    timeLimitSec?: number
  ): void {
    const prevPlayers = this.state.players.map((p) => ({
      active: p.active,
      isBot: p.isBot,
      name: p.name,
      characterId: p.characterId,
      colorId: p.colorId,
    }));
    this.map = getMultiplayerMapById(mapId);
    this.state = this.createInitialState(
      this.map,
      scoreLimit ?? this.map.defaultScoreLimit,
      timeLimitSec ?? this.map.defaultTimeLimitSec
    );
    for (let i = 0; i < 4; i++) {
      this.configurePlayerSlot(i, prevPlayers[i]);
    }
  }

  public cloneState(): WorldSimState {
    return {
      ...this.state,
      players: this.state.players.map((p) => ({ ...p })),
      attachPoints: this.state.attachPoints.map((ap) => ({ ...ap })),
      pickups: this.state.pickups.map((pk) => ({ ...pk })),
      walls: this.state.walls.map((w) => ({ ...w })),
    };
  }

  public restoreState(snapshot: WorldSimState): void {
    if (snapshot.mapId !== this.map.id) {
      this.map = getMultiplayerMapById(snapshot.mapId);
    }
    this.state = {
      ...snapshot,
      players: snapshot.players.map((p) => ({ ...p })),
      attachPoints: snapshot.attachPoints.map((ap) => ({ ...ap })),
      pickups: snapshot.pickups.map((pk) => ({ ...pk })),
      walls: snapshot.walls.map((w) => ({ ...w })),
    };
  }

  public findNearestAttachPoint(
    x: number,
    y: number,
    maxRange: number = C.ROPE_ATTACH_RANGE
  ): { id: number; x: number; y: number; dist: number } | null {
    let best: { id: number; x: number; y: number; dist: number } | null = null;
    let bestDistSq = maxRange * maxRange;
    for (const ap of this.state.attachPoints) {
      if (ap.x < 0 || ap.x > C.ARENA_WIDTH || ap.y < 0 || ap.y > C.TOP_CEILING_Y) continue;
      const dx = x - ap.x;
      const dy = y - ap.y;
      const dSq = dx * dx + dy * dy;
      if (dSq <= bestDistSq) {
        bestDistSq = dSq;
        best = { id: ap.id, x: ap.x, y: ap.y, dist: Math.sqrt(dSq) };
      }
    }
    return best;
  }

  /**
   * Advances simulation by `dt` (default 1/60s), updating dynamic map hazards,
   * player spawn cursors, pendulum/freefall physics, dual charge rings,
   * OBB wall bounces, rope cuts, and weighted PvP collisions.
   */
  public step(
    inputs: Record<number, PlayerInputCommand | undefined>,
    dt: number = C.FIXED_DT
  ): SimEvent[] {
    this.events = [];
    if (this.state.matchFinished) {
      return this.events;
    }

    this.state.tick++;
    this.state.elapsedSec += dt;

    // 1. Update dynamic arena obstacles (FlowGraph rotations & waypoint patrols)
    this.updateDynamicEnvironment(dt);

    // 2. Step each active player and record pre-step positions for swept wall contact
    const prevPosBySlot = new Map<number, { x: number; y: number }>();
    for (const p of this.state.players) {
      if (!p.active) continue;
      prevPosBySlot.set(p.slotIndex, { x: p.x, y: p.y });

      const cmd = inputs[p.slotIndex] ?? {
        seq: p.lastInputSeq,
        actionHeld: false,
        axisX: 0,
        axisY: 0,
      };
      p.lastInputSeq = cmd.seq;

      if (p.invulnTimer > 0) p.invulnTimer = Math.max(0, p.invulnTimer - dt);
      if (p.regrappleTimer > 0) p.regrappleTimer = Math.max(0, p.regrappleTimer - dt);
      if (p.attachLockTimer > 0) p.attachLockTimer = Math.max(0, p.attachLockTimer - dt);
      if (p.wallTrickCooldown > 0) p.wallTrickCooldown = Math.max(0, p.wallTrickCooldown - dt);
      if (p.hitTrickCooldown > 0) p.hitTrickCooldown = Math.max(0, p.hitTrickCooldown - dt);
      if (p.lastAttackTimer > 0) {
        p.lastAttackTimer = Math.max(0, p.lastAttackTimer - dt);
        if (p.lastAttackTimer === 0) {
          p.lastAttackerSlot = -1;
        }
      }

      const justPressed = cmd.actionHeld && !p.lastActionHeld;
      const justReleased = !cmd.actionHeld && p.lastActionHeld;

      if (p.status === PlayerStatus.DEAD) {
        p.statusTimer -= dt;
        if (p.statusTimer <= 0) {
          this.enterSpawnCursor(p);
        }
        p.lastActionHeld = cmd.actionHeld;
        continue;
      }

      if (p.status === PlayerStatus.SPAWN_CURSOR) {
        this.stepSpawnCursor(p, cmd, justPressed, dt);
        p.lastActionHeld = cmd.actionHeld;
        continue;
      }

      if (p.status === PlayerStatus.DIZZY) {
        p.statusTimer -= dt;
        let emergencyAttached = false;
        if (p.statusTimer <= 0) {
          p.status = PlayerStatus.FREE_FALL;
          p.statusTimer = 0;
        } else if (
          justPressed &&
          p.regrappleTimer <= 0 &&
          p.attachLockTimer <= 0 &&
          (p.chargeGauge >= 1.0 || p.chargeGauge2 >= 1.0)
        ) {
          // 0x0056A5A0 (CanConsumeAttachCharge): full c1 or c2 allows emergency re-attach even while DIZZY after rope cut
          emergencyAttached = this.tryAttachToNearestPivot(p);
        }
        if (emergencyAttached) {
          this.stepSwinging(p, cmd, dt);
        } else {
          this.stepFreeFall(p, { seq: cmd.seq, actionHeld: false, axisX: 0, axisY: 0 }, dt);
        }
        this.updateChargeGauge(p, dt);
        p.lastActionHeld = cmd.actionHeld;
        p.lastReverseHeld = Boolean(cmd.reverseHeld);
        continue;
      }

      if (
        p.status === PlayerStatus.FREE_FALL &&
        justPressed &&
        p.regrappleTimer <= 0 &&
        p.attachLockTimer <= 0
      ) {
        this.tryAttachToNearestPivot(p);
      } else if (
        p.status === PlayerStatus.SWINGING &&
        p.attachLockTimer <= 0 &&
        (justReleased || !cmd.actionHeld)
      ) {
        this.releaseFromPivot(p);
      }

      if (p.status === PlayerStatus.SWINGING) {
        this.stepSwinging(p, cmd, dt);
      } else {
        this.stepFreeFall(p, cmd, dt);
      }

      this.updateChargeGauge(p, dt);
      p.lastActionHeld = cmd.actionHeld;
      p.lastReverseHeld = Boolean(cmd.reverseHeld);
    }

    // 3. Check Wall Collisions (Swept OBB), Switch Trigger & Out-of-bounds
    for (const p of this.state.players) {
      if (!p.active || p.status === PlayerStatus.DEAD || p.status === PlayerStatus.SPAWN_CURSOR) {
        continue;
      }
      const prev = prevPosBySlot.get(p.slotIndex) ?? { x: p.x, y: p.y };
      this.checkWallsAndBounds(p, prev.x, prev.y);
    }

    // 4. Check Rope Cuts (CRotasticRope)
    this.checkRopeCuts(dt);

    // 5. Check Player-vs-Player Weighted Collisions & Shield Protection
    this.checkPlayerCollisions();

    // 6. Match Timer & Sudden Death Rules
    this.updateMatchRules(dt);

    return this.events;
  }

  private updateDynamicEnvironment(dt: number): void {
    if (this.state.switchCooldownSec > 0) {
      this.state.switchCooldownSec = Math.max(0, this.state.switchCooldownSec - dt);
    }

    if (this.state.activeSwitchWallId !== -1) {
      this.state.activeSwitchElapsedSec += dt;
      const activeDef = this.map.walls.find((w) => w.id === this.state.activeSwitchWallId);
      const totalDur =
        activeDef?.motion?.kind === 'waypoints' ? getWaypointMotionDuration(activeDef.motion) : 0;
      if (!activeDef || this.state.activeSwitchElapsedSec >= totalDur) {
        this.state.activeSwitchWallId = -1;
        this.state.activeSwitchElapsedSec = 0;
        this.state.switchReversed = false;
        this.state.switchCooldownSec = 0;
      }
    }

    for (let i = 0; i < this.map.attachPoints.length; i++) {
      const def = this.map.attachPoints[i];
      const st = this.state.attachPoints[i];
      if (!st) continue;
      if (def.motion) {
        const pos = evaluateWaypointMotion(def.motion, this.state.elapsedSec);
        st.x = pos.x;
        st.y = pos.y;
      }
    }

    for (let i = 0; i < this.map.walls.length; i++) {
      const def = this.map.walls[i];
      const st = this.state.walls[i];
      if (!st) continue;
      if (!st.active && st.respawnTimer > 0) {
        st.respawnTimer -= dt;
        if (st.respawnTimer <= 0) {
          st.active = true;
          st.respawnTimer = 0;
        }
      }
      if (st.name === 'PST_MecaSwitch_Collider' && this.map.switchDef) {
        // Keep switch collider aligned with the rotating lever sprite (DOWN-LEFT +30° idle/OFF, UP-LEFT -30° active/ON)
        const sy = this.map.switchDef.y;
        if (this.state.switchReversed) {
          st.cx = 1833;
          st.cy = sy + 50;
          st.rotRad = (-30 * Math.PI) / 180;
        } else {
          st.cx = 1833;
          st.cy = sy - 50;
          st.rotRad = (30 * Math.PI) / 180;
        }
      }
      if (def.motion) {
        if (def.motion.kind === 'rotate') {
          st.rotRad = ((def.rotDeg + def.motion.degPerSec * this.state.elapsedSec) * Math.PI) / 180;
        } else if (def.motion.kind === 'waypoints') {
          if (def.motion.switchControlled) {
            if (st.id === this.state.activeSwitchWallId) {
              const pos = evaluateWaypointMotion(def.motion, this.state.activeSwitchElapsedSec, false);
              st.cx = pos.x;
              st.cy = pos.y;
            } else {
              st.cx = def.motion.points[0]?.x ?? def.cx;
              st.cy = def.motion.points[0]?.y ?? def.cy;
            }
          } else {
            const pos = evaluateWaypointMotion(def.motion, this.state.elapsedSec, false);
            st.cx = pos.x;
            st.cy = pos.y;
          }
        }
      }
    }
  }

  private enterSpawnCursor(p: PlayerSimState): void {
    p.status = PlayerStatus.SPAWN_CURSOR;
    p.attachedPivotId = -1;
    p.vx = 0;
    p.vy = 0;
    p.statusTimer = 0;
    p.spawnAllowDelay = C.SPAWN_ALLOW_DELAY_SEC;
    p.spawnCursorX = clamp(p.x, C.SPAWN_CURSOR_MIN_X, C.SPAWN_CURSOR_MAX_X);
    p.x = p.spawnCursorX;
    p.y = C.SPAWN_DROP_Y;
    p.lastAttackerSlot = -1;
    p.lastAttackTimer = 0;
    this.events.push({ type: 'respawn', slotIndex: p.slotIndex, x: p.x, y: p.y });
  }

  private stepSpawnCursor(
    p: PlayerSimState,
    cmd: PlayerInputCommand,
    justPressed: boolean,
    dt: number
  ): void {
    if (p.spawnAllowDelay > 0) {
      p.spawnAllowDelay = Math.max(0, p.spawnAllowDelay - dt);
    }

    // Oscillate left <-> right along top of viewport (or nudge with axisX)
    const speed = C.SPAWN_CURSOR_SPEED * (cmd.axisX !== 0 ? 1.25 : 1.0);
    if (cmd.axisX !== 0) {
      p.spawnCursorDir = Math.sign(cmd.axisX);
    }
    p.spawnCursorX += p.spawnCursorDir * speed * dt;
    if (p.spawnCursorX >= C.SPAWN_CURSOR_MAX_X) {
      p.spawnCursorX = C.SPAWN_CURSOR_MAX_X;
      p.spawnCursorDir = -1;
    } else if (p.spawnCursorX <= C.SPAWN_CURSOR_MIN_X) {
      p.spawnCursorX = C.SPAWN_CURSOR_MIN_X;
      p.spawnCursorDir = 1;
    }
    p.x = p.spawnCursorX;
    p.y = C.SPAWN_DROP_Y;

    // Trigger drop when player presses action after allow delay
    if (p.spawnAllowDelay <= 0 && (justPressed || cmd.actionHeld)) {
      p.status = PlayerStatus.FREE_FALL;
      p.x = p.spawnCursorX;
      p.y = C.SPAWN_DROP_Y;
      p.vx = 0;
      p.vy = C.SPAWN_DROP_INITIAL_VY; // Verified +100 u/s in every SPAWN_DROP event
      p.invulnTimer = C.SPAWN_INVULN_SEC; // Verified 1.0s invuln at drop
      p.chargeGauge = 1.0; // Verified c1 = 1.0 on spawn drop
      p.chargeGauge2 = 0.0; // Verified c2 = 0.0 on respawn drop
      p.regrappleTimer = 0.12;
      p.attachLockTimer = 0;
      p.wallTrickCooldown = 0;
      p.hitTrickCooldown = 0;
      p.riskyArmed = false;
      p.swingLoopAccumRad = 0;
      p.swingNetRad = 0;
      p.pivotHistory = [];
      p.swingBoostTimer = 0;
      this.events.push({ type: 'spawndrop', slotIndex: p.slotIndex, x: p.x, y: p.y });
    }
  }

  /**
   * Verified live formula from `0x0056CA87..0x0056CB4B`:
   * `dc/dt = 0.58 * (chargeMultiplier + 1) * max(1.0, speed / 450) * (dizzy ? 0.55 : 1.0)`
   */
  private updateChargeGauge(p: PlayerSimState, dt: number): void {
    const speed = Math.hypot(p.vx, p.vy);
    const speedFactor = Math.max(1.0, speed / C.CHARGE_SPEED_NORM);
    const stunFactor = p.status === PlayerStatus.DIZZY ? C.CHARGE_STUN_FACTOR : 1.0;
    const rate = C.CHARGE_RATE_BASE * (p.chargeMultiplier + 1) * speedFactor * stunFactor;
    p.chargeGauge = clamp(p.chargeGauge + rate * dt, 0, 1);
  }

  private awardOrangeTrick(
    p: PlayerSimState,
    amount: number,
    label: string,
    x: number,
    y: number,
    points: number = C.ORANGE_TRICK_POINTS
  ): void {
    // 0x0056AFF5: block c2 (+0xD4C) gain while invulnerable (+0xD54 > 0)
    if (p.invulnTimer <= 0) {
      p.chargeGauge2 = clamp(p.chargeGauge2 + amount, 0, 1);
    }
    this.events.push({
      type: 'trick',
      slotIndex: p.slotIndex,
      points,
      label,
      x,
      y,
    });
  }

  private recordPivotAttachForTricks(p: PlayerSimState, pivot: { id: number; x: number; y: number }): void {
    const prevIdx = p.pivotHistory.findIndex((h) => h.id === pivot.id);
    if (prevIdx !== -1 && p.pivotHistory.length - prevIdx >= 3) {
      const cycle = p.pivotHistory.slice(prevIdx);
      const distinctIds = new Set(cycle.map((h) => h.id));
      if (distinctIds.size === 3) {
        this.awardOrangeTrick(
          p,
          C.TRICKS.TRIANGLE.charge,
          `${C.TRICKS.TRIANGLE.name} +${C.TRICKS.TRIANGLE.points}`,
          p.x,
          p.y,
          C.TRICKS.TRIANGLE.points
        );
        p.pivotHistory = [{ id: pivot.id, x: pivot.x, y: pivot.y, netRad: 0 }];
        return;
      }
      if (distinctIds.size >= 4) {
        let maxSpanSq = 0;
        for (let i = 0; i < cycle.length; i++) {
          for (let j = i + 1; j < cycle.length; j++) {
            const dx = cycle[i].x - cycle[j].x;
            const dy = cycle[i].y - cycle[j].y;
            const dSq = dx * dx + dy * dy;
            if (dSq > maxSpanSq) maxSpanSq = dSq;
          }
        }
        // Big0 threshold 90000.0 (0x56f007): 4-pivot tight loop -> Square (2000/+1.0), wide loop -> Big0 (700/+0.66)
        const trick = distinctIds.size === 4 && maxSpanSq < 90000 ? C.TRICKS.SQUARE : C.TRICKS.BIG_O;
        this.awardOrangeTrick(p, trick.charge, `${trick.name} +${trick.points}`, p.x, p.y, trick.points);
        p.pivotHistory = [{ id: pivot.id, x: pivot.x, y: pivot.y, netRad: 0 }];
        return;
      }
    }

    p.pivotHistory.push({ id: pivot.id, x: pivot.x, y: pivot.y, netRad: 0 });
    if (p.pivotHistory.length > 8) {
      p.pivotHistory.shift();
    }
    const distinctChain = new Set(p.pivotHistory.map((h) => h.id)).size;
    if (distinctChain >= 6) {
      this.awardOrangeTrick(
        p,
        C.TRICKS.ROPE_BRIDGE.charge,
        `${C.TRICKS.ROPE_BRIDGE.name} +${C.TRICKS.ROPE_BRIDGE.points}`,
        p.x,
        p.y,
        C.TRICKS.ROPE_BRIDGE.points
      );
      p.pivotHistory = [{ id: pivot.id, x: pivot.x, y: pivot.y, netRad: 0 }];
    }
  }

  private tryConsumeShield(
    victim: PlayerSimState,
    nx: number,
    ny: number,
    hitX: number,
    hitY: number,
    applyDizzy = true
  ): boolean {
    let shieldType: 'white' | 'orange';
    if (victim.chargeGauge >= 1.0) {
      victim.chargeGauge = 0; // 0x005793C0 / 0x00577BD7
      shieldType = 'white';
    } else if (victim.chargeGauge2 >= 1.0) {
      victim.chargeGauge2 = 0; // 0x005793E4 / 0x00577CFF
      shieldType = 'orange';
    } else {
      return false;
    }

    if (applyDizzy) {
      // 0x00579427 .. 0x00579458: DetachRope, invulnTimer = 0.5*1.0s, dizzyTimer = simRef[0x58] (1.0s)
      victim.status = PlayerStatus.DIZZY;
      victim.statusTimer = C.DIZZY_DURATION_SEC;
      victim.attachedPivotId = -1;
    } else if (victim.status === PlayerStatus.SWINGING) {
      victim.status = PlayerStatus.FREE_FALL;
      victim.attachedPivotId = -1;
    }
    victim.invulnTimer = C.SHIELD_BREAK_INVULN_SEC; // Verified 0.500s on shield break
    const speed = Math.max(550, Math.hypot(victim.vx, victim.vy));
    const vn = victim.vx * nx + victim.vy * ny;
    if (vn < 0) {
      victim.vx -= 2 * vn * nx;
      victim.vy -= 2 * vn * ny;
    } else {
      victim.vx = nx * speed;
      victim.vy = ny * speed;
    }
    this.events.push({
      type: 'shieldbreak',
      slotIndex: victim.slotIndex,
      shieldType,
      x: hitX,
      y: hitY,
    });
    return true;
  }

  /**
   * Native `CRotasticPlayer::CanConsumeAttachCharge` (`0x0056A5A0`):
   * Returns true if the player can grapple right now (invulnerable while not dizzy,
   * OR `chargeGauge >= 1.0` (+0xD48), OR `chargeGauge2 >= 1.0` (+0xD4C)).
   */
  public canPlayerAttach(p: PlayerSimState): boolean {
    if (p.attachLockTimer > 0) return false;
    if (p.invulnTimer > 0 && p.status !== PlayerStatus.DIZZY) return true;
    return p.chargeGauge >= 1.0 || p.chargeGauge2 >= 1.0;
  }

  private tryAttachToNearestPivot(p: PlayerSimState): boolean {
    const nearest = this.findNearestAttachPoint(p.x, p.y, C.ROPE_ATTACH_RANGE);
    if (!nearest) return false;

    // 0x0056A5A0 -> 0x0056C6E2: consume +0xD48 (c1) or +0xD4C (c2), unless invulnerable
    let consumedShield: 'white' | 'orange' | undefined;
    if (!(p.invulnTimer > 0 && p.status !== PlayerStatus.DIZZY)) {
      if (p.chargeGauge >= 1.0) {
        p.chargeGauge = 0; // 0x0056C6FA
        consumedShield = 'white';
      } else if (p.chargeGauge2 >= 1.0) {
        p.chargeGauge2 = 0; // 0x0056C729
        consumedShield = 'orange';
      } else {
        this.events.push({ type: 'attachdenied', slotIndex: p.slotIndex, x: p.x, y: p.y });
        return false; // 0x0056C7DE: block infinite rapid grapple spam
      }
    }

    const dx = p.x - nearest.x;
    const dy = p.y - nearest.y;
    const rawDist = Math.hypot(dx, dy);
    // Attach immediately at current distance down to 1 unit (unwinds gradually to ROPE_MIN_RADIUS=150 during swing)
    const r = clamp(rawDist, C.ROPE_ATTACH_MIN_DIST, C.ROPE_MAX_RADIUS);
    const angle = rawDist >= 0.5 ? Math.atan2(dy, dx) : -Math.PI * 0.5;

    const tx = -Math.sin(angle);
    const ty = Math.cos(angle);
    const vTangential = p.vx * tx + p.vy * ty;
    // Scale omega from actual tangential speed; guard denominator >= 40 so ultra-close attaches don't spin explosively
    const effectiveR = Math.max(r, 40);
    let omega = vTangential / effectiveR;

    if (Math.abs(omega) < 0.35) {
      const sign = omega !== 0 ? Math.sign(omega) : p.vx >= 0 ? 1 : -1;
      omega = sign * 0.35;
    }
    const maxOmegaBySpeed = C.SWING_MAX_SPEED / effectiveR;
    const maxOmega = Math.min(C.MAX_OMEGA_RAD_S, maxOmegaBySpeed);
    omega = clamp(omega, -maxOmega, maxOmega);

    p.status = PlayerStatus.SWINGING;
    p.statusTimer = 0;
    p.attachedPivotId = nearest.id;
    p.ropeLength = r;
    p.ropeAngle = angle;
    p.omega = omega;
    p.attachTimer = 0;
    p.swingNetRad = 0;
    this.recordPivotAttachForTricks(p, nearest);
    p.swingLoopAccumRad = 0;
    p.turnBoostCount = 0;
    p.swingBoostTimer = 0;

    p.x = nearest.x + Math.cos(angle) * r;
    p.y = nearest.y + Math.sin(angle) * r;
    p.vx = -omega * r * Math.sin(angle);
    p.vy = omega * r * Math.cos(angle);

    this.events.push({
      type: 'attach',
      slotIndex: p.slotIndex,
      shieldType: consumedShield,
      x: nearest.x,
      y: nearest.y,
    });
    return true;
  }

  private releaseFromPivot(p: PlayerSimState): void {
    if (p.status !== PlayerStatus.SWINGING) return;

    // Verified 1.2x boost on release (900 -> 1079 u/s observed in telemetry)
    const boost = C.RELEASE_BOOST_FACTOR;
    p.vx *= boost;
    p.vy *= boost;

    const speed = Math.hypot(p.vx, p.vy);
    if (speed > C.PLAYER_MAX_SPEED) {
      const scale = C.PLAYER_MAX_SPEED / speed;
      p.vx *= scale;
      p.vy *= scale;
    }

    p.status = PlayerStatus.FREE_FALL;
    p.attachedPivotId = -1;
    p.attachTimer = 0;
    p.turnBoostCount = 0;
    p.swingBoostTimer = 0;
    p.regrappleTimer = C.REGRAPPLE_COOLDOWN_SEC;

    this.events.push({ type: 'release', slotIndex: p.slotIndex, x: p.x, y: p.y });
  }

  private computeWorldAccel(): { ax: number; ay: number } {
    return { ax: 0, ay: -C.GRAVITY };
  }

  /**
   * Exact pendulum step decompiled from `Rotastic.exe` (`0x0056B3D0..0x0056BC5A`):
   *   1. Quadratic self-pump: `vt_pumped = vt + sgn(vt) * (vt^2 * 0.0015 + boostAccel) * dt`
   *      where `boostAccel = (1 - swingBoostTimer / 0.4) * 1300` while `swingBoostTimer > 0`.
   *   2. Linear tangential gravity: `vt_new = clamp(vt_pumped + dot(accel, tangent) * dt, -maxSpeed, +maxSpeed)`.
   *   3. Angular velocity clamp: `omega = clamp(vt_new / max(r, 1), -maxOmega, +maxOmega)`.
   *   4. Apex zero-crossing boost: if `vt * vt_new <= 0`, sets `swingBoostTimer = 0.4 * max(0, dot(accelDir, r_hat))`.
   */
  private stepSwinging(p: PlayerSimState, cmd: PlayerInputCommand, dt: number): void {
    const pivot = this.state.attachPoints.find((ap) => ap.id === p.attachedPivotId);
    if (!pivot) {
      p.status = PlayerStatus.FREE_FALL;
      p.attachedPivotId = -1;
      p.swingBoostTimer = 0;
      return;
    }

    p.attachTimer += dt;
    let r = p.ropeLength;

    // Invert rotation direction button (`Shift` / `S` / `ArrowDown` / `Right Click`)
    const justReverse = Boolean(cmd.reverseHeld) && !p.lastReverseHeld;
    if (justReverse) {
      const flipSign = p.omega >= 0 ? -1 : 1;
      const minFlipOmega = Math.max(Math.abs(p.omega), C.MIN_OMEGA_RAD_S * 1.8);
      p.omega = flipSign * minFlipOmega;
      p.turnBoostCount = Math.min(5, p.turnBoostCount + 1);
      p.swingLoopAccumRad = 0;
      p.swingBoostTimer = C.SWING_BOOST_DURATION_SEC * 0.5;
      this.events.push({ type: 'invert', slotIndex: p.slotIndex, x: p.x, y: p.y });
    }

    // Effective limits include turnBoost stacks (900 + 60*k up to 1200 u/s)
    const effectiveSwingMaxSpeed = C.SWING_MAX_SPEED + p.turnBoostCount * C.TURN_BOOST_SPEED_STEP;
    const effectiveMaxOmega = C.MAX_OMEGA_RAD_S + p.turnBoostCount * C.TURN_BOOST_OMEGA_STEP;

    // Expand short rope (< 150) after delay; preserve tangential velocity (omega *= rOld / r).
    if (r < C.ROPE_MIN_RADIUS && p.attachTimer >= C.ROPE_UNWIND_DELAY_SEC) {
      const rOld = r;
      r = Math.min(C.ROPE_MIN_RADIUS, r + C.ROPE_ADJUST_SPEED * dt);
      if (r > rOld && rOld >= 1) {
        p.omega *= rOld / r;
      }
      p.ropeLength = r;
    }

    const safeR = Math.max(r, C.ROPE_ATTACH_MIN_DIST);
    const vt = p.omega * safeR;
    const sgn = vt >= 0 ? 1 : -1;

    // Blend remaining swingBoostTimer (`+0xC4C`) into tangential acceleration (`0x0056B5AE..0x0056B63D`)
    let boostAccel = 0;
    if (p.swingBoostTimer > 0) {
      const alpha = Math.min(1, p.swingBoostTimer / C.SWING_BOOST_DURATION_SEC);
      boostAccel = (1 - alpha) * C.SWING_BOOST_TARGET_SPEED;
      p.swingBoostTimer = Math.max(0, p.swingBoostTimer - dt);
    }

    // Quadratic pump + boost, clamped to preserve pre-gravity sign (`0x0056B646..0x0056B71D`)
    const pumpedRaw = vt + sgn * (vt * vt * C.SWING_QUAD_PUMP + boostAccel) * dt;
    const vtPumped = vt >= 0 ? Math.max(0, pumpedRaw) : Math.min(0, pumpedRaw);

    // Tangential gravity acceleration in Y-up coordinates (`0x0056B71D..0x0056B75B`)
    const tx = -Math.sin(p.ropeAngle);
    const ty = Math.cos(p.ropeAngle);
    const accel = this.computeWorldAccel();
    const aTan = accel.ax * tx + accel.ay * ty;

    let vtNew = clamp(vtPumped + aTan * dt, -effectiveSwingMaxSpeed, effectiveSwingMaxSpeed);
    let omegaNew = clamp(vtNew / safeR, -effectiveMaxOmega, effectiveMaxOmega);
    vtNew = omegaNew * safeR;

    const dAngle = omegaNew * dt;
    p.omega = omegaNew;
    p.ropeAngle += dAngle;
    if (p.ropeAngle > Math.PI) p.ropeAngle -= Math.PI * 2;
    if (p.ropeAngle < -Math.PI) p.ropeAngle += Math.PI * 2;

    // Trigger apex swingBoostTimer when gravity reverses tangential motion across 0 (`0x0056BB75..0x0056BC5A`)
    if (!justReverse && vt * vtNew <= 0 && (vt !== 0 || vtNew !== 0)) {
      const accelLen = Math.hypot(accel.ax, accel.ay);
      if (accelLen > 1e-4) {
        const align =
          (accel.ax / accelLen) * Math.cos(p.ropeAngle) +
          (accel.ay / accelLen) * Math.sin(p.ropeAngle);
        if (align > 0) {
          p.swingBoostTimer = C.SWING_BOOST_DURATION_SEC * align;
        }
      }
    }

    // Track net angular travel for Rotastic (Figure-8) and GetIt (360° revolution)
    p.swingNetRad += dAngle;
    const curPivotEntry = p.pivotHistory[p.pivotHistory.length - 1];
    if (curPivotEntry && curPivotEntry.id === p.attachedPivotId) {
      curPivotEntry.netRad = p.swingNetRad;
      if (p.pivotHistory.length >= 2) {
        const prevEntry = p.pivotHistory[p.pivotHistory.length - 2];
        if (
          prevEntry.id !== curPivotEntry.id &&
          Math.abs(prevEntry.netRad) >= Math.PI &&
          Math.abs(curPivotEntry.netRad) >= Math.PI &&
          prevEntry.netRad * curPivotEntry.netRad < 0
        ) {
          this.awardOrangeTrick(
            p,
            C.TRICKS.ROTASTIC.charge,
            `${C.TRICKS.ROTASTIC.name} +${C.TRICKS.ROTASTIC.points}`,
            p.x,
            p.y,
            C.TRICKS.ROTASTIC.points
          );
          prevEntry.netRad = 0;
          curPivotEntry.netRad = 0;
        }
      }
    }

    // Award "Get It" (+0.20, 150 pts) for completing a fast full revolution
    if (Math.abs(p.omega) * r >= 680) {
      p.swingLoopAccumRad += Math.abs(dAngle);
      if (p.swingLoopAccumRad >= Math.PI * 2) {
        p.swingLoopAccumRad -= Math.PI * 2;
        this.awardOrangeTrick(
          p,
          C.TRICKS.GET_IT.charge,
          `${C.TRICKS.GET_IT.name} +${C.TRICKS.GET_IT.points}`,
          p.x,
          p.y,
          C.TRICKS.GET_IT.points
        );
      }
    } else {
      p.swingLoopAccumRad = 0;
    }

    // Risky (0x56e16c: 150.0 -> 200.0): dipping near bottom death zone and recovering upward
    if (p.y <= 150) {
      p.riskyArmed = true;
    } else if (p.riskyArmed && p.y >= 260) {
      p.riskyArmed = false;
      this.awardOrangeTrick(
        p,
        C.TRICKS.RISKY.charge,
        `${C.TRICKS.RISKY.name} +${C.TRICKS.RISKY.points}`,
        p.x,
        p.y,
        C.TRICKS.RISKY.points
      );
    }

    p.x = pivot.x + Math.cos(p.ropeAngle) * r;
    p.y = pivot.y + Math.sin(p.ropeAngle) * r;
    p.vx = -p.omega * r * Math.sin(p.ropeAngle);
    p.vy = p.omega * r * Math.cos(p.ropeAngle);
  }

  /**
   * Free-fall solver calibrated directly from telemetry:
   * - Gravity `vy -= 686.7 * dt`
   * - Zero horizontal air drag (`vx` preserved during flight)
   */
  private stepFreeFall(p: PlayerSimState, cmd: PlayerInputCommand, dt: number): void {
    const accel = this.computeWorldAccel();
    p.vx += (accel.ax + cmd.axisX * C.AIR_STEER_ACCEL) * dt;
    p.vy += (accel.ay + cmd.axisY * (C.AIR_STEER_ACCEL * 0.35)) * dt;

    const speed = Math.hypot(p.vx, p.vy);
    if (speed > C.PLAYER_MAX_SPEED) {
      const s = C.PLAYER_MAX_SPEED / speed;
      p.vx *= s;
      p.vy *= s;
    }

    p.x += p.vx * dt;
    p.y += p.vy * dt;
  }

  private checkWallsAndBounds(p: PlayerSimState, prevX: number, prevY: number): void {
    // 1. Dynamic obstacle & bounds checks (switch activation is tied directly to hitting
    // PST_MecaSwitch_Collider from below inside the OBB contact loop below).
    // 2. Swept OBB wall & moving hazard checks (0x005769E0 swinging / 0x00576BE0 free-fall):
    // Resolve earliest TOI contact per pass so multi-wall corners and fast upward bounces never stutter.
    let sweepPrevX = prevX;
    let sweepPrevY = prevY;
    let swingBounced = false;
    const hitWallsThisTick = new Set<number>();

    for (let pass = 0; pass < 3; pass++) {
      let bestWall: WallSimState | null = null;
      let bestHit: SweptOBBHit | null = null;

      for (const w of this.state.walls) {
        if (!w.active || hitWallsThisTick.has(w.id)) continue;
        const hit = resolveSweptCircleOBB2D(
          p.x,
          p.y,
          sweepPrevX,
          sweepPrevY,
          C.PLAYER_RADIUS,
          w.cx,
          w.cy,
          w.halfW,
          w.halfH,
          w.rotRad
        );
        if (!hit) continue;
        if (
          !bestHit ||
          hit.toi < bestHit.toi - 1e-5 ||
          (Math.abs(hit.toi - bestHit.toi) <= 1e-5 && hit.distSq < bestHit.distSq)
        ) {
          bestHit = hit;
          bestWall = w;
        }
      }

      if (!bestWall || !bestHit) break;
      hitWallsThisTick.add(bestWall.id);

      if (bestWall.type === 'deadly') {
        if (p.invulnTimer > 0) {
          p.x = bestHit.contactX + bestHit.nx * (C.PLAYER_RADIUS + 2);
          p.y = bestHit.contactY + bestHit.ny * (C.PLAYER_RADIUS + 2);
          const vn = p.vx * bestHit.nx + p.vy * bestHit.ny;
          if (vn < 0) {
            p.vx -= 2 * vn * bestHit.nx;
            p.vy -= 2 * vn * bestHit.ny;
          }
          sweepPrevX = p.x;
          sweepPrevY = p.y;
          continue;
        }
        if (this.tryConsumeShield(p, bestHit.nx, bestHit.ny, bestHit.contactX, bestHit.contactY)) {
          p.x = bestHit.contactX + bestHit.nx * (C.PLAYER_RADIUS + 6);
          p.y = bestHit.contactY + bestHit.ny * (C.PLAYER_RADIUS + 6);
          sweepPrevX = p.x;
          sweepPrevY = p.y;
          continue;
        }
        this.killPlayer(p, p.lastAttackerSlot);
        return;
      }

      const vn = p.vx * bestHit.nx + p.vy * bestHit.ny;

      // Trigger PST_MecaSwitch when colliding with the underside of the lever OBB (ny < -0.2, moving upward)
      if (
        bestWall.name === 'PST_MecaSwitch_Collider' &&
        vn < 0 &&
        bestHit.ny < -0.2 &&
        this.state.switchCooldownSec <= 0 &&
        this.state.activeSwitchWallId === -1
      ) {
        const switchWalls = this.map.walls.filter(
          (w) => w.motion?.kind === 'waypoints' && w.motion.switchControlled
        );
        if (switchWalls.length > 0) {
          const seed = ((this.state.tick * 1103515245 + 12345 + p.slotIndex * 2654435761) >>> 16) >>> 0;
          const chosen = switchWalls[seed % switchWalls.length];
          this.state.activeSwitchWallId = chosen.id;
          this.state.activeSwitchElapsedSec = 0;
          this.state.switchReversed = true;
          this.state.switchCooldownSec =
            chosen.motion?.kind === 'waypoints' ? getWaypointMotionDuration(chosen.motion) : 2.0;
        } else {
          this.state.switchReversed = !this.state.switchReversed;
          this.state.switchCooldownSec = 2.0;
        }
        this.awardOrangeTrick(p, C.ORANGE_CHARGE_STEP, 'Switch!', bestHit.contactX, bestHit.contactY);
        this.events.push({
          type: 'switchtoggle',
          slotIndex: p.slotIndex,
          x: bestHit.contactX,
          y: bestHit.contactY,
        });
      }

      if (p.status === PlayerStatus.SWINGING) {
        const pivot = this.state.attachPoints.find((ap) => ap.id === p.attachedPivotId);
        if (pivot && p.ropeLength > 1) {
          const r = p.ropeLength;
          const clearanceSq = (C.PLAYER_RADIUS + 0.05) ** 2;
          const startAngle = Math.atan2(sweepPrevY - pivot.y, sweepPrevX - pivot.x);
          let dTheta = p.ropeAngle - startAngle;
          while (dTheta > Math.PI) dTheta -= Math.PI * 2;
          while (dTheta < -Math.PI) dTheta += Math.PI * 2;

          const startPos = {
            x: pivot.x + Math.cos(startAngle) * r,
            y: pivot.y + Math.sin(startAngle) * r,
          };
          const startClear =
            closestPointOnOBB2D(
              startPos.x,
              startPos.y,
              bestWall.cx,
              bestWall.cy,
              bestWall.halfW,
              bestWall.halfH,
              bestWall.rotRad
            ).distSq > clearanceSq;

          if (startClear && Math.abs(dTheta) > 1e-4) {
            let lo = 0;
            let hi = 1;
            for (let b = 0; b < 10; b++) {
              const mid = (lo + hi) * 0.5;
              const ang = startAngle + dTheta * mid;
              const cx = pivot.x + Math.cos(ang) * r;
              const cy = pivot.y + Math.sin(ang) * r;
              const d2 = closestPointOnOBB2D(
                cx,
                cy,
                bestWall.cx,
                bestWall.cy,
                bestWall.halfW,
                bestWall.halfH,
                bestWall.rotRad
              ).distSq;
              if (d2 > clearanceSq) {
                lo = mid;
              } else {
                hi = mid;
              }
            }
            p.ropeAngle = startAngle + dTheta * lo;
          } else {
            const pushX = bestHit.contactX + bestHit.nx * (C.PLAYER_RADIUS + 1.5);
            const pushY = bestHit.contactY + bestHit.ny * (C.PLAYER_RADIUS + 1.5);
            let candAngle = Math.atan2(pushY - pivot.y, pushX - pivot.x);
            const tx = -Math.sin(candAngle);
            const ty = Math.cos(candAngle);
            const outDir = tx * bestHit.nx + ty * bestHit.ny >= 0 ? 1 : -1;
            for (let s = 0; s < 16; s++) {
              const testAng = candAngle + outDir * s * 0.02;
              const testX = pivot.x + Math.cos(testAng) * r;
              const testY = pivot.y + Math.sin(testAng) * r;
              if (
                closestPointOnOBB2D(
                  testX,
                  testY,
                  bestWall.cx,
                  bestWall.cy,
                  bestWall.halfW,
                  bestWall.halfH,
                  bestWall.rotRad
                ).distSq > clearanceSq
              ) {
                candAngle = testAng;
                break;
              }
            }
            p.ropeAngle = candAngle;
          }

          if (p.ropeAngle > Math.PI) p.ropeAngle -= Math.PI * 2;
          if (p.ropeAngle < -Math.PI) p.ropeAngle += Math.PI * 2;
          p.x = pivot.x + Math.cos(p.ropeAngle) * r;
          p.y = pivot.y + Math.sin(p.ropeAngle) * r;
        } else {
          p.x = bestHit.contactX + bestHit.nx * (C.PLAYER_RADIUS + 1.5);
          p.y = bestHit.contactY + bestHit.ny * (C.PLAYER_RADIUS + 1.5);
        }

        // 0x00575E60 / 0x005769E0: only reverse omega when moving into the wall normal (vn < 0)
        if (vn < 0 && !swingBounced) {
          p.omega = -p.omega * 0.96;
          p.swingBoostTimer = 0;
          swingBounced = true;
        }
        p.vx = -p.omega * p.ropeLength * Math.sin(p.ropeAngle);
        p.vy = p.omega * p.ropeLength * Math.cos(p.ropeAngle);
      } else {
        // Push player outside elastic/normal OBB along swept entry normal
        p.x = bestHit.contactX + bestHit.nx * (C.PLAYER_RADIUS + 1.5);
        p.y = bestHit.contactY + bestHit.ny * (C.PLAYER_RADIUS + 1.5);
        if (vn < 0) {
          const restitution = C.WALL_BOUNCE_RESTITUTION;
          p.vx -= (1 + restitution) * vn * bestHit.nx;
          p.vy -= (1 + restitution) * vn * bestHit.ny;
        }
      }

      sweepPrevX = p.x;
      sweepPrevY = p.y;

      if (vn < 0) {
        // High-speed bounce tricks charge orange bar: Pancake (|vn|/speed >= 0.9 @ >= 900 u/s -> +0.66/700) or Bounce (+0.20/150)
        const postSpeed = Math.hypot(p.vx, p.vy);
        if (p.wallTrickCooldown <= 0 && postSpeed >= 420) {
          p.wallTrickCooldown = 1.4;
          const isPancake = postSpeed >= 900 && Math.abs(vn) / Math.max(1, postSpeed) >= 0.9;
          const trick = isPancake ? C.TRICKS.PANCAKE : C.TRICKS.BOUNCE;
          this.awardOrangeTrick(
            p,
            trick.charge,
            `${trick.name} +${trick.points}`,
            bestHit.contactX,
            bestHit.contactY,
            trick.points
          );
        }

        this.events.push({ type: 'bounce', slotIndex: p.slotIndex, x: bestHit.contactX, y: bestHit.contactY });
      }
    }

    // Risky (0x56e16c: 150.0 -> 200.0): recovering upward after dipping near bottom hazard zone
    if (p.y <= 150 && p.y > C.DEATH_BOTTOM_Y) {
      p.riskyArmed = true;
    } else if (p.riskyArmed && p.y >= 260) {
      p.riskyArmed = false;
      this.awardOrangeTrick(
        p,
        C.TRICKS.RISKY.charge,
        `${C.TRICKS.RISKY.name} +${C.TRICKS.RISKY.points}`,
        p.x,
        p.y,
        C.TRICKS.RISKY.points
      );
    }

    // 3. Bottom fall death threshold (`TriggerPlanePlayerDeath @ y <= -300.0`, lethal even with full bubble)
    if (p.y <= C.DEATH_BOTTOM_Y) {
      this.killPlayer(p, p.lastAttackerSlot);
      return;
    }

    // Safety clamp if out horizontally or above WallTop underside (`TOP_CEILING_Y - PLAYER_RADIUS`)
    if (p.x < C.PLAYER_RADIUS) {
      p.x = C.PLAYER_RADIUS;
      if (p.vx < 0) p.vx = -p.vx;
    } else if (p.x > C.ARENA_WIDTH - C.PLAYER_RADIUS) {
      p.x = C.ARENA_WIDTH - C.PLAYER_RADIUS;
      if (p.vx > 0) p.vx = -p.vx;
    }
    const maxSafeCenterY = C.TOP_CEILING_Y - C.PLAYER_RADIUS;
    if (p.y > maxSafeCenterY) {
      p.y = maxSafeCenterY;
      if (p.vy > 0) p.vy = -p.vy;
    }
  }

  /**
   * Native rope cutting (`CRotasticRope::vfunc_44 @ 0x005435D0` + `OnCutEnemyRope @ 0x00578A90`):
   * - No minimum speed or angular velocity threshold (`0x00578A90` checks only different team + victim attached).
   * - Rope capsule has radius 5.0 (`0x00543838`) and length `max(1.0, L - PLAYER_RADIUS)` (`0x00543880`),
   *   ending before the victim's body; when sharing a pivot, cutter must swing on a shorter rope (`L_c < L_v`).
   * - Colliding with the victim's body (`2 * PLAYER_RADIUS`) or complete white bubble (`c1 >= 1.0`,
   *   `PLAYER_RADIUS + SHIELD_BUBBLE_RADIUS`) protects the victim's rope and prevents a clean cut.
   */
  private checkRopeCuts(dt: number): void {
    const cutRadius = C.PLAYER_RADIUS + C.ROPE_CAPSULE_RADIUS;
    const cutRadiusSq = cutRadius * cutRadius;

    for (const victim of this.state.players) {
      if (
        !victim.active ||
        victim.status !== PlayerStatus.SWINGING ||
        victim.attachTimer < C.ROPE_CUT_GRACE_SEC
      ) {
        continue;
      }

      const pivot = this.state.attachPoints.find((ap) => ap.id === victim.attachedPivotId);
      if (!pivot) continue;

      const ropeDx = victim.x - pivot.x;
      const ropeDy = victim.y - pivot.y;
      const victimDist = Math.hypot(ropeDx, ropeDy);
      if (victimDist <= C.PLAYER_RADIUS + 1.0) continue;

      const invVictimDist = 1 / victimDist;
      const capsuleLen = Math.max(1.0, victimDist - C.PLAYER_RADIUS);
      const ropeEndX = pivot.x + ropeDx * invVictimDist * capsuleLen;
      const ropeEndY = pivot.y + ropeDy * invVictimDist * capsuleLen;

      const victimProtectRadius =
        C.PLAYER_RADIUS + (victim.chargeGauge >= 1.0 ? C.SHIELD_BUBBLE_RADIUS : C.PLAYER_RADIUS);
      const victimProtectRadiusSq = victimProtectRadius * victimProtectRadius;

      for (const cutter of this.state.players) {
        if (
          !cutter.active ||
          cutter.slotIndex === victim.slotIndex ||
          cutter.status === PlayerStatus.DEAD ||
          cutter.status === PlayerStatus.SPAWN_CURSOR ||
          cutter.status === PlayerStatus.DIZZY
        ) {
          continue;
        }

        // Swinging on the same pivot requires a shorter rope than the victim
        if (
          cutter.status === PlayerStatus.SWINGING &&
          cutter.attachedPivotId === victim.attachedPivotId &&
          cutter.ropeLength >= victim.ropeLength
        ) {
          continue;
        }

        const prevCutterX = cutter.x - cutter.vx * dt;
        const prevCutterY = cutter.y - cutter.vy * dt;

        // Block cut if cutter collides with the victim's body or full white bubble (c1 >= 1.0)
        const currVictimDistSq = (cutter.x - victim.x) ** 2 + (cutter.y - victim.y) ** 2;
        if (currVictimDistSq <= victimProtectRadiusSq) continue;
        const sweptVictim = closestPointOnSegment2D(
          victim.x,
          victim.y,
          prevCutterX,
          prevCutterY,
          cutter.x,
          cutter.y
        );
        if (sweptVictim.distSq <= victimProtectRadiusSq) continue;

        const seg = closestPointOnSegment2D(
          cutter.x,
          cutter.y,
          pivot.x,
          pivot.y,
          ropeEndX,
          ropeEndY
        );

        const hitCurrent = seg.t >= 0.02 && seg.t <= 1.0 && seg.distSq <= cutRadiusSq;
        const sweptCross = segmentsIntersect2D(
          prevCutterX,
          prevCutterY,
          cutter.x,
          cutter.y,
          pivot.x,
          pivot.y,
          ropeEndX,
          ropeEndY
        );

        if (hitCurrent || sweptCross) {
          victim.status = PlayerStatus.DIZZY;
          victim.statusTimer = C.DIZZY_DURATION_SEC;
          victim.attachedPivotId = -1;
          victim.attachTimer = 0;
          victim.lastAttackerSlot = cutter.slotIndex;
          victim.lastAttackTimer = C.KILL_ATTRIBUTION_WINDOW_SEC;

          this.awardOrangeTrick(
            cutter,
            C.TRICKS.CUT.charge,
            `${C.TRICKS.CUT.name} +${C.TRICKS.CUT.points}`,
            seg.cx,
            seg.cy,
            C.TRICKS.CUT.points
          );
          this.events.push({
            type: 'ropecut',
            slotIndex: cutter.slotIndex,
            targetSlot: victim.slotIndex,
            x: seg.cx,
            y: seg.cy,
          });
          break;
        }
      }
    }
  }

  /**
   * Exact PvP collision (`0x005780C0`, `0x00578426` + `0x00576E30`):
   * Effective mass `m_i = 1.0 + 10.0 * (c2_i)^2` (read-only).
   * Never calls KillPlayer (`0x005409F0`) mid-air — launches the opponent with weighted
   * elastic impulse and sets `lastAttackerSlot` so bottom/hazard deaths credit the attacker.
   */
  private checkPlayerCollisions(): void {
    const n = this.state.players.length;
    for (let i = 0; i < n; i++) {
      const a = this.state.players[i];
      if (!a.active || a.status === PlayerStatus.DEAD || a.status === PlayerStatus.SPAWN_CURSOR) continue;

      for (let j = i + 1; j < n; j++) {
        const b = this.state.players[j];
        if (!b.active || b.status === PlayerStatus.DEAD || b.status === PlayerStatus.SPAWN_CURSOR) continue;

        const dx = b.x - a.x;
        const dy = b.y - a.y;
        const distSq = dx * dx + dy * dy;
        const minDist = C.PLAYER_RADIUS * 2;
        if (distSq > minDist * minDist) continue;

        const dist = Math.sqrt(distSq) || 0.001;
        const nx = dx / dist;
        const ny = dy / dist;

        const overlap = (minDist - dist) * 0.52;
        a.x -= nx * overlap;
        a.y -= ny * overlap;
        b.x += nx * overlap;
        b.y += ny * overlap;

        const vASq = a.vx * a.vx + a.vy * a.vy;
        const vBSq = b.vx * b.vx + b.vy * b.vy;
        const speedA = Math.sqrt(vASq);
        const speedB = Math.sqrt(vBSq);
        const mA = 1.0 + C.PVP_MASS_ORANGE_COEF * a.chargeGauge2 * a.chargeGauge2;
        const mB = 1.0 + C.PVP_MASS_ORANGE_COEF * b.chargeGauge2 * b.chargeGauge2;
        const midX = (a.x + b.x) * 0.5;
        const midY = (a.y + b.y) * 0.5;

        // Weighted 2D elastic impulse exchange (`0x00578426` + `0x00576E30`):
        // Binary enforces minimum 450.0 speed floor (`0x005782C6`, `0x005783B8`) prior to impulse
        // so heavy orange-ring holders (mass up to 11.0) launch opponents cleanly even at medium speed.
        const effScaleA = speedA > 1e-3 && speedA < C.PVP_MIN_COLLISION_SPEED ? C.PVP_MIN_COLLISION_SPEED / speedA : 1.0;
        const effScaleB = speedB > 1e-3 && speedB < C.PVP_MIN_COLLISION_SPEED ? C.PVP_MIN_COLLISION_SPEED / speedB : 1.0;
        const effVxA = a.vx * effScaleA;
        const effVyA = a.vy * effScaleA;
        const effVxB = b.vx * effScaleB;
        const effVyB = b.vy * effScaleB;
        const relVx = effVxA - effVxB;
        const relVy = effVyA - effVyB;
        const velAlongNormal = relVx * nx + relVy * ny;
        if (velAlongNormal > 0) {
          const factorA = (2 * mB) / (mA + mB);
          const factorB = (2 * mA) / (mA + mB);
          a.vx = effVxA - factorA * velAlongNormal * nx;
          a.vy = effVyA - factorA * velAlongNormal * ny;
          b.vx = effVxB + factorB * velAlongNormal * nx;
          b.vy = effVyB + factorB * velAlongNormal * ny;
          for (const p of [a, b]) {
            const sp = Math.hypot(p.vx, p.vy);
            if (sp > C.PLAYER_MAX_SPEED) {
              const s = C.PLAYER_MAX_SPEED / sp;
              p.vx *= s;
              p.vy *= s;
            }
          }
        }

        // Update swung angular velocity or detach if hit hard by heavier rival (invuln prevents forced detach)
        for (const p of [a, b]) {
          const otherMass = p === a ? mB : mA;
          const selfMass = p === a ? mA : mB;
          if (p.status === PlayerStatus.SWINGING) {
            if (p.invulnTimer <= 0 && otherMass > selfMass * 1.5 && Math.hypot(p.vx, p.vy) > C.PVP_MIN_COLLISION_SPEED) {
              p.status = PlayerStatus.FREE_FALL;
              p.attachedPivotId = -1;
              p.regrappleTimer = C.REGRAPPLE_COOLDOWN_SEC;
            } else {
              const pivot = this.state.attachPoints.find((ap) => ap.id === p.attachedPivotId);
              if (pivot) {
                const tx = -Math.sin(p.ropeAngle);
                const ty = Math.cos(p.ropeAngle);
                p.omega = clamp((p.vx * tx + p.vy * ty) / p.ropeLength, -C.MAX_OMEGA_RAD_S, C.MAX_OMEGA_RAD_S);
              }
            }
          }
        }

        a.lastAttackerSlot = b.slotIndex;
        a.lastAttackTimer = C.KILL_ATTRIBUTION_WINDOW_SEC;
        b.lastAttackerSlot = a.slotIndex;
        b.lastAttackTimer = C.KILL_ATTRIBUTION_WINDOW_SEC;

        if (a.hitTrickCooldown <= 0 && speedA >= speedB) {
          a.hitTrickCooldown = 0.6;
          this.awardOrangeTrick(
            a,
            C.TRICKS.HIT.charge,
            `${C.TRICKS.HIT.name} +${C.TRICKS.HIT.points}`,
            midX,
            midY,
            C.TRICKS.HIT.points
          );
        } else if (b.hitTrickCooldown <= 0 && speedB > speedA) {
          b.hitTrickCooldown = 0.6;
          this.awardOrangeTrick(
            b,
            C.TRICKS.HIT.charge,
            `${C.TRICKS.HIT.name} +${C.TRICKS.HIT.points}`,
            midX,
            midY,
            C.TRICKS.HIT.points
          );
        }

        this.events.push({
          type: 'bounce',
          slotIndex: a.slotIndex,
          targetSlot: b.slotIndex,
          x: midX,
          y: midY,
        });
      }
    }
  }

  private killPlayer(victim: PlayerSimState, killerSlot: number): void {
    victim.status = PlayerStatus.DEAD;
    victim.statusTimer = C.RESPAWN_DELAY_SEC;
    victim.attachedPivotId = -1;
    victim.turnBoostCount = 0;
    victim.swingBoostTimer = 0;
    victim.vx = 0;
    victim.vy = 0;
    victim.y = C.GRAVESTONE_Y; // Resting tombstone height at bottom of arena
    victim.deaths++;
    if (victim.deaths >= 5) {
      victim.chargeMultiplier = 1; // Verified handicap +1 after 5 deaths @ 0x00540D7C
    }

    if (killerSlot >= 0 && killerSlot !== victim.slotIndex) {
      const killer = this.state.players[killerSlot];
      if (killer && killer.active) {
        killer.kills++;
        killer.score += 1;
        this.awardOrangeTrick(killer, 1.0, 'KILL +300', victim.x, victim.y);
      }
    } else {
      victim.score = Math.max(0, victim.score - 1);
    }

    this.events.push({
      type: 'death',
      slotIndex: victim.slotIndex,
      targetSlot: killerSlot >= 0 ? killerSlot : undefined,
      x: victim.x,
      y: victim.y,
    });
  }

  private updateMatchRules(dt: number): void {
    const activePlayers = this.state.players.filter((p) => p.active);
    if (activePlayers.length === 0) return;

    const sorted = [...activePlayers].sort((a, b) => b.score - a.score || b.kills - a.kills);
    const leader = sorted[0];
    const runnerUp = sorted[1];
    const isTiedAtTop = runnerUp !== undefined && leader.score === runnerUp.score;

    if (leader.score >= this.state.scoreLimit && !isTiedAtTop) {
      this.finishMatch(leader.slotIndex);
      return;
    }

    if (this.state.suddenDeath && !isTiedAtTop && leader.score > 0) {
      this.finishMatch(leader.slotIndex);
      return;
    }

    if (!this.state.suddenDeath) {
      this.state.timeRemainingSec = Math.max(0, this.state.timeRemainingSec - dt);
      if (this.state.timeRemainingSec <= 0) {
        if (isTiedAtTop) {
          this.state.suddenDeath = true;
          this.events.push({ type: 'suddendeath', x: C.ARENA_WIDTH * 0.5, y: C.ARENA_HEIGHT * 0.5 });
        } else {
          this.finishMatch(leader.slotIndex);
        }
      }
    }
  }

  private finishMatch(winnerSlot: number): void {
    this.state.matchFinished = true;
    this.state.winnerSlot = winnerSlot;
    this.events.push({
      type: 'matchfinish',
      slotIndex: winnerSlot,
      x: C.ARENA_WIDTH * 0.5,
      y: C.ARENA_HEIGHT * 0.5,
    });
  }

  /**
   * AI Bot controller adapted for `1920x1080` Deathmatch, SPAWN_CURSOR timing,
   * hazard avoidance, and aggressive rope cutting / high-speed charges.
   */
  public computeBotInput(slotIndex: number, seq: number): PlayerInputCommand {
    const p = this.state.players[slotIndex];
    if (!p || !p.active || p.status === PlayerStatus.DEAD) {
      return { seq, actionHeld: false, axisX: 0, axisY: 0 };
    }

    if (p.status === PlayerStatus.SPAWN_CURSOR) {
      // Wait for allow delay and drop near an anchor horizontally
      if (p.spawnAllowDelay > 0) {
        return { seq, actionHeld: false, axisX: 0, axisY: 0 };
      }
      const alignedPivot = this.state.attachPoints.some(
        (ap) => Math.abs(ap.x - p.spawnCursorX) < 280
      );
      return { seq, actionHeld: alignedPivot, axisX: 0, axisY: 0 };
    }

    let targetX = C.ARENA_WIDTH * 0.5;
    let targetY = C.ARENA_HEIGHT * 0.55;
    let bestDist = Infinity;
    for (const other of this.state.players) {
      if (
        !other.active ||
        other.slotIndex === slotIndex ||
        other.status === PlayerStatus.DEAD ||
        other.status === PlayerStatus.SPAWN_CURSOR
      ) {
        continue;
      }
      const d = Math.hypot(other.x - p.x, other.y - p.y);
      if (d < bestDist) {
        bestDist = d;
        targetX = other.x;
        targetY = other.y;
      }
    }

    const dx = targetX - p.x;
    const dy = targetY - p.y;
    const len = Math.hypot(dx, dy) || 1;
    const axisX = clamp(dx / len, -1, 1);
    const axisY = clamp(dy / len, -1, 1);

    if (p.status === PlayerStatus.FREE_FALL) {
      const nearPivot = this.findNearestAttachPoint(p.x, p.y, C.ROPE_ATTACH_RANGE * 0.94);
      const shouldAttach =
        nearPivot !== null &&
        p.regrappleTimer <= 0 &&
        this.canPlayerAttach(p) &&
        (p.y < 420 || p.vy < -150 || (this.state.tick + slotIndex * 11) % 24 < 14);
      return { seq, actionHeld: shouldAttach, axisX, axisY };
    }

    if (p.status === PlayerStatus.SWINGING) {
      const speed = Math.hypot(p.vx, p.vy) || 1;
      const dot = (p.vx * dx + p.vy * dy) / (speed * len);
      const shouldRelease =
        p.attachTimer > 0.35 && ((dot > 0.72 && p.vy > -180 && p.y > 260) || p.attachTimer > 1.9);
      return { seq, actionHeld: !shouldRelease, axisX, axisY };
    }

    return { seq, actionHeld: false, axisX, axisY };
  }
}
