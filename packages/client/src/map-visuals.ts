import { ActorTransformOptions } from './actor-renderer.js';

export interface BgActorLayerSpec {
  actor: string;
  transform: ActorTransformOptions;
}

export interface StaticPropSpec {
  id: string;
  actor: string;
  layer: 'behind' | 'above';
  transform: ActorTransformOptions;
}

/**
 * Background actor stacks per Deathmatch map (coordinates directly from BlitzTech FETM chunks).
 * Maps whose painters use non-monotonic Z between layers supply explicit `zOrderBias` back-to-front.
 */
const MAP_BG_ACTORS: Record<string, BgActorLayerSpec[]> = {
  w_multi_dm_lvl01: [
    {
      actor: 'o_bg_forest2',
      transform: { x: 0, y: 0, z: 0, scaleX: 1, scaleY: 1, scaleZ: 1, coordSpace: 'blitz', perspective: true },
    },
  ],
  w_multi_dm_lvl02: [
    {
      actor: 'o_bg_villemarron2',
      transform: { x: 972.5017, y: 539.7871, z: 7288.6846, scaleX: 1.01, scaleY: 1.01, scaleZ: 1.01, coordSpace: 'blitz', perspective: true, zOrderBias: -20000 },
    },
    {
      actor: 'o_smokeonroof',
      transform: { x: -336.0633, y: 1724.4319, z: 7253.2437, scaleX: 1.44, scaleY: 1.96, scaleZ: 1.44, rotDegZ: -0.9969, coordSpace: 'blitz', perspective: true, zOrderBias: -10000 },
    },
  ],
  w_multi_dm_lvl04: [
    {
      actor: 'o_bg_cimetery2',
      transform: { x: 184, y: 60.6, z: -689.6, scaleX: 2, scaleY: 2, scaleZ: 2, coordSpace: 'blitz', perspective: true },
    },
  ],
  w_multi_dm_lvl07: [
    {
      actor: 'o_bgchateau2_far',
      transform: { x: 0, y: 0, z: 0, coordSpace: 'blitz', perspective: true },
    },
    {
      actor: 'o_bgchateau2',
      transform: { x: 0, y: 0, z: 0, coordSpace: 'blitz', perspective: true },
    },
    {
      actor: 'o_bgchateau2_flags',
      transform: { x: 0, y: 0, z: 0, coordSpace: 'blitz', perspective: true },
    },
    {
      actor: 'o_bgchateau2_clouds',
      transform: { x: 0, y: 0, z: 0, coordSpace: 'blitz', perspective: true },
    },
  ],
  w_multi_dm_lvl09: [
    {
      actor: 'o_fond_bgcampagne',
      transform: { x: 141.1041, y: 126.686, z: 5077.771, scaleX: 2.07, scaleY: 2.07, scaleZ: 2.07, coordSpace: 'blitz', perspective: true, zOrderBias: -60000 },
    },
    {
      actor: 'o_bg_campagnewater',
      transform: { x: 141.1041, y: 126.686, z: 5077.771, scaleX: 2.07, scaleY: 2.07, scaleZ: 2.07, coordSpace: 'blitz', perspective: true, zOrderBias: -50000 },
    },
    {
      actor: 'o_ruine_campagne',
      transform: { x: 1354.7953, y: 798.6173, z: 11539.4541, scaleX: 2, scaleY: 2, scaleZ: 2, coordSpace: 'blitz', perspective: true, zOrderBias: -40000 },
    },
    {
      actor: 'o_home_campagne',
      transform: { x: 2345.7185, y: 363.954, z: 13060.2275, scaleX: 2.18, scaleY: 2.18, scaleZ: 2.18, coordSpace: 'blitz', perspective: true, zOrderBias: -30000 },
    },
    {
      actor: 'o_smokeonroof',
      transform: { x: 2732.7131, y: 1604.1473, z: 13060.2275, scaleX: 1.44, scaleY: 3, scaleZ: 1.44, rotDegZ: -0.9969, coordSpace: 'blitz', perspective: true, zOrderBias: -25000 },
    },
    {
      actor: 'o_bg_campagne',
      transform: { x: 58.2556, y: 90.2, z: 6886.2607, scaleX: 2.32, scaleY: 2.32, scaleZ: 2.32, coordSpace: 'blitz', perspective: true, zOrderBias: -10000 },
    },
  ],
  w_multi_dm_lvl10: [
    {
      actor: 'o_bg_forest',
      transform: { x: 0, y: 0, z: 0, scaleX: 1, scaleY: 1, scaleZ: 1, coordSpace: 'blitz', perspective: true },
    },
  ],
  w_multi_dm_lvl11: [
    {
      actor: 'o_bg_villemarron',
      transform: { x: 972.5017, y: 539.7871, z: 7288.6846, scaleX: 1.01, scaleY: 1.01, scaleZ: 1.01, coordSpace: 'blitz', perspective: true, zOrderBias: -20000 },
    },
    {
      actor: 'o_smokeonroof',
      transform: { x: -346.253, y: 1723.3058, z: 7253.2437, scaleX: 1.44, scaleY: 1.96, scaleZ: 1.44, rotDegZ: -0.9969, coordSpace: 'blitz', perspective: true, zOrderBias: -10000 },
    },
    {
      actor: 'o_smokeonroof',
      transform: { x: 1487.3809, y: 1723.0898, z: 7253.2437, scaleX: 1, scaleY: 1, scaleZ: 1, rotDegZ: -0.9969, coordSpace: 'blitz', perspective: true, zOrderBias: -10000 },
    },
  ],
  w_multi_dm_lvl13: [
    {
      actor: 'o_bgport22_far',
      transform: { x: 0, y: 0, z: 0, coordSpace: 'blitz', perspective: true },
    },
    {
      actor: 'o_bgport22_water',
      transform: { x: 0, y: 0, z: 0, coordSpace: 'blitz', perspective: true },
    },
    {
      actor: 'o_bgport22',
      transform: { x: 0, y: 0, z: 0, coordSpace: 'blitz', perspective: true },
    },
    {
      actor: 'o_bgport22_clouds',
      transform: { x: 0, y: 0, z: 0, coordSpace: 'blitz', perspective: true },
    },
  ],
};

const MAP_STATIC_PROPS: Record<string, StaticPropSpec[]> = {
  w_multi_dm_lvl01: [
    {
      id: 'lvl01_beam',
      actor: 'o_poutremulti03',
      layer: 'behind',
      transform: { x: 935.7603, y: -20.7263, z: 0, coordSpace: 'blitz', perspective: false },
    },
    {
      id: 'lvl01_bolt',
      actor: 'o_vissemulti03',
      layer: 'above',
      transform: { x: 960, y: 540, z: 0, coordSpace: 'blitz', perspective: false, zOrderBias: 20 },
    },
  ],
};

export interface NacelleAttachmentSpec {
  id: string;
  actor: string;
  localDx: number;
  localDy: number;
}

export const LVL02_CUBE_NACELLES: NacelleAttachmentSpec[] = [
  { id: 'nacelle_ane', actor: 'o_nacelleane', localDx: -163.5874, localDy: 162.1677 },
  { id: 'nacelle_lapin', actor: 'o_nacellelapin', localDx: -158.9819, localDy: -162.0851 },
  { id: 'nacelle_mort', actor: 'o_nacellemort', localDx: 157.8435, localDy: -162.0851 },
  { id: 'nacelle_roi', actor: 'o_nacelleroi', localDx: 157.8435, localDy: 162.1677 },
];

export function getMapBackgroundActorConfigs(mapId: string): BgActorLayerSpec[] {
  return MAP_BG_ACTORS[mapId] ?? [];
}

export function getMapStaticProps(mapId: string): StaticPropSpec[] {
  return MAP_STATIC_PROPS[mapId] ?? [];
}

export function getMapBorderActorName(mapId: string, side: 'left' | 'right'): string {
  const s = side === 'left' ? 'l' : 'r';
  if (mapId === 'w_multi_dm_lvl07') return `o_rebondecranpierre_${s}`;
  if (mapId === 'w_multi_dm_lvl11') return `o_rebondecranmetal_${s}`;
  return `o_rebondecranbois_${s}`;
}

export function getSwitchActorConfigs(
  switchX: number,
  switchY: number,
  triggered: boolean,
  leverFlipped = triggered
): Array<{ id: string; actor: string; transform: ActorTransformOptions }> {
  // Mounted flush on right wall (x=1920, y=switchY), rotated +90 deg CCW in Y-up so local +Y faces LEFT into arena
  const baseX = switchX >= 1800 ? 1920 : switchX;
  const rotDeg = switchX >= 1800 ? 90 : -90;
  const dirX = switchX >= 1800 ? -1 : 1;
  return [
    {
      id: 'switch_back',
      actor: 'o_levierbase_back',
      transform: { x: baseX, y: switchY, rotDegZ: rotDeg, coordSpace: 'blitz', perspective: false, zOrderBias: 10 },
    },
    {
      id: 'switch_lever',
      actor: 'o_levierbois',
      transform: {
        x: baseX + dirX * 100,
        y: switchY,
        rotDegZ: rotDeg + (leverFlipped ? -18 : 18),
        coordSpace: 'blitz',
        perspective: false,
        zOrderBias: 20,
      },
    },
    {
      id: 'switch_base',
      actor: triggered ? 'o_levierbase_on' : 'o_levierbase_off',
      transform: { x: baseX, y: switchY, rotDegZ: rotDeg, coordSpace: 'blitz', perspective: false, zOrderBias: 30 },
    },
    {
      id: 'switch_frog',
      actor: triggered ? 'o_leviercrapeaudead' : 'o_leviercrapeau',
      transform: { x: baseX, y: switchY, rotDegZ: rotDeg, coordSpace: 'blitz', perspective: false, zOrderBias: 40 },
    },
  ];
}

export function resolveWallActorTransform(
  mapId: string,
  wall: { name: string; cx: number; cy: number; rotDeg: number; meshActor?: string }
): { actorName: string; transform: ActorTransformOptions } | null {
  if (wall.name === 'PRP_wallLeft') {
    return {
      actorName: getMapBorderActorName(mapId, 'left'),
      transform: { x: 0, y: 540, coordSpace: 'blitz', perspective: false },
    };
  }
  if (wall.name === 'PRP_background001') {
    return {
      actorName: getMapBorderActorName(mapId, 'right'),
      transform: { x: 1920, y: 540, coordSpace: 'blitz', perspective: false },
    };
  }

  if (wall.name === 'MurTueur') {
    return {
      actorName: 'o_armes',
      transform: {
        x: wall.cx,
        y: wall.cy,
        rotDegZ: wall.rotDeg,
        coordSpace: 'blitz',
        perspective: false,
        clipIndex: 2,
      },
    };
  }
  if (wall.name === 'MurTueurDroite' || wall.name === 'MurTueurGauche') {
    const isLeft = wall.cx < 960;
    return {
      actorName: 'o_multi04_bordtueur',
      transform: {
        x: isLeft ? 16 : 1904,
        y: wall.cy,
        rotDegZ: isLeft ? 0 : 180,
        coordSpace: 'blitz',
        perspective: false,
        zOrderBias: 8,
      },
    };
  }

  const rawActor = wall.meshActor?.toLowerCase();
  if (!rawActor || rawActor === 'o_cubeunit_black') {
    return null;
  }

  if (rawActor === 'o_serpentmulti03') {
    // Align opaque blade [-608.7..+19.3] (center -294.7) onto Mur001 physics bar center in Y-up
    const rotDeg = wall.rotDeg + 90;
    const rad = (rotDeg * Math.PI) / 180;
    const centerLocalX = -294.7;
    return {
      actorName: rawActor,
      transform: {
        x: wall.cx - Math.cos(rad) * centerLocalX,
        y: wall.cy - Math.sin(rad) * centerLocalX,
        rotDegZ: rotDeg,
        coordSpace: 'blitz',
        perspective: false,
      },
    };
  }

  if (rawActor === 'o_tueur_md08') {
    return {
      actorName: rawActor,
      transform: {
        x: wall.cx,
        y: wall.cy,
        rotDegZ: wall.rotDeg,
        scaleX: 0.8,
        scaleY: 0.8,
        scaleZ: 0.8,
        coordSpace: 'blitz',
        perspective: false,
      },
    };
  }

  if (rawActor === 'o_rebonmetal01_md09' || rawActor === 'o_rebonmetal02_md09') {
    return {
      actorName: 'o_rebonmetal02_md09',
      transform: {
        x: wall.cx,
        y: wall.cy,
        rotDegZ: rawActor === 'o_rebonmetal01_md09' ? 180 : 0,
        coordSpace: 'blitz',
        perspective: false,
      },
    };
  }

  return {
    actorName: rawActor,
    transform: {
      x: wall.cx,
      y: wall.cy,
      rotDegZ: wall.rotDeg,
      coordSpace: 'blitz',
      perspective: false,
    },
  };
}
