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
  regrappleTimer: number; // cooldown before re-attaching after cut/release
  chargeGauge: number; // 0..1 white outer bubble shield (+0xD48)
  chargeGauge2: number; // 0..1 orange inner combo/heavy-mass shield (+0xD4C)
  chargeMultiplier: number; // handicap multiplier (+0xD5C, +1 after 5 deaths)
  spawnCursorX: number; // oscillating X along top edge while SPAWN_CURSOR
  spawnCursorDir: number; // +1 right, -1 left
  spawnAllowDelay: number; // small delay before drop signal is accepted
  wallTrickCooldown: number;
  swingLoopAccumRad: number;
  turnBoostCount: number; // 0..5 reverse spin boost stacks
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
        chargeGauge: 1.0, // Spawn starts with full white bubble (observed c1=1.0)
        chargeGauge2: 0.0,
        chargeMultiplier: 0,
        spawnCursorX: sp.x,
        spawnCursorDir: i % 2 === 0 ? 1 : -1,
        spawnAllowDelay: C.SPAWN_ALLOW_DELAY_SEC,
        wallTrickCooldown: 0,
        swingLoopAccumRad: 0,
        turnBoostCount: 0,
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
      p.chargeGauge = 1.0;
      p.chargeGauge2 = 0.0;
      p.chargeMultiplier = 0;
      p.turnBoostCount = 0;
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

    // 2. Step each active player
    for (const p of this.state.players) {
      if (!p.active) continue;

      const cmd = inputs[p.slotIndex] ?? {
        seq: p.lastInputSeq,
        actionHeld: false,
        axisX: 0,
        axisY: 0,
      };
      p.lastInputSeq = cmd.seq;

      if (p.invulnTimer > 0) p.invulnTimer = Math.max(0, p.invulnTimer - dt);
      if (p.regrappleTimer > 0) p.regrappleTimer = Math.max(0, p.regrappleTimer - dt);
      if (p.wallTrickCooldown > 0) p.wallTrickCooldown = Math.max(0, p.wallTrickCooldown - dt);
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
        if (p.statusTimer <= 0) {
          p.status = PlayerStatus.FREE_FALL;
          p.statusTimer = 0;
        }
        this.stepFreeFall(p, { seq: cmd.seq, actionHeld: false, axisX: 0, axisY: 0 }, dt);
        this.updateChargeGauge(p, dt);
        p.lastActionHeld = cmd.actionHeld;
        continue;
      }

      if (p.status === PlayerStatus.FREE_FALL && justPressed && p.regrappleTimer <= 0) {
        this.tryAttachToNearestPivot(p);
      } else if (p.status === PlayerStatus.SWINGING && (justReleased || !cmd.actionHeld)) {
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

    // 3. Check Wall Collisions (OBB), Switch Trigger & Out-of-bounds
    for (const p of this.state.players) {
      if (!p.active || p.status === PlayerStatus.DEAD || p.status === PlayerStatus.SPAWN_CURSOR) {
        continue;
      }
      this.checkWallsAndBounds(p);
    }

    // 4. Check Rope Cuts (CRotasticRope)
    this.checkRopeCuts();

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
      if (def.motion) {
        if (def.motion.kind === 'rotate') {
          st.rotRad = ((def.rotDeg + def.motion.degPerSec * this.state.elapsedSec) * Math.PI) / 180;
        } else if (def.motion.kind === 'waypoints') {
          const reverse = Boolean(def.motion.switchControlled && this.state.switchReversed);
          const pos = evaluateWaypointMotion(def.motion, this.state.elapsedSec, reverse);
          st.cx = pos.x;
          st.cy = pos.y;
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
      p.wallTrickCooldown = 0;
      p.swingLoopAccumRad = 0;
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

  private awardOrangeTrick(p: PlayerSimState, amount: number, label: string, x: number, y: number): void {
    p.chargeGauge2 = clamp(p.chargeGauge2 + amount, 0, 1);
    const pts = amount >= 1.0 ? 300 : C.ORANGE_TRICK_POINTS;
    this.events.push({
      type: 'trick',
      slotIndex: p.slotIndex,
      points: pts,
      label,
      x,
      y,
    });
  }

  private tryConsumeShield(
    victim: PlayerSimState,
    nx: number,
    ny: number,
    hitX: number,
    hitY: number
  ): boolean {
    if (victim.chargeGauge >= 1.0) {
      victim.chargeGauge = 0;
    } else if (victim.chargeGauge2 >= 1.0) {
      victim.chargeGauge2 = 0;
    } else {
      return false;
    }

    if (victim.status === PlayerStatus.SWINGING) {
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
      x: hitX,
      y: hitY,
    });
    return true;
  }

  private tryAttachToNearestPivot(p: PlayerSimState): boolean {
    const nearest = this.findNearestAttachPoint(p.x, p.y, C.ROPE_ATTACH_RANGE);
    if (!nearest) return false;

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
    p.attachedPivotId = nearest.id;
    p.ropeLength = r;
    p.ropeAngle = angle;
    p.omega = omega;
    p.attachTimer = 0;
    p.swingLoopAccumRad = 0;
    p.turnBoostCount = 0;

    p.x = nearest.x + Math.cos(angle) * r;
    p.y = nearest.y + Math.sin(angle) * r;
    p.vx = -omega * r * Math.sin(angle);
    p.vy = omega * r * Math.cos(angle);

    this.events.push({ type: 'attach', slotIndex: p.slotIndex, x: nearest.x, y: nearest.y });
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
    p.regrappleTimer = C.REGRAPPLE_COOLDOWN_SEC;

    this.events.push({ type: 'release', slotIndex: p.slotIndex, x: p.x, y: p.y });
  }

  private stepSwinging(p: PlayerSimState, cmd: PlayerInputCommand, dt: number): void {
    const pivot = this.state.attachPoints.find((ap) => ap.id === p.attachedPivotId);
    if (!pivot) {
      p.status = PlayerStatus.FREE_FALL;
      p.attachedPivotId = -1;
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
      this.events.push({ type: 'invert', slotIndex: p.slotIndex, x: p.x, y: p.y });
    }

    // Effective limits include turnBoost stacks (900 + 60*k up to 1200 u/s)
    const effectiveSwingMaxSpeed = C.SWING_MAX_SPEED + p.turnBoostCount * C.TURN_BOOST_SPEED_STEP;
    const effectiveMaxOmega = C.MAX_OMEGA_RAD_S + p.turnBoostCount * C.TURN_BOOST_OMEGA_STEP;
    const maxOmegaBySpeed = effectiveSwingMaxSpeed / Math.max(r, C.ROPE_ATTACH_MIN_DIST);
    const maxOmega = Math.min(effectiveMaxOmega, maxOmegaBySpeed);

    // Only expand short rope (< 150) after small delay; long ropes (> 150) keep their length until release!
    // Preserve tangential velocity (omega *= rOld / r) so expanding does not manufacture fake launch speed.
    if (r < C.ROPE_MIN_RADIUS && p.attachTimer >= C.ROPE_UNWIND_DELAY_SEC) {
      const rOld = r;
      r = Math.min(C.ROPE_MIN_RADIUS, r + C.ROPE_ADJUST_SPEED * dt);
      if (r > rOld && rOld >= 1) {
        p.omega *= rOld / r;
      }
      p.ropeLength = r;
    }

    // Tangential gravity acceleration in Y-up coordinates (guard denom >= 55 against close-range singularities)
    const denomR = Math.max(r, 55);
    const gravityAlpha = -(C.GRAVITY / denomR) * Math.cos(p.ropeAngle);

    const tx = -Math.sin(p.ropeAngle);
    const ty = Math.cos(p.ropeAngle);
    const inputTangential = cmd.axisX * tx + cmd.axisY * ty;
    const inputAlpha = (inputTangential * C.SWING_INPUT_TORQUE) / denomR;

    p.omega += (gravityAlpha + inputAlpha) * dt;
    p.omega *= 1 + C.SWING_PUMP_FACTOR * dt * 2.5;

    p.omega = clamp(p.omega, -maxOmega, maxOmega);

    const dAngle = p.omega * dt;
    p.ropeAngle += dAngle;
    if (p.ropeAngle > Math.PI) p.ropeAngle -= Math.PI * 2;
    if (p.ropeAngle < -Math.PI) p.ropeAngle += Math.PI * 2;

    // Award "Get It" (+0.2 orange gauge) for completing a fast full revolution
    if (Math.abs(p.omega) * r >= 680) {
      p.swingLoopAccumRad += Math.abs(dAngle);
      if (p.swingLoopAccumRad >= Math.PI * 2) {
        p.swingLoopAccumRad -= Math.PI * 2;
        this.awardOrangeTrick(p, C.ORANGE_CHARGE_STEP, 'Get It!', p.x, p.y);
      }
    } else {
      p.swingLoopAccumRad = 0;
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
    p.vx += cmd.axisX * C.AIR_STEER_ACCEL * dt;
    p.vy += (-C.GRAVITY + cmd.axisY * (C.AIR_STEER_ACCEL * 0.35)) * dt;

    const speed = Math.hypot(p.vx, p.vy);
    if (speed > C.PLAYER_MAX_SPEED) {
      const s = C.PLAYER_MAX_SPEED / speed;
      p.vx *= s;
      p.vy *= s;
    }

    p.x += p.vx * dt;
    p.y += p.vy * dt;
  }

  private checkWallsAndBounds(p: PlayerSimState): void {
    // 1. Optional arena frog lever switch (PST_MecaSwitch in w_multi_dm_lvl04)
    if (this.map.switchDef && this.state.switchCooldownSec <= 0) {
      const sw = this.map.switchDef;
      const distSq = (p.x - sw.x) ** 2 + (p.y - sw.y) ** 2;
      const hitR = sw.radius + C.PLAYER_RADIUS;
      if (distSq <= hitR * hitR) {
        this.state.switchReversed = !this.state.switchReversed;
        this.state.switchCooldownSec = 2.0;
        this.awardOrangeTrick(p, C.ORANGE_CHARGE_STEP, 'Switch!', sw.x, sw.y);
        this.events.push({ type: 'switchtoggle', slotIndex: p.slotIndex, x: sw.x, y: sw.y });
      }
    }

    // 2. OBB wall & moving hazard checks
    for (const w of this.state.walls) {
      if (!w.active) continue;
      const hit = closestPointOnOBB2D(p.x, p.y, w.cx, w.cy, w.halfW, w.halfH, w.rotRad);
      if (hit.distSq > C.PLAYER_RADIUS * C.PLAYER_RADIUS) continue;

      if (w.type === 'deadly') {
        if (p.invulnTimer > 0) {
          p.x = hit.contactX + hit.nx * (C.PLAYER_RADIUS + 2);
          p.y = hit.contactY + hit.ny * (C.PLAYER_RADIUS + 2);
          continue;
        }
        if (this.tryConsumeShield(p, hit.nx, hit.ny, hit.contactX, hit.contactY)) {
          p.x = hit.contactX + hit.nx * (C.PLAYER_RADIUS + 6);
          p.y = hit.contactY + hit.ny * (C.PLAYER_RADIUS + 6);
          continue;
        }
        this.killPlayer(p, p.lastAttackerSlot);
        return;
      }

      // Push player outside elastic/normal OBB
      p.x = hit.contactX + hit.nx * (C.PLAYER_RADIUS + 1.5);
      p.y = hit.contactY + hit.ny * (C.PLAYER_RADIUS + 1.5);

      if (p.status === PlayerStatus.SWINGING) {
        p.omega = -p.omega * 0.96;
        const pivot = this.state.attachPoints.find((ap) => ap.id === p.attachedPivotId);
        if (pivot) {
          p.ropeAngle = Math.atan2(p.y - pivot.y, p.x - pivot.x);
        }
      } else {
        const vn = p.vx * hit.nx + p.vy * hit.ny;
        if (vn < 0) {
          const restitution = C.WALL_BOUNCE_RESTITUTION;
          p.vx -= (1 + restitution) * vn * hit.nx;
          p.vy -= (1 + restitution) * vn * hit.ny;
        }
      }

      // High-speed bounce tricks charge orange bar (+0.2 / +150, observed on wall bounces!)
      if (p.wallTrickCooldown <= 0 && Math.hypot(p.vx, p.vy) >= 420) {
        p.wallTrickCooldown = 1.4;
        this.awardOrangeTrick(p, C.ORANGE_CHARGE_STEP, '+150', hit.contactX, hit.contactY);
      }

      this.events.push({ type: 'bounce', slotIndex: p.slotIndex, x: hit.contactX, y: hit.contactY });
    }

    // 3. Bottom fall death threshold (`TriggerPlanePlayerDeath @ y <= -300.0`, lethal even with full bubble)
    if (p.y <= C.DEATH_BOTTOM_Y) {
      this.killPlayer(p, p.lastAttackerSlot);
      return;
    }

    // Safety clamp if out horizontally or extremely high
    if (p.x < C.PLAYER_RADIUS) {
      p.x = C.PLAYER_RADIUS;
      if (p.vx < 0) p.vx = -p.vx;
    } else if (p.x > C.ARENA_WIDTH - C.PLAYER_RADIUS) {
      p.x = C.ARENA_WIDTH - C.PLAYER_RADIUS;
      if (p.vx > 0) p.vx = -p.vx;
    }
    if (p.y > C.TOP_CEILING_Y) {
      p.y = C.TOP_CEILING_Y;
      if (p.vy > 0) p.vy = -p.vy;
    }
  }

  /**
   * 2D Cross-Product Rope Cutting (`CRotasticRope`):
   * Any non-dizzy player moving at speed >= ROPE_CUT_MIN_SPEED intersecting another
   * player's rope slices it ("Cut!"), awarding +0.2 orange charge + dizzying victim.
   */
  private checkRopeCuts(): void {
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

        if (Math.hypot(cutter.vx, cutter.vy) < C.ROPE_CUT_MIN_SPEED) continue;

        const seg = closestPointOnSegment2D(
          cutter.x,
          cutter.y,
          pivot.x,
          pivot.y,
          victim.x,
          victim.y
        );

        if (seg.t >= 0.12 && seg.t <= 0.88 && seg.distSq <= C.PLAYER_RADIUS * C.PLAYER_RADIUS) {
          victim.status = PlayerStatus.DIZZY;
          victim.statusTimer = C.DIZZY_DURATION_SEC;
          victim.attachedPivotId = -1;
          victim.attachTimer = 0;
          victim.lastAttackerSlot = cutter.slotIndex;
          victim.lastAttackTimer = C.KILL_ATTRIBUTION_WINDOW_SEC;

          this.awardOrangeTrick(cutter, C.ORANGE_CHARGE_STEP, 'Cut!', seg.cx, seg.cy);
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
   * Exact PvP collision (`0x00578426` + `0x00576E30`):
   * Effective mass `m_i = 1.0 + 10.0 * (c2_i)^2`.
   * Checks shield consumption (`c1 >= 1.0` -> `c2 >= 1.0`) before Slaughter kill.
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

        // Weighted energy comparison (combines kinetic speed + orange bar mass)
        const keA = mA * (vASq + 1);
        const keB = mB * (vBSq + 1);
        const keRatioAB = Math.pow(keA / keB, 1.5);
        const keRatioBA = Math.pow(keB / keA, 1.5);
        const midX = (a.x + b.x) * 0.5;
        const midY = (a.y + b.y) * 0.5;

        if (speedA >= C.SLAUGHTER_MIN_SPEED && keRatioAB >= C.SLAUGHTER_KE_RATIO_SQ && b.invulnTimer <= 0) {
          if (!this.tryConsumeShield(b, nx, ny, midX, midY)) {
            this.handleSlaughter(a, b, midX, midY);
            continue;
          }
        } else if (speedB >= C.SLAUGHTER_MIN_SPEED && keRatioBA >= C.SLAUGHTER_KE_RATIO_SQ && a.invulnTimer <= 0) {
          if (!this.tryConsumeShield(a, -nx, -ny, midX, midY)) {
            this.handleSlaughter(b, a, midX, midY);
            continue;
          }
        }

        // Weighted 2D elastic impulse exchange (verified exact in 4/4 PVP_BOUNCE_SOLVER logs)
        const relVx = a.vx - b.vx;
        const relVy = a.vy - b.vy;
        const velAlongNormal = relVx * nx + relVy * ny;
        if (velAlongNormal > 0) {
          const factorA = (2 * mB) / (mA + mB);
          const factorB = (2 * mA) / (mA + mB);
          a.vx -= factorA * velAlongNormal * nx;
          a.vy -= factorA * velAlongNormal * ny;
          b.vx += factorB * velAlongNormal * nx;
          b.vy += factorB * velAlongNormal * ny;
        }

        // Update swung angular velocity or detach if hit hard by heavier rival
        for (const p of [a, b]) {
          const otherMass = p === a ? mB : mA;
          const selfMass = p === a ? mA : mB;
          if (p.status === PlayerStatus.SWINGING) {
            if (otherMass > selfMass * 1.5 && Math.hypot(p.vx, p.vy) > 850) {
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

  private handleSlaughter(
    attacker: PlayerSimState,
    victim: PlayerSimState,
    cx: number,
    cy: number
  ): void {
    this.events.push({
      type: 'slaughter',
      slotIndex: attacker.slotIndex,
      targetSlot: victim.slotIndex,
      x: cx,
      y: cy,
    });
    this.killPlayer(victim, attacker.slotIndex);
  }

  private killPlayer(victim: PlayerSimState, killerSlot: number): void {
    victim.status = PlayerStatus.DEAD;
    victim.statusTimer = C.RESPAWN_DELAY_SEC;
    victim.attachedPivotId = -1;
    victim.turnBoostCount = 0;
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
