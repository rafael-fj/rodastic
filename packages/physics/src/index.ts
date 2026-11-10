/**
 * @rotastic/physics — Deterministic 60 Hz 2D Pendulum, Rope-Cut & Arena Simulation
 * Constants extracted from Rotastic.exe (.rdata 0x0095AD24..0x0095ADAC)
 */

export const ROTASTIC_PHYSICS_CONSTANTS = {
  TICK_RATE_HZ: 60,
  FIXED_DT: 1 / 60,
  GRAVITY: 9.81,
  AIR_DRAG_BASE: 0.985,
  RELEASE_BOOST_WINDOW_SEC: 0.2,
  RELEASE_BOOST_FACTOR: 1.1,
  SWING_PUMP_FACTOR: 0.05,
  MIN_OMEGA_RAD_S: 1.0471976,
  ROPE_CUT_GRACE_SEC: 0.25,
  DIZZY_DURATION_SEC: 1.5,
  RESPAWN_DELAY_SEC: 2.0,
} as const;
