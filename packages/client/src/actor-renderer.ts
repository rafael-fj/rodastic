import { Container, Mesh, MeshGeometry, Texture } from 'pixi.js';

export interface TrackChannel {
  t: number[];
  v: number[];
}

export interface NodeTrack {
  p?: TrackChannel;
  r?: TrackChannel;
  s?: TrackChannel;
}

export interface ActorClip {
  name: string;
  startTick: number;
  endTick: number;
  tracks: Record<string, NodeTrack>;
}

export interface ActorMeshData {
  texture: string;
  blend: 'alpha' | 'add';
  positions: number[];
  uvs: number[];
  indices: number[];
}

export interface ActorNodeDef {
  idx: number;
  name: string;
  parentIdx: number;
  pos: [number, number, number];
  quat: [number, number, number, number];
  scale: [number, number, number];
  mesh: ActorMeshData | null;
}

export interface ActorDef {
  name: string;
  nodes: ActorNodeDef[];
  rootMesh?: ActorMeshData;
  clips: ActorClip[];
}

export interface ActorTransformOptions {
  x: number;
  y: number;
  z?: number;
  rotDegZ?: number;
  scaleX?: number;
  scaleY?: number;
  scaleZ?: number;
  /** 'screen' converts 1920x1080 Y-down into BlitzTech Y-up; 'blitz' keeps Y-up world coordinates directly. */
  coordSpace?: 'screen' | 'blitz';
  perspective?: boolean;
  alpha?: number;
  tint?: number;
  clipIndex?: number;
  timeSec?: number;
  loop?: boolean;
  zOrderBias?: number;
}

export type ResolveTextureFn = (texId: string, timeMs: number) => Texture;

const CAM_X = 960;
const CAM_Y = 540;
const CAM_DIST = 7291.9238;
const VIEW_HEIGHT = 1080;

let actorsLoadPromise: Promise<Record<string, ActorDef>> | null = null;
let actorsCatalog: Record<string, ActorDef> = {};

export async function loadActorsCatalog(): Promise<Record<string, ActorDef>> {
  if (!actorsLoadPromise) {
    actorsLoadPromise = fetch('/assets/actors.json')
      .then((r) => (r.ok ? r.json() : { actors: {} }))
      .then((json: { actors?: Record<string, ActorDef> }) => {
        actorsCatalog = json.actors ?? {};
        return actorsCatalog;
      })
      .catch(() => {
        actorsCatalog = {};
        return actorsCatalog;
      });
  }
  return actorsLoadPromise;
}

export function getActorDef(name: string | null | undefined): ActorDef | undefined {
  if (!name) return undefined;
  return actorsCatalog[name.toLowerCase()];
}

export function collectActorTextureIds(names: Iterable<string>): string[] {
  const ids = new Set<string>();
  for (const name of names) {
    const def = getActorDef(name);
    if (!def) continue;
    if (def.rootMesh?.texture) ids.add(def.rootMesh.texture);
    for (const node of def.nodes) {
      if (node.mesh?.texture) ids.add(node.mesh.texture);
    }
  }
  return [...ids];
}

function findSegment(times: number[], tick: number): number {
  let lo = 0;
  let hi = times.length - 2;
  while (lo <= hi) {
    const mid = (lo + hi) >> 1;
    if (times[mid + 1] <= tick) lo = mid + 1;
    else if (times[mid] > tick) hi = mid - 1;
    else return mid;
  }
  return Math.max(0, Math.min(times.length - 2, lo));
}

function evalVec3(ch: TrackChannel, tick: number, out: Float32Array): void {
  const times = ch.t;
  const vals = ch.v;
  const n = times.length;
  if (n === 1 || tick <= times[0]) {
    out[0] = vals[0];
    out[1] = vals[1];
    out[2] = vals[2];
    return;
  }
  if (tick >= times[n - 1]) {
    const i = (n - 1) * 3;
    out[0] = vals[i];
    out[1] = vals[i + 1];
    out[2] = vals[i + 2];
    return;
  }
  const idx = findSegment(times, tick);
  const t0 = times[idx];
  const t1 = times[idx + 1];
  const u = t1 > t0 ? (tick - t0) / (t1 - t0) : 0;
  const a = idx * 3;
  const b = a + 3;
  out[0] = vals[a] + (vals[b] - vals[a]) * u;
  out[1] = vals[a + 1] + (vals[b + 1] - vals[a + 1]) * u;
  out[2] = vals[a + 2] + (vals[b + 2] - vals[a + 2]) * u;
}

function evalQuat(ch: TrackChannel, tick: number, out: Float32Array): void {
  const times = ch.t;
  const vals = ch.v;
  const n = times.length;
  let x: number;
  let y: number;
  let z: number;
  let w: number;
  if (n === 1 || tick <= times[0]) {
    x = vals[0];
    y = vals[1];
    z = vals[2];
    w = vals[3];
  } else if (tick >= times[n - 1]) {
    const i = (n - 1) * 4;
    x = vals[i];
    y = vals[i + 1];
    z = vals[i + 2];
    w = vals[i + 3];
  } else {
    const idx = findSegment(times, tick);
    const t0 = times[idx];
    const t1 = times[idx + 1];
    const u = t1 > t0 ? (tick - t0) / (t1 - t0) : 0;
    const a = idx * 4;
    const b = a + 4;
    const dot =
      vals[a] * vals[b] +
      vals[a + 1] * vals[b + 1] +
      vals[a + 2] * vals[b + 2] +
      vals[a + 3] * vals[b + 3];
    const sign = dot < 0 ? -1 : 1;
    x = vals[a] + (vals[b] * sign - vals[a]) * u;
    y = vals[a + 1] + (vals[b + 1] * sign - vals[a + 1]) * u;
    z = vals[a + 2] + (vals[b + 2] * sign - vals[a + 2]) * u;
    w = vals[a + 3] + (vals[b + 3] * sign - vals[a + 3]) * u;
  }
  const len = Math.hypot(x, y, z, w) || 1;
  out[0] = x / len;
  out[1] = y / len;
  out[2] = z / len;
  out[3] = w / len;
}

function composeTRS(
  p: ArrayLike<number>,
  q: ArrayLike<number>,
  s: ArrayLike<number>,
  out: Float32Array
): void {
  const x = q[0];
  const y = q[1];
  const z = q[2];
  const w = q[3];
  const x2 = x + x;
  const y2 = y + y;
  const z2 = z + z;
  const xx = x * x2;
  const xy = x * y2;
  const xz = x * z2;
  const yy = y * y2;
  const yz = y * z2;
  const zz = z * z2;
  const wx = w * x2;
  const wy = w * y2;
  const wz = w * z2;

  const sx = s[0];
  const sy = s[1];
  const sz = s[2];

  // Row-major 4x4 matrix M = T * R * S
  out[0] = (1 - (yy + zz)) * sx;
  out[1] = (xy - wz) * sy;
  out[2] = (xz + wy) * sz;
  out[3] = p[0];

  out[4] = (xy + wz) * sx;
  out[5] = (1 - (xx + zz)) * sy;
  out[6] = (yz - wx) * sz;
  out[7] = p[1];

  out[8] = (xz - wy) * sx;
  out[9] = (yz + wx) * sy;
  out[10] = (1 - (xx + yy)) * sz;
  out[11] = p[2];

  out[12] = 0;
  out[13] = 0;
  out[14] = 0;
  out[15] = 1;
}

function mulMat4(a: Float32Array, b: Float32Array, out: Float32Array): void {
  const a00 = a[0], a01 = a[1], a02 = a[2], a03 = a[3];
  const a10 = a[4], a11 = a[5], a12 = a[6], a13 = a[7];
  const a20 = a[8], a21 = a[9], a22 = a[10], a23 = a[11];

  out[0] = a00 * b[0] + a01 * b[4] + a02 * b[8];
  out[1] = a00 * b[1] + a01 * b[5] + a02 * b[9];
  out[2] = a00 * b[2] + a01 * b[6] + a02 * b[10];
  out[3] = a00 * b[3] + a01 * b[7] + a02 * b[11] + a03;

  out[4] = a10 * b[0] + a11 * b[4] + a12 * b[8];
  out[5] = a10 * b[1] + a11 * b[5] + a12 * b[9];
  out[6] = a10 * b[2] + a11 * b[6] + a12 * b[10];
  out[7] = a10 * b[3] + a11 * b[7] + a12 * b[11] + a13;

  out[8] = a20 * b[0] + a21 * b[4] + a22 * b[8];
  out[9] = a20 * b[1] + a21 * b[5] + a22 * b[9];
  out[10] = a20 * b[2] + a21 * b[6] + a22 * b[10];
  out[11] = a20 * b[3] + a21 * b[7] + a22 * b[11] + a23;

  out[12] = 0;
  out[13] = 0;
  out[14] = 0;
  out[15] = 1;
}

interface ActorMeshEntry {
  nodeIdx: number;
  data: ActorMeshData;
  posOut: Float32Array;
  geometry: MeshGeometry;
  mesh: Mesh;
  needsRepeat: boolean;
}

export class ActorInstance {
  public readonly container = new Container();
  private readonly def: ActorDef;
  private readonly entries: ActorMeshEntry[] = [];
  private readonly localMats: Float32Array[];
  private readonly worldMats: Float32Array[];
  private readonly evaluated: Uint8Array;
  private readonly tmpPos = new Float32Array(3);
  private readonly tmpQuat = new Float32Array(4);
  private readonly tmpScale = new Float32Array(3);
  private readonly instMat = new Float32Array(16);
  private readonly finalMat = new Float32Array(16);
  private readonly wrappedTexIds = new Set<Texture>();

  constructor(def: ActorDef) {
    this.def = def;
    this.container.sortableChildren = true;
    const n = Math.max(1, def.nodes.length);
    this.localMats = Array.from({ length: n }, () => new Float32Array(16));
    this.worldMats = Array.from({ length: n }, () => new Float32Array(16));
    this.evaluated = new Uint8Array(n);

    const buildEntry = (nodeIdx: number, data: ActorMeshData) => {
      const nV = Math.floor(data.positions.length / 3);
      const posOut = new Float32Array(nV * 2);
      const uvBuf = new Float32Array(data.uvs);
      const idxBuf = new Uint32Array(data.indices);
      let needsRepeat = false;
      for (let i = 0; i < data.uvs.length; i++) {
        if (data.uvs[i] < -0.001 || data.uvs[i] > 1.001) {
          needsRepeat = true;
          break;
        }
      }
      const geometry = new MeshGeometry({
        positions: posOut,
        uvs: uvBuf,
        indices: idxBuf,
      });
      const mesh = new Mesh({
        geometry,
        texture: Texture.WHITE,
      });
      mesh.blendMode = data.blend === 'add' ? 'add' : 'normal';
      this.container.addChild(mesh);
      this.entries.push({
        nodeIdx,
        data,
        posOut,
        geometry,
        mesh,
        needsRepeat,
      });
    };

    if (def.rootMesh) {
      buildEntry(0, def.rootMesh);
    }
    for (const node of def.nodes) {
      if (node.mesh) {
        buildEntry(node.idx, node.mesh);
      }
    }
  }

  public update(
    timeMs: number,
    opts: ActorTransformOptions,
    resolveTex: ResolveTextureFn
  ): void {
    const {
      x,
      y,
      z = 0,
      rotDegZ = 0,
      scaleX = 1,
      scaleY = 1,
      scaleZ = 1,
      coordSpace = 'screen',
      perspective = true,
      alpha = 1,
      tint = 0xffffff,
      clipIndex = 0,
      timeSec,
      loop = true,
      zOrderBias = 0,
    } = opts;

    const clip =
      this.def.clips[clipIndex] ?? this.def.clips[0] ?? null;
    let tick = 0;
    if (clip) {
      const rawTicks = (timeSec !== undefined ? timeSec : timeMs * 0.001) * 60;
      const span = clip.endTick - clip.startTick;
      if (span > 0) {
        tick = loop
          ? clip.startTick + (((rawTicks % span) + span) % span)
          : Math.min(clip.endTick, clip.startTick + Math.max(0, rawTicks));
      } else {
        tick = clip.startTick;
      }
    }

    // Build instance world matrix in BlitzTech Y-up coordinates
    const wy = coordSpace === 'screen' ? VIEW_HEIGHT - y : y;
    const radZ =
      ((coordSpace === 'screen' ? -rotDegZ : rotDegZ) * Math.PI) / 180;
    const half = radZ * 0.5;
    this.tmpPos[0] = x;
    this.tmpPos[1] = wy;
    this.tmpPos[2] = z;
    this.tmpQuat[0] = 0;
    this.tmpQuat[1] = 0;
    this.tmpQuat[2] = Math.sin(half);
    this.tmpQuat[3] = Math.cos(half);
    this.tmpScale[0] = scaleX;
    this.tmpScale[1] = scaleY;
    this.tmpScale[2] = scaleZ;
    composeTRS(this.tmpPos, this.tmpQuat, this.tmpScale, this.instMat);

    // Evaluate all node local matrices
    for (let i = 0; i < this.def.nodes.length; i++) {
      const node = this.def.nodes[i];
      const trk = clip?.tracks[i];
      if (trk?.p) evalVec3(trk.p, tick, this.tmpPos);
      else {
        this.tmpPos[0] = node.pos[0];
        this.tmpPos[1] = node.pos[1];
        this.tmpPos[2] = node.pos[2];
      }

      if (trk?.r) evalQuat(trk.r, tick, this.tmpQuat);
      else {
        this.tmpQuat[0] = node.quat[0];
        this.tmpQuat[1] = node.quat[1];
        this.tmpQuat[2] = node.quat[2];
        this.tmpQuat[3] = node.quat[3];
      }

      if (trk?.s) evalVec3(trk.s, tick, this.tmpScale);
      else {
        this.tmpScale[0] = node.scale[0];
        this.tmpScale[1] = node.scale[1];
        this.tmpScale[2] = node.scale[2];
      }

      composeTRS(this.tmpPos, this.tmpQuat, this.tmpScale, this.localMats[i]);
    }

    // Resolve parent hierarchy chains (arbitrary node ordering safe)
    this.evaluated.fill(0);
    const evalWorld = (i: number): void => {
      if (this.evaluated[i]) return;
      const pIdx = this.def.nodes[i]?.parentIdx ?? -1;
      if (pIdx >= 0 && pIdx < this.def.nodes.length && pIdx !== i) {
        evalWorld(pIdx);
        mulMat4(this.worldMats[pIdx], this.localMats[i], this.worldMats[i]);
      } else {
        this.worldMats[i].set(this.localMats[i]);
      }
      this.evaluated[i] = 1;
    };
    for (let i = 0; i < this.def.nodes.length; i++) {
      evalWorld(i);
    }

    // Transform & project each sub-mesh
    this.container.alpha = alpha;
    this.container.zIndex = zOrderBias;
    for (let ei = 0; ei < this.entries.length; ei++) {
      const entry = this.entries[ei];
      const tex = resolveTex(entry.data.texture, timeMs);
      if (entry.needsRepeat && !this.wrappedTexIds.has(tex)) {
        tex.source.style.addressMode = 'repeat';
        tex.source.style.update();
        this.wrappedTexIds.add(tex);
      }
      if (entry.mesh.texture !== tex) {
        entry.mesh.texture = tex;
      }
      entry.mesh.tint = tint;

      const nodeMat = this.worldMats[entry.nodeIdx] ?? this.worldMats[0];
      mulMat4(this.instMat, nodeMat, this.finalMat);
      const m = this.finalMat;
      const src = entry.data.positions;
      const dst = entry.posOut;
      const nV = dst.length >> 1;

      let zSum = 0;
      for (let v = 0; v < nV; v++) {
        const si = v * 3;
        const vx = src[si];
        const vy = src[si + 1];
        const vz = src[si + 2];

        const wx = m[0] * vx + m[1] * vy + m[2] * vz + m[3];
        const wyWorld = m[4] * vx + m[5] * vy + m[6] * vz + m[7];
        const wz = m[8] * vx + m[9] * vy + m[10] * vz + m[11];

        zSum += wz;
        const persp = perspective ? CAM_DIST / Math.max(120, CAM_DIST + wz) : 1;
        const di = v << 1;
        dst[di] = CAM_X + (wx - CAM_X) * persp;
        dst[di + 1] = CAM_Y - (wyWorld - CAM_Y) * persp;
      }

      entry.geometry.getBuffer('aPosition').update();
      entry.mesh.zIndex = zOrderBias - zSum / Math.max(1, nV);
    }
  }

  public destroy(): void {
    this.container.destroy({ children: true });
    for (const e of this.entries) {
      e.geometry.destroy();
    }
    this.entries.length = 0;
  }
}
