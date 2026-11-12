/**
 * Physics & Gameplay Constants calibrated directly from live runtime telemetry
 * (`session-20261111-113107` & `session-20261111-115315` from `Rotastic.exe` simRef table)
 * and disassembly (`CRotasticPlayerSubcomponents.asm`, `CRotasticPlayer.asm`).
 *
 * World Space: `1920 x 1080` pixels, Y-up (`y = 0` at bottom, `y = 1080` at top).
 */

export const ROTASTIC_PHYSICS_CONSTANTS = {
  TICK_RATE_HZ: 60,
  FIXED_DT: 1 / 60,

  // Arena viewport (Rotastic.exe world coordinates, Y-up)
  ARENA_WIDTH: 1920,
  ARENA_HEIGHT: 1080,
  SCREEN_MARGIN: 32, // simRef[0x78] = 32
  DEATH_BOTTOM_Y: -300, // TriggerPlanePlayerDeath @ y <= -300.0 (verified in 18/18 bottom falls)
  GRAVESTONE_Y: 75, // Tombstone resting Y after death
  TOP_CEILING_Y: 1455, // WallTop @ (960, 1480) minus halfH 25

  // Gravity & Air Physics (simRef[0x04] = -686.7, simRef[0x14] = 2000)
  GRAVITY: 686.7,
  AIR_STEER_ACCEL: 240.0,
  PLAYER_MAX_SPEED: 2000.0,

  // Rope & Swinging (simRef[0x10] = 0.0015f, [0x18] = 900, [0x1C] = 6, [0x2C] = 1300, [0x30] = 0.4, [0x40] = 1.2)
  SWING_MAX_SPEED: 900.0,
  MIN_OMEGA_RAD_S: 1.0471976, // 60 deg/s
  MAX_OMEGA_RAD_S: 6.0,
  TURN_BOOST_SPEED_STEP: 60.0, // simRef[0x20] = 60 u/s per reverse stack (max 5 -> 1200)
  TURN_BOOST_OMEGA_STEP: 0.4, // 60 / 150 = 0.4 rad/s per stack
  SWING_QUAD_PUMP: 0.0015, // simRef[0x10] = 0.0015f (0x3AC49BA6): quadratic self-pump dv_t/dt += sgn*vt^2*0.0015
  SWING_BOOST_TARGET_SPEED: 1300.0, // simRef[0x2C] = 1300.0f boost term while swingBoostTimer > 0
  SWING_BOOST_DURATION_SEC: 0.4, // simRef[0x30] = 0.4f apex/reverse boost duration
  SWING_PUMP_FACTOR: 0.05, // simRef[0x38] = 0.05 (release lookback window; kept for compatibility)
  SWING_INPUT_TORQUE: 260.0,
  ROPE_ATTACH_MIN_DIST: 1.0, // Minimum instant attach distance (can grapple right at the pivot!)
  ROPE_MIN_RADIUS: 150.0, // Nominal target radius minRopeRadius = 150 (unwinds toward 150 after delay)
  ROPE_UNWIND_DELAY_SEC: 0.22, // Small delay after close attach before expanding toward 150
  ROPE_ADJUST_SPEED: 50.0, // Verified 50 u/s unwind speed on short ropes (f=716..795)
  ROPE_MAX_RADIUS: 2200.0, // Matches 4000 clamp @ 0x0056BDB8 & 668.2px attach observed in telemetry
  ROPE_ATTACH_RANGE: 2200.0, // Always allows connecting to nearest indicated pivot across 1920x1080 arena
  REGRAPPLE_COOLDOWN_SEC: 0.08,
  RELEASE_BOOST_WINDOW_SEC: 0.4, // simRef[0x30] = 0.4
  RELEASE_BOOST_FACTOR: 1.2, // simRef[0x40] = 1.2 (observed 900 -> 1079 u/s)

  // Rope Cutting & Collisions (CRotasticRope::vfunc_44 @ 0x005435D0, OnCutEnemyRope @ 0x00578A90)
  ROPE_CUT_GRACE_SEC: 0.08, // Responsive close-quarters rope cutting while avoiding frame-0 self-attach snags
  ROPE_CAPSULE_RADIUS: 5.0, // Verified rope physics capsule radius [edx+0x20] = 5.0f @ 0x00543838
  PLAYER_RADIUS: 44.0, // Matches 82.8px PvP contact distance in 1920x1080
  SHIELD_BUBBLE_RADIUS: 78.0, // Full white bubble radius when c1 >= 1.0 (measured ~161px diameter in Rotastic.exe)
  WALL_BOUNCE_RESTITUTION: 1.0, // simRef[0x44] = 1.0
  PLAYER_RESTITUTION: 1.0, // Verified exact in 4/4 PVP_BOUNCE_SOLVER events
  PVP_MIN_COLLISION_SPEED: 450.0, // Verified speed floor @ 0x005782C6, 0x005783B8, 0x0057717F
  SLAUGHTER_MIN_SPEED: 620.0,
  SLAUGHTER_KE_RATIO_SQ: 1.8,

  // Dual Shield & Charge Rings (c1 @ +0xD48, c2 @ +0xD4C)
  CHARGE_RATE_BASE: 0.58, // simRef[0x4C] = 0.58
  CHARGE_SPEED_NORM: 450.0, // simRef[0x54] = 450
  CHARGE_STUN_FACTOR: 0.55, // simRef[0x5C] = 0.55
  ORANGE_CHARGE_STEP: 0.2, // 5 tricks (+150) fill 0.0 -> 1.0
  ORANGE_TRICK_POINTS: 150,
  PVP_MASS_ORANGE_COEF: 10.0, // mass = 1.0 + 10.0 * c2^2 (1.0 / 1.4 / 2.6 / ... / 11.0)

  // Timers & Respawn (CRotasticPlayer.asm + live captures)
  DIZZY_DURATION_SEC: 1.0, // simRef[0x58] = 1.0
  RESPAWN_DELAY_SEC: 1.0, // Observed 144 ticks (~1.0s) from PLAYER_DEATH -> SPAWN_CURSOR_ENTER
  SPAWN_INVULN_SEC: 1.0, // Observed inv = 1.000 at SPAWN_DROP
  SHIELD_BREAK_INVULN_SEC: 0.5, // Observed inv = 0.500 when c1 absorbed deadly hit
  SPAWN_DROP_Y: 1080.0, // Observed pos.y = 1080 at SPAWN_DROP
  SPAWN_DROP_INITIAL_VY: 100.0, // Observed vy = +100 at SPAWN_DROP
  SPAWN_CURSOR_MIN_X: 160.0,
  SPAWN_CURSOR_MAX_X: 1760.0,
  SPAWN_CURSOR_SPEED: 440.0,
  SPAWN_ALLOW_DELAY_SEC: 0.25,
  KILL_ATTRIBUTION_WINDOW_SEC: 5.0, // 0x0056C152: 5.0s
} as const;

export type GameModeId = 'deathmatch' | 'collect' | 'koth';

export type CharacterId = 0 | 1 | 2 | 3; // 0: Neo (Viking), 1: Elf, 2: Pig, 3: Skull
export type PlayerColorId = 0 | 1 | 2 | 3; // 0: Blue, 1: Red, 2: Green, 3: Yellow

export const CHARACTER_NAMES: Record<CharacterId, { id: string; label: string }> = {
  0: { id: 'neo', label: 'Rotastic (Viking)' },
  1: { id: 'elf', label: 'Sylph (Elf)' },
  2: { id: 'pig', label: 'Butcher (Pig)' },
  3: { id: 'skull', label: 'Skeletor (Skull)' },
};

export const PLAYER_COLORS: Record<
  PlayerColorId,
  { code: 'b' | 'r' | 'g' | 'y'; name: string; hex: number; css: string }
> = {
  0: { code: 'b', name: 'Blue', hex: 0x3b82f6, css: '#3b82f6' },
  1: { code: 'r', name: 'Red', hex: 0xef4444, css: '#ef4444' },
  2: { code: 'g', name: 'Green', hex: 0x22c55e, css: '#22c55e' },
  3: { code: 'y', name: 'Yellow', hex: 0xeab308, css: '#eab308' },
};

export type GemType = 'bronze' | 'silver' | 'gold' | 'diamond';

export const GEM_POINTS: Record<GemType, number> = {
  bronze: 50,
  silver: 150,
  gold: 300,
  diamond: 1000,
};

export enum PlayerStatus {
  FREE_FALL = 0,
  SWINGING = 1,
  DIZZY = 2,
  DEAD = 3,
  SPAWN_CURSOR = 4,
}

export type WallType = 'normal' | 'bouncy' | 'deadly' | 'breakable' | 'slow';
