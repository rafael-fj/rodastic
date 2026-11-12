import {
  Application,
  Assets,
  Container,
  Graphics,
  ImageSource,
  Rectangle,
  Sprite,
  Text,
  Texture,
  TextureSource,
  TextureStyle,
  TilingSprite,
} from 'pixi.js';

ImageSource.defaultOptions.autoGenerateMipmaps = true;
TextureSource.defaultOptions.autoGenerateMipmaps = true;
TextureStyle.defaultOptions.scaleMode = 'linear';
TextureStyle.defaultOptions.mipmapFilter = 'linear';
import {
  ActorInstance,
  collectActorTextureIds,
  getActorDef,
  loadActorsCatalog,
} from './actor-renderer.js';
import {
  getMapBackgroundActorConfigs,
  getMapStaticProps,
  getSwitchActorConfigs,
  LVL02_CUBE_NACELLES,
  resolveWallActorTransform,
} from './map-visuals.js';
import {
  CHARACTER_NAMES,
  CharacterId,
  ClientPredictionController,
  GEM_POINTS,
  getMultiplayerMapById,
  MULTIPLAYER_MAPS,
  PLAYER_COLORS,
  PlayerColorId,
  PlayerInputCommand,
  PlayerStatus,
  ROTASTIC_PHYSICS_CONSTANTS as C,
  RotasticSimulation,
  SimEvent,
  WorldSimState,
} from '@rotastic/physics';
import {
  AppMessageSubType,
  BarrierPhaseCode,
  decodeAppControlMessage,
  decodeConnectAccept,
  decodePingClockSync,
  decodeWorldSnapshot,
  encodeAppControlMessage,
  encodeClientInputCmd,
  encodeConnectRequest,
  encodePingClockSyncReq,
  FinalStandingEntry,
  LobbyFullStatePayload,
  OnlineSessionState,
  PacketType,
  readBlitzHeader,
} from '@rotastic/protocol';
import { RotasticAudioManager } from './audio.js';

// ============================================================================
// Coordinate Conversion: World (1920x1080, Y-up) <-> Screen (1920x1080, Y-down)
// ============================================================================
const VIEW_WIDTH = 1920;
const VIEW_HEIGHT = 1080;

function worldToScreenX(wx: number): number {
  return wx;
}

function worldToScreenY(wy: number): number {
  return VIEW_HEIGHT - wy;
}

function drawArc(
  g: Graphics,
  cx: number,
  cy: number,
  radius: number,
  startRad: number,
  endRad: number,
  color: number,
  width: number,
  alpha = 1
): void {
  if (Math.abs(endRad - startRad) < 0.01) return;
  g.moveTo(cx + Math.cos(startRad) * radius, cy + Math.sin(startRad) * radius);
  g.arc(cx, cy, radius, startRad, endRad);
  g.stroke({ color, width, alpha, cap: 'round' });
}

/**
 * Renders the tapered crescent cooldown indicator (`CPlayerBeamFeedback` @ `0x00535D30`, `t_beam2_c`)
 * growing from the 9-o'clock left side toward 3-o'clock as `progress` (c1) charges 0 -> 1.
 */
function drawTaperedCooldownCrescent(
  g: Graphics,
  cx: number,
  cy: number,
  outerR: number,
  progress: number,
  color: number,
  flashWhite: boolean
): void {
  const clamped = Math.max(0.02, Math.min(0.999, progress));
  const span = clamped * Math.PI * 2;
  const startAng = Math.PI - span * 0.5;
  const endAng = Math.PI + span * 0.5;
  const steps = Math.max(12, Math.ceil((span / (Math.PI * 2)) * 44));
  const activeColor = flashWhite ? 0xffffff : color;

  const buildWedge = (maxThickness: number, minThickness: number): number[] => {
    const outerPts: number[] = [];
    const innerPts: number[] = [];
    for (let s = 0; s <= steps; s++) {
      const t = s / steps;
      const ang = startAng + span * t;
      const cosA = Math.cos(ang);
      const sinA = Math.sin(ang);
      // Taper from pointed trailing horn (t=0) up to blunt thick leading edge (t=1)
      const thick = minThickness + (maxThickness - minThickness) * Math.pow(t, 0.55);
      const rIn = outerR - thick;
      outerPts.push(cx + cosA * outerR, cy + sinA * outerR);
      innerPts.push(cx + cosA * rIn, cy + sinA * rIn);
    }
    for (let s = steps; s >= 0; s--) {
      outerPts.push(innerPts[s * 2], innerPts[s * 2 + 1]);
    }
    return outerPts;
  };

  // Soft inner radial corona band (matching t_beam2_c U-gradient)
  g.poly(buildWedge(19, 3.5)).fill({ color: activeColor, alpha: flashWhite ? 0.55 : 0.36 });
  // Crisp main tapered crescent body
  g.poly(buildWedge(11.5, 2.0)).fill({ color: activeColor, alpha: flashWhite ? 0.96 : 0.88 });
  // Bright outer rim highlight
  g.moveTo(cx + Math.cos(startAng) * outerR, cy + Math.sin(startAng) * outerR);
  g.arc(cx, cy, outerR, startAng, endAng);
  g.stroke({ color: flashWhite ? 0xffffff : activeColor, width: 2.5, alpha: 0.96, cap: 'butt' });
}

interface FloatingEffect {
  text: Text;
  vx: number;
  vy: number;
  life: number;
  maxLife: number;
}

interface TextureAnimMeta {
  frameCount: number;
  totalDurationMs: number;
  frameDurationsMs: number[];
  frameUrls: string[];
}

interface VfxParticle {
  sprite: Sprite;
  vx: number;
  vy: number;
  rotSpeed: number;
  startScale: number;
  endScale: number;
  startAlpha: number;
  life: number;
  maxLife: number;
}

export class RotasticWebClient {
  private app!: Application;
  private audio = new RotasticAudioManager();
  private ws: WebSocket | null = null;
  private seqNum = 1;
  private inputSeq = 1;

  public peerId = 0;
  public mySlotIndex = 0;
  public rttMs = 0;
  public clockOffsetMs = 0;
  public lobbyState: LobbyFullStatePayload | null = null;
  public standings: FinalStandingEntry[] = [];
  public showLobbyOverlay = true;

  // Local predictive simulation + interpolated display positions
  public localSim = new RotasticSimulation('w_multi_dm_lvl09');
  private predictor = new ClientPredictionController();
  private simAccumulator = 0;
  private displayPos: Array<{
    x: number;
    y: number;
    prevX: number;
    prevY: number;
    trails: Array<{ x: number; y: number }>;
  }> = [
    { x: 240, y: 1000, prevX: 240, prevY: 1000, trails: [] },
    { x: 1680, y: 1000, prevX: 1680, prevY: 1000, trails: [] },
    { x: 660, y: 1000, prevX: 660, prevY: 1000, trails: [] },
    { x: 1260, y: 1000, prevX: 1260, prevY: 1000, trails: [] },
  ];
  private lastPlayerStates: string[] = ['fly', 'fly', 'fly', 'fly'];
  private stateAnimElapsedMs: number[] = [0, 0, 0, 0];
  private facingDir: number[] = [1, -1, 1, -1];
  private bounceAnimTimer: number[] = [0, 0, 0, 0];
  private hurtAnimTimer: number[] = [0, 0, 0, 0];
  private cutAnimTimer: number[] = [0, 0, 0, 0];
  private killAnimTimer: number[] = [0, 0, 0, 0];
  private dropAnimTimer: number[] = [0, 0, 0, 0];
  private attachDenyFlashTimer: number[] = [0, 0, 0, 0];
  private orangeBurstTimer: number[] = [0, 0, 0, 0];
  private dizzyWasRopeCut: boolean[] = [false, false, false, false];

  // Input state
  private keysDown = new Set<string>();
  private pointerDown = false;
  private rightPointerDown = false;

  // PixiJS Scene Graph Layers
  private rootContainer = new Container();
  private bgContainer = new Container();
  private arenaBehindContainer = new Container();
  private arenaGraphics = new Graphics();
  private propsContainer = new Container();
  private ropesContainer = new Container();
  private ropesGraphics = new Graphics();
  private pickupsContainer = new Container();
  private pivotsContainer = new Container();
  private pivotFeedbackGraphics = new Graphics();
  private playersContainer = new Container();
  private fxContainer = new Container();

  private bgActorInstances: Array<{
    instance: ActorInstance;
    transform: import('./actor-renderer.js').ActorTransformOptions;
  }> = [];
  private propActorInstances = new Map<string, ActorInstance>();
  private pivotAuraInstances: ActorInstance[] = [];
  private pivotCoreInstances: ActorInstance[] = [];
  private pivotAuraSprites: Sprite[] = [];
  private pivotCoreSprites: Sprite[] = [];
  private vortexSprites: Sprite[] = [];
  private ropeBaseSprites: TilingSprite[] = [];
  private ropeBeamSprites: Sprite[] = [];
  private playerSprites: Sprite[] = [];
  private playerLabels: Text[] = [];
  private floatingEffects: FloatingEffect[] = [];
  private vfxParticles: VfxParticle[] = [];
  private vfxAtlasFrames = new Map<string, Texture[]>();
  private orangeTrailSpawnAcc = [0, 0, 0, 0];
  private texturesCache = new Map<string, Texture>();
  private textureAnims = new Map<string, TextureAnimMeta>();
  private textureUrlById = new Map<string, string>();
  private loadedBgMapId = '';

  // Match audio/announcer tracking
  private currentLeaderSlot = -1;
  private halfTimeAnnounced = false;
  private nearEndAnnounced = false;
  private lastGapAnnouncedScore = -1;

  // DOM References
  private hudPlayersEl = document.getElementById('hud-players')!;
  private hudModeLabelEl = document.getElementById('hud-mode-label')!;
  private hudTimerValEl = document.getElementById('hud-timer-val')!;
  private hudNetInfoEl = document.getElementById('hud-net-info')!;
  private hostReturnMenuBtn = document.getElementById('btn-host-return-menu') as HTMLButtonElement | null;
  private modalOverlayEl = document.getElementById('modal-overlay')!;

  private roomCode: string;
  private playerName: string;

  constructor() {
    const params = new URLSearchParams(window.location.search);
    this.roomCode = (params.get('room') || 'MAIN').toUpperCase();
    this.playerName =
      params.get('name') || `Knight_${Math.floor(100 + Math.random() * 899)}`;
  }

  public async init(): Promise<void> {
    this.app = new Application();
    await this.app.init({
      width: VIEW_WIDTH,
      height: VIEW_HEIGHT,
      backgroundAlpha: 0,
      antialias: true,
      resolution: window.devicePixelRatio || 1,
      autoDensity: true,
    });

    const appRoot = document.getElementById('app')!;
    appRoot.insertBefore(this.app.canvas, appRoot.firstChild);

    this.bgContainer.sortableChildren = true;
    this.arenaBehindContainer.sortableChildren = true;
    this.propsContainer.sortableChildren = true;
    this.pivotsContainer.sortableChildren = true;
    this.pivotFeedbackGraphics.zIndex = 0;
    this.pivotsContainer.addChild(this.pivotFeedbackGraphics);
    this.app.stage.addChild(this.rootContainer);
    this.rootContainer.addChild(
      this.bgContainer,
      this.arenaBehindContainer,
      this.arenaGraphics,
      this.propsContainer,
      this.pickupsContainer,
      this.pivotsContainer,
      this.ropesContainer,
      this.ropesGraphics,
      this.playersContainer,
      this.fxContainer
    );

    this.handleResize();
    window.addEventListener('resize', () => this.handleResize());

    this.setupInputListeners();
    await this.preloadCoreSprites();
    await this.ensureMapBackgrounds(this.localSim.state.mapId);
    this.initPlayerNodes();
    this.audio.setBgm('bgm_syl_menu');

    this.connectWebSocket();

    // 60 Hz Fixed Client Prediction + Sub-Frame Interpolated Render Loop
    let lastTime = performance.now();
    this.app.ticker.add(() => {
      const now = performance.now();
      const dt = Math.min(0.1, (now - lastTime) / 1000);
      lastTime = now;
      this.simAccumulator += dt;

      while (this.simAccumulator >= C.FIXED_DT) {
        this.stepClientTick();
        this.simAccumulator -= C.FIXED_DT;
      }

      const renderAlpha = Math.max(0, Math.min(1, this.simAccumulator / C.FIXED_DT));
      this.renderScene(dt, renderAlpha);
    });
  }

  private handleResize(): void {
    const w = window.innerWidth;
    const h = window.innerHeight;
    this.app.renderer.resize(w, h);
    const scale = Math.min(w / VIEW_WIDTH, h / VIEW_HEIGHT);
    this.rootContainer.scale.set(scale);
    this.rootContainer.x = (w - VIEW_WIDTH * scale) * 0.5;
    this.rootContainer.y = (h - VIEW_HEIGHT * scale) * 0.5;
  }

  private async preloadCoreSprites(): Promise<void> {
    const urlSet = new Set<string>([
      '/assets/textures/global/t_corde_c.png',
      '/assets/textures/global/t_cordebeam_c.png',
      '/assets/textures/global/t_cordeuberbeam_c.png',
      '/assets/textures/global/t_accroche01_c.png',
      '/assets/textures/global/t_accroche02_c.png',
      '/assets/textures/global/t_accrocheaura_c.png',
      '/assets/textures/global/t_pickupetoile_c.png',
      '/assets/textures/global/t_pickupglowblue_c.png',
      '/assets/textures/global/t_pickupglowgreen_c.png',
      '/assets/textures/global/t_pickupglowpink_c.png',
      '/assets/textures/global/t_pickupglowyellow_c.png',
      '/assets/textures/global/t_guiaccbleu_c.png',
      '/assets/textures/global/t_guiaccrouge_c.png',
      '/assets/textures/global/t_guiaccvert_c.png',
      '/assets/textures/global/t_guiaccjaune_c.png',
      '/assets/textures/arenas/t_fx_uberbeam_c.png',
      '/assets/textures/arenas/t_ubeambreak.png',
      '/assets/textures/arenas/t_beambreak.png',
      '/assets/textures/arenas/t_guicutfx_c.png',
      '/assets/textures/arenas/t_glissparticules_c.png',
      '/assets/textures/arenas/t_beamcorona_white_c.png',
    ]);

    try {
      const [manifestResp] = await Promise.all([
        fetch('/assets/manifest.json'),
        loadActorsCatalog(),
      ]);
      if (manifestResp.ok) {
        const manifest = (await manifestResp.json()) as {
          globalTextures?: Record<string, string>;
          backgroundTextures?: Record<string, string>;
          mapTextures?: Record<string, Record<string, string>>;
          textureAnimations?: Record<string, TextureAnimMeta>;
        };
        const registerTexMap = (tbl?: Record<string, string>) => {
          if (!tbl) return;
          for (const [id, url] of Object.entries(tbl)) {
            if (!this.textureUrlById.has(id)) {
              this.textureUrlById.set(id, url);
            }
          }
        };
        registerTexMap(manifest.globalTextures);
        registerTexMap(manifest.backgroundTextures);
        if (manifest.mapTextures) {
          for (const mapTbl of Object.values(manifest.mapTextures)) {
            registerTexMap(mapTbl);
          }
        }
        if (manifest.textureAnimations) {
          for (const [texId, meta] of Object.entries(manifest.textureAnimations)) {
            this.textureAnims.set(texId, meta);
            if (texId.startsWith('t_character_') || texId === 't_fx_wind00_c' || texId === 't_fx_smokew_c') {
              for (const u of meta.frameUrls) urlSet.add(u);
            }
          }
        }
      }
    } catch {
      // Fallback to single-frame base URLs if manifest fetch is unavailable
    }

    const colors: Array<'b' | 'r' | 'g' | 'y'> = ['b', 'r', 'g', 'y'];
    const chars = ['neo', 'elf', 'pig', 'skull'];
    const states = ['fly', 'attach', 'bounce', 'hurt', 'ropecut', 'cut', 'hitup', 'spawn', 'glue', 'slide'];

    for (const c of colors) {
      for (const ch of chars) {
        for (const st of states) {
          urlSet.add(`/assets/textures/global/t_character_${c}_${ch}_${st}_c.png`);
        }
      }
    }

    await this.loadTextureUrls(urlSet);

    // Crop t_cordebeam_c / t_cordeuberbeam_c top opaque half (32x30 inside 32x64) for clean full-span overlays
    for (const beamUrl of ['/assets/textures/global/t_cordebeam_c.png', '/assets/textures/global/t_cordeuberbeam_c.png']) {
      const fullTex = this.texturesCache.get(beamUrl);
      if (fullTex && fullTex.width >= 32 && fullTex.height >= 32) {
        const cropped = new Texture({
          source: fullTex.source,
          frame: new Rectangle(0, 2, 32, 28),
        });
        this.texturesCache.set(`${beamUrl}#cropped`, cropped);
      }
    }

    // Slice 2x2 VFX sprite-sheet atlases into 4 individual sub-textures
    for (const atlasUrl of [
      '/assets/textures/arenas/t_ubeambreak.png',
      '/assets/textures/arenas/t_beambreak.png',
      '/assets/textures/arenas/t_glissparticules_c.png',
    ]) {
      const atlasTex = this.texturesCache.get(atlasUrl);
      if (atlasTex && atlasTex.width >= 16 && atlasTex.height >= 16) {
        const hw = Math.floor(atlasTex.width * 0.5);
        const hh = Math.floor(atlasTex.height * 0.5);
        const frames: Texture[] = [];
        for (let row = 0; row < 2; row++) {
          for (let col = 0; col < 2; col++) {
            frames.push(
              new Texture({
                source: atlasTex.source,
                frame: new Rectangle(col * hw, row * hh, hw, hh),
              })
            );
          }
        }
        this.vfxAtlasFrames.set(atlasUrl, frames);
      }
    }
  }

  private async loadTextureUrls(urls: Iterable<string>): Promise<void> {
    const pending: string[] = [];
    for (const u of urls) {
      if (u && !this.texturesCache.has(u)) {
        pending.push(u);
      }
    }
    if (pending.length === 0) return;

    await Promise.all(
      pending.map(async (u) => {
        try {
          const tex = await Assets.load<Texture>({
            src: u,
            data: {
              autoGenerateMipmaps: true,
              scaleMode: 'linear',
              mipmapFilter: 'linear',
            },
          });
          if (tex?.source) {
            tex.source.autoGenerateMipmaps = true;
            tex.source.style.scaleMode = 'linear';
            tex.source.style.mipmapFilter = 'linear';
            tex.source.style.update();
            tex.source.update();
          }
          this.texturesCache.set(u, tex);
        } catch {
          // Fallback graphics will be used if any texture fails
        }
      })
    );
  }

  /**
   * Selects the active multi-frame TEXR sub-texture using native per-frame
   * durations (`0x00672B30` / `CPlayerAnimManager::Update` at `0x00548880`).
   */
  private resolveTextureById(
    texId: string,
    elapsedMs: number,
    loop = true,
    fallbackUrl?: string
  ): Texture | undefined {
    const baseUrl =
      this.textureUrlById.get(texId) ??
      fallbackUrl ??
      `/assets/textures/global/${texId}.png`;
    const anim = this.textureAnims.get(texId);
    if (!anim || anim.frameCount <= 1 || anim.frameUrls.length <= 1) {
      return this.texturesCache.get(baseUrl);
    }

    const durs = anim.frameDurationsMs;
    const totalMs =
      anim.totalDurationMs > 0
        ? anim.totalDurationMs
        : durs.reduce((acc, v) => acc + (v > 0 ? v : 100), 0);

    let frameIdx = anim.frameUrls.length - 1;
    if (totalMs > 0) {
      const t = loop
        ? ((elapsedMs % totalMs) + totalMs) % totalMs
        : Math.max(0, Math.min(totalMs - 0.001, elapsedMs));
      let acc = 0;
      for (let f = 0; f < anim.frameUrls.length; f++) {
        acc += durs[f] > 0 ? durs[f] : totalMs / anim.frameUrls.length;
        if (t < acc) {
          frameIdx = f;
          break;
        }
      }
    }

    return this.texturesCache.get(anim.frameUrls[frameIdx]) ?? this.texturesCache.get(baseUrl);
  }

  private resolvePlayerFrameTexture(
    colorCode: string,
    charId: string,
    stateSuffix: string,
    elapsedMs: number,
    loop = true
  ): Texture | undefined {
    const texId = `t_character_${colorCode}_${charId}_${stateSuffix}_c`;
    return this.resolveTextureById(texId, elapsedMs, loop, `/assets/textures/global/${texId}.png`);
  }

  private getOrCreatePropActor(
    key: string,
    actorName: string,
    parent: Container
  ): ActorInstance | null {
    const existing = this.propActorInstances.get(key);
    if (existing) {
      if (existing.container.parent !== parent) {
        parent.addChild(existing.container);
      }
      return existing;
    }
    const def = getActorDef(actorName);
    if (!def) return null;
    const inst = new ActorInstance(def);
    parent.addChild(inst.container);
    this.propActorInstances.set(key, inst);
    return inst;
  }

  private async ensureMapBackgrounds(mapId: string): Promise<void> {
    if (this.loadedBgMapId === mapId) return;
    this.loadedBgMapId = mapId;
    const map = getMultiplayerMapById(mapId);

    const bgActorConfigs = getMapBackgroundActorConfigs(mapId);
    const staticProps = getMapStaticProps(mapId);
    const neededActors = new Set<string>([
      'o_accroche',
      'o_accroche_mobile',
      'o_accrocheaura',
      ...bgActorConfigs.map((c) => c.actor),
      ...staticProps.map((p) => p.actor),
    ]);
    for (const w of map.walls) {
      const resolved = resolveWallActorTransform(mapId, w);
      if (resolved) neededActors.add(resolved.actorName);
    }
    if (mapId === 'w_multi_dm_lvl02') {
      for (const n of LVL02_CUBE_NACELLES) neededActors.add(n.actor);
    }
    if (map.switchDef) {
      for (const nm of [
        'o_levierbase_back',
        'o_levierbase_off',
        'o_levierbase_on',
        'o_levierbois',
        'o_leviercrapeau',
        'o_leviercrapeaudead',
      ]) {
        neededActors.add(nm);
      }
    }

    const urlSet = new Set<string>();
    for (const layer of map.bgLayers) {
      urlSet.add(`/assets/textures/backgrounds/${layer.texture}.png`);
    }
    const texIds = new Set<string>(collectActorTextureIds(neededActors));
    if (map.vortices.length > 0) {
      texIds.add('t_fx_wind00_c');
    }
    for (const texId of texIds) {
      const url = this.textureUrlById.get(texId);
      if (url) urlSet.add(url);
      const anim = this.textureAnims.get(texId);
      if (anim) {
        for (const fUrl of anim.frameUrls) urlSet.add(fUrl);
      }
    }

    await this.loadTextureUrls(urlSet);

    // Bail out if user switched map again while awaiting load
    if (this.loadedBgMapId !== mapId) return;

    this.bgContainer.removeChildren();
    for (const entry of this.bgActorInstances) {
      entry.instance.destroy();
    }
    this.bgActorInstances = [];

    for (const inst of this.propActorInstances.values()) {
      inst.destroy();
    }
    this.propActorInstances.clear();
    for (const inst of this.pivotAuraInstances) inst.destroy();
    for (const inst of this.pivotCoreInstances) inst.destroy();
    this.pivotAuraInstances = [];
    this.pivotCoreInstances = [];
    for (const spr of this.vortexSprites) spr.destroy();
    this.vortexSprites = [];
    for (const vp of this.vfxParticles) {
      this.fxContainer.removeChild(vp.sprite);
      vp.sprite.destroy();
    }
    this.vfxParticles = [];
    this.orangeTrailSpawnAcc.fill(0);
    this.arenaBehindContainer.removeChildren();
    this.propsContainer.removeChildren();

    const activeBgActors: Array<{
      instance: ActorInstance;
      transform: import('./actor-renderer.js').ActorTransformOptions;
    }> = [];
    for (const cfg of bgActorConfigs) {
      const def = getActorDef(cfg.actor);
      if (!def) continue;
      const inst = new ActorInstance(def);
      this.bgContainer.addChild(inst.container);
      activeBgActors.push({ instance: inst, transform: cfg.transform });
    }

    if (activeBgActors.length > 0) {
      this.bgActorInstances = activeBgActors;
    } else {
      for (const layer of map.bgLayers) {
        const tex = this.texturesCache.get(`/assets/textures/backgrounds/${layer.texture}.png`);
        if (!tex) continue;
        const spr = new Sprite(tex);
        const scale = Math.max(VIEW_WIDTH / tex.width, VIEW_HEIGHT / tex.height);
        spr.width = tex.width * scale;
        spr.height = tex.height * scale;
        spr.x = (VIEW_WIDTH - spr.width) * 0.5;
        spr.y = (VIEW_HEIGHT - spr.height) * 0.5;
        spr.alpha = layer.alpha ?? 1;
        this.bgContainer.addChild(spr);
      }
    }
  }

  private initPlayerNodes(): void {
    const cordeTex = this.texturesCache.get('/assets/textures/global/t_corde_c.png') ?? Texture.WHITE;
    const beamTex =
      this.texturesCache.get('/assets/textures/global/t_cordebeam_c.png#cropped') ?? Texture.WHITE;

    for (let i = 0; i < 4; i++) {
      const ropeBase = new TilingSprite({ texture: cordeTex, width: 42, height: 64 });
      ropeBase.anchor.set(0.5);
      ropeBase.visible = false;
      this.ropesContainer.addChild(ropeBase);
      this.ropeBaseSprites.push(ropeBase);

      const ropeBeam = new Sprite(beamTex);
      ropeBeam.anchor.set(0.5);
      ropeBeam.blendMode = 'add';
      ropeBeam.visible = false;
      this.ropesContainer.addChild(ropeBeam);
      this.ropeBeamSprites.push(ropeBeam);

      const spr = new Sprite(Texture.WHITE);
      spr.anchor.set(0.5);
      spr.width = 276;
      spr.height = 276;
      this.playersContainer.addChild(spr);
      this.playerSprites.push(spr);

      const lbl = new Text({
        text: `P${i + 1}`,
        style: {
          fontFamily: 'system-ui, sans-serif',
          fontSize: 18,
          fontWeight: 'bold',
          fill: 0xffffff,
          stroke: { color: 0x0f172a, width: 4 },
        },
      });
      lbl.anchor.set(0.5, 1.0);
      this.playersContainer.addChild(lbl);
      this.playerLabels.push(lbl);
    }
  }

  private setupInputListeners(): void {
    const resumeAudioOnGesture = () => {
      this.audio.unlockAndResume();
    };
    window.addEventListener('pointerdown', resumeAudioOnGesture, { capture: true, passive: true });
    window.addEventListener('keydown', resumeAudioOnGesture, { capture: true, passive: true });
    window.addEventListener('touchstart', resumeAudioOnGesture, { capture: true, passive: true });

    window.addEventListener('keydown', (e) => {
      if (document.activeElement?.tagName === 'INPUT' || document.activeElement?.tagName === 'SELECT') {
        return;
      }
      this.keysDown.add(e.code);
      if (e.code === 'Space' || e.code === 'ArrowUp' || e.code === 'ArrowDown') {
        e.preventDefault();
      }
      this.audio.preloadAll();
    });

    window.addEventListener('keyup', (e) => {
      this.keysDown.delete(e.code);
    });

    window.addEventListener('pointerdown', (e) => {
      if ((e.target as HTMLElement)?.closest('#modal-overlay, button, input, select')) {
        return;
      }
      if (e.button === 2) {
        this.rightPointerDown = true;
      } else {
        this.pointerDown = true;
      }
      this.audio.preloadAll();
    });

    window.addEventListener('pointerup', (e) => {
      if (e.button === 2) {
        this.rightPointerDown = false;
      } else {
        this.pointerDown = false;
      }
    });

    window.addEventListener('contextmenu', (e) => {
      if (!(e.target as HTMLElement)?.closest('#modal-overlay, input, select')) {
        e.preventDefault();
      }
    });

    document.getElementById('btn-toggle-lobby')?.addEventListener('click', () => {
      this.audio.play('select');
      this.showLobbyOverlay = !this.showLobbyOverlay;
      this.renderModalOverlay();
    });

    this.hostReturnMenuBtn?.addEventListener('click', () => {
      this.sendHostReturnToLobby();
    });

    const muteBtn = document.getElementById('btn-toggle-mute');
    muteBtn?.addEventListener('click', () => {
      this.audio.setMuted(!this.audio.muted);
      if (muteBtn) {
        muteBtn.textContent = this.audio.muted ? '🔇 Mudo' : '🔊 Áudio';
      }
    });
  }

  private sampleLocalInput(): PlayerInputCommand {
    const actionHeld =
      this.pointerDown ||
      this.keysDown.has('Space') ||
      this.keysDown.has('KeyW') ||
      this.keysDown.has('ArrowUp') ||
      this.keysDown.has('KeyJ') ||
      this.keysDown.has('Enter');

    const reverseHeld =
      this.rightPointerDown ||
      this.keysDown.has('ShiftLeft') ||
      this.keysDown.has('ShiftRight') ||
      this.keysDown.has('KeyS') ||
      this.keysDown.has('ArrowDown') ||
      this.keysDown.has('KeyE') ||
      this.keysDown.has('KeyK') ||
      this.keysDown.has('KeyX');

    let axisX = 0;
    let axisY = 0;
    if (this.keysDown.has('KeyA') || this.keysDown.has('ArrowLeft')) axisX -= 1;
    if (this.keysDown.has('KeyD') || this.keysDown.has('ArrowRight')) axisX += 1;
    if (this.keysDown.has('KeyS') || this.keysDown.has('ArrowDown')) axisY -= 1;
    if (this.keysDown.has('KeyW') || this.keysDown.has('ArrowUp')) axisY += 1;

    this.inputSeq++;
    return {
      seq: this.inputSeq,
      actionHeld,
      reverseHeld,
      axisX,
      axisY,
    };
  }

  private connectWebSocket(): void {
    if (this.ws) {
      this.ws.close();
    }
    const proto = window.location.protocol === 'https:' ? 'wss:' : 'ws:';
    const wsUrl = `${proto}//${window.location.host}/ws?room=${encodeURIComponent(
      this.roomCode
    )}&name=${encodeURIComponent(this.playerName)}`;

    const ws = new WebSocket(wsUrl);
    ws.binaryType = 'arraybuffer';
    this.ws = ws;

    ws.onopen = () => {
      // Layer 2 BlitzTech Handshake: Send 0x03 CONNECT_REQUEST
      const req = encodeConnectRequest(this.nextSeq());
      ws.send(req);
    };

    ws.onmessage = (ev) => {
      if (!(ev.data instanceof ArrayBuffer)) return;
      const u8 = new Uint8Array(ev.data);
      this.handleServerPacket(u8);
    };

    ws.onclose = () => {
      setTimeout(() => {
        if (this.ws === ws) this.connectWebSocket();
      }, 2000);
    };

    // Periodic 0x0B PING_CLOCK_SYNC every 1500ms
    setInterval(() => {
      if (this.ws && this.ws.readyState === WebSocket.OPEN && this.peerId > 0) {
        const ping = encodePingClockSyncReq(
          this.nextSeq(),
          this.peerId,
          Date.now() & 0xffffffff,
          0,
          this.rttMs
        );
        this.ws.send(ping);
      }
    }, 1500);
  }

  private nextSeq(): number {
    const s = this.seqNum;
    this.seqNum = (this.seqNum % 0xfffe) + 1;
    return s;
  }

  private handleServerPacket(u8: Uint8Array): void {
    const hdr = readBlitzHeader(u8);

    if (hdr.packetType === PacketType.CONNECT_ACCEPT) {
      const acc = decodeConnectAccept(u8);
      this.peerId = acc.assignedPeerId;
      // Send Layer 4 0x25:0x00 CLIENT_JOIN_HANDSHAKE
      const joinPkt = encodeAppControlMessage(
        this.nextSeq(),
        this.peerId,
        0,
        AppMessageSubType.CLIENT_JOIN_HANDSHAKE,
        { localPlayerCount: 1, name: this.playerName }
      );
      this.ws?.send(joinPkt);
      return;
    }

    if (hdr.packetType === PacketType.PING_CLOCK_SYNC) {
      const pong = decodePingClockSync(u8);
      const nowMs = Date.now() & 0xffffffff;
      const rtt = Math.max(1, (nowMs - pong.clientSendMs) & 0xffffffff);
      if (rtt < 5000) {
        this.rttMs = Math.round(this.rttMs * 0.6 + rtt * 0.4);
        this.clockOffsetMs = Math.round(pong.hostCurrentMs - (nowMs - this.rttMs * 0.5));
      }
      this.hudNetInfoEl.textContent = `Sala: ${this.roomCode} • RTT: ${this.rttMs} ms`;
      return;
    }

    if (hdr.packetType === PacketType.WORLD_SNAPSHOT) {
      const { snapshot } = decodeWorldSnapshot(u8);
      this.reconcileWorldSnapshot(snapshot.world, snapshot.events);
      return;
    }

    if (hdr.packetType === PacketType.APP_CONTROL_MESSAGE) {
      const msg = decodeAppControlMessage<Record<string, unknown>>(u8);
      this.handleAppControlMessage(msg.subType, msg.payload);
    }
  }

  private handleAppControlMessage(
    subType: AppMessageSubType,
    payload: Record<string, unknown>
  ): void {
    if (subType === AppMessageSubType.LOBBY_FULL_STATE_SYNC) {
      const prevState = this.lobbyState?.sessionState;
      this.lobbyState = payload as unknown as LobbyFullStatePayload;
      this.mySlotIndex = this.lobbyState.assignedSlotIndex;

      if (this.lobbyState.config.mapId !== this.localSim.state.mapId) {
        this.localSim.resetMatch(
          this.lobbyState.config.mapId,
          this.lobbyState.config.scoreLimit,
          this.lobbyState.config.timeLimitSec
        );
      }
      void this.ensureMapBackgrounds(this.lobbyState.config.mapId);

      if (this.lobbyState.sessionState === OnlineSessionState.LOADING_MAP) {
        // Confirm Barrier 1 (Map Loaded)
        const ack = encodeAppControlMessage(
          this.nextSeq(),
          this.peerId,
          0,
          AppMessageSubType.CLIENT_READY_PHASE_ACK,
          { phaseCode: BarrierPhaseCode.MAP_LOADED, ready: true }
        );
        this.ws?.send(ack);
      }

      if (
        this.lobbyState.sessionState === OnlineSessionState.IN_GAME &&
        prevState !== OnlineSessionState.IN_GAME
      ) {
        this.standings = [];
        this.showLobbyOverlay = false;
        this.predictor.reset();
        this.currentLeaderSlot = -1;
        this.halfTimeAnnounced = false;
        this.nearEndAnnounced = false;
        this.lastGapAnnouncedScore = -1;
        this.audio.play('gong', 0.55, 0.02);
        this.audio.playAnnouncer('match_start', 0);
        this.audio.setBgm(getMultiplayerMapById(this.lobbyState.config.mapId).bgmTrack);
      } else if (
        this.lobbyState.sessionState === OnlineSessionState.LOBBY_OPEN &&
        (prevState === OnlineSessionState.POST_MATCH_STANDINGS ||
          prevState === OnlineSessionState.IN_GAME)
      ) {
        this.standings = [];
        this.showLobbyOverlay = true;
        this.audio.setBgm('bgm_syl_menu');
      }

      if (this.lobbyState.sessionState === OnlineSessionState.POST_MATCH_STANDINGS) {
        this.audio.setBgm('bgm_syl_menu');
      }

      this.renderModalOverlay();
      this.updateHudDom();
      return;
    }

    if (subType === AppMessageSubType.HOST_PHASE_ADVANCE_CMD) {
      const targetPhase = Number(payload.targetPhase ?? 0) as BarrierPhaseCode;
      if (targetPhase === BarrierPhaseCode.LOBBY_READY) {
        // Server transitioned to LOADING_MAP; reply immediately with MAP_LOADED ack
        const ack = encodeAppControlMessage(
          this.nextSeq(),
          this.peerId,
          0,
          AppMessageSubType.CLIENT_READY_PHASE_ACK,
          { phaseCode: BarrierPhaseCode.MAP_LOADED, ready: true }
        );
        this.ws?.send(ack);
      } else if (targetPhase === BarrierPhaseCode.MAP_LOADED) {
        this.showLobbyOverlay = false;
        this.renderModalOverlay();
      } else if (
        targetPhase === BarrierPhaseCode.POST_MATCH_ACK &&
        Number(payload.sessionState ?? 0) === OnlineSessionState.LOBBY_OPEN
      ) {
        this.standings = [];
        this.showLobbyOverlay = true;
        this.renderModalOverlay();
      }
      return;
    }

    if (subType === AppMessageSubType.HOST_FINAL_STANDINGS) {
      this.standings = (payload.standings as FinalStandingEntry[]) || [];
      this.showLobbyOverlay = true;
      this.audio.play('podium', 0.6, 0.01);
      this.renderModalOverlay();
    }
  }

  private sendHostReturnToLobby(): void {
    if (!this.lobbyState || this.peerId !== this.lobbyState.leaderPeerId) return;
    this.audio.play('confirm');
    const pkt = encodeAppControlMessage(
      this.nextSeq(),
      this.peerId,
      0,
      AppMessageSubType.HOST_RETURN_TO_LOBBY,
      { reason: 'host_ended_match' }
    );
    this.ws?.send(pkt);
  }

  private reconcileWorldSnapshot(serverWorld: WorldSimState, events: SimEvent[]): void {
    if (serverWorld.mapId !== this.localSim.state.mapId) {
      this.localSim.resetMatch(
        serverWorld.mapId,
        serverWorld.scoreLimit,
        serverWorld.timeRemainingSec
      );
      this.predictor.reset();
      void this.ensureMapBackgrounds(serverWorld.mapId);
    }

    // Play audio & spawn floating text for simulation events
    for (const ev of events) {
      this.triggerSimEventFeedback(ev);
    }

    // Rewind to authoritative state and replay unacknowledged local inputs without
    // overwriting post-bounce velocity with stale pre-bounce snapshot velocity (#32)
    const { snapped } = this.predictor.reconcileSnapshot(
      this.localSim,
      serverWorld,
      this.mySlotIndex,
      C.FIXED_DT
    );

    if (snapped) {
      const localP = this.localSim.state.players[this.mySlotIndex];
      const disp = this.displayPos[this.mySlotIndex];
      if (localP && localP.active && disp) {
        const pos = this.predictor.getRenderPosition(localP, true);
        disp.x = pos.x;
        disp.y = pos.y;
        disp.prevX = pos.x;
        disp.prevY = pos.y;
      }
    }

    this.updateMatchAnnouncerChecks();
    this.updateHudDom();
  }

  private updateMatchAnnouncerChecks(): void {
    const state = this.localSim.state;
    const active = state.players.filter((p) => p.active);
    if (active.length >= 2) {
      const sorted = [...active].sort((a, b) => b.score - a.score || b.kills - a.kills);
      const top = sorted[0];
      const second = sorted[1];
      const soleLeader = top.score > 0 && top.score > second.score;

      if (soleLeader && top.slotIndex !== this.currentLeaderSlot) {
        this.currentLeaderSlot = top.slotIndex;
        const leaderKey = (`leader_${top.characterId}`) as `leader_${CharacterId}`;
        this.audio.playAnnouncer(leaderKey, 2500);
        this.spawnFloatingText(
          `👑 ${top.name} NA LIDERANÇA!`,
          VIEW_WIDTH * 0.5,
          VIEW_HEIGHT * 0.16,
          0xfacc15
        );
      } else if (
        soleLeader &&
        top.score - second.score >= 3 &&
        top.score > this.lastGapAnnouncedScore
      ) {
        this.lastGapAnnouncedScore = top.score;
        const wideKey = (`widening_${top.characterId}`) as `widening_${CharacterId}`;
        this.audio.playAnnouncer(wideKey, 6000);
      }
    }

    const totalSec = this.lobbyState?.config.timeLimitSec || 90;
    if (!this.halfTimeAnnounced && state.timeRemainingSec <= totalSec * 0.5 && state.timeRemainingSec > 20) {
      this.halfTimeAnnounced = true;
      this.audio.playAnnouncer('time_middle', 3000);
    }
    if (!this.nearEndAnnounced && state.timeRemainingSec <= 15 && state.timeRemainingSec > 0) {
      this.nearEndAnnounced = true;
      this.audio.play('timenearend', 0.45, 0.01);
      this.audio.playAnnouncer('time_nearend', 2500);
    }
  }

  private triggerSimEventFeedback(ev: SimEvent): void {
    const sx = worldToScreenX(ev.x);
    const sy = worldToScreenY(ev.y);
    const actor = ev.slotIndex !== undefined ? this.localSim.state.players[ev.slotIndex] : undefined;

    switch (ev.type) {
      case 'attach':
        this.audio.play('attach', 0.36, 0.08);
        if (ev.slotIndex !== undefined) {
          this.dropAnimTimer[ev.slotIndex] = 0;
          this.attachDenyFlashTimer[ev.slotIndex] = 0;
          if (ev.shieldType === 'orange') {
            // 0x0056C729 -> 0x99219C (c2_attach): distinct burst & feedback when emergency attach burns c2
            this.orangeBurstTimer[ev.slotIndex] = 0.28;
            this.audio.play('shieldbreak', 0.28, 0.08);
            this.spawnFloatingText('LARANJA!', sx, Math.max(80, sy - 20), 0xf97316);
          }
        }
        break;
      case 'attachdenied':
        this.audio.play('select', 0.28, 0.08);
        if (ev.slotIndex !== undefined) {
          this.attachDenyFlashTimer[ev.slotIndex] = 0.22;
        }
        break;
      case 'release':
        this.audio.play('release', 0.34, 0.08);
        break;
      case 'invert':
        this.audio.play('invert', 0.38, 0.08);
        break;
      case 'pickup': {
        const pts = ev.gemType ? GEM_POINTS[ev.gemType] : 100;
        this.audio.play(ev.gemType === 'diamond' ? 'diamond' : 'gem', 0.45, 0.06);
        this.spawnFloatingText(
          `+${pts}`,
          sx,
          sy,
          ev.gemType === 'diamond' ? 0x38bdf8 : 0xfbbf24
        );
        break;
      }
      case 'trick':
        this.audio.play('trick', 0.44, 0.07);
        if (ev.label === 'Get It!') {
          this.audio.playAnnouncer('getit', 4500);
        }
        this.spawnFloatingText(ev.label ?? '+150', sx, Math.max(80, sy - 24), 0xf97316);
        break;
      case 'shieldbreak':
        this.audio.play('shieldbreak', 0.55, 0.05);
        this.spawnShieldBreakParticles(sx, sy, ev.shieldType === 'orange');
        if (ev.slotIndex !== undefined) {
          this.hurtAnimTimer[ev.slotIndex] = 0.42;
          if (ev.shieldType === 'orange') {
            this.orangeBurstTimer[ev.slotIndex] = 0.34;
          }
        }
        this.spawnFloatingText(
          ev.shieldType === 'orange' ? 'ESCUDO LARANJA!' : 'ESCUDO!',
          sx,
          Math.max(80, sy - 20),
          ev.shieldType === 'orange' ? 0xf97316 : 0xf8fafc
        );
        break;
      case 'switchtoggle':
        this.audio.play('switchtoggle', 0.55, 0.03);
        this.spawnFloatingText(ev.label ?? 'SWITCH!', sx, Math.max(80, sy - 20), 0x22c55e);
        break;
      case 'spawndrop':
        this.audio.play('spawndrop', 0.42, 0.06);
        if (ev.slotIndex !== undefined) {
          this.dropAnimTimer[ev.slotIndex] = 0.45;
          this.hurtAnimTimer[ev.slotIndex] = 0;
          this.bounceAnimTimer[ev.slotIndex] = 0;
          this.cutAnimTimer[ev.slotIndex] = 0;
          this.killAnimTimer[ev.slotIndex] = 0;
          this.attachDenyFlashTimer[ev.slotIndex] = 0;
          this.orangeBurstTimer[ev.slotIndex] = 0;
          this.dizzyWasRopeCut[ev.slotIndex] = false;
        }
        break;
      case 'ropecut': {
        this.audio.play('ropecut', 0.58, 0.05);
        this.spawnCutImpactFx(sx, sy);
        if (ev.slotIndex !== undefined) {
          this.cutAnimTimer[ev.slotIndex] = 0.28;
        }
        if (ev.targetSlot !== undefined) {
          this.dizzyWasRopeCut[ev.targetSlot] = true;
          const cutVictim = this.localSim.state.players[ev.targetSlot];
          if (cutVictim) this.audio.playCharacterVoice(cutVictim.characterId, 'hurt', 0.5);
        }
        this.audio.playAnnouncer('cut', 4000);
        this.spawnFloatingText('CUT!', sx, sy, 0xf97316);
        break;
      }
      case 'slaughter':
        this.audio.play('slaughter', 0.65, 0.04);
        this.spawnCutImpactFx(sx, sy);
        if (ev.slotIndex !== undefined) {
          this.killAnimTimer[ev.slotIndex] = 0.35;
        }
        if (actor) this.audio.playCharacterVoice(actor.characterId, 'kill', 0.55);
        this.audio.playAnnouncer('kill_streak', 4500);
        this.spawnFloatingText('SLAUGHTER!', sx, sy, 0xef4444);
        break;
      case 'wallbreak':
        this.audio.play('wallbreak', 0.5, 0.05);
        this.spawnBounceSparks(sx, sy);
        this.spawnFloatingText('CRASH!', sx, sy, 0xe2e8f0);
        break;
      case 'bounce':
        this.audio.play(ev.targetSlot !== undefined ? 'pvp_bump' : 'bounce', 0.34, 0.09);
        this.spawnBounceSparks(sx, sy);
        if (ev.slotIndex !== undefined) {
          this.bounceAnimTimer[ev.slotIndex] = 0.24;
        }
        if (ev.targetSlot !== undefined) {
          this.bounceAnimTimer[ev.targetSlot] = 0.24;
        }
        break;
      case 'death':
        this.audio.play('death', 0.52, 0.05);
        if (actor) this.audio.playCharacterVoice(actor.characterId, 'death', 0.55);
        if (ev.targetSlot === undefined || ev.targetSlot === ev.slotIndex) {
          this.audio.playAnnouncer('suicide', 4500);
        }
        this.spawnFloatingText('KO!', sx, Math.min(VIEW_HEIGHT - 90, sy), 0xef4444);
        break;
      case 'respawn':
        this.audio.play('respawn', 0.35, 0.05);
        break;
      case 'suddendeath':
        this.audio.play('gong', 0.65, 0.01);
        this.audio.playAnnouncer('sudden_death', 1000);
        this.spawnFloatingText('MORTE SÚBITA!', VIEW_WIDTH * 0.5, VIEW_HEIGHT * 0.35, 0xef4444);
        break;
      case 'matchfinish':
        this.audio.play('multi_end', 0.6, 0.01);
        this.audio.playAnnouncer('time_end', 1000);
        break;
      default:
        break;
    }
  }

  private spawnFloatingText(label: string, x: number, y: number, colorHex: number): void {
    const txt = new Text({
      text: label,
      style: {
        fontFamily: 'system-ui, sans-serif',
        fontSize: 18,
        fontWeight: '900',
        fill: colorHex,
        stroke: { color: 0x090b11, width: 4 },
      },
    });
    txt.anchor.set(0.5);
    txt.x = x;
    txt.y = y;
    this.fxContainer.addChild(txt);
    this.floatingEffects.push({
      text: txt,
      vx: (Math.random() - 0.5) * 25,
      vy: -55,
      life: 0.9,
      maxLife: 0.9,
    });
  }

  private spawnVfxParticle(
    tex: Texture | undefined,
    x: number,
    y: number,
    opts: {
      vx?: number;
      vy?: number;
      rotation?: number;
      rotSpeed?: number;
      startScale?: number;
      endScale?: number;
      startAlpha?: number;
      life?: number;
      blendMode?: 'normal' | 'add';
    } = {}
  ): void {
    if (!tex) return;
    if (this.vfxParticles.length >= 220) {
      const oldest = this.vfxParticles.shift();
      if (oldest) {
        this.fxContainer.removeChild(oldest.sprite);
        oldest.sprite.destroy();
      }
    }
    const sprite = new Sprite(tex);
    sprite.anchor.set(0.5);
    sprite.x = x;
    sprite.y = y;
    sprite.rotation = opts.rotation ?? 0;
    const startScale = opts.startScale ?? 0.6;
    sprite.scale.set(startScale);
    const startAlpha = opts.startAlpha ?? 0.95;
    sprite.alpha = startAlpha;
    sprite.blendMode = opts.blendMode ?? 'normal';
    this.fxContainer.addChild(sprite);
    const life = opts.life ?? 0.5;
    this.vfxParticles.push({
      sprite,
      vx: opts.vx ?? 0,
      vy: opts.vy ?? 0,
      rotSpeed: opts.rotSpeed ?? 0,
      startScale,
      endScale: opts.endScale ?? startScale * 0.4,
      startAlpha,
      life,
      maxLife: life,
    });
  }

  private spawnShieldBreakParticles(sx: number, sy: number, isOrange: boolean): void {
    const atlasKey = isOrange
      ? '/assets/textures/arenas/t_ubeambreak.png'
      : '/assets/textures/arenas/t_beambreak.png';
    const frames = this.vfxAtlasFrames.get(atlasKey);
    if (!frames || frames.length === 0) return;
    const count = 6;
    for (let k = 0; k < count; k++) {
      const angle = (k / count) * Math.PI * 2 + (Math.random() - 0.5) * 0.45;
      const speed = 170 + Math.random() * 140;
      const tex = frames[k % frames.length];
      this.spawnVfxParticle(tex, sx + Math.cos(angle) * 28, sy + Math.sin(angle) * 28, {
        vx: Math.cos(angle) * speed,
        vy: Math.sin(angle) * speed,
        rotation: angle + Math.PI * 0.5,
        rotSpeed: (Math.random() - 0.5) * 6,
        startScale: isOrange ? 0.72 : 1.05,
        endScale: isOrange ? 0.45 : 0.65,
        startAlpha: 0.95,
        life: 0.36,
        blendMode: isOrange ? 'normal' : 'add',
      });
    }
  }

  private spawnCutImpactFx(sx: number, sy: number): void {
    const cutTex = this.texturesCache.get('/assets/textures/arenas/t_guicutfx_c.png');
    this.spawnVfxParticle(cutTex, sx, sy, {
      rotation: Math.random() * Math.PI * 2,
      rotSpeed: (Math.random() - 0.5) * 2.5,
      startScale: 0.45,
      endScale: 1.05,
      startAlpha: 0.95,
      life: 0.22,
      blendMode: 'add',
    });
    const starTex = this.texturesCache.get('/assets/textures/arenas/t_fx_uberbeam_c.png');
    for (let k = 0; k < 4; k++) {
      const a = Math.random() * Math.PI * 2;
      const sp = 110 + Math.random() * 110;
      this.spawnVfxParticle(starTex, sx, sy, {
        vx: Math.cos(a) * sp,
        vy: Math.sin(a) * sp,
        rotation: Math.random() * Math.PI * 2,
        rotSpeed: (Math.random() - 0.5) * 6,
        startScale: 0.65,
        endScale: 0.2,
        startAlpha: 0.95,
        life: 0.42,
      });
    }
  }

  private spawnBounceSparks(sx: number, sy: number): void {
    const frames = this.vfxAtlasFrames.get('/assets/textures/arenas/t_glissparticules_c.png');
    if (!frames || frames.length === 0) return;
    for (let k = 0; k < 2; k++) {
      const a = Math.random() * Math.PI * 2;
      const sp = 60 + Math.random() * 70;
      this.spawnVfxParticle(frames[Math.floor(Math.random() * frames.length)], sx, sy, {
        vx: Math.cos(a) * sp,
        vy: Math.sin(a) * sp,
        rotation: Math.random() * Math.PI * 2,
        rotSpeed: (Math.random() - 0.5) * 4,
        startScale: 0.65,
        endScale: 0.95,
        startAlpha: 0.85,
        life: 0.26,
        blendMode: 'add',
      });
    }
  }

  private stepClientTick(): void {
    if (this.lobbyState?.sessionState !== OnlineSessionState.IN_GAME) {
      return;
    }

    const cmd = this.sampleLocalInput();
    if (this.ws && this.ws.readyState === WebSocket.OPEN && this.peerId > 0) {
      const pkt = encodeClientInputCmd(this.nextSeq(), this.peerId, this.mySlotIndex, cmd);
      this.ws.send(pkt);
    }

    // Step local prediction & record input for authoritative snapshot replay
    this.predictor.stepPredictedTick(this.localSim, this.mySlotIndex, cmd, C.FIXED_DT);

    // Smoothly interpolate display positions & trails (1920x1080 space)
    for (let i = 0; i < 4; i++) {
      const p = this.localSim.state.players[i];
      const disp = this.displayPos[i];
      if (!p || !p.active || p.status === PlayerStatus.DEAD) {
        disp.trails = [];
        continue;
      }
      if (p.status === PlayerStatus.SPAWN_CURSOR) {
        disp.prevX = p.spawnCursorX;
        disp.prevY = C.SPAWN_DROP_Y;
        disp.x = p.spawnCursorX;
        disp.y = C.SPAWN_DROP_Y;
        disp.trails = [];
        continue;
      }
      disp.prevX = disp.x;
      disp.prevY = disp.y;
      const targetPos = this.predictor.getRenderPosition(p, i === this.mySlotIndex);
      const dist = Math.hypot(targetPos.x - disp.x, targetPos.y - disp.y);
      if (dist > 180 || (i === this.mySlotIndex && dist > 160)) {
        disp.x = targetPos.x;
        disp.y = targetPos.y;
        disp.prevX = targetPos.x;
        disp.prevY = targetPos.y;
      } else if (i === this.mySlotIndex) {
        disp.x = targetPos.x;
        disp.y = targetPos.y;
      } else {
        disp.x += (targetPos.x - disp.x) * 0.42;
        disp.y += (targetPos.y - disp.y) * 0.42;
      }
      disp.trails.unshift({ x: disp.x, y: disp.y });
      if (disp.trails.length > 14) disp.trails.pop();
    }
  }

  private renderScene(dt: number, renderAlpha = 1): void {
    const map = this.localSim.map;
    const state = this.localSim.state;
    const nowSec = performance.now() / 1000;
    const nowMs = nowSec * 1000;
    const resolveActorTex = (texId: string, tMs: number): Texture =>
      this.resolveTextureById(texId, tMs) ?? Texture.EMPTY;

    if (this.loadedBgMapId !== state.mapId) {
      void this.ensureMapBackgrounds(state.mapId);
    }

    for (const inst of this.propActorInstances.values()) {
      inst.container.visible = false;
    }

    for (const bgEntry of this.bgActorInstances) {
      bgEntry.instance.update(nowMs, bgEntry.transform, resolveActorTex);
    }

    // 1. Arena Bounds, Switch & OBB Obstacles
    this.arenaGraphics.clear();
    const staticProps = getMapStaticProps(map.id);
    for (let i = 0; i < staticProps.length; i++) {
      const sp = staticProps[i];
      const parent = sp.layer === 'behind' ? this.arenaBehindContainer : this.propsContainer;
      const inst = this.getOrCreatePropActor(`static:${map.id}:${i}:${sp.id}`, sp.actor, parent);
      if (inst) {
        inst.container.visible = true;
        inst.update(nowMs, sp.transform, resolveActorTex);
      }
    }

    // Interactive Switch (e.g. w_multi_dm_lvl04 Frog Lever)
    if (map.switchDef) {
      let switchRendered = false;
      const switchConfigs = getSwitchActorConfigs(
        map.switchDef.x,
        map.switchDef.y,
        state.switchCooldownSec > 0,
        state.switchReversed
      );
      for (const sc of switchConfigs) {
        const inst = this.getOrCreatePropActor(
          `${sc.id}:${sc.actor}`,
          sc.actor,
          this.propsContainer
        );
        if (inst) {
          inst.container.visible = true;
          inst.update(nowMs, sc.transform, resolveActorTex);
          switchRendered = true;
        }
      }
      if (!switchRendered) {
        const sx = worldToScreenX(map.switchDef.x);
        const sy = worldToScreenY(map.switchDef.y);
        const sr = map.switchDef.radius;
        const activeColor = state.switchReversed ? 0x22c55e : 0xf59e0b;
        this.arenaGraphics
          .circle(sx, sy, sr)
          .fill({ color: activeColor, alpha: 0.25 })
          .stroke({ color: activeColor, width: 4 });
        this.arenaGraphics
          .circle(sx, sy, sr * 0.42)
          .fill({ color: activeColor, alpha: 0.9 });
      }
    }

    // Gravity Vortices
    while (this.vortexSprites.length < map.vortices.length) {
      const spr = new Sprite(Texture.EMPTY);
      spr.anchor.set(0.5);
      spr.blendMode = 'add';
      this.propsContainer.addChild(spr);
      this.vortexSprites.push(spr);
    }
    for (let vi = 0; vi < this.vortexSprites.length; vi++) {
      this.vortexSprites[vi].visible = false;
    }
    for (let vi = 0; vi < map.vortices.length; vi++) {
      const v = map.vortices[vi];
      const vx = worldToScreenX(v.x);
      const vy = worldToScreenY(v.y);
      const windTex = this.resolveTextureById('t_fx_wind00_c', nowMs + vi * 350);
      const spr = this.vortexSprites[vi];
      if (windTex && windTex !== Texture.EMPTY) {
        spr.texture = windTex;
        spr.x = vx;
        spr.y = vy;
        spr.width = v.radius * 2.15;
        spr.height = v.radius * 2.15;
        spr.rotation = (v.strength >= 0 ? -1 : 1) * (nowSec * 1.35 + vi);
        spr.alpha = 0.72;
        spr.visible = true;
      } else {
        const col = v.strength >= 0 ? 0x8b5cf6 : 0xec4899;
        this.arenaGraphics
          .circle(vx, vy, v.radius)
          .fill({ color: col, alpha: 0.12 })
          .stroke({ color: col, width: 2, alpha: 0.55 });
      }
    }

    // OBB Walls & Saw/Cube/Beam Obstacles
    for (let wi = 0; wi < state.walls.length; wi++) {
      const w = state.walls[wi];
      if (!w.active) continue;

      let wallActorRendered = false;
      const resolvedWall = resolveWallActorTransform(map.id, {
        name: w.name,
        cx: w.cx,
        cy: w.cy,
        rotDeg: (w.rotRad * 180) / Math.PI,
        meshActor: w.meshActor,
      });
      if (resolvedWall) {
        const wallInst = this.getOrCreatePropActor(
          `wall:${map.id}:${wi}:${w.name}:${resolvedWall.actorName}`,
          resolvedWall.actorName,
          this.propsContainer
        );
        if (wallInst) {
          wallInst.container.visible = true;
          wallInst.update(nowMs, resolvedWall.transform, resolveActorTex);
          wallActorRendered = true;
        }
      }

      if (map.id === 'w_multi_dm_lvl02' && w.name === 'Mur001') {
        const cos = Math.cos(w.rotRad);
        const sin = Math.sin(w.rotRad);
        for (const n of LVL02_CUBE_NACELLES) {
          const nacelleInst = this.getOrCreatePropActor(
            `nacelle:${n.id}`,
            n.actor,
            this.propsContainer
          );
          if (nacelleInst) {
            nacelleInst.container.visible = true;
            nacelleInst.update(
              nowMs,
              {
                x: w.cx + n.localDx * cos - n.localDy * sin,
                y: w.cy + n.localDx * sin + n.localDy * cos,
                rotDegZ: 0,
                coordSpace: 'blitz',
                perspective: false,
                zOrderBias: 5,
              },
              resolveActorTex
            );
          }
        }
      }

      if (wallActorRendered || w.name === 'WallTop' || w.name === 'PST_MecaSwitch_Collider') {
        continue;
      }

      const isSawDisc =
        w.type === 'deadly' &&
        (w.meshActor?.includes('scie') ||
          (Math.abs(w.halfW - w.halfH) <= 4 && w.halfW >= 32));

      if (isSawDisc) {
        const scx = worldToScreenX(w.cx);
        const scy = worldToScreenY(w.cy);
        const r = w.halfW;
        const teeth = 10;
        const pts: number[] = [];
        for (let t = 0; t < teeth * 2; t++) {
          const ang = -w.rotRad + (t * Math.PI) / teeth;
          const tr = t % 2 === 0 ? r * 1.05 : r * 0.78;
          pts.push(scx + Math.cos(ang) * tr, scy + Math.sin(ang) * tr);
        }
        this.arenaGraphics
          .poly(pts)
          .fill({ color: 0x7f1d1d, alpha: 0.92 })
          .stroke({ color: 0xef4444, width: 3.5 });
        this.arenaGraphics
          .circle(scx, scy, r * 0.28)
          .fill({ color: 0x991b1b })
          .stroke({ color: 0xfca5a5, width: 2 });
        continue;
      }

      const cos = Math.cos(w.rotRad);
      const sin = Math.sin(w.rotRad);
      const localCorners: Array<[number, number]> = [
        [-w.halfW, -w.halfH],
        [w.halfW, -w.halfH],
        [w.halfW, w.halfH],
        [-w.halfW, w.halfH],
      ];
      const polyPts: number[] = [];
      for (const [lx, ly] of localCorners) {
        const wx = w.cx + lx * cos - ly * sin;
        const wy = w.cy + lx * sin + ly * cos;
        polyPts.push(worldToScreenX(wx), worldToScreenY(wy));
      }

      const fillColor =
        w.type === 'deadly'
          ? 0x7f1d1d
          : w.type === 'bouncy'
            ? w.meshActor?.includes('cube')
              ? 0x1e3a8a
              : 0x1e293b
            : w.type === 'breakable'
              ? 0x78350f
              : 0x0f172a;
      const strokeColor =
        w.type === 'deadly'
          ? 0xef4444
          : w.type === 'bouncy'
            ? 0x38bdf8
            : w.type === 'breakable'
              ? 0xf59e0b
              : 0x64748b;

      this.arenaGraphics
        .poly(polyPts)
        .fill({ color: fillColor, alpha: 0.88 })
        .stroke({ color: strokeColor, width: 3 });
    }

    // 2. Dynamic Attach Points (Pivots) with animated ACTR aura/core & 90-deg target sector
    this.ropesGraphics.clear();
    this.pivotFeedbackGraphics.clear();
    this.pivotsContainer.sortableChildren = true;

    const auraDef = getActorDef('o_accrocheaura');
    const staticCoreDef = getActorDef('o_accroche');
    const mobileCoreDef = getActorDef('o_accroche_mobile');
    const usePivotActors = Boolean(auraDef && (staticCoreDef || mobileCoreDef));

    if (usePivotActors) {
      while (this.pivotAuraInstances.length < state.attachPoints.length) {
        // Every Deathmatch package (including lvl13 sliding anchors) uses o_accroche (t_accroche01_c)
        const coreActorDef = staticCoreDef ?? mobileCoreDef!;
        const aInst = new ActorInstance(auraDef!);
        aInst.container.zIndex = 1;
        const cInst = new ActorInstance(coreActorDef);
        cInst.container.zIndex = 2;
        this.pivotsContainer.addChild(aInst.container, cInst.container);
        this.pivotAuraInstances.push(aInst);
        this.pivotCoreInstances.push(cInst);
      }
      for (let k = 0; k < this.pivotAuraInstances.length; k++) {
        const vis = k < state.attachPoints.length;
        this.pivotAuraInstances[k].container.visible = vis;
        this.pivotCoreInstances[k].container.visible = vis;
      }
    }

    const auraTex = this.texturesCache.get('/assets/textures/global/t_accrocheaura_c.png');
    const coreTex = this.texturesCache.get('/assets/textures/global/t_accroche01_c.png');
    if (!usePivotActors) {
      while (this.pivotAuraSprites.length < state.attachPoints.length) {
        const aSpr = new Sprite(auraTex ?? Texture.EMPTY);
        aSpr.anchor.set(0.5);
        aSpr.width = 92;
        aSpr.height = 92;
        const cSpr = new Sprite(coreTex ?? Texture.EMPTY);
        cSpr.anchor.set(0.5);
        cSpr.width = 46;
        cSpr.height = 46;
        this.pivotsContainer.addChild(aSpr, cSpr);
        this.pivotAuraSprites.push(aSpr);
        this.pivotCoreSprites.push(cSpr);
      }
    }
    for (let k = 0; k < this.pivotAuraSprites.length; k++) {
      const vis = !usePivotActors && k < state.attachPoints.length && Boolean(coreTex);
      this.pivotAuraSprites[k].visible = vis;
      this.pivotCoreSprites[k].visible = vis;
    }

    const pivotTargetByPlayer = new Map<number, number>();
    for (const p of state.players) {
      if (!p.active) continue;
      if (p.status === PlayerStatus.FREE_FALL) {
        const np = this.localSim.findNearestAttachPoint(p.x, p.y);
        if (np) pivotTargetByPlayer.set(p.slotIndex, np.id);
      } else if (p.status === PlayerStatus.SWINGING && p.attachedPivotId >= 0) {
        pivotTargetByPlayer.set(p.slotIndex, p.attachedPivotId);
      }
    }

    // Native CAttachPointFeedback fixed 90-degree slot quadrants around pivot
    const SLOT_QUADRANT_ANGLES: Array<[number, number]> = [
      [-Math.PI, -Math.PI * 0.5], // Slot 0 (Top-Left)
      [-Math.PI * 0.5, 0], // Slot 1 (Top-Right)
      [Math.PI * 0.5, Math.PI], // Slot 2 (Bottom-Left)
      [0, Math.PI * 0.5], // Slot 3 (Bottom-Right)
    ];

    for (let k = 0; k < state.attachPoints.length; k++) {
      const ap = state.attachPoints[k];
      const px = worldToScreenX(ap.x);
      const py = worldToScreenY(ap.y);

      if (usePivotActors) {
        const auraInst = this.pivotAuraInstances[k];
        const coreInst = this.pivotCoreInstances[k];
        auraInst.update(
          nowMs + k * 450,
          {
            x: ap.x,
            y: ap.y,
            coordSpace: 'blitz',
            perspective: false,
            alpha: 1.0,
          },
          resolveActorTex
        );
        coreInst.update(
          nowMs,
          {
            x: ap.x,
            y: ap.y,
            coordSpace: 'blitz',
            perspective: false,
          },
          resolveActorTex
        );
      } else if (auraTex && coreTex) {
        const aSpr = this.pivotAuraSprites[k];
        const cSpr = this.pivotCoreSprites[k];
        aSpr.texture = auraTex;
        cSpr.texture = coreTex;
        aSpr.x = px;
        aSpr.y = py;
        aSpr.alpha = 0.72 + Math.sin(nowSec * 4 + k) * 0.14;
        cSpr.x = px;
        cSpr.y = py;
      } else {
        this.arenaGraphics
          .circle(px, py, 20)
          .fill({ color: 0x475569, alpha: 0.92 })
          .stroke({ color: 0xf8fafc, width: 3 });
      }

      // Per-slot 90-deg quadrant wedge on pivot (`CAttachPointFeedback` @ 0x0052FD43 / 0x0056C61D):
      // colored when player has grapple charge ready (c1>=1, c2>=1 or invuln), dimmed grey while on cooldown,
      // rendered behind o_accrocheaura (zIndex=1) and o_accroche (zIndex=2)
      for (const [slotIdx, pid] of pivotTargetByPlayer.entries()) {
        if (pid !== ap.id) continue;
        const tp = state.players[slotIdx];
        const canAttach = this.localSim.canPlayerAttach(tp);
        const colHex = (PLAYER_COLORS[tp.colorId] ?? PLAYER_COLORS[0]).hex;
        const [startA, endA] = SLOT_QUADRANT_ANGLES[slotIdx % 4];
        const innerR = 16;
        const outerR = canAttach ? 44 : 30;
        const wedgeColor = canAttach ? colHex : 0x94a3b8;
        const wedgeAlpha = canAttach ? 0.68 : 0.45;
        this.pivotFeedbackGraphics
          .moveTo(px + Math.cos(startA) * outerR, py + Math.sin(startA) * outerR)
          .arc(px, py, outerR, startA, endA, false)
          .lineTo(px + Math.cos(endA) * innerR, py + Math.sin(endA) * innerR)
          .arc(px, py, innerR, endA, startA, true)
          .closePath()
          .fill({ color: wedgeColor, alpha: wedgeAlpha });
        if (!canAttach) {
          this.pivotFeedbackGraphics
            .moveTo(px + Math.cos(startA) * (outerR - 3), py + Math.sin(startA) * (outerR - 3))
            .arc(px, py, outerR - 3, startA, endA, false)
            .lineTo(px + Math.cos(endA) * innerR, py + Math.sin(endA) * innerR)
            .arc(px, py, innerR, endA, startA, true)
            .closePath()
            .fill({ color: colHex, alpha: 0.25 });
        }
      }
    }

    // Identify leader (highest score > 0) for Golden Crown
    let leaderSlot = -1;
    let bestScore = 0;
    for (const p of state.players) {
      if (p.active && p.score > bestScore) {
        bestScore = p.score;
        leaderSlot = p.slotIndex;
      }
    }

    // 3. Ropes, Dual Shield Gauges, Spawn Cursor & Players
    const cordeTex = this.texturesCache.get('/assets/textures/global/t_corde_c.png');
    const ropeBeamTex = this.texturesCache.get('/assets/textures/global/t_cordebeam_c.png#cropped');
    const ATTACH_BEAM_DURATION_SEC = 0.72;

    for (let i = 0; i < 4; i++) {
      this.bounceAnimTimer[i] = Math.max(0, this.bounceAnimTimer[i] - dt);
      this.hurtAnimTimer[i] = Math.max(0, this.hurtAnimTimer[i] - dt);
      this.cutAnimTimer[i] = Math.max(0, this.cutAnimTimer[i] - dt);
      this.killAnimTimer[i] = Math.max(0, this.killAnimTimer[i] - dt);
      this.dropAnimTimer[i] = Math.max(0, this.dropAnimTimer[i] - dt);
      this.attachDenyFlashTimer[i] = Math.max(0, this.attachDenyFlashTimer[i] - dt);
      this.orangeBurstTimer[i] = Math.max(0, this.orangeBurstTimer[i] - dt);

      const p = state.players[i];
      const spr = this.playerSprites[i];
      const lbl = this.playerLabels[i];
      const ropeBase = this.ropeBaseSprites[i];
      const ropeBeam = this.ropeBeamSprites[i];
      const disp = this.displayPos[i];

      if (!p || !p.active || p.status === PlayerStatus.DEAD) {
        spr.visible = false;
        lbl.visible = false;
        ropeBase.visible = false;
        ropeBeam.visible = false;
        continue;
      }

      const colorMeta = PLAYER_COLORS[p.colorId] ?? PLAYER_COLORS[0];
      const charMeta = CHARACTER_NAMES[p.characterId] ?? CHARACTER_NAMES[0];

      // SPAWN_CURSOR: top-of-screen sliding drop selector
      if (p.status === PlayerStatus.SPAWN_CURSOR) {
        spr.visible = true;
        lbl.visible = true;
        ropeBase.visible = false;
        ropeBeam.visible = false;
        const cx = worldToScreenX(p.spawnCursorX);
        const cy = 62;
        const bob = Math.sin(nowSec * 8) * 4;

        if (this.lastPlayerStates[i] !== 'spawn') {
          this.lastPlayerStates[i] = 'spawn';
          this.stateAnimElapsedMs[i] = 0;
        } else {
          this.stateAnimElapsedMs[i] += dt * 1000;
        }
        const tex = this.resolvePlayerFrameTexture(
          colorMeta.code,
          charMeta.id,
          'spawn',
          this.stateAnimElapsedMs[i],
          true
        );
        const baseScale = tex ? 200 / tex.width : 1;
        if (tex) {
          if (spr.texture !== tex) spr.texture = tex;
          spr.tint = 0xffffff;
        } else {
          spr.tint = colorMeta.hex;
        }
        spr.x = cx;
        spr.y = cy;
        spr.scale.set(p.spawnCursorDir >= 0 ? -baseScale : baseScale, baseScale);
        spr.rotation = 0;
        spr.alpha = 0.92;

        // Dashed drop guide & chevron arrow pointing down
        this.ropesGraphics
          .moveTo(cx, cy + 40)
          .lineTo(cx, cy + 92)
          .stroke({ color: colorMeta.hex, width: 2.5, alpha: 0.45 });
        this.ropesGraphics
          .poly([cx - 12, cy + 44 + bob, cx + 12, cy + 44 + bob, cx, cy + 60 + bob])
          .fill({ color: colorMeta.hex, alpha: 0.95 });
        this.ropesGraphics
          .circle(cx, cy, C.PLAYER_RADIUS)
          .stroke({ color: colorMeta.hex, width: 3 });

        lbl.text = i === this.mySlotIndex ? `${p.name} (APERTE ESPAÇO)` : p.name;
        lbl.x = cx;
        lbl.y = cy + 92;
        continue;
      }

      spr.visible = true;
      lbl.visible = true;

      const interpX = disp.prevX + (disp.x - disp.prevX) * renderAlpha;
      const interpY = disp.prevY + (disp.y - disp.prevY) * renderAlpha;
      const sx = worldToScreenX(interpX);
      const sy = worldToScreenY(interpY);

      // Motion Trail
      for (let t = 0; t < disp.trails.length - 1; t++) {
        const pt = disp.trails[t];
        const alpha = (1 - t / disp.trails.length) * 0.32;
        const r = (1 - t / disp.trails.length) * 22;
        this.ropesGraphics
          .circle(worldToScreenX(pt.x), worldToScreenY(pt.y), r)
          .fill({ color: colorMeta.hex, alpha });
      }

      // Off-screen bottom dip indicator (player allowed down to y=-300 before TriggerPlanePlayerDeath)
      if (interpY < 0 && interpY > C.DEATH_BOTTOM_Y) {
        this.ropesGraphics
          .poly([sx - 18, VIEW_HEIGHT - 28, sx + 18, VIEW_HEIGHT - 28, sx, VIEW_HEIGHT - 6])
          .fill({ color: colorMeta.hex, alpha: 0.9 })
          .stroke({ color: 0xffffff, width: 2 });
      }

      // Authentic Rope (`t_corde_c`) + Initial White Sweeping Beam (`t_cordebeam_c`, player -> pivot over 0.72s)
      if (p.status === PlayerStatus.SWINGING && p.attachedPivotId >= 0) {
        const pivot = state.attachPoints.find((a) => a.id === p.attachedPivotId);
        if (pivot) {
          const px = worldToScreenX(pivot.x);
          const py = worldToScreenY(pivot.y);
          const rdx = sx - px;
          const rdy = sy - py;
          const ropeLenPx = Math.max(4, Math.hypot(rdx, rdy));
          const ropeRot = Math.atan2(rdy, rdx) + Math.PI * 0.5;
          const sweepProg = Math.max(0, Math.min(1, p.attachTimer / ATTACH_BEAM_DURATION_SEC));

          if (cordeTex) {
            if (sweepProg >= 0.99 || !ropeBeamTex) {
              ropeBase.visible = true;
              if (ropeBase.texture !== cordeTex) ropeBase.texture = cordeTex;
              ropeBase.x = (px + sx) * 0.5;
              ropeBase.y = (py + sy) * 0.5;
              ropeBase.width = 44;
              ropeBase.height = ropeLenPx;
              ropeBase.tileScale.set(44 / 64, 1);
              ropeBase.rotation = ropeRot;
              ropeBase.tint = 0xffffff;
              ropeBase.alpha = 0.98;
              ropeBeam.visible = false;
            } else {
              // Revealed golden rope grows from Player (sx,sy) toward wavefront M,
              // while pure white attach beam sweeps from M -> Pivot (px,py)!
              const waveX = sx + (px - sx) * sweepProg;
              const waveY = sy + (py - sy) * sweepProg;
              const ropePartLen = ropeLenPx * sweepProg;
              const beamPartLen = ropeLenPx * (1 - sweepProg);

              if (ropePartLen >= 4) {
                ropeBase.visible = true;
                if (ropeBase.texture !== cordeTex) ropeBase.texture = cordeTex;
                ropeBase.x = (sx + waveX) * 0.5;
                ropeBase.y = (sy + waveY) * 0.5;
                ropeBase.width = 44;
                ropeBase.height = ropePartLen;
                ropeBase.tileScale.set(44 / 64, 1);
                ropeBase.rotation = ropeRot;
                ropeBase.tint = 0xffffff;
                ropeBase.alpha = 0.98;
              } else {
                ropeBase.visible = false;
              }

              ropeBeam.visible = true;
              if (ropeBeam.texture !== ropeBeamTex) ropeBeam.texture = ropeBeamTex;
              ropeBeam.x = (waveX + px) * 0.5;
              ropeBeam.y = (waveY + py) * 0.5;
              ropeBeam.width = 28;
              ropeBeam.height = Math.max(4, beamPartLen);
              ropeBeam.rotation = ropeRot;
              ropeBeam.tint = 0xffffff;
              ropeBeam.alpha = 0.94 * (1 - sweepProg * 0.25);
            }
          } else {
            ropeBase.visible = false;
            ropeBeam.visible = false;
          }
        } else {
          ropeBase.visible = false;
          ropeBeam.visible = false;
        }
      } else {
        ropeBase.visible = false;
        ropeBeam.visible = false;
      }

      // Track horizontal facing (native artwork faces LEFT, so vx > 0 flips X)
      if (Math.abs(p.vx) > 25) {
        this.facingDir[i] = p.vx > 0 ? 1 : -1;
      }

      // Authentic state-to-sprite mapping from CPlayerAnimManager (0x00548720..0x0054950C)
      let stateSuffix = 'fly';
      if (p.status === PlayerStatus.DIZZY) {
        stateSuffix = this.dizzyWasRopeCut[i] ? 'ropecut' : 'hurt';
      } else {
        this.dizzyWasRopeCut[i] = false;
        if (this.hurtAnimTimer[i] > 0) {
          stateSuffix = 'hurt';
        } else if (this.cutAnimTimer[i] > 0) {
          stateSuffix = 'cut';
        } else if (this.bounceAnimTimer[i] > 0) {
          stateSuffix = 'bounce';
        } else if (p.status === PlayerStatus.SWINGING) {
          stateSuffix = 'attach';
        } else if (this.killAnimTimer[i] > 0) {
          stateSuffix = 'hitup';
        } else if (this.dropAnimTimer[i] > 0) {
          stateSuffix = 'spawn';
        } else {
          stateSuffix = 'fly';
        }
      }
      if (this.lastPlayerStates[i] !== stateSuffix) {
        this.lastPlayerStates[i] = stateSuffix;
        this.stateAnimElapsedMs[i] = 0;
      } else {
        this.stateAnimElapsedMs[i] += dt * 1000;
      }

      const loops =
        stateSuffix === 'fly' ||
        stateSuffix === 'attach' ||
        stateSuffix === 'spawn' ||
        p.status === PlayerStatus.DIZZY;
      const tex = this.resolvePlayerFrameTexture(
        colorMeta.code,
        charMeta.id,
        stateSuffix,
        this.stateAnimElapsedMs[i],
        loops
      );
      const targetSpriteSize = 276; // Calibrated to match 1920x1080 knight size inside 161px bubble
      const baseScale = tex ? targetSpriteSize / tex.width : 1;
      if (tex) {
        if (spr.texture !== tex) spr.texture = tex;
        spr.tint = 0xffffff;
      } else {
        spr.tint = colorMeta.hex;
      }

      spr.x = sx;
      spr.y = sy;
      spr.scale.set(this.facingDir[i] > 0 ? -baseScale : baseScale, baseScale);

      const isDirectionalPose = stateSuffix === 'fly' || stateSuffix === 'attach';
      if (isDirectionalPose) {
        // Screen velocity tilt aligned cleanly along left/right flight direction
        const screenVy = -p.vy;
        const speedHoriz = Math.max(40, Math.abs(p.vx));
        const rawPitch = Math.atan2(screenVy, speedHoriz);
        spr.rotation = (this.facingDir[i] > 0 ? rawPitch : -rawPitch) * 0.45;
      } else {
        spr.rotation = Math.max(-0.22, Math.min(0.22, p.vx / 2200));
      }

      // Exact Rotastic.exe 5Hz cubic blink curve (0x0056C465 .. 0x0056C4E0):
      // frac = (invulnTimer * 5) % 1; u = 2 * max(frac, 1 - frac) - 1; opacity = u^3
      if (p.invulnTimer > 0) {
        const frac = (p.invulnTimer * 5.0) % 1.0;
        const tWave = frac < 0.5 ? 1.0 - frac : frac;
        const u = tWave * 2.0 - 1.0;
        spr.alpha = Math.max(0.03, u * u * u);
      } else {
        spr.alpha = 1.0;
      }

      // Subtle inner hitbox ring + bright translucent invulnerability veil (frame_000110 / 325 / 326)
      const visualBubbleRadius = C.SHIELD_BUBBLE_RADIUS; // Measured 161px diameter in Rotastic.exe screenshots
      this.ropesGraphics
        .circle(sx, sy, C.PLAYER_RADIUS)
        .stroke({
          color: p.status === PlayerStatus.DIZZY ? 0xf97316 : colorMeta.hex,
          width: i === this.mySlotIndex ? 2.5 : 1.5,
          alpha: 0.45,
        });

      if (p.invulnTimer > 0) {
        const pulseGlow = 0.5 + 0.5 * Math.sin(p.invulnTimer * Math.PI * 10);
        this.ropesGraphics
          .circle(sx, sy, visualBubbleRadius)
          .fill({ color: 0xffffff, alpha: 0.18 + 0.14 * (1 - spr.alpha) })
          .stroke({ color: 0xffffff, width: 6.5, alpha: 0.85 + 0.15 * pulseGlow });
        this.ropesGraphics
          .circle(sx, sy, visualBubbleRadius + 9)
          .stroke({
            color: 0xe0f2fe,
            width: 3.5,
            alpha: 0.35 + 0.4 * pulseGlow,
          });
      }

      if (this.orangeBurstTimer[i] > 0) {
        const prog = 1 - Math.min(1, this.orangeBurstTimer[i] / 0.34);
        const burstR = 64 + prog * 34;
        this.ropesGraphics
          .circle(sx, sy, burstR)
          .stroke({ color: 0xf97316, width: 6 * (1 - prog * 0.6), alpha: (1 - prog) * 0.9 });
      }

      // Inner Orange Trick/Mass Aura (c2) + continuous star particle trail (`CPlayerUberBeamFeedback2` @ 0x0053E311)
      if (p.chargeGauge2 >= 1.0) {
        this.ropesGraphics
          .circle(sx, sy, 64)
          .fill({ color: 0xf97316, alpha: 0.2 })
          .stroke({ color: 0xf97316, width: 7, alpha: 0.95 });
        this.ropesGraphics
          .circle(sx, sy, 60)
          .stroke({ color: 0xfde047, width: 3.5, alpha: 0.65 });

        this.orangeTrailSpawnAcc[i] += dt;
        const starTex = this.texturesCache.get('/assets/textures/arenas/t_fx_uberbeam_c.png');
        while (this.orangeTrailSpawnAcc[i] >= 0.025) {
          this.orangeTrailSpawnAcc[i] -= 0.025;
          const jitterA = Math.random() * Math.PI * 2;
          const jitterR = Math.random() * 28;
          const scale = 0.45 + Math.random() * 0.3;
          this.spawnVfxParticle(
            starTex,
            sx + Math.cos(jitterA) * jitterR,
            sy + Math.sin(jitterA) * jitterR,
            {
              vx: -p.vx * 0.06 + (Math.random() - 0.5) * 52,
              vy: -p.vy * 0.06 - 24 + (Math.random() - 0.5) * 44,
              rotation: Math.random() * Math.PI * 2,
              rotSpeed: (Math.random() - 0.5) * 5,
              startScale: scale,
              endScale: scale * 0.35,
              startAlpha: 0.95,
              life: 0.5 + Math.random() * 0.22,
            }
          );
        }
      } else {
        this.orangeTrailSpawnAcc[i] = 0;
        if (p.chargeGauge2 > 0.02) {
          drawArc(
            this.ropesGraphics,
            sx,
            sy,
            64,
            -Math.PI * 0.5,
            -Math.PI * 0.5 + p.chargeGauge2 * Math.PI * 2,
            0xf97316,
            6,
            0.92
          );
        }
      }

      // Outer Protection Shield / Cooldown Crescent (c1 @ +0xD48, CPlayerBeamFeedback @ 0x00535D30):
      // white shield bubble at 1.0, colored tapered crescent while recharging (flashes white on denied input)
      if (p.chargeGauge >= 1.0) {
        this.ropesGraphics
          .circle(sx, sy, visualBubbleRadius)
          .fill({ color: 0xffffff, alpha: 0.14 })
          .stroke({ color: 0xf8fafc, width: 5.5, alpha: 0.96 });
        this.ropesGraphics
          .circle(sx, sy, visualBubbleRadius - 5)
          .stroke({ color: 0xffffff, width: 8, alpha: 0.14 });
      } else if (p.chargeGauge > 0.015 || this.attachDenyFlashTimer[i] > 0) {
        const arcProgress =
          this.attachDenyFlashTimer[i] > 0
            ? Math.max(0.12, p.chargeGauge)
            : p.chargeGauge;
        drawTaperedCooldownCrescent(
          this.ropesGraphics,
          sx,
          sy,
          visualBubbleRadius,
          arcProgress,
          colorMeta.hex,
          this.attachDenyFlashTimer[i] > 0
        );
      }

      const crownPrefix = p.slotIndex === leaderSlot ? '👑 ' : '';
      const dizzyPrefix = p.status === PlayerStatus.DIZZY ? '💫 ' : '';
      lbl.text = `${crownPrefix}${dizzyPrefix}${p.name}`;
      lbl.x = sx;
      lbl.y = sy - 88;
    }

    // 4. Update VFX Sprite Particles (orange star trail, shield break shards, cut starbursts, bounce sparks)
    for (let i = this.vfxParticles.length - 1; i >= 0; i--) {
      const vp = this.vfxParticles[i];
      vp.life -= dt;
      if (vp.life <= 0) {
        this.fxContainer.removeChild(vp.sprite);
        vp.sprite.destroy();
        this.vfxParticles.splice(i, 1);
        continue;
      }
      const prog = 1 - vp.life / vp.maxLife;
      vp.sprite.x += vp.vx * dt;
      vp.sprite.y += vp.vy * dt;
      vp.sprite.rotation += vp.rotSpeed * dt;
      vp.sprite.scale.set(vp.startScale + (vp.endScale - vp.startScale) * prog);
      vp.sprite.alpha = vp.startAlpha * Math.max(0, vp.life / vp.maxLife);
    }

    // 5. Update Floating Score / Event Popups
    for (let i = this.floatingEffects.length - 1; i >= 0; i--) {
      const fx = this.floatingEffects[i];
      fx.life -= dt;
      fx.text.x += fx.vx * dt;
      fx.text.y += fx.vy * dt;
      fx.text.alpha = Math.max(0, fx.life / fx.maxLife);
      if (fx.life <= 0) {
        this.fxContainer.removeChild(fx.text);
        fx.text.destroy();
        this.floatingEffects.splice(i, 1);
      }
    }
  }

  private updateHudDom(): void {
    const state = this.localSim.state;
    this.hudModeLabelEl.textContent = state.suddenDeath
      ? '⚡ MORTE SÚBITA ⚡'
      : `${state.mode.toUpperCase()} • META: ${state.scoreLimit}`;

    const totalSec = Math.max(0, Math.ceil(state.timeRemainingSec));
    const mm = String(Math.floor(totalSec / 60)).padStart(2, '0');
    const ss = String(totalSec % 60).padStart(2, '0');
    this.hudTimerValEl.textContent = `${mm}:${ss}`;

    const isHostInGame =
      this.lobbyState?.sessionState === OnlineSessionState.IN_GAME &&
      this.peerId > 0 &&
      this.peerId === this.lobbyState.leaderPeerId;
    if (this.hostReturnMenuBtn) {
      this.hostReturnMenuBtn.style.display = isHostInGame ? 'inline-block' : 'none';
    }

    const cardsHtml = state.players
      .filter((p) => p.active)
      .map((p) => {
        const col = PLAYER_COLORS[p.colorId] ?? PLAYER_COLORS[0];
        const ch = CHARACTER_NAMES[p.characterId] ?? CHARACTER_NAMES[0];
        const isMe = p.slotIndex === this.mySlotIndex;
        const shieldBadge = p.chargeGauge >= 1.0 ? ' 🫧' : '';
        const orangeBadge = p.chargeGauge2 > 0 ? ` 🟠${Math.round(p.chargeGauge2 * 100)}%` : '';
        return `
          <div class="player-hud-card" style="border-color: ${col.css}">
            <div class="p-name">
              <span style="color: ${col.css}">${p.name}${isMe ? ' (Você)' : ''}</span>
              <span>${p.isBot ? '🤖' : '🎮'}</span>
            </div>
            <div class="p-score">${p.score}</div>
            <div class="p-sub">${ch.label} • K:${p.kills} D:${p.deaths}${shieldBadge}${orangeBadge}</div>
          </div>
        `;
      })
      .join('');
    this.hudPlayersEl.innerHTML = cardsHtml;
  }

  private renderModalOverlay(): void {
    if (!this.showLobbyOverlay || !this.lobbyState) {
      this.modalOverlayEl.style.display = 'none';
      return;
    }
    this.modalOverlayEl.style.display = 'flex';

    // Show Post-Match Podium if in 0xB8 POST_MATCH_STANDINGS
    if (
      this.lobbyState.sessionState === OnlineSessionState.POST_MATCH_STANDINGS &&
      this.standings.length > 0
    ) {
      const rows = this.standings
        .map((st) => {
          const col = PLAYER_COLORS[st.colorId] ?? PLAYER_COLORS[0];
          const medal = st.rank === 1 ? '🥇' : st.rank === 2 ? '🥈' : st.rank === 3 ? '🥉' : `#${st.rank}`;
          return `
            <div class="slot-row" style="border-color: ${col.css}">
              <div>
                <strong style="font-size: 18px; margin-right: 8px">${medal}</strong>
                <strong style="color: ${col.css}">${st.name}</strong>
              </div>
              <div style="font-size: 16px; font-weight: 800">
                ${st.score} pts <span style="font-size: 12px; color: #94a3b8">(K:${st.kills} / D:${st.deaths} / Joias:${st.gemsCollected})</span>
              </div>
            </div>
          `;
        })
        .join('');

      this.modalOverlayEl.innerHTML = `
        <div class="panel">
          <h1>🏆 Placar Final da Partida</h1>
          <p class="subtitle">Arena: ${getMultiplayerMapById(this.lobbyState.config.mapId).name}</p>
          <div class="slot-list" style="margin-bottom: 18px">${rows}</div>
          <div style="display: flex; justify-content: flex-end; gap: 12px">
            <button class="btn-success" id="btn-rematch">Voltar ao Lobby / Revanche</button>
          </div>
        </div>
      `;

      document.getElementById('btn-rematch')?.addEventListener('click', () => {
        this.audio.play('confirm');
        const pkt = encodeAppControlMessage(
          this.nextSeq(),
          this.peerId,
          0,
          AppMessageSubType.CLIENT_READY_PHASE_ACK,
          { phaseCode: BarrierPhaseCode.POST_MATCH_ACK, ready: true }
        );
        this.ws?.send(pkt);
      });
      return;
    }

    // Render Lobby & Match Configuration Panel
    const mySlot =
      this.lobbyState.slots.find((s) => s.slotIndex === this.mySlotIndex) ??
      this.lobbyState.slots[0];

    const slotsHtml = this.lobbyState.slots
      .map((s) => {
        const col = PLAYER_COLORS[s.colorId] ?? PLAYER_COLORS[0];
        const ch = CHARACTER_NAMES[s.characterId] ?? CHARACTER_NAMES[0];
        const badge = !s.occupied
          ? '<span style="color:#64748b">Vazio</span>'
          : s.isBot
            ? '<span style="color:#38bdf8">🤖 Bot Pronto</span>'
            : s.ready
              ? '<span style="color:#4ade80">✔ Pronto</span>'
              : '<span style="color:#fbbf24">Aguardando...</span>';
        return `
          <div class="slot-row" style="border-left: 5px solid ${col.css}">
            <div>
              <strong>Slot ${s.slotIndex + 1}: ${s.name}</strong>
              <div style="font-size: 12px; color: #94a3b8">${ch.label} • Cor: ${col.name}</div>
            </div>
            <div>${badge}</div>
          </div>
        `;
      })
      .join('');

    const mapOptionsHtml = MULTIPLAYER_MAPS.map(
      (m) =>
        `<option value="${m.id}" ${
          m.id === this.lobbyState!.config.mapId ? 'selected' : ''
        }>${m.name}</option>`
    ).join('');
    const selectedMapDef = getMultiplayerMapById(this.lobbyState.config.mapId);
    const isHost = this.peerId > 0 && this.peerId === this.lobbyState.leaderPeerId;
    const isInGame = this.lobbyState.sessionState === OnlineSessionState.IN_GAME;

    this.modalOverlayEl.innerHTML = `
      <div class="panel">
        <h1>
          <span>⚔️ Rotastic — Lobby Multiplayer</span>
          <span style="font-size: 14px; color: #38bdf8">Sala: ${this.roomCode}</span>
        </h1>
        <p class="subtitle">
          Conecte 2 a 4 abas/máquinas no mesmo código de sala ou jogue imediatamente com Bots IA.
        </p>

        <div class="grid-2">
          <div>
            <h3 style="margin-top:0">Jogadores na Sala (4 Slots)</h3>
            <div class="slot-list">${slotsHtml}</div>

            <div class="form-row" style="margin-top: 14px">
              <label>Trocar Código da Sala</label>
              <div style="display:flex; gap: 8px">
                <input id="inp-room-code" value="${this.roomCode}" maxlength="10" style="flex:1" />
                <button class="btn-secondary" id="btn-join-room">Entrar</button>
              </div>
            </div>
          </div>

          <div>
            <h3 style="margin-top:0">Seu Cavaleiro & Arena</h3>
            <div class="form-row">
              <label>Nome do Jogador</label>
              <input id="inp-player-name" value="${mySlot.name}" maxlength="20" />
            </div>
            <div class="grid-2" style="gap: 8px">
              <div class="form-row">
                <label>Herói</label>
                <select id="sel-char">
                  <option value="0" ${mySlot.characterId === 0 ? 'selected' : ''}>Rotastic (Viking)</option>
                  <option value="1" ${mySlot.characterId === 1 ? 'selected' : ''}>Sylph (Elf)</option>
                  <option value="2" ${mySlot.characterId === 2 ? 'selected' : ''}>Butcher (Pig)</option>
                  <option value="3" ${mySlot.characterId === 3 ? 'selected' : ''}>Skeletor (Skull)</option>
                </select>
              </div>
              <div class="form-row">
                <label>Cor / Time</label>
                <select id="sel-color">
                  <option value="0" ${mySlot.colorId === 0 ? 'selected' : ''}>Azul (Blue)</option>
                  <option value="1" ${mySlot.colorId === 1 ? 'selected' : ''}>Vermelho (Red)</option>
                  <option value="2" ${mySlot.colorId === 2 ? 'selected' : ''}>Verde (Green)</option>
                  <option value="3" ${mySlot.colorId === 3 ? 'selected' : ''}>Amarelo (Yellow)</option>
                </select>
              </div>
            </div>

            <div class="form-row">
              <label>Arena Deathmatch (${MULTIPLAYER_MAPS.length} Mapas Originais)</label>
              <select id="sel-map">${mapOptionsHtml}</select>
              <div style="font-size: 11px; color: #94a3b8; margin-top: 4px">${selectedMapDef.subtitle}</div>
            </div>

            <div class="grid-2" style="gap: 8px">
              <div class="form-row">
                <label>Bots IA na Arena (0 a 3)</label>
                <select id="sel-bots">
                  <option value="0" ${this.lobbyState.config.botCount === 0 ? 'selected' : ''}>0 Bots (Apenas Humanos)</option>
                  <option value="1" ${this.lobbyState.config.botCount === 1 ? 'selected' : ''}>1 Bot IA</option>
                  <option value="2" ${this.lobbyState.config.botCount === 2 ? 'selected' : ''}>2 Bots IA</option>
                  <option value="3" ${this.lobbyState.config.botCount === 3 ? 'selected' : ''}>3 Bots IA</option>
                </select>
              </div>
              <div class="form-row">
                <label>Duração (Segundos)</label>
                <input id="inp-time" type="number" min="30" max="600" step="30" value="${this.lobbyState.config.timeLimitSec}" />
              </div>
            </div>
          </div>
        </div>

        <div style="display:flex; justify-content: space-between; align-items: center; margin-top: 18px; padding-top: 14px; border-top: 1px solid #334155">
          <div style="font-size: 13px; color: #94a3b8">
            Estado da Sessão: <code>0x${this.lobbyState.sessionState.toString(16).toUpperCase()}</code>
            ${isHost ? ' • <span style="color:#fbbf24">👑 Host da Sala</span>' : ''}
          </div>
          <div style="display: flex; gap: 10px">
            ${
              isInGame
                ? `
                  ${
                    isHost
                      ? '<button class="btn-secondary" id="btn-host-end-match-modal" style="border-color: #f59e0b; color: #fde68a">🏁 Encerrar Partida (Voltar ao Menu)</button>'
                      : ''
                  }
                  <button class="btn-secondary" id="btn-resume-game">Voltar à Partida</button>
                `
                : `
                  <button class="btn-primary" id="btn-ready-toggle">
                    ${mySlot.ready ? 'Cancelar Pronto' : '✔ Marcar Pronto'}
                  </button>
                  <button class="btn-success" id="btn-start-match">
                    🚀 Iniciar Partida Agora!
                  </button>
                `
            }
          </div>
        </div>
      </div>
    `;

    const sendSlotUpdate = (readyOverride?: boolean) => {
      const nameVal =
        (document.getElementById('inp-player-name') as HTMLInputElement)?.value || this.playerName;
      const charVal = Number((document.getElementById('sel-char') as HTMLSelectElement)?.value || 0);
      const colorVal = Number(
        (document.getElementById('sel-color') as HTMLSelectElement)?.value || 0
      );
      this.playerName = nameVal;

      const pkt = encodeAppControlMessage(
        this.nextSeq(),
        this.peerId,
        0,
        AppMessageSubType.CLIENT_SLOT_UPDATE_REQ,
        {
          name: nameVal,
          characterId: charVal,
          colorId: colorVal,
          ready: readyOverride ?? mySlot.ready,
        }
      );
      this.ws?.send(pkt);
    };

    const sendConfigUpdate = () => {
      const mapId = (document.getElementById('sel-map') as HTMLSelectElement)?.value;
      const botCount = Number(
        (document.getElementById('sel-bots') as HTMLSelectElement)?.value ?? 2
      );
      const timeLimitSec = Number(
        (document.getElementById('inp-time') as HTMLInputElement)?.value ?? 120
      );
      const pkt = encodeAppControlMessage(
        this.nextSeq(),
        this.peerId,
        0,
        AppMessageSubType.HOST_MATCH_CONFIG_SYNC,
        { mapId, botCount, timeLimitSec }
      );
      this.ws?.send(pkt);
    };

    document.getElementById('inp-player-name')?.addEventListener('change', () => sendSlotUpdate());
    document.getElementById('sel-char')?.addEventListener('change', () => {
      this.audio.play('select');
      sendSlotUpdate();
    });
    document.getElementById('sel-color')?.addEventListener('change', () => {
      this.audio.play('select');
      sendSlotUpdate();
    });
    document.getElementById('sel-map')?.addEventListener('change', () => {
      this.audio.play('select');
      sendConfigUpdate();
    });
    document.getElementById('sel-bots')?.addEventListener('change', () => {
      this.audio.play('select');
      sendConfigUpdate();
    });
    document.getElementById('inp-time')?.addEventListener('change', () => sendConfigUpdate());

    document.getElementById('btn-join-room')?.addEventListener('click', () => {
      const newRoom = (document.getElementById('inp-room-code') as HTMLInputElement)?.value
        .trim()
        .toUpperCase();
      if (newRoom) {
        this.roomCode = newRoom;
        const url = new URL(window.location.href);
        url.searchParams.set('room', newRoom);
        window.history.replaceState({}, '', url.toString());
        this.connectWebSocket();
      }
    });

    document.getElementById('btn-ready-toggle')?.addEventListener('click', () => {
      this.audio.play('confirm');
      sendSlotUpdate(!mySlot.ready);
    });

    document.getElementById('btn-start-match')?.addEventListener('click', () => {
      this.audio.play('confirm');
      sendSlotUpdate(true);
      sendConfigUpdate();
      const pkt = encodeAppControlMessage(
        this.nextSeq(),
        this.peerId,
        0,
        AppMessageSubType.CLIENT_READY_PHASE_ACK,
        { phaseCode: BarrierPhaseCode.LOBBY_READY, ready: true, forceStart: true }
      );
      this.ws?.send(pkt);
    });

    document.getElementById('btn-host-end-match-modal')?.addEventListener('click', () => {
      this.sendHostReturnToLobby();
    });

    document.getElementById('btn-resume-game')?.addEventListener('click', () => {
      this.showLobbyOverlay = false;
      this.renderModalOverlay();
    });
  }
}

// Bootstrap Client on DOMContentLoaded
if (typeof window !== 'undefined') {
  window.addEventListener('DOMContentLoaded', () => {
    const client = new RotasticWebClient();
    client.init().catch((err) => console.error('[rotastic-client] Init error:', err));
  });
}
