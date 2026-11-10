/**
 * Exact Physics & Gameplay Constants extracted from Rotastic.exe
 * (.rdata 0x0095AD24..0x0095ADAC & .text 0x00688000..0x00699600)
 */

export const ROTASTIC_PHYSICS_CONSTANTS = {
  TICK_RATE_HZ: 60,
  FIXED_DT: 1 / 60,
  GRAVITY: 9.81,
  AIR_DRAG_BASE: 0.985,
  AIR_STEER_ACCEL: 5.5,
  RELEASE_BOOST_WINDOW_SEC: 0.2,
  RELEASE_BOOST_FACTOR: 1.1,
  SWING_PUMP_FACTOR: 0.05,
  SWING_INPUT_TORQUE: 2.8,
  MIN_OMEGA_RAD_S: 1.0471976, // 60 deg/s (0x0095AD80)
  MAX_OMEGA_RAD_S: 11.5,
  ROPE_MIN_RADIUS: 1.35,
  ROPE_MAX_RADIUS: 5.2,
  ROPE_ATTACH_RANGE: 5.8,
  ROPE_CUT_GRACE_SEC: 0.25, // 0x0095AD38
  ROPE_CUT_MIN_SPEED: 4.2,
  PLAYER_RADIUS: 0.68,
  PLAYER_MAX_SPEED: 22.0,
  PLAYER_RESTITUTION: 0.92,
  SLAUGHTER_MIN_SPEED: 8.2,
  SLAUGHTER_KE_RATIO_SQ: 1.8,
  DIZZY_DURATION_SEC: 1.5, // 0x0095AD70
  RESPAWN_DELAY_SEC: 2.0,
  SPAWN_INVULN_SEC: 1.25,
  ARENA_HALF_WIDTH: 18.0,
  ARENA_HALF_HEIGHT: 10.5,
  KILL_ATTRIBUTION_WINDOW_SEC: 4.0,
} as const;

export type GameModeId = 'collect' | 'deathmatch' | 'koth';

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
}

export type WallType = 'normal' | 'bouncy' | 'deadly' | 'breakable' | 'slow';
