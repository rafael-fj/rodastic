import { GameModeId, GemType, WallType } from './constants.js';

export interface WaypointPoint {
  x: number;
  y: number;
  durationSec: number;
  /** Optional 8Hz warning shake amplitude (px) while parked at this waypoint (lvl13 FlowGraph). */
  shakeAmpPx?: number;
}

export interface WaypointMotion {
  kind: 'waypoints';
  points: WaypointPoint[];
  switchControlled?: boolean;
  /** Runs once from points[0]..last->points[0] and parks at points[0] instead of looping. */
  oneShot?: boolean;
}

export interface RotateMotion {
  kind: 'rotate';
  /** Angular velocity in degrees per second (positive = CCW in Y-up). */
  degPerSec: number;
}

export interface AttachPointDef {
  id: number;
  name: string;
  x: number;
  y: number;
  motion?: WaypointMotion;
}

export interface WallDef {
  id: number;
  name: string;
  cx: number;
  cy: number;
  halfW: number;
  halfH: number;
  rotDeg: number;
  type: WallType;
  meshActor?: string;
  motion?: RotateMotion | WaypointMotion;
}

export interface SwitchDef {
  name: string;
  x: number;
  y: number;
  radius: number;
}

export interface BgLayerDef {
  texture: string;
  alpha?: number;
}

export interface PickupSpawnDef {
  id: number;
  x: number;
  y: number;
  gemType: GemType;
  waveGroup: number;
}

export interface VortexDef {
  id: number;
  x: number;
  y: number;
  radius: number;
  strength: number;
}

export interface MultiplayerMapDef {
  id: string;
  name: string;
  subtitle: string;
  mode: GameModeId;
  bgmTrack: string;
  defaultScoreLimit: number;
  defaultTimeLimitSec: number;
  bgLayers: BgLayerDef[];
  spawns: Array<{ x: number; y: number }>;
  attachPoints: AttachPointDef[];
  walls: WallDef[];
  switchDef?: SwitchDef;
  vortices: VortexDef[];
  pickups: PickupSpawnDef[];
  hillZone?: { x: number; y: number; radius: number };
}

function defaultArenaWalls(startId = 0): WallDef[] {
  return [
    {
      id: startId,
      name: 'PRP_wallLeft',
      cx: 15,
      cy: 600,
      halfW: 15,
      halfH: 950,
      rotDeg: 0,
      type: 'bouncy',
      meshActor: 'o_rebondecranbois_l',
    },
    {
      id: startId + 1,
      name: 'PRP_wallRight',
      cx: 1905,
      cy: 600,
      halfW: 15,
      halfH: 950,
      rotDeg: 0,
      type: 'bouncy',
      meshActor: 'o_rebondecranbois_r',
    },
    {
      id: startId + 2,
      name: 'WallTop',
      cx: 960,
      cy: 1480,
      halfW: 960,
      halfH: 25,
      rotDeg: 0,
      type: 'bouncy',
    },
  ];
}

const DEFAULT_TOP_SPAWNS = [
  { x: 384, y: 1080 },
  { x: 768, y: 1080 },
  { x: 1152, y: 1080 },
  { x: 1536, y: 1080 },
];

export function getWaypointMotionDuration(motion: WaypointMotion): number {
  let totalDur = 0;
  for (let i = 0; i < motion.points.length; i++) {
    totalDur += Math.max(0.05, motion.points[i].durationSec);
  }
  return totalDur;
}

/**
 * Evaluate looping or one-shot waypoint interpolation at time `tSec`.
 */
export function evaluateWaypointMotion(
  motion: WaypointMotion,
  tSec: number,
  reverse = false
): { x: number; y: number } {
  const pts = motion.points;
  if (pts.length === 0) return { x: 0, y: 0 };
  if (pts.length === 1) return { x: pts[0].x, y: pts[0].y };

  const totalDur = getWaypointMotionDuration(motion);
  let elapsed: number;
  if (motion.oneShot) {
    if (tSec <= 0 || tSec >= totalDur) {
      return { x: pts[0].x, y: pts[0].y };
    }
    elapsed = reverse ? totalDur - tSec : tSec;
  } else {
    elapsed = ((tSec % totalDur) + totalDur) % totalDur;
    if (reverse) {
      elapsed = (totalDur - elapsed) % totalDur;
    }
  }

  for (let i = 0; i < pts.length; i++) {
    const a = pts[i];
    const b = pts[(i + 1) % pts.length];
    const segDur = Math.max(0.05, a.durationSec);
    if (elapsed <= segDur) {
      const alpha = elapsed / segDur;
      let x = a.x + (b.x - a.x) * alpha;
      const y = a.y + (b.y - a.y) * alpha;
      if (a.shakeAmpPx && a.x === b.x && a.y === b.y) {
        x += Math.sin(tSec * 2 * Math.PI * 8) * a.shakeAmpPx;
      }
      return { x, y };
    }
    elapsed -= segDur;
  }
  return { x: pts[0].x, y: pts[0].y };
}

/**
 * All 8 official Multiplayer Deathmatch arenas from `Lobby MapList DataTable` (`w_menurotastic_fetm.pc`)
 * in exact `1920x1080` Y-up coordinates (`reference/decompiled/deathmatch-maps-spec.json`).
 */
export const MULTIPLAYER_MAPS: MultiplayerMapDef[] = [
  {
    id: 'w_multi_dm_lvl09',
    name: 'Campagne — Moinho & Ponte',
    subtitle: '3 serras/lanças patrulhando bordas + pivô superior móvel',
    mode: 'deathmatch',
    bgmTrack: 'bgm_syl_foret',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 90,
    bgLayers: [
      { texture: 't_bgcampagne01_c' },
      { texture: 't_bgcampagne00_c' },
    ],
    spawns: DEFAULT_TOP_SPAWNS,
    attachPoints: [
      { id: 0, name: 'PRP_attachRef', x: 350, y: 300 },
      { id: 1, name: 'PRP_attachRef000', x: 960, y: 400 },
      { id: 2, name: 'PRP_attachRef001', x: 1570, y: 300 },
      {
        id: 3,
        name: 'PRP_attachRef002',
        x: 300,
        y: 850,
        motion: {
          kind: 'waypoints',
          points: [
            { x: 320, y: 830, durationSec: 4.5 },
            { x: 1600, y: 830, durationSec: 4.5 },
          ],
        },
      },
    ],
    walls: [
      ...defaultArenaWalls(0),
      {
        id: 3,
        name: 'MurTueur',
        cx: 125,
        cy: 15,
        halfW: 125,
        halfH: 25,
        rotDeg: 0,
        type: 'deadly',
        meshActor: 'o_Armes',
        motion: {
          kind: 'waypoints',
          points: [
            { x: 165, y: 18, durationSec: 10 },
            { x: 1795, y: 18, durationSec: 10 },
          ],
        },
      },
      {
        id: 4,
        name: 'MurTueurGauche',
        cx: 22,
        cy: 955,
        halfW: 25,
        halfH: 125,
        rotDeg: 0,
        type: 'deadly',
        meshActor: 'o_multi04_BordTueur',
        motion: {
          kind: 'waypoints',
          points: [
            { x: 22, y: 955, durationSec: 10 },
            { x: 22, y: 125, durationSec: 10 },
          ],
        },
      },
      {
        id: 5,
        name: 'MurTueurDroite',
        cx: 1898,
        cy: 125,
        halfW: 25,
        halfH: 125,
        rotDeg: 0,
        type: 'deadly',
        meshActor: 'o_multi04_BordTueur000',
        motion: {
          kind: 'waypoints',
          points: [
            { x: 1898, y: 125, durationSec: 10 },
            { x: 1898, y: 955, durationSec: 10 },
          ],
        },
      },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl02',
    name: 'Ville Marron — Cubo Giratório',
    subtitle: 'Cubo elástico 512x512 girando 90°/4s no centro',
    mode: 'deathmatch',
    bgmTrack: 'bgm_syl_ville',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 90,
    bgLayers: [
      { texture: 't_bgville2maron00_c' },
      { texture: 't_bgville2maron01_c' },
    ],
    spawns: DEFAULT_TOP_SPAWNS,
    attachPoints: [
      { id: 0, name: 'PRP_attachRef000', x: 340, y: 880 },
      { id: 1, name: 'PRP_attachRef001', x: 1580, y: 880 },
      { id: 2, name: 'PRP_attachRef002', x: 340, y: 220 },
      { id: 3, name: 'PRP_attachRef003', x: 1580, y: 220 },
    ],
    walls: [
      ...defaultArenaWalls(0),
      {
        id: 3,
        name: 'Mur001',
        cx: 960,
        cy: 540,
        halfW: 256,
        halfH: 256,
        rotDeg: 0,
        type: 'bouncy',
        meshActor: 'o_m04_cube',
        motion: { kind: 'rotate', degPerSec: 22.5 }, // 90 deg / 4s
      },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl01',
    name: 'Floresta Negra — Hélice Letal',
    subtitle: 'Barra mortal girando no centro entre 6 âncoras',
    mode: 'deathmatch',
    bgmTrack: 'bgm_syl_donjon',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 90,
    bgLayers: [
      { texture: 't_bgforet203_c' },
      { texture: 't_bgforet201_c' },
      { texture: 't_bgforet200_c' },
    ],
    spawns: DEFAULT_TOP_SPAWNS,
    attachPoints: [
      { id: 0, name: 'PRP_attachRef001', x: 720, y: 860 },
      { id: 1, name: 'PRP_attachRef002', x: 1200, y: 860 },
      { id: 2, name: 'PRP_attachRef003', x: 300, y: 540 },
      { id: 3, name: 'PRP_attachRef004', x: 1620, y: 540 },
      { id: 4, name: 'PRP_attachRef005', x: 720, y: 220 },
      { id: 5, name: 'PRP_attachRef006', x: 1200, y: 220 },
    ],
    walls: [
      ...defaultArenaWalls(0),
      {
        id: 3,
        name: 'Mur001',
        cx: 960,
        cy: 540,
        halfW: 25,
        halfH: 290,
        rotDeg: 0,
        type: 'deadly',
        meshActor: 'o_SerpentMulti03',
        motion: { kind: 'rotate', degPerSec: 24 }, // accelerates 12->24 deg/s in FlowGraph
      },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl04',
    name: 'Cemitério — Serras & Sapo Switch',
    subtitle: 'Alavanca do sapo dispara 1 de 4 serras circulares aleatórias por acionamento',
    mode: 'deathmatch',
    bgmTrack: 'bgm_syl_foret',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 90,
    bgLayers: [
      { texture: 't_bgcimet2ciel_c' },
      { texture: 't_bgcimet2tombes02_c' },
      { texture: 't_bgcimet200_c' },
    ],
    spawns: DEFAULT_TOP_SPAWNS,
    attachPoints: [
      { id: 0, name: 'PRP_attachRef000', x: 340, y: 860 },
      { id: 1, name: 'PRP_attachRef001', x: 1580, y: 860 },
      { id: 2, name: 'PRP_attachRef002', x: 1270, y: 220 },
      { id: 3, name: 'PRP_attachRef003', x: 650, y: 220 },
      { id: 4, name: 'PRP_attachRef004', x: 960, y: 540 },
    ],
    walls: [
      ...defaultArenaWalls(0),
      {
        id: 3,
        name: 'Scie001',
        cx: -200,
        cy: 860,
        halfW: 155,
        halfH: 155,
        rotDeg: 0,
        type: 'deadly',
        meshActor: 'o_tueur_md08',
        motion: {
          kind: 'waypoints',
          switchControlled: true,
          oneShot: true,
          points: [
            { x: -200, y: 860, durationSec: 8.9 },
            { x: 1580, y: 860, durationSec: 3.2 },
            { x: 1580, y: 220, durationSec: 6.9 },
            { x: 340, y: 220, durationSec: 3.2 },
            { x: 340, y: 860, durationSec: 2.0 },
          ],
        },
      },
      {
        id: 4,
        name: 'Scie002',
        cx: 2120,
        cy: 860,
        halfW: 155,
        halfH: 155,
        rotDeg: 0,
        type: 'deadly',
        meshActor: 'o_tueur_md08',
        motion: {
          kind: 'waypoints',
          switchControlled: true,
          oneShot: true,
          points: [
            { x: 2120, y: 860, durationSec: 8.9 },
            { x: 340, y: 860, durationSec: 3.2 },
            { x: 340, y: 220, durationSec: 6.9 },
            { x: 1580, y: 220, durationSec: 3.2 },
            { x: 1580, y: 860, durationSec: 2.0 },
          ],
        },
      },
      {
        id: 5,
        name: 'Scie003',
        cx: 2120,
        cy: 220,
        halfW: 155,
        halfH: 155,
        rotDeg: 0,
        type: 'deadly',
        meshActor: 'o_tueur_md08',
        motion: {
          kind: 'waypoints',
          switchControlled: true,
          oneShot: true,
          points: [
            { x: 2120, y: 220, durationSec: 8.9 },
            { x: 340, y: 220, durationSec: 3.2 },
            { x: 340, y: 860, durationSec: 6.9 },
            { x: 1580, y: 860, durationSec: 3.2 },
            { x: 1580, y: 220, durationSec: 2.0 },
          ],
        },
      },
      {
        id: 6,
        name: 'Scie004',
        cx: -200,
        cy: 220,
        halfW: 155,
        halfH: 155,
        rotDeg: 0,
        type: 'deadly',
        meshActor: 'o_tueur_md08',
        motion: {
          kind: 'waypoints',
          switchControlled: true,
          oneShot: true,
          points: [
            { x: -200, y: 220, durationSec: 8.9 },
            { x: 1580, y: 220, durationSec: 3.2 },
            { x: 1580, y: 860, durationSec: 6.9 },
            { x: 340, y: 860, durationSec: 3.2 },
            { x: 340, y: 220, durationSec: 2.0 },
          ],
        },
      },
    ],
    switchDef: {
      name: 'PST_MecaSwitch',
      x: 1890,
      y: 540,
      radius: 56,
    },
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl07',
    name: 'Castelo — Cantos Angulares',
    subtitle: 'Arena clássica com cunhas de pedra a 45° nas laterais',
    mode: 'deathmatch',
    bgmTrack: 'bgm_syl_campagne',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 90,
    bgLayers: [
      { texture: 't_bgchateau202_c' },
      { texture: 't_bgchateau201_c' },
      { texture: 't_bgchateau200_c' },
    ],
    spawns: DEFAULT_TOP_SPAWNS,
    attachPoints: [
      { id: 0, name: 'PRP_attachRef', x: 960, y: 540 },
      { id: 1, name: 'PRP_attachRef000', x: 500, y: 300 },
      { id: 2, name: 'PRP_attachRef001', x: 1420, y: 300 },
      { id: 3, name: 'PRP_attachRef002', x: 500, y: 780 },
      { id: 4, name: 'PRP_attachRef003', x: 1420, y: 780 },
    ],
    walls: [
      ...defaultArenaWalls(0),
      {
        id: 3,
        name: 'Prop005',
        cx: 0,
        cy: 540,
        halfW: 150,
        halfH: 150,
        rotDeg: 45,
        type: 'bouncy',
        meshActor: 'o_pierre_md01',
      },
      {
        id: 4,
        name: 'Prop007',
        cx: 1920,
        cy: 540,
        halfW: 150,
        halfH: 150,
        rotDeg: -45,
        type: 'bouncy',
        meshActor: 'o_pierre_md01',
      },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl10',
    name: 'Floresta — Clássica',
    subtitle: '4 âncoras com rebote puro nas bordas',
    mode: 'deathmatch',
    bgmTrack: 'bgm_syl_campagne',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 90,
    bgLayers: [
      { texture: 't_bgforet03_c' },
      { texture: 't_bgforet01_c' },
      { texture: 't_bgforet00_c' },
    ],
    spawns: DEFAULT_TOP_SPAWNS,
    attachPoints: [
      { id: 0, name: 'PRP_attachRef', x: 350, y: 250 },
      { id: 1, name: 'PRP_attachRef000', x: 960, y: 350 },
      { id: 2, name: 'PRP_attachRef001', x: 1570, y: 250 },
      { id: 3, name: 'PRP_attachRef002', x: 300, y: 850 },
    ],
    walls: defaultArenaWalls(0),
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl11',
    name: 'Vila dos Portões — Pilares Metálicos',
    subtitle: 'Dois pilares centrais elásticos dividindo a arena em 3 corredores',
    mode: 'deathmatch',
    bgmTrack: 'bgm_syl_donjon',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 90,
    bgLayers: [
      { texture: 't_bgvillemaron00_c' },
      { texture: 't_bgvillemaron01_c' },
    ],
    spawns: DEFAULT_TOP_SPAWNS,
    attachPoints: [
      { id: 0, name: 'PRP_attachRef001', x: 960, y: 540 },
      { id: 1, name: 'PRP_attachRef004', x: 500, y: 900 },
      { id: 2, name: 'PRP_attachRef005', x: 1420, y: 900 },
      { id: 3, name: 'PRP_attachRef006', x: 1420, y: 180 },
      { id: 4, name: 'PRP_attachRef007', x: 500, y: 180 },
    ],
    walls: [
      ...defaultArenaWalls(0),
      {
        id: 3,
        name: 'Prop006',
        cx: 653.6,
        cy: 540,
        halfW: 36,
        halfH: 175,
        rotDeg: 0,
        type: 'bouncy',
        meshActor: 'o_RebonMetal01_MD09',
      },
      {
        id: 4,
        name: 'Prop009',
        cx: 1269.3,
        cy: 540,
        halfW: 36,
        halfH: 175,
        rotDeg: 0,
        type: 'bouncy',
        meshActor: 'o_RebonMetal02_MD09',
      },
    ],
    vortices: [],
    pickups: [],
  },
  {
    id: 'w_multi_dm_lvl13',
    name: 'Porto Noturno — Âncoras Deslizantes',
    subtitle: '4 âncoras externas saem e retornam em eventos temporizados do FlowGraph',
    mode: 'deathmatch',
    bgmTrack: 'bgm_syl_cimetiere_alt',
    defaultScoreLimit: 10,
    defaultTimeLimitSec: 90,
    bgLayers: [
      { texture: 't_bgport202_c' },
      { texture: 't_bgport201_c' },
      { texture: 't_bgport200_c' },
      { texture: 't_bgport203_c' },
    ],
    spawns: DEFAULT_TOP_SPAWNS,
    // Exact 74.5s FlowGraph timeline decoded from w_multi_dm_lvl13_fetm.pc (0x18a08..0x1a9fd):
    // pairs + individual anchors shake for 0.5s, slide +/-600px off-screen in 2.0s, hold, then slide back in.
    attachPoints: [
      {
        id: 0,
        name: 'PRP_attach001',
        x: 1620,
        y: 780,
        motion: {
          kind: 'waypoints',
          points: [
            { x: 1620, y: 780, durationSec: 5.0 },
            { x: 1620, y: 780, durationSec: 0.5, shakeAmpPx: 8 },
            { x: 1620, y: 780, durationSec: 2.0 },
            { x: 2220, y: 780, durationSec: 5.0 },
            { x: 2220, y: 780, durationSec: 2.0 },
            { x: 1620, y: 780, durationSec: 19.5 },
            { x: 1620, y: 780, durationSec: 0.5, shakeAmpPx: 8 },
            { x: 1620, y: 780, durationSec: 2.0 },
            { x: 2220, y: 780, durationSec: 10.0 },
            { x: 2220, y: 780, durationSec: 2.0 },
            { x: 1620, y: 780, durationSec: 26.0 },
          ],
        },
      },
      {
        id: 1,
        name: 'PRP_attach002',
        x: 500,
        y: 300,
        motion: {
          kind: 'waypoints',
          points: [
            { x: 500, y: 300, durationSec: 5.0 },
            { x: 500, y: 300, durationSec: 0.5, shakeAmpPx: 8 },
            { x: 500, y: 300, durationSec: 2.0 },
            { x: -100, y: 300, durationSec: 5.0 },
            { x: -100, y: 300, durationSec: 2.0 },
            { x: 500, y: 300, durationSec: 27.0 },
            { x: 500, y: 300, durationSec: 0.5, shakeAmpPx: 8 },
            { x: 500, y: 300, durationSec: 2.0 },
            { x: -100, y: 300, durationSec: 12.0 },
            { x: -100, y: 300, durationSec: 2.0 },
            { x: 500, y: 300, durationSec: 16.5 },
          ],
        },
      },
      {
        id: 2,
        name: 'PRP_attach003',
        x: 1420,
        y: 300,
        motion: {
          kind: 'waypoints',
          points: [
            { x: 1420, y: 300, durationSec: 19.5 },
            { x: 1420, y: 300, durationSec: 0.5, shakeAmpPx: 8 },
            { x: 1420, y: 300, durationSec: 2.0 },
            { x: 2020, y: 300, durationSec: 5.0 },
            { x: 2020, y: 300, durationSec: 2.0 },
            { x: 1420, y: 300, durationSec: 22.0 },
            { x: 1420, y: 300, durationSec: 0.5, shakeAmpPx: 8 },
            { x: 1420, y: 300, durationSec: 2.0 },
            { x: 2020, y: 300, durationSec: 12.0 },
            { x: 2020, y: 300, durationSec: 2.0 },
            { x: 1420, y: 300, durationSec: 7.0 },
          ],
        },
      },
      {
        id: 3,
        name: 'PRP_attach004',
        x: 300,
        y: 780,
        motion: {
          kind: 'waypoints',
          points: [
            { x: 300, y: 780, durationSec: 19.5 },
            { x: 300, y: 780, durationSec: 0.5, shakeAmpPx: 8 },
            { x: 300, y: 780, durationSec: 2.0 },
            { x: -300, y: 780, durationSec: 5.0 },
            { x: -300, y: 780, durationSec: 2.0 },
            { x: 300, y: 780, durationSec: 31.5 },
            { x: 300, y: 780, durationSec: 0.5, shakeAmpPx: 8 },
            { x: 300, y: 780, durationSec: 2.0 },
            { x: -300, y: 780, durationSec: 9.5 },
            { x: -300, y: 780, durationSec: 2.0 },
          ],
        },
      },
      { id: 4, name: 'PRP_attach005', x: 960, y: 540 },
    ],
    walls: defaultArenaWalls(0),
    vortices: [],
    pickups: [],
  },
];

export function getMultiplayerMapById(mapId: string): MultiplayerMapDef {
  return MULTIPLAYER_MAPS.find((m) => m.id === mapId) ?? MULTIPLAYER_MAPS[0];
}
