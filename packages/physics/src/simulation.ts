import {
  CharacterId,
  GameModeId,
  GEM_POINTS,
  GemType,
  PlayerColorId,
  PlayerStatus,
  ROTASTIC_PHYSICS_CONSTANTS as C,
} from './constants.js';
import { getMultiplayerMapById, MultiplayerMapDef } from './maps.js';

export interface PlayerInputCommand {
  seq: number;
  actionHeld: boolean; // Space / Click / Button A to attach and hold rope
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
  statusTimer: number; // remaining dizzy or respawn seconds
  invulnTimer: number; // spawn protection seconds
  lastActionHeld: boolean;
  lastAttackerSlot: number; // -1 or 0..3
  lastAttackTimer: number;
  score: number;
  kills: number;
  deaths: number;
  gemsCollected: number;
  lastInputSeq: number;
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
  x1: number;
  y1: number;
  x2: number;
  y2: number;
  type: 'normal' | 'bouncy' | 'deadly' | 'breakable' | 'slow';
  active: boolean;
  respawnTimer: number;
}

export interface SimEvent {
  type:
    | 'attach'
    | 'release'
    | 'ropecut'
    | 'slaughter'
    | 'bounce'
    | 'wallbreak'
    | 'pickup'
    | 'death'
    | 'respawn'
    | 'suddendeath'
    | 'matchfinish';
  slotIndex?: number;
  targetSlot?: number;
  x: number;
  y: number;
  gemType?: GemType;
}

export interface WorldSimState {
  tick: number;
  mapId: string;
  mode: GameModeId;
  scoreLimit: number;
  timeRemainingSec: number;
  suddenDeath: boolean;
  matchFinished: boolean;
  winnerSlot: number; // -1 until finished
  activeWaveGroup: number;
  players: PlayerSimState[];
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

export class RotasticSimulation {
  public map: MultiplayerMapDef;
  public state: WorldSimState;
  public events: SimEvent[] = [];

  constructor(
    mapId = 'w_multi_coll_lvl01',
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
      const sp = map.spawns[i % map.spawns.length] ?? { x: -8 + i * 5, y: 3 };
      players.push({
        slotIndex: i,
        active: false,
        isBot: false,
        name: `Player ${i + 1}`,
        characterId: (i % 4) as CharacterId,
        colorId: (i % 4) as PlayerColorId,
        status: PlayerStatus.FREE_FALL,
        x: sp.x,
        y: sp.y,
        vx: 0,
        vy: 0,
        attachedPivotId: -1,
        ropeLength: 2.5,
        ropeAngle: -Math.PI / 2,
        omega: 0,
        attachTimer: 0,
        statusTimer: 0,
        invulnTimer: C.SPAWN_INVULN_SEC,
        lastActionHeld: false,
        lastAttackerSlot: -1,
        lastAttackTimer: 0,
        score: 0,
        kills: 0,
        deaths: 0,
        gemsCollected: 0,
        lastInputSeq: 0,
      });
    }

    const pickups: PickupSimState[] = map.pickups.map((p) => ({
      id: p.id,
      x: p.x,
      y: p.y,
      gemType: p.gemType,
      waveGroup: p.waveGroup,
      active: p.waveGroup === 0,
    }));

    const walls: WallSimState[] = map.walls.map((w) => ({
      id: w.id,
      x1: w.x1,
      y1: w.y1,
      x2: w.x2,
      y2: w.y2,
      type: w.type,
      active: true,
      respawnTimer: 0,
    }));

    return {
      tick: 0,
      mapId: map.id,
      mode: map.mode,
      scoreLimit,
      timeRemainingSec: timeLimitSec,
      suddenDeath: false,
      matchFinished: false,
      winnerSlot: -1,
      activeWaveGroup: 0,
      players,
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
      const sp = this.map.spawns[slotIndex % this.map.spawns.length] ?? { x: 0, y: 3 };
      p.x = sp.x;
      p.y = sp.y;
      p.vx = 0;
      p.vy = 0;
      p.status = PlayerStatus.FREE_FALL;
      p.attachedPivotId = -1;
      p.invulnTimer = C.SPAWN_INVULN_SEC;
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
    for (const ap of this.map.attachPoints) {
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
   * Advances the simulation by one fixed step (`dt = 1/60 s` by default).
   * Mirrors `CRotasticPhysicPlayer::Update` (`0x00690560`) and mode controllers.
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

    // 1. Update breakable wall respawn timers
    for (const w of this.state.walls) {
      if (!w.active && w.respawnTimer > 0) {
        w.respawnTimer -= dt;
        if (w.respawnTimer <= 0) {
          w.active = true;
          w.respawnTimer = 0;
        }
      }
    }

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

      if (p.invulnTimer > 0) {
        p.invulnTimer = Math.max(0, p.invulnTimer - dt);
      }
      if (p.lastAttackTimer > 0) {
        p.lastAttackTimer = Math.max(0, p.lastAttackTimer - dt);
        if (p.lastAttackTimer === 0) {
          p.lastAttackerSlot = -1;
        }
      }

      if (p.status === PlayerStatus.DEAD) {
        p.statusTimer -= dt;
        if (p.statusTimer <= 0) {
          this.respawnPlayer(p);
        }
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
        p.lastActionHeld = cmd.actionHeld;
        continue;
      }

      const justPressed = cmd.actionHeld && !p.lastActionHeld;
      const justReleased = !cmd.actionHeld && p.lastActionHeld;

      if (p.status === PlayerStatus.FREE_FALL && justPressed) {
        this.tryAttachToNearestPivot(p);
      } else if (p.status === PlayerStatus.SWINGING && (justReleased || !cmd.actionHeld)) {
        this.releaseFromPivot(p);
      }

      if (p.status === PlayerStatus.SWINGING) {
        this.stepSwinging(p, cmd, dt);
      } else {
        this.stepFreeFall(p, cmd, dt);
      }

      p.lastActionHeld = cmd.actionHeld;
    }

    // 3. Check Wall Collisions & Out-of-bounds
    for (const p of this.state.players) {
      if (!p.active || p.status === PlayerStatus.DEAD) continue;
      this.checkWallsAndBounds(p);
    }

    // 4. Check Rope Cuts (CRotasticRope @ 0x0068E800)
    this.checkRopeCuts();

    // 5. Check Player-vs-Player Collisions & Slaughter (0x006910F0)
    this.checkPlayerCollisions();

    // 6. Check Gem Pickups (Collect) & King of the Hill Scoring
    this.updatePickupsAndModes(dt);

    // 7. Match Timer & Sudden Death Check (0x00688080 / 0x00688AC0)
    this.updateMatchRules(dt);

    return this.events;
  }

  private tryAttachToNearestPivot(p: PlayerSimState): boolean {
    const nearest = this.findNearestAttachPoint(p.x, p.y, C.ROPE_ATTACH_RANGE);
    if (!nearest) return false;

    const dx = p.x - nearest.x;
    const dy = p.y - nearest.y;
    const r = clamp(Math.hypot(dx, dy), C.ROPE_MIN_RADIUS, C.ROPE_MAX_RADIUS);
    const angle = Math.atan2(dy, dx);

    // Project linear velocity onto tangent t = (-sin(angle), cos(angle))
    const tx = -Math.sin(angle);
    const ty = Math.cos(angle);
    const vTangential = p.vx * tx + p.vy * ty;
    let omega = vTangential / r;

    // Enforce minimum angular speed (0x0095AD80 = 60 deg/s) so player never stalls
    if (Math.abs(omega) < C.MIN_OMEGA_RAD_S) {
      const sign = omega !== 0 ? Math.sign(omega) : p.vx >= 0 ? 1 : -1;
      omega = sign * C.MIN_OMEGA_RAD_S * 1.45;
    }
    omega = clamp(omega, -C.MAX_OMEGA_RAD_S, C.MAX_OMEGA_RAD_S);

    p.status = PlayerStatus.SWINGING;
    p.attachedPivotId = nearest.id;
    p.ropeLength = r;
    p.ropeAngle = angle;
    p.omega = omega;
    p.attachTimer = 0;

    // Snap onto exact orbital radius
    p.x = nearest.x + Math.cos(angle) * r;
    p.y = nearest.y + Math.sin(angle) * r;
    p.vx = -omega * r * Math.sin(angle);
    p.vy = omega * r * Math.cos(angle);

    this.events.push({ type: 'attach', slotIndex: p.slotIndex, x: nearest.x, y: nearest.y });
    return true;
  }

  private releaseFromPivot(p: PlayerSimState): void {
    if (p.status !== PlayerStatus.SWINGING) return;

    // Apply release velocity boost (0x0095AD58 / 0x0095AD5C: 1.1x boost)
    const boost =
      p.attachTimer <= C.RELEASE_BOOST_WINDOW_SEC || Math.sin(p.ropeAngle) > 0
        ? C.RELEASE_BOOST_FACTOR
        : 1.03;

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

    this.events.push({ type: 'release', slotIndex: p.slotIndex, x: p.x, y: p.y });
  }

  /**
   * Analytical polar pendulum solver (`0x00690FE0`):
   *   alpha = -(g / r) * cos(theta)
   *   pump factor = 1 + 0.05 * dt * 60 when swinging through upper arc
   */
  private stepSwinging(p: PlayerSimState, cmd: PlayerInputCommand, dt: number): void {
    const pivot = this.map.attachPoints.find((ap) => ap.id === p.attachedPivotId);
    if (!pivot) {
      p.status = PlayerStatus.FREE_FALL;
      p.attachedPivotId = -1;
      return;
    }

    p.attachTimer += dt;
    const r = p.ropeLength;

    // Gravity tangential angular acceleration: alpha = -(g / r) * cos(theta)
    const gravityAlpha = -(C.GRAVITY / r) * Math.cos(p.ropeAngle);

    // Player directional input along tangent
    const tx = -Math.sin(p.ropeAngle);
    const ty = Math.cos(p.ropeAngle);
    const inputTangential = cmd.axisX * tx + cmd.axisY * ty;
    const inputAlpha = (inputTangential * C.SWING_INPUT_TORQUE) / r;

    p.omega += (gravityAlpha + inputAlpha) * dt;

    // Rotastic asymmetric swing pump (0x0095AD54 = 0.05):
    // Gently pumps angular speed so continuous orbits accelerate satisfactorily
    const pumpGain = 1 + C.SWING_PUMP_FACTOR * dt * 2.5;
    p.omega *= pumpGain;

    // Enforce minimum angular speed (60 deg/s = 1.0471976 rad/s @ 0x0095AD80)
    if (Math.abs(p.omega) < C.MIN_OMEGA_RAD_S) {
      const sign = p.omega >= 0 ? 1 : -1;
      p.omega = sign * C.MIN_OMEGA_RAD_S;
    }
    p.omega = clamp(p.omega, -C.MAX_OMEGA_RAD_S, C.MAX_OMEGA_RAD_S);

    p.ropeAngle += p.omega * dt;
    // Normalize angle to [-PI, +PI]
    if (p.ropeAngle > Math.PI) p.ropeAngle -= Math.PI * 2;
    if (p.ropeAngle < -Math.PI) p.ropeAngle += Math.PI * 2;

    p.x = pivot.x + Math.cos(p.ropeAngle) * r;
    p.y = pivot.y + Math.sin(p.ropeAngle) * r;
    p.vx = -p.omega * r * Math.sin(p.ropeAngle);
    p.vy = p.omega * r * Math.cos(p.ropeAngle);
  }

  /**
   * Ballistic free-fall solver (`0x00690620`) + Gravity Vortex (`CGravityVortex` @ `0x006970F0`).
   */
  private stepFreeFall(p: PlayerSimState, cmd: PlayerInputCommand, dt: number): void {
    // Gravity + subtle air control
    p.vx += cmd.axisX * C.AIR_STEER_ACCEL * dt;
    p.vy += (-C.GRAVITY + cmd.axisY * (C.AIR_STEER_ACCEL * 0.35)) * dt;

    // Gravity vortices
    for (const v of this.map.vortices) {
      const dx = v.x - p.x;
      const dy = v.y - p.y;
      const dist = Math.hypot(dx, dy);
      if (dist > 0.2 && dist < v.radius) {
        const falloff = 1 - dist / v.radius;
        const accel = v.strength * falloff * 3.2;
        p.vx += (dx / dist) * accel * dt;
        p.vy += (dy / dist) * accel * dt;
      }
    }

    // Exponential air drag (0.985^(dt*60) @ 0x0095AD6C)
    const drag = Math.pow(C.AIR_DRAG_BASE, dt * 60);
    p.vx *= drag;
    p.vy *= drag;

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
    for (const w of this.state.walls) {
      if (!w.active) continue;
      const hit = closestPointOnSegment2D(p.x, p.y, w.x1, w.y1, w.x2, w.y2);
      const minDist = C.PLAYER_RADIUS + 0.22;
      if (hit.distSq <= minDist * minDist) {
        if (w.type === 'deadly') {
          if (p.invulnTimer <= 0) {
            this.killPlayer(p, p.lastAttackerSlot);
            return;
          }
        }

        const dist = Math.sqrt(hit.distSq) || 0.001;
        let nx = (p.x - hit.cx) / dist;
        let ny = (p.y - hit.cy) / dist;
        if (Math.abs(nx) < 1e-4 && Math.abs(ny) < 1e-4) {
          const sx = w.x2 - w.x1;
          const sy = w.y2 - w.y1;
          const sl = Math.hypot(sx, sy) || 1;
          nx = -sy / sl;
          ny = sx / sl;
        }

        const speed = Math.hypot(p.vx, p.vy);
        if (w.type === 'breakable' && speed >= 6.5) {
          w.active = false;
          w.respawnTimer = 8.0;
          this.events.push({ type: 'wallbreak', slotIndex: p.slotIndex, x: hit.cx, y: hit.cy });
          continue;
        }

        // Push player outside wall
        p.x = hit.cx + nx * (minDist + 0.02);
        p.y = hit.cy + ny * (minDist + 0.02);

        if (p.status === PlayerStatus.SWINGING) {
          // Reverse swing direction on wall bounce
          p.omega = -p.omega * (w.type === 'slow' ? 0.65 : 0.95);
          const pivot = this.map.attachPoints.find((ap) => ap.id === p.attachedPivotId);
          if (pivot) {
            p.ropeAngle = Math.atan2(p.y - pivot.y, p.x - pivot.x);
          }
        } else {
          const vn = p.vx * nx + p.vy * ny;
          if (vn < 0) {
            const restitution = w.type === 'bouncy' ? 1.12 : w.type === 'slow' ? 0.55 : 0.88;
            p.vx = (p.vx - (1 + restitution) * vn * nx);
            p.vy = (p.vy - (1 + restitution) * vn * ny);
          }
        }

        this.events.push({ type: 'bounce', slotIndex: p.slotIndex, x: hit.cx, y: hit.cy });
      }
    }

    // Out-of-bounds arena kill box
    if (
      Math.abs(p.x) > C.ARENA_HALF_WIDTH ||
      p.y < -C.ARENA_HALF_HEIGHT ||
      p.y > C.ARENA_HALF_HEIGHT + 2.5
    ) {
      this.killPlayer(p, p.lastAttackerSlot);
    }
  }

  /**
   * 2D Cross-Product Rope Cutting (`CRotasticRope` @ `0x0068E800`).
   * Any non-dizzy player moving at speed >= ROPE_CUT_MIN_SPEED whose circle intersects
   * another player's rope segment (after ROPE_CUT_GRACE_SEC = 0.25s) slices the rope!
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

      const pivot = this.map.attachPoints.find((ap) => ap.id === victim.attachedPivotId);
      if (!pivot) continue;

      for (const cutter of this.state.players) {
        if (
          !cutter.active ||
          cutter.slotIndex === victim.slotIndex ||
          cutter.status === PlayerStatus.DEAD ||
          cutter.status === PlayerStatus.DIZZY
        ) {
          continue;
        }

        const cutterSpeed = Math.hypot(cutter.vx, cutter.vy);
        if (cutterSpeed < C.ROPE_CUT_MIN_SPEED) continue;

        const seg = closestPointOnSegment2D(
          cutter.x,
          cutter.y,
          pivot.x,
          pivot.y,
          victim.x,
          victim.y
        );

        // Must hit interior of rope (0.12 <= t <= 0.88) within player radius
        if (seg.t >= 0.12 && seg.t <= 0.88 && seg.distSq <= C.PLAYER_RADIUS * C.PLAYER_RADIUS) {
          victim.status = PlayerStatus.DIZZY;
          victim.statusTimer = C.DIZZY_DURATION_SEC;
          victim.attachedPivotId = -1;
          victim.attachTimer = 0;
          victim.lastAttackerSlot = cutter.slotIndex;
          victim.lastAttackTimer = C.KILL_ATTRIBUTION_WINDOW_SEC;

          if (this.state.mode === 'collect') {
            cutter.score += 100;
          }

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
   * Player-vs-Player Elastic Collision & Slaughter (`0x006910F0`):
   * Compares kinetic energy ratio squared `(vA^2 / vB^2)^2`.
   */
  private checkPlayerCollisions(): void {
    const n = this.state.players.length;
    for (let i = 0; i < n; i++) {
      const a = this.state.players[i];
      if (!a.active || a.status === PlayerStatus.DEAD) continue;

      for (let j = i + 1; j < n; j++) {
        const b = this.state.players[j];
        if (!b.active || b.status === PlayerStatus.DEAD) continue;

        const dx = b.x - a.x;
        const dy = b.y - a.y;
        const distSq = dx * dx + dy * dy;
        const minDist = C.PLAYER_RADIUS * 2;
        if (distSq > minDist * minDist) continue;

        const dist = Math.sqrt(distSq) || 0.001;
        const nx = dx / dist;
        const ny = dy / dist;

        const vASq = a.vx * a.vx + a.vy * a.vy;
        const vBSq = b.vx * b.vx + b.vy * b.vy;
        const speedA = Math.sqrt(vASq);
        const speedB = Math.sqrt(vBSq);

        // Separate overlapping circles
        const overlap = (minDist - dist) * 0.52;
        a.x -= nx * overlap;
        a.y -= ny * overlap;
        b.x += nx * overlap;
        b.y += ny * overlap;

        // Check high-speed Slaughter (0x006910F0)
        const keRatioAB = Math.pow((vASq + 1) / (vBSq + 1), 2);
        const keRatioBA = Math.pow((vBSq + 1) / (vASq + 1), 2);

        if (speedA >= C.SLAUGHTER_MIN_SPEED && keRatioAB >= C.SLAUGHTER_KE_RATIO_SQ && b.invulnTimer <= 0) {
          this.handleSlaughter(a, b, (a.x + b.x) * 0.5, (a.y + b.y) * 0.5);
          continue;
        }
        if (speedB >= C.SLAUGHTER_MIN_SPEED && keRatioBA >= C.SLAUGHTER_KE_RATIO_SQ && a.invulnTimer <= 0) {
          this.handleSlaughter(b, a, (a.x + b.x) * 0.5, (a.y + b.y) * 0.5);
          continue;
        }

        // Standard elastic impulse exchange
        if (a.status === PlayerStatus.SWINGING) this.releaseFromPivot(a);
        if (b.status === PlayerStatus.SWINGING) this.releaseFromPivot(b);

        const rvx = b.vx - a.vx;
        const rvy = b.vy - a.vy;
        const velAlongNormal = rvx * nx + rvy * ny;
        if (velAlongNormal < 0) {
          const jImpulse = -(1 + C.PLAYER_RESTITUTION) * velAlongNormal * 0.5;
          a.vx -= jImpulse * nx;
          a.vy -= jImpulse * ny;
          b.vx += jImpulse * nx;
          b.vy += jImpulse * ny;
        }

        a.lastAttackerSlot = b.slotIndex;
        a.lastAttackTimer = C.KILL_ATTRIBUTION_WINDOW_SEC;
        b.lastAttackerSlot = a.slotIndex;
        b.lastAttackTimer = C.KILL_ATTRIBUTION_WINDOW_SEC;

        this.events.push({
          type: 'bounce',
          slotIndex: a.slotIndex,
          targetSlot: b.slotIndex,
          x: (a.x + b.x) * 0.5,
          y: (a.y + b.y) * 0.5,
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

    if (this.state.mode === 'deathmatch') {
      this.killPlayer(victim, attacker.slotIndex);
    } else {
      // In Collect / KOTH, Slaughter stuns the victim and steals 250 points
      if (victim.status === PlayerStatus.SWINGING) {
        victim.attachedPivotId = -1;
      }
      victim.status = PlayerStatus.DIZZY;
      victim.statusTimer = C.DIZZY_DURATION_SEC;
      victim.lastAttackerSlot = attacker.slotIndex;
      victim.lastAttackTimer = C.KILL_ATTRIBUTION_WINDOW_SEC;

      const stolen = Math.min(victim.score, 250);
      victim.score -= stolen;
      attacker.score += stolen > 0 ? stolen : 150;
      attacker.kills++;
    }
  }

  private killPlayer(victim: PlayerSimState, killerSlot: number): void {
    victim.status = PlayerStatus.DEAD;
    victim.statusTimer = C.RESPAWN_DELAY_SEC;
    victim.attachedPivotId = -1;
    victim.vx = 0;
    victim.vy = 0;
    victim.deaths++;

    if (killerSlot >= 0 && killerSlot !== victim.slotIndex) {
      const killer = this.state.players[killerSlot];
      if (killer && killer.active) {
        killer.kills++;
        if (this.state.mode === 'deathmatch') {
          killer.score += 1;
        } else {
          killer.score += 200;
        }
      }
    } else if (this.state.mode === 'deathmatch') {
      // Self-hazard death penalty in Deathmatch (-1 down to 0)
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

  private respawnPlayer(p: PlayerSimState): void {
    const sp = this.map.spawns[p.slotIndex % this.map.spawns.length] ?? { x: 0, y: 4 };
    p.x = sp.x;
    p.y = sp.y;
    p.vx = 0;
    p.vy = 0;
    p.status = PlayerStatus.FREE_FALL;
    p.attachedPivotId = -1;
    p.statusTimer = 0;
    p.invulnTimer = C.SPAWN_INVULN_SEC;
    p.lastAttackerSlot = -1;
    p.lastAttackTimer = 0;

    this.events.push({ type: 'respawn', slotIndex: p.slotIndex, x: p.x, y: p.y });
  }

  private updatePickupsAndModes(dt: number): void {
    // 1. Collect Mode Gems
    if (this.state.pickups.length > 0) {
      const pickupRadiusSq = (C.PLAYER_RADIUS + 0.55) * (C.PLAYER_RADIUS + 0.55);
      let anyActiveInWave = false;

      for (const pk of this.state.pickups) {
        if (!pk.active) continue;
        anyActiveInWave = true;

        for (const p of this.state.players) {
          if (!p.active || p.status === PlayerStatus.DEAD) continue;
          const dx = p.x - pk.x;
          const dy = p.y - pk.y;
          if (dx * dx + dy * dy <= pickupRadiusSq) {
            pk.active = false;
            const pts = GEM_POINTS[pk.gemType];
            p.score += pts;
            p.gemsCollected++;
            this.events.push({
              type: 'pickup',
              slotIndex: p.slotIndex,
              x: pk.x,
              y: pk.y,
              gemType: pk.gemType,
            });
            break;
          }
        }
      }

      // Advance wave group if all active gems were collected
      if (!anyActiveInWave) {
        const maxWave = this.state.pickups.reduce((m, pk) => Math.max(m, pk.waveGroup), 0);
        this.state.activeWaveGroup = (this.state.activeWaveGroup + 1) % (maxWave + 1);
        for (const pk of this.state.pickups) {
          pk.active = pk.waveGroup === this.state.activeWaveGroup;
        }
      }
    }

    // 2. King of the Hill (KOTH) Mode
    if (this.state.mode === 'koth' && this.map.hillZone) {
      const hz = this.map.hillZone;
      const rSq = hz.radius * hz.radius;
      for (const p of this.state.players) {
        if (!p.active || p.status === PlayerStatus.DEAD) continue;
        const dx = p.x - hz.x;
        const dy = p.y - hz.y;
        if (dx * dx + dy * dy <= rSq) {
          // +40 points per second inside the Crown Hill
          p.score += Math.round(40 * dt);
        }
      }
    }
  }

  /**
   * Evaluates win conditions and Sudden Death (`CModeMultiDeathMatch` @ `0x00688080`, `CModeMultiCollecte` @ `0x00688AC0`).
   */
  private updateMatchRules(dt: number): void {
    const activePlayers = this.state.players.filter((p) => p.active);
    if (activePlayers.length === 0) return;

    // Sort active players descending by score
    const sorted = [...activePlayers].sort((a, b) => b.score - a.score);
    const leader = sorted[0];
    const runnerUp = sorted[1];
    const isTiedAtTop = runnerUp !== undefined && leader.score === runnerUp.score;

    // 1. Score limit reached (and not tied)
    if (leader.score >= this.state.scoreLimit && !isTiedAtTop) {
      this.finishMatch(leader.slotIndex);
      return;
    }

    // 2. If in Sudden Death, the moment a single leader emerges, they win!
    if (this.state.suddenDeath && !isTiedAtTop && leader.score > 0) {
      this.finishMatch(leader.slotIndex);
      return;
    }

    // 3. Countdown match timer
    if (!this.state.suddenDeath) {
      this.state.timeRemainingSec = Math.max(0, this.state.timeRemainingSec - dt);
      if (this.state.timeRemainingSec <= 0) {
        if (isTiedAtTop) {
          this.state.suddenDeath = true;
          this.events.push({ type: 'suddendeath', x: 0, y: 0 });
        } else {
          this.finishMatch(leader.slotIndex);
        }
      }
    }
  }

  private finishMatch(winnerSlot: number): void {
    this.state.matchFinished = true;
    this.state.winnerSlot = winnerSlot;
    this.events.push({ type: 'matchfinish', slotIndex: winnerSlot, x: 0, y: 0 });
  }

  /**
   * Built-in AI Bot Controller for testing 2-4 player matches locally or filling empty lobby slots.
   */
  public computeBotInput(slotIndex: number, seq: number): PlayerInputCommand {
    const p = this.state.players[slotIndex];
    if (!p || !p.active || p.status === PlayerStatus.DEAD) {
      return { seq, actionHeld: false, axisX: 0, axisY: 0 };
    }

    // Pick target point (nearest active gem in Collect, hill in KOTH, or nearest rival in Deathmatch)
    let targetX = 0;
    let targetY = 2.0;

    if (this.state.mode === 'collect') {
      let bestDist = Infinity;
      for (const pk of this.state.pickups) {
        if (!pk.active) continue;
        const d = Math.hypot(pk.x - p.x, pk.y - p.y) / (pk.gemType === 'diamond' ? 2.0 : 1.0);
        if (d < bestDist) {
          bestDist = d;
          targetX = pk.x;
          targetY = pk.y;
        }
      }
    } else if (this.state.mode === 'koth' && this.map.hillZone) {
      targetX = this.map.hillZone.x;
      targetY = this.map.hillZone.y;
    } else {
      let bestDist = Infinity;
      for (const other of this.state.players) {
        if (!other.active || other.slotIndex === slotIndex || other.status === PlayerStatus.DEAD) {
          continue;
        }
        const d = Math.hypot(other.x - p.x, other.y - p.y);
        if (d < bestDist) {
          bestDist = d;
          targetX = other.x;
          targetY = other.y;
        }
      }
    }

    const dx = targetX - p.x;
    const dy = targetY - p.y;
    const len = Math.hypot(dx, dy) || 1;
    const axisX = clamp(dx / len, -1, 1);
    const axisY = clamp(dy / len, -1, 1);

    if (p.status === PlayerStatus.FREE_FALL) {
      const nearPivot = this.findNearestAttachPoint(p.x, p.y, C.ROPE_ATTACH_RANGE * 0.92);
      // Attach immediately if falling low or near a pivot
      const shouldAttach = nearPivot !== null && (p.y < 1.5 || p.vy < -1.0 || (this.state.tick + slotIndex * 7) % 18 < 12);
      return { seq, actionHeld: shouldAttach, axisX, axisY };
    }

    if (p.status === PlayerStatus.SWINGING) {
      // Release when velocity vector points roughly toward target (or upward if low)
      const speed = Math.hypot(p.vx, p.vy) || 1;
      const dot = (p.vx * dx + p.vy * dy) / (speed * len);
      const shouldRelease = p.attachTimer > 0.32 && ((dot > 0.72 && p.vy > -2.0) || p.attachTimer > 1.8);
      return { seq, actionHeld: !shouldRelease, axisX, axisY };
    }

    return { seq, actionHeld: false, axisX, axisY };
  }
}
