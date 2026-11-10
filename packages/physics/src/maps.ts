import { GameModeId, GemType, WallType } from './constants.js';

export interface AttachPointDef {
  id: number;
  x: number;
  y: number;
}

export interface WallDef {
  id: number;
  x1: number;
  y1: number;
  x2: number;
  y2: number;
  type: WallType;
}

export interface VortexDef {
  id: number;
  x: number;
  y: number;
  radius: number;
  strength: number; // positive = attract, negative = repel
}

export interface PickupSpawnDef {
  id: number;
  x: number;
  y: number;
  gemType: GemType;
  waveGroup: number;
}

export interface MultiplayerMapDef {
  id: string;
  name: string;
  mode: GameModeId;
  theme: 'basic' | 'ero' | 'jem' | 'koth';
  defaultScoreLimit: number;
  defaultTimeLimitSec: number;
  spawns: Array<{ x: number; y: number }>;
  attachPoints: AttachPointDef[];
  walls: WallDef[];
  vortices: VortexDef[];
  pickups: PickupSpawnDef[];
  hillZone?: { x: number; y: number; radius: number };
}

function makeDiamondRingPickups(
  startId: number,
  cx: number,
  cy: number,
  radius: number,
  count: number,
  gemType: GemType,
  waveGroup: number
): PickupSpawnDef[] {
  const out: PickupSpawnDef[] = [];
  for (let i = 0; i < count; i++) {
    const angle = (i / count) * Math.PI * 2;
    out.push({
      id: startId + i,
      x: Number((cx + Math.cos(angle) * radius).toFixed(2)),
      y: Number((cy + Math.sin(angle) * radius).toFixed(2)),
      gemType,
      waveGroup,
    });
  }
  return out;
}

/**
 * All 19 Multiplayer Maps extracted from Rotastic's `w_multi*.pc` packages.
 * Coordinates are in Rotastic 2D world units ([-18, +18] x [-10.5, +10.5], Y-up).
 */
export const MULTIPLAYER_MAPS: MultiplayerMapDef[] = [
  {
    id: 'w_multi_coll_lvl01',
    name: 'Crystal Keep (Collect 01)',
    mode: 'collect',
    theme: 'basic',
    defaultScoreLimit: 5000,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -10, y: 4.5 },
      { x: 10, y: 4.5 },
      { x: -10, y: -3.5 },
      { x: 10, y: -3.5 },
    ],
    attachPoints: [
      { id: 0, x: -9.5, y: 3.5 },
      { id: 1, x: 9.5, y: 3.5 },
      { id: 2, x: -9.5, y: -3.5 },
      { id: 3, x: 9.5, y: -3.5 },
      { id: 4, x: -4.2, y: 0.0 },
      { id: 5, x: 4.2, y: 0.0 },
      { id: 6, x: 0.0, y: 4.8 },
      { id: 7, x: 0.0, y: -4.8 },
    ],
    walls: [
      { id: 0, x1: -15.5, y1: 8.8, x2: 15.5, y2: 8.8, type: 'bouncy' },
      { id: 1, x1: -15.5, y1: -8.8, x2: -5.0, y2: -8.8, type: 'bouncy' },
      { id: 2, x1: 5.0, y1: -8.8, x2: 15.5, y2: -8.8, type: 'bouncy' },
      { id: 3, x1: -16.2, y1: -7.5, x2: -16.2, y2: 7.5, type: 'bouncy' },
      { id: 4, x1: 16.2, y1: -7.5, x2: 16.2, y2: 7.5, type: 'bouncy' },
    ],
    vortices: [],
    pickups: [
      { id: 0, x: 0, y: 0, gemType: 'diamond', waveGroup: 0 },
      ...makeDiamondRingPickups(1, 0, 0, 2.8, 8, 'gold', 0),
      ...makeDiamondRingPickups(9, -9.5, 3.5, 2.4, 6, 'silver', 0),
      ...makeDiamondRingPickups(15, 9.5, 3.5, 2.4, 6, 'silver', 0),
      ...makeDiamondRingPickups(21, -9.5, -3.5, 2.4, 6, 'bronze', 1),
      ...makeDiamondRingPickups(27, 9.5, -3.5, 2.4, 6, 'bronze', 1),
      { id: 33, x: 0, y: 6.8, gemType: 'diamond', waveGroup: 1 },
      { id: 34, x: 0, y: -6.8, gemType: 'diamond', waveGroup: 1 },
    ],
  },
  {
    id: 'w_multi_coll_lvl02',
    name: 'Twin Gears (Collect 02)',
    mode: 'collect',
    theme: 'jem',
    defaultScoreLimit: 5500,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -11, y: 3 },
      { x: 11, y: 3 },
      { x: -6, y: -4 },
      { x: 6, y: -4 },
    ],
    attachPoints: [
      { id: 0, x: -7.5, y: 1.5 },
      { id: 1, x: 7.5, y: 1.5 },
      { id: 2, x: -2.8, y: 4.5 },
      { id: 3, x: 2.8, y: 4.5 },
      { id: 4, x: -2.8, y: -4.2 },
      { id: 5, x: 2.8, y: -4.2 },
      { id: 6, x: 0.0, y: 0.2 },
    ],
    walls: [
      { id: 0, x1: -14.0, y1: 8.6, x2: 14.0, y2: 8.6, type: 'bouncy' },
      { id: 1, x1: -16.0, y1: -6.5, x2: -16.0, y2: 6.5, type: 'bouncy' },
      { id: 2, x1: 16.0, y1: -6.5, x2: 16.0, y2: 6.5, type: 'bouncy' },
      { id: 3, x1: -4.5, y1: -8.6, x2: 4.5, y2: -8.6, type: 'deadly' },
    ],
    vortices: [{ id: 0, x: 0, y: 0.2, radius: 5.0, strength: 4.5 }],
    pickups: [
      ...makeDiamondRingPickups(0, -7.5, 1.5, 3.0, 8, 'gold', 0),
      ...makeDiamondRingPickups(8, 7.5, 1.5, 3.0, 8, 'gold', 0),
      { id: 16, x: 0, y: 6.2, gemType: 'diamond', waveGroup: 0 },
      ...makeDiamondRingPickups(17, 0, 0.2, 3.4, 10, 'silver', 1),
      { id: 27, x: -12.0, y: 0, gemType: 'diamond', waveGroup: 1 },
      { id: 28, x: 12.0, y: 0, gemType: 'diamond', waveGroup: 1 },
    ],
  },
  {
    id: 'w_multi_coll_lvl03',
    name: 'Vortex Vault (Collect 03)',
    mode: 'collect',
    theme: 'jem',
    defaultScoreLimit: 6000,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -11, y: 5 },
      { x: 11, y: 5 },
      { x: -11, y: -5 },
      { x: 11, y: -5 },
    ],
    attachPoints: [
      { id: 0, x: -10.0, y: 4.2 },
      { id: 1, x: 10.0, y: 4.2 },
      { id: 2, x: -10.0, y: -4.2 },
      { id: 3, x: 10.0, y: -4.2 },
      { id: 4, x: -4.8, y: 2.2 },
      { id: 5, x: 4.8, y: 2.2 },
      { id: 6, x: -4.8, y: -2.2 },
      { id: 7, x: 4.8, y: -2.2 },
    ],
    walls: [
      { id: 0, x1: -16.0, y1: 8.8, x2: 16.0, y2: 8.8, type: 'bouncy' },
      { id: 1, x1: -16.0, y1: -8.8, x2: 16.0, y2: -8.8, type: 'bouncy' },
      { id: 2, x1: -1.8, y1: -3.2, x2: 1.8, y2: -3.2, type: 'breakable' },
      { id: 3, x1: -1.8, y1: 3.2, x2: 1.8, y2: 3.2, type: 'breakable' },
    ],
    vortices: [
      { id: 0, x: 0, y: 0, radius: 5.5, strength: -6.5 },
    ],
    pickups: [
      { id: 0, x: 0, y: 0, gemType: 'diamond', waveGroup: 0 },
      ...makeDiamondRingPickups(1, 0, 0, 2.2, 8, 'gold', 0),
      ...makeDiamondRingPickups(9, -10, 0, 2.8, 6, 'silver', 1),
      ...makeDiamondRingPickups(15, 10, 0, 2.8, 6, 'silver', 1),
    ],
  },
  {
    id: 'w_multi_coll_lvl04',
    name: 'Pendulum Foundry (Collect 04)',
    mode: 'collect',
    theme: 'ero',
    defaultScoreLimit: 5000,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -12, y: 4 },
      { x: 12, y: 4 },
      { x: -4, y: 5 },
      { x: 4, y: 5 },
    ],
    attachPoints: [
      { id: 0, x: -11.0, y: 3.2 },
      { id: 1, x: -5.5, y: 0.5 },
      { id: 2, x: 0.0, y: 3.8 },
      { id: 3, x: 5.5, y: 0.5 },
      { id: 4, x: 11.0, y: 3.2 },
      { id: 5, x: -5.5, y: -4.8 },
      { id: 6, x: 5.5, y: -4.8 },
    ],
    walls: [
      { id: 0, x1: -16.2, y1: -8.0, x2: -16.2, y2: 8.0, type: 'bouncy' },
      { id: 1, x1: 16.2, y1: -8.0, x2: 16.2, y2: 8.0, type: 'bouncy' },
      { id: 2, x1: -12.0, y1: -8.8, x2: 12.0, y2: -8.8, type: 'deadly' },
    ],
    vortices: [],
    pickups: [
      ...makeDiamondRingPickups(0, -5.5, 0.5, 2.8, 8, 'gold', 0),
      ...makeDiamondRingPickups(8, 5.5, 0.5, 2.8, 8, 'gold', 0),
      { id: 16, x: 0, y: -2.5, gemType: 'diamond', waveGroup: 0 },
      ...makeDiamondRingPickups(17, 0, 3.8, 2.6, 8, 'silver', 1),
    ],
  },
  {
    id: 'w_multi_coll_lvl05',
    name: 'Ricochet Caverns (Collect 05)',
    mode: 'collect',
    theme: 'basic',
    defaultScoreLimit: 5500,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -9, y: 4 },
      { x: 9, y: 4 },
      { x: -9, y: -4 },
      { x: 9, y: -4 },
    ],
    attachPoints: [
      { id: 0, x: -8.0, y: 3.2 },
      { id: 1, x: 8.0, y: 3.2 },
      { id: 2, x: -8.0, y: -3.2 },
      { id: 3, x: 8.0, y: -3.2 },
      { id: 4, x: 0.0, y: 0.0 },
    ],
    walls: [
      { id: 0, x1: -14.5, y1: 8.5, x2: 14.5, y2: 8.5, type: 'bouncy' },
      { id: 1, x1: -14.5, y1: -8.5, x2: 14.5, y2: -8.5, type: 'bouncy' },
      { id: 2, x1: -15.8, y1: -6.5, x2: -15.8, y2: 6.5, type: 'bouncy' },
      { id: 3, x1: 15.8, y1: -6.5, x2: 15.8, y2: 6.5, type: 'bouncy' },
    ],
    vortices: [],
    pickups: [
      ...makeDiamondRingPickups(0, 0, 0, 3.5, 10, 'gold', 0),
      { id: 10, x: -12.5, y: 0, gemType: 'diamond', waveGroup: 0 },
      { id: 11, x: 12.5, y: 0, gemType: 'diamond', waveGroup: 0 },
      ...makeDiamondRingPickups(12, -8, 3.2, 2.2, 6, 'silver', 1),
      ...makeDiamondRingPickups(18, 8, -3.2, 2.2, 6, 'silver', 1),
    ],
  },
  {
    id: 'w_multi_coll_lvl06',
    name: 'Diamond Abyss (Collect 06)',
    mode: 'collect',
    theme: 'jem',
    defaultScoreLimit: 6500,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -10, y: 5 },
      { x: 10, y: 5 },
      { x: -5, y: 2 },
      { x: 5, y: 2 },
    ],
    attachPoints: [
      { id: 0, x: -9.5, y: 4.0 },
      { id: 1, x: -3.5, y: 1.5 },
      { id: 2, x: 3.5, y: 1.5 },
      { id: 3, x: 9.5, y: 4.0 },
      { id: 4, x: -6.5, y: -3.5 },
      { id: 5, x: 6.5, y: -3.5 },
      { id: 6, x: 0.0, y: -4.8 },
    ],
    walls: [
      { id: 0, x1: -15.5, y1: 8.8, x2: 15.5, y2: 8.8, type: 'bouncy' },
      { id: 1, x1: -16.2, y1: -4.0, x2: -12.0, y2: -8.5, type: 'deadly' },
      { id: 2, x1: 16.2, y1: -4.0, x2: 12.0, y2: -8.5, type: 'deadly' },
    ],
    vortices: [{ id: 0, x: 0, y: -1.5, radius: 5.0, strength: 5.2 }],
    pickups: [
      { id: 0, x: 0, y: -7.2, gemType: 'diamond', waveGroup: 0 },
      { id: 1, x: 0, y: 5.8, gemType: 'diamond', waveGroup: 0 },
      ...makeDiamondRingPickups(2, -3.5, 1.5, 2.5, 6, 'gold', 0),
      ...makeDiamondRingPickups(8, 3.5, 1.5, 2.5, 6, 'gold', 0),
      ...makeDiamondRingPickups(14, 0, -4.8, 2.5, 8, 'gold', 1),
    ],
  },
  {
    id: 'w_multi_dm_lvl01',
    name: 'Blade Pit (Deathmatch 01)',
    mode: 'deathmatch',
    theme: 'ero',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -9.5, y: 4.5 },
      { x: 9.5, y: 4.5 },
      { x: -9.5, y: -3.5 },
      { x: 9.5, y: -3.5 },
    ],
    attachPoints: [
      { id: 0, x: -8.5, y: 3.5 },
      { id: 1, x: 8.5, y: 3.5 },
      { id: 2, x: -8.5, y: -3.5 },
      { id: 3, x: 8.5, y: -3.5 },
      { id: 4, x: -3.2, y: 0.0 },
      { id: 5, x: 3.2, y: 0.0 },
      { id: 6, x: 0.0, y: 4.2 },
      { id: 7, x: 0.0, y: -4.2 },
    ],
    walls: [
      { id: 0, x1: -14.5, y1: 8.6, x2: 14.5, y2: 8.6, type: 'bouncy' },
      { id: 1, x1: -14.5, y1: -8.6, x2: -4.5, y2: -8.6, type: 'deadly' },
      { id: 2, x1: 4.5, y1: -8.6, x2: 14.5, y2: -8.6, type: 'deadly' },
      { id: 3, x1: -16.0, y1: -6.5, x2: -16.0, y2: 6.5, type: 'bouncy' },
      { id: 4, x1: 16.0, y1: -6.5, x2: 16.0, y2: 6.5, type: 'bouncy' },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl02',
    name: 'Spike Crucible (Deathmatch 02)',
    mode: 'deathmatch',
    theme: 'ero',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -10, y: 4 },
      { x: 10, y: 4 },
      { x: -5, y: -3 },
      { x: 5, y: -3 },
    ],
    attachPoints: [
      { id: 0, x: -9.0, y: 3.0 },
      { id: 1, x: 9.0, y: 3.0 },
      { id: 2, x: -4.5, y: -3.0 },
      { id: 3, x: 4.5, y: -3.0 },
      { id: 4, x: 0.0, y: 1.5 },
    ],
    walls: [
      { id: 0, x1: -15.5, y1: 8.5, x2: 15.5, y2: 8.5, type: 'deadly' },
      { id: 1, x1: -15.5, y1: -8.5, x2: 15.5, y2: -8.5, type: 'deadly' },
      { id: 2, x1: -16.0, y1: -7.0, x2: -16.0, y2: 7.0, type: 'bouncy' },
      { id: 3, x1: 16.0, y1: -7.0, x2: 16.0, y2: 7.0, type: 'bouncy' },
    ],
    vortices: [{ id: 0, x: 0, y: -2.0, radius: 5.5, strength: 6.0 }],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl03',
    name: 'Grinder Dome (Deathmatch 03)',
    mode: 'deathmatch',
    theme: 'ero',
    defaultScoreLimit: 12,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -11, y: 4 },
      { x: 11, y: 4 },
      { x: -11, y: -4 },
      { x: 11, y: -4 },
    ],
    attachPoints: [
      { id: 0, x: -10.0, y: 3.5 },
      { id: 1, x: 10.0, y: 3.5 },
      { id: 2, x: -10.0, y: -3.5 },
      { id: 3, x: 10.0, y: -3.5 },
      { id: 4, x: -4.0, y: 3.5 },
      { id: 5, x: 4.0, y: 3.5 },
      { id: 6, x: -4.0, y: -3.5 },
      { id: 7, x: 4.0, y: -3.5 },
    ],
    walls: [
      { id: 0, x1: -3.0, y1: 0, x2: 3.0, y2: 0, type: 'deadly' },
      { id: 1, x1: -15.8, y1: 8.6, x2: 15.8, y2: 8.6, type: 'bouncy' },
      { id: 2, x1: -15.8, y1: -8.6, x2: 15.8, y2: -8.6, type: 'bouncy' },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl04',
    name: 'Slaughter Ring (Deathmatch 04)',
    mode: 'deathmatch',
    theme: 'ero',
    defaultScoreLimit: 15,
    defaultTimeLimitSec: 150,
    spawns: [
      { x: -8, y: 5 },
      { x: 8, y: 5 },
      { x: -8, y: -5 },
      { x: 8, y: -5 },
    ],
    attachPoints: [
      { id: 0, x: -6.5, y: 3.5 },
      { id: 1, x: 6.5, y: 3.5 },
      { id: 2, x: -6.5, y: -3.5 },
      { id: 3, x: 6.5, y: -3.5 },
      { id: 4, x: 0.0, y: 0.0 },
    ],
    walls: [
      { id: 0, x1: -13.5, y1: 8.2, x2: 13.5, y2: 8.2, type: 'bouncy' },
      { id: 1, x1: -13.5, y1: -8.2, x2: 13.5, y2: -8.2, type: 'bouncy' },
      { id: 2, x1: -14.8, y1: -7.2, x2: -14.8, y2: 7.2, type: 'deadly' },
      { id: 3, x1: 14.8, y1: -7.2, x2: 14.8, y2: 7.2, type: 'deadly' },
    ],
    vortices: [{ id: 0, x: 0, y: 0, radius: 6.5, strength: -5.5 }],
    pickups: [],
  },
  {
    id: 'w_multi_basic00',
    name: 'Bastion Courtyard (Basic 00)',
    mode: 'collect',
    theme: 'basic',
    defaultScoreLimit: 4500,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -9, y: 4 },
      { x: 9, y: 4 },
      { x: -9, y: -3 },
      { x: 9, y: -3 },
    ],
    attachPoints: [
      { id: 0, x: -8.0, y: 3.0 },
      { id: 1, x: 8.0, y: 3.0 },
      { id: 2, x: -8.0, y: -3.0 },
      { id: 3, x: 8.0, y: -3.0 },
      { id: 4, x: 0.0, y: 2.5 },
      { id: 5, x: 0.0, y: -2.5 },
    ],
    walls: [
      { id: 0, x1: -15.5, y1: 8.6, x2: 15.5, y2: 8.6, type: 'bouncy' },
      { id: 1, x1: -15.5, y1: -8.6, x2: 15.5, y2: -8.6, type: 'bouncy' },
    ],
    vortices: [],
    pickups: [
      ...makeDiamondRingPickups(0, 0, 2.5, 2.5, 8, 'silver', 0),
      ...makeDiamondRingPickups(8, 0, -2.5, 2.5, 8, 'gold', 0),
      { id: 16, x: 0, y: 0, gemType: 'diamond', waveGroup: 1 },
    ],
  },
  {
    id: 'w_multi_basic01',
    name: 'Watchtower Swing (Basic 01)',
    mode: 'collect',
    theme: 'basic',
    defaultScoreLimit: 5000,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -11, y: 4 },
      { x: 11, y: 4 },
      { x: -5, y: -4 },
      { x: 5, y: -4 },
    ],
    attachPoints: [
      { id: 0, x: -10.0, y: 3.0 },
      { id: 1, x: -4.0, y: 3.0 },
      { id: 2, x: 4.0, y: 3.0 },
      { id: 3, x: 10.0, y: 3.0 },
      { id: 4, x: -4.0, y: -3.5 },
      { id: 5, x: 4.0, y: -3.5 },
    ],
    walls: [
      { id: 0, x1: -16.0, y1: -7.5, x2: -16.0, y2: 7.5, type: 'bouncy' },
      { id: 1, x1: 16.0, y1: -7.5, x2: 16.0, y2: 7.5, type: 'bouncy' },
    ],
    vortices: [],
    pickups: [
      ...makeDiamondRingPickups(0, -4, 3, 2.4, 6, 'gold', 0),
      ...makeDiamondRingPickups(6, 4, 3, 2.4, 6, 'gold', 0),
      { id: 12, x: 0, y: -5.5, gemType: 'diamond', waveGroup: 0 },
    ],
  },
  {
    id: 'w_multi_basic02',
    name: 'Iron Catapult (Basic 02)',
    mode: 'deathmatch',
    theme: 'basic',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -10, y: 4 },
      { x: 10, y: 4 },
      { x: -10, y: -4 },
      { x: 10, y: -4 },
    ],
    attachPoints: [
      { id: 0, x: -8.5, y: 3.2 },
      { id: 1, x: 8.5, y: 3.2 },
      { id: 2, x: -8.5, y: -3.2 },
      { id: 3, x: 8.5, y: -3.2 },
      { id: 4, x: 0.0, y: 0.0 },
    ],
    walls: [
      { id: 0, x1: -15.5, y1: 8.6, x2: 15.5, y2: 8.6, type: 'bouncy' },
      { id: 1, x1: -15.5, y1: -8.6, x2: 15.5, y2: -8.6, type: 'deadly' },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multiero00',
    name: 'Crimson Gallows (Ero 00)',
    mode: 'deathmatch',
    theme: 'ero',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -10, y: 4 },
      { x: 10, y: 4 },
      { x: -6, y: -3 },
      { x: 6, y: -3 },
    ],
    attachPoints: [
      { id: 0, x: -9.0, y: 3.5 },
      { id: 1, x: 9.0, y: 3.5 },
      { id: 2, x: -4.5, y: -2.5 },
      { id: 3, x: 4.5, y: -2.5 },
      { id: 4, x: 0.0, y: 3.5 },
    ],
    walls: [
      { id: 0, x1: -15.5, y1: 8.6, x2: 15.5, y2: 8.6, type: 'bouncy' },
      { id: 1, x1: -16.0, y1: -7.5, x2: -16.0, y2: 7.5, type: 'deadly' },
      { id: 2, x1: 16.0, y1: -7.5, x2: 16.0, y2: 7.5, type: 'deadly' },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multiero01',
    name: 'Guillotine Alley (Ero 01)',
    mode: 'deathmatch',
    theme: 'ero',
    defaultScoreLimit: 12,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -11, y: 4.5 },
      { x: 11, y: 4.5 },
      { x: -11, y: -3.5 },
      { x: 11, y: -3.5 },
    ],
    attachPoints: [
      { id: 0, x: -9.5, y: 3.5 },
      { id: 1, x: 9.5, y: 3.5 },
      { id: 2, x: -9.5, y: -3.5 },
      { id: 3, x: 9.5, y: -3.5 },
      { id: 4, x: -3.5, y: 0.0 },
      { id: 5, x: 3.5, y: 0.0 },
    ],
    walls: [
      { id: 0, x1: 0, y1: -5.5, x2: 0, y2: 5.5, type: 'breakable' },
      { id: 1, x1: -15.5, y1: 8.6, x2: 15.5, y2: 8.6, type: 'bouncy' },
      { id: 2, x1: -15.5, y1: -8.6, x2: 15.5, y2: -8.6, type: 'deadly' },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multiero02',
    name: 'Blood Pendulum (Ero 02)',
    mode: 'deathmatch',
    theme: 'ero',
    defaultScoreLimit: 12,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -9, y: 5 },
      { x: 9, y: 5 },
      { x: -9, y: -4 },
      { x: 9, y: -4 },
    ],
    attachPoints: [
      { id: 0, x: -7.5, y: 3.8 },
      { id: 1, x: 7.5, y: 3.8 },
      { id: 2, x: -7.5, y: -3.8 },
      { id: 3, x: 7.5, y: -3.8 },
      { id: 4, x: 0.0, y: 0.0 },
    ],
    walls: [
      { id: 0, x1: -15.5, y1: 8.6, x2: 15.5, y2: 8.6, type: 'deadly' },
      { id: 1, x1: -15.5, y1: -8.6, x2: 15.5, y2: -8.6, type: 'deadly' },
      { id: 2, x1: -16.0, y1: -7.5, x2: -16.0, y2: 7.5, type: 'bouncy' },
      { id: 3, x1: 16.0, y1: -7.5, x2: 16.0, y2: 7.5, type: 'bouncy' },
    ],
    vortices: [{ id: 0, x: 0, y: 0, radius: 5.5, strength: 5.0 }],
    pickups: [],
  },
  {
    id: 'w_multijem00',
    name: 'Jewel Sanctum (Jem 00)',
    mode: 'collect',
    theme: 'jem',
    defaultScoreLimit: 6000,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -10, y: 4 },
      { x: 10, y: 4 },
      { x: -10, y: -4 },
      { x: 10, y: -4 },
    ],
    attachPoints: [
      { id: 0, x: -8.5, y: 3.2 },
      { id: 1, x: 8.5, y: 3.2 },
      { id: 2, x: -8.5, y: -3.2 },
      { id: 3, x: 8.5, y: -3.2 },
      { id: 4, x: -3.2, y: 0.0 },
      { id: 5, x: 3.2, y: 0.0 },
    ],
    walls: [
      { id: 0, x1: -15.5, y1: 8.6, x2: 15.5, y2: 8.6, type: 'bouncy' },
      { id: 1, x1: -15.5, y1: -8.6, x2: 15.5, y2: -8.6, type: 'bouncy' },
    ],
    vortices: [],
    pickups: [
      { id: 0, x: 0, y: 0, gemType: 'diamond', waveGroup: 0 },
      ...makeDiamondRingPickups(1, -3.2, 0, 2.5, 8, 'gold', 0),
      ...makeDiamondRingPickups(9, 3.2, 0, 2.5, 8, 'gold', 0),
      { id: 17, x: 0, y: 5.5, gemType: 'diamond', waveGroup: 1 },
      { id: 18, x: 0, y: -5.5, gemType: 'diamond', waveGroup: 1 },
    ],
  },
  {
    id: 'w_multikoth00',
    name: 'Crown Citadel (King of the Hill 00)',
    mode: 'koth',
    theme: 'koth',
    defaultScoreLimit: 1000,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -11, y: 4.5 },
      { x: 11, y: 4.5 },
      { x: -11, y: -4.5 },
      { x: 11, y: -4.5 },
    ],
    attachPoints: [
      { id: 0, x: -9.5, y: 3.8 },
      { id: 1, x: 9.5, y: 3.8 },
      { id: 2, x: -9.5, y: -3.8 },
      { id: 3, x: 9.5, y: -3.8 },
      { id: 4, x: -3.6, y: 1.8 },
      { id: 5, x: 3.6, y: 1.8 },
      { id: 6, x: -3.6, y: -1.8 },
      { id: 7, x: 3.6, y: -1.8 },
      { id: 8, x: 0.0, y: 0.0 },
    ],
    walls: [
      { id: 0, x1: -15.8, y1: 8.6, x2: 15.8, y2: 8.6, type: 'bouncy' },
      { id: 1, x1: -15.8, y1: -8.6, x2: 15.8, y2: -8.6, type: 'bouncy' },
      { id: 2, x1: -16.2, y1: -7.5, x2: -16.2, y2: 7.5, type: 'bouncy' },
      { id: 3, x1: 16.2, y1: -7.5, x2: 16.2, y2: 7.5, type: 'bouncy' },
    ],
    vortices: [],
    pickups: [],
    hillZone: { x: 0, y: 0, radius: 4.5 },
  },
  {
    id: 'w_multikoth01',
    name: 'Sovereign Vortex (King of the Hill 01)',
    mode: 'koth',
    theme: 'koth',
    defaultScoreLimit: 1000,
    defaultTimeLimitSec: 120,
    spawns: [
      { x: -10, y: 5 },
      { x: 10, y: 5 },
      { x: -10, y: -5 },
      { x: 10, y: -5 },
    ],
    attachPoints: [
      { id: 0, x: -8.5, y: 4.0 },
      { id: 1, x: 8.5, y: 4.0 },
      { id: 2, x: -8.5, y: -4.0 },
      { id: 3, x: 8.5, y: -4.0 },
      { id: 4, x: -2.8, y: 0.0 },
      { id: 5, x: 2.8, y: 0.0 },
    ],
    walls: [
      { id: 0, x1: -15.5, y1: 8.6, x2: 15.5, y2: 8.6, type: 'bouncy' },
      { id: 1, x1: -15.5, y1: -8.6, x2: 15.5, y2: -8.6, type: 'deadly' },
    ],
    vortices: [{ id: 0, x: 0, y: 0, radius: 5.2, strength: 3.5 }],
    pickups: [],
    hillZone: { x: 0, y: 0, radius: 4.2 },
  },
];

export function getMultiplayerMapById(mapId: string): MultiplayerMapDef {
  return MULTIPLAYER_MAPS.find((m) => m.id === mapId) ?? MULTIPLAYER_MAPS[0];
}
