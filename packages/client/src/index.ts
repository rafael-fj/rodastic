import { Application, Assets, Container, Graphics, Rectangle, Sprite, Text, Texture, TilingSprite } from 'pixi.js';
import {
  CHARACTER_NAMES,
  CharacterId,
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

interface FloatingEffect {
  text: Text;
  vx: number;
  vy: number;
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
  private facingDir: number[] = [1, -1, 1, -1];
  private bounceAnimTimer: number[] = [0, 0, 0, 0];
  private hurtAnimTimer: number[] = [0, 0, 0, 0];
  private cutAnimTimer: number[] = [0, 0, 0, 0];
  private killAnimTimer: number[] = [0, 0, 0, 0];
  private dropAnimTimer: number[] = [0, 0, 0, 0];
  private dizzyWasRopeCut: boolean[] = [false, false, false, false];

  // Input state
  private keysDown = new Set<string>();
  private pointerDown = false;
  private rightPointerDown = false;

  // PixiJS Scene Graph Layers
  private rootContainer = new Container();
  private bgContainer = new Container();
  private arenaGraphics = new Graphics();
  private ropesContainer = new Container();
  private ropesGraphics = new Graphics();
  private pickupsContainer = new Container();
  private pivotsContainer = new Container();
  private playersContainer = new Container();
  private fxContainer = new Container();

  private pivotAuraSprites: Sprite[] = [];
  private pivotCoreSprites: Sprite[] = [];
  private ropeBaseSprites: TilingSprite[] = [];
  private ropeBeamSprites: Sprite[] = [];
  private playerSprites: Sprite[] = [];
  private playerLabels: Text[] = [];
  private floatingEffects: FloatingEffect[] = [];
  private texturesCache = new Map<string, Texture>();
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

    this.app.stage.addChild(this.rootContainer);
    this.rootContainer.addChild(
      this.bgContainer,
      this.arenaGraphics,
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
    const urls: string[] = [
      '/assets/textures/global/t_corde_c.png',
      '/assets/textures/global/t_cordebeam_c.png',
      '/assets/textures/global/t_cordeuberbeam_c.png',
      '/assets/textures/global/t_accroche01_c.png',
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
    ];

    const colors: Array<'b' | 'r' | 'g' | 'y'> = ['b', 'r', 'g', 'y'];
    const chars = ['neo', 'elf', 'pig', 'skull'];
    const states = ['fly', 'attach', 'bounce', 'hurt', 'ropecut', 'cut', 'hitup', 'spawn'];

    for (const c of colors) {
      for (const ch of chars) {
        for (const st of states) {
          urls.push(`/assets/textures/global/t_character_${c}_${ch}_${st}_c.png`);
        }
      }
    }

    await Promise.all(
      urls.map(async (u) => {
        try {
          const tex = await Assets.load<Texture>(u);
          tex.source.autoGenerateMipmaps = true;
          tex.source.scaleMode = 'linear';
          tex.source.update();
          this.texturesCache.set(u, tex);
        } catch {
          // Fallback graphics will be used if any texture fails
        }
      })
    );

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
  }

  private async ensureMapBackgrounds(mapId: string): Promise<void> {
    if (this.loadedBgMapId === mapId) return;
    this.loadedBgMapId = mapId;
    const map = getMultiplayerMapById(mapId);

    const textures = await Promise.all(
      map.bgLayers.map(async (layer) => {
        const url = `/assets/textures/backgrounds/${layer.texture}.png`;
        if (this.texturesCache.has(url)) {
          return { tex: this.texturesCache.get(url)!, alpha: layer.alpha ?? 1 };
        }
        try {
          const tex = await Assets.load<Texture>(url);
          if (tex?.source) {
            tex.source.autoGenerateMipmaps = true;
            tex.source.scaleMode = 'linear';
            tex.source.update();
          }
          this.texturesCache.set(url, tex);
          return { tex, alpha: layer.alpha ?? 1 };
        } catch {
          return null;
        }
      })
    );

    // Bail out if user switched map again while awaiting load
    if (this.loadedBgMapId !== mapId) return;

    this.bgContainer.removeChildren();
    for (const entry of textures) {
      if (!entry) continue;
      const spr = new Sprite(entry.tex);
      const scale = Math.max(VIEW_WIDTH / entry.tex.width, VIEW_HEIGHT / entry.tex.height);
      spr.width = entry.tex.width * scale;
      spr.height = entry.tex.height * scale;
      spr.x = (VIEW_WIDTH - spr.width) * 0.5;
      spr.y = (VIEW_HEIGHT - spr.height) * 0.5;
      spr.alpha = entry.alpha;
      this.bgContainer.addChild(spr);
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
      void this.ensureMapBackgrounds(serverWorld.mapId);
    }

    // Play audio & spawn floating text for simulation events
    for (const ev of events) {
      this.triggerSimEventFeedback(ev);
    }

    // Update authoritative state while preserving smooth client prediction on local player
    const localPlayerBefore = { ...this.localSim.state.players[this.mySlotIndex] };
    this.localSim.restoreState(serverWorld);

    const authLocal = this.localSim.state.players[this.mySlotIndex];
    if (
      authLocal &&
      authLocal.active &&
      authLocal.status === localPlayerBefore.status &&
      authLocal.status !== PlayerStatus.DEAD &&
      authLocal.status !== PlayerStatus.SPAWN_CURSOR
    ) {
      const errDist = Math.hypot(authLocal.x - localPlayerBefore.x, authLocal.y - localPlayerBefore.y);
      if (errDist < 120) {
        // Gentle error decay toward server authority (avoids 20Hz rubberband flicker!)
        const correctionAlpha = errDist > 14 ? 0.16 : 0.06;
        authLocal.x = localPlayerBefore.x + (authLocal.x - localPlayerBefore.x) * correctionAlpha;
        authLocal.y = localPlayerBefore.y + (authLocal.y - localPlayerBefore.y) * correctionAlpha;
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
        if (ev.slotIndex !== undefined) {
          this.hurtAnimTimer[ev.slotIndex] = 0.42;
        }
        this.spawnFloatingText('ESCUDO!', sx, Math.max(80, sy - 20), 0xf8fafc);
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
          this.dizzyWasRopeCut[ev.slotIndex] = false;
        }
        break;
      case 'ropecut': {
        this.audio.play('ropecut', 0.58, 0.05);
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
        if (ev.slotIndex !== undefined) {
          this.killAnimTimer[ev.slotIndex] = 0.35;
        }
        if (actor) this.audio.playCharacterVoice(actor.characterId, 'kill', 0.55);
        this.audio.playAnnouncer('kill_streak', 4500);
        this.spawnFloatingText('SLAUGHTER!', sx, sy, 0xef4444);
        break;
      case 'wallbreak':
        this.audio.play('wallbreak', 0.5, 0.05);
        this.spawnFloatingText('CRASH!', sx, sy, 0xe2e8f0);
        break;
      case 'bounce':
        this.audio.play(ev.targetSlot !== undefined ? 'pvp_bump' : 'bounce', 0.34, 0.09);
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

  private stepClientTick(): void {
    if (this.lobbyState?.sessionState !== OnlineSessionState.IN_GAME) {
      return;
    }

    const cmd = this.sampleLocalInput();
    if (this.ws && this.ws.readyState === WebSocket.OPEN && this.peerId > 0) {
      const pkt = encodeClientInputCmd(this.nextSeq(), this.peerId, this.mySlotIndex, cmd);
      this.ws.send(pkt);
    }

    // Preserve continuity for swinging remote players/bots between 20Hz snapshots so they don't snap-drop
    const stepInputs: Record<number, PlayerInputCommand> = {
      [this.mySlotIndex]: cmd,
    };
    for (let i = 0; i < 4; i++) {
      if (i === this.mySlotIndex) continue;
      const rp = this.localSim.state.players[i];
      if (rp && rp.active && rp.status === PlayerStatus.SWINGING) {
        stepInputs[i] = { seq: 0, actionHeld: true, reverseHeld: false, axisX: 0, axisY: 0 };
      }
    }

    // Step local prediction
    this.localSim.step(stepInputs, C.FIXED_DT);

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
      const dist = Math.hypot(p.x - disp.x, p.y - disp.y);
      if (dist > 180 || (i === this.mySlotIndex && dist > 120)) {
        disp.x = p.x;
        disp.y = p.y;
        disp.prevX = p.x;
        disp.prevY = p.y;
      } else if (i === this.mySlotIndex) {
        disp.x = p.x;
        disp.y = p.y;
      } else {
        disp.x += (p.x - disp.x) * 0.42;
        disp.y += (p.y - disp.y) * 0.42;
      }
      disp.trails.unshift({ x: disp.x, y: disp.y });
      if (disp.trails.length > 14) disp.trails.pop();
    }
  }

  private renderScene(dt: number, renderAlpha = 1): void {
    const map = this.localSim.map;
    const state = this.localSim.state;
    const nowSec = performance.now() / 1000;

    if (this.loadedBgMapId !== state.mapId) {
      void this.ensureMapBackgrounds(state.mapId);
    }

    // 1. Arena Bounds, Switch & OBB Obstacles
    this.arenaGraphics.clear();

    // Subtle arena border (bottom has generous -300px off-screen swing tolerance)
    const left = worldToScreenX(0);
    const right = worldToScreenX(C.ARENA_WIDTH);
    const top = worldToScreenY(C.ARENA_HEIGHT);
    const bottom = worldToScreenY(0);
    this.arenaGraphics
      .rect(left, top, right - left, bottom - top)
      .stroke({ color: 0x334155, width: 2, alpha: 0.4 });

    // Interactive Switch (e.g. w_multi_dm_lvl04 Frog Lever)
    if (map.switchDef) {
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

    // Gravity Vortices
    for (const v of map.vortices) {
      const vx = worldToScreenX(v.x);
      const vy = worldToScreenY(v.y);
      const col = v.strength >= 0 ? 0x8b5cf6 : 0xec4899;
      this.arenaGraphics
        .circle(vx, vy, v.radius)
        .fill({ color: col, alpha: 0.12 })
        .stroke({ color: col, width: 2, alpha: 0.55 });
    }

    // OBB Walls & Saw/Cube/Beam Obstacles
    for (const w of state.walls) {
      if (!w.active) continue;

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

    // 2. Dynamic Attach Points (Pivots) with authentic textures & 90-deg target sector
    this.ropesGraphics.clear();

    const auraTex = this.texturesCache.get('/assets/textures/global/t_accrocheaura_c.png');
    const coreTex = this.texturesCache.get('/assets/textures/global/t_accroche01_c.png');
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
    for (let k = 0; k < this.pivotAuraSprites.length; k++) {
      const vis = k < state.attachPoints.length && Boolean(coreTex);
      this.pivotAuraSprites[k].visible = vis;
      this.pivotCoreSprites[k].visible = vis;
    }

    const nearestByPlayer = new Map<number, number>();
    for (const p of state.players) {
      if (p.active && p.status === PlayerStatus.FREE_FALL) {
        const np = this.localSim.findNearestAttachPoint(p.x, p.y);
        if (np) nearestByPlayer.set(p.slotIndex, np.id);
      }
    }

    for (let k = 0; k < state.attachPoints.length; k++) {
      const ap = state.attachPoints[k];
      const px = worldToScreenX(ap.x);
      const py = worldToScreenY(ap.y);

      if (auraTex && coreTex) {
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

      // Solid 90-degree colored wedge sector on target pivot facing each airborne player
      for (const [slotIdx, pid] of nearestByPlayer.entries()) {
        if (pid !== ap.id) continue;
        const tp = state.players[slotIdx];
        const colHex = (PLAYER_COLORS[tp.colorId] ?? PLAYER_COLORS[0]).hex;
        const angToPlayer = Math.atan2(worldToScreenY(tp.y) - py, worldToScreenX(tp.x) - px);
        const startA = angToPlayer - Math.PI * 0.25;
        const endA = angToPlayer + Math.PI * 0.25;
        this.arenaGraphics
          .moveTo(px, py)
          .arc(px, py, 44, startA, endA)
          .lineTo(px, py)
          .fill({ color: colHex, alpha: 0.85 });
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

        const texKey = `/assets/textures/global/t_character_${colorMeta.code}_${charMeta.id}_spawn_c.png`;
        const tex = this.texturesCache.get(texKey);
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

      // Authentic state-to-sprite mapping calibrated from captured Rotastic.exe screenshots
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
      this.lastPlayerStates[i] = stateSuffix;

      const texKey = `/assets/textures/global/t_character_${colorMeta.code}_${charMeta.id}_${stateSuffix}_c.png`;
      const tex = this.texturesCache.get(texKey);
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

      // Smooth sine shimmer instead of 13Hz harsh blink strobe during post-spawn/shield invuln
      spr.alpha = p.invulnTimer > 0 ? 0.72 + 0.25 * Math.sin(nowSec * 12) : 1.0;

      // Subtle inner hitbox ring + gentle cyan pulse halo during invulnerability
      const visualBubbleRadius = 78; // Measured 161px diameter in Rotastic.exe screenshots
      this.ropesGraphics
        .circle(sx, sy, C.PLAYER_RADIUS)
        .stroke({
          color: p.status === PlayerStatus.DIZZY ? 0xf97316 : colorMeta.hex,
          width: i === this.mySlotIndex ? 2.5 : 1.5,
          alpha: 0.45,
        });

      if (p.invulnTimer > 0) {
        this.ropesGraphics
          .circle(sx, sy, visualBubbleRadius + 12)
          .stroke({
            color: 0xe0f2fe,
            width: 2.5,
            alpha: 0.35 + 0.25 * Math.sin(nowSec * 12),
          });
      }

      // Outer Protection Shield Ring (c1): arc fill -> white shield bubble at 1.0
      if (p.chargeGauge >= 1.0) {
        this.ropesGraphics
          .circle(sx, sy, visualBubbleRadius)
          .fill({ color: 0xffffff, alpha: 0.16 })
          .stroke({ color: 0xf8fafc, width: 4.5, alpha: 0.96 });
      } else if (p.chargeGauge > 0.02) {
        drawArc(
          this.ropesGraphics,
          sx,
          sy,
          64,
          -Math.PI * 0.5,
          -Math.PI * 0.5 + p.chargeGauge * Math.PI * 2,
          colorMeta.hex,
          4.5,
          0.95
        );
      }

      // Thick Orange Trick/Mass Ring (c2): boosts collision weight & acts as secondary shield at 1.0
      if (p.chargeGauge2 >= 1.0) {
        this.ropesGraphics
          .circle(sx, sy, visualBubbleRadius + 7)
          .stroke({ color: 0xf97316, width: 7, alpha: 0.95 });
      } else if (p.chargeGauge2 > 0.02) {
        drawArc(
          this.ropesGraphics,
          sx,
          sy,
          visualBubbleRadius + 7,
          -Math.PI * 0.5,
          -Math.PI * 0.5 + p.chargeGauge2 * Math.PI * 2,
          0xf97316,
          7,
          0.95
        );
      }

      const crownPrefix = p.slotIndex === leaderSlot ? '👑 ' : '';
      const dizzyPrefix = p.status === PlayerStatus.DIZZY ? '💫 ' : '';
      lbl.text = `${crownPrefix}${dizzyPrefix}${p.name}`;
      lbl.x = sx;
      lbl.y = sy - 88;
    }

    // 4. Update Floating Score / Event Popups
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
