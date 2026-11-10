import { Application, Assets, Container, Graphics, Sprite, Text, Texture } from 'pixi.js';
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
// Coordinate Conversion: World ([-18..+18] x [-10.5..+10.5], Y-up) <-> Screen
// ============================================================================
const VIEW_WIDTH = 1280;
const VIEW_HEIGHT = 720;
const PIXELS_PER_METER = 34;

function worldToScreenX(wx: number): number {
  return VIEW_WIDTH * 0.5 + wx * PIXELS_PER_METER;
}

function worldToScreenY(wy: number): number {
  return VIEW_HEIGHT * 0.5 - wy * PIXELS_PER_METER;
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
  public localSim = new RotasticSimulation('w_multi_coll_lvl01');
  private displayPos: Array<{ x: number; y: number; trails: Array<{ x: number; y: number }> }> = [
    { x: -10, y: 4, trails: [] },
    { x: 10, y: 4, trails: [] },
    { x: -10, y: -4, trails: [] },
    { x: 10, y: -4, trails: [] },
  ];

  // Input state
  private keysDown = new Set<string>();
  private pointerDown = false;

  // PixiJS Scene Graph Layers
  private rootContainer = new Container();
  private arenaGraphics = new Graphics();
  private ropesGraphics = new Graphics();
  private pickupsContainer = new Container();
  private pivotsContainer = new Container();
  private playersContainer = new Container();
  private fxContainer = new Container();

  private playerSprites: Sprite[] = [];
  private playerLabels: Text[] = [];
  private floatingEffects: FloatingEffect[] = [];
  private texturesCache = new Map<string, Texture>();

  // DOM References
  private hudPlayersEl = document.getElementById('hud-players')!;
  private hudModeLabelEl = document.getElementById('hud-mode-label')!;
  private hudTimerValEl = document.getElementById('hud-timer-val')!;
  private hudNetInfoEl = document.getElementById('hud-net-info')!;
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
      this.arenaGraphics,
      this.pickupsContainer,
      this.pivotsContainer,
      this.ropesGraphics,
      this.playersContainer,
      this.fxContainer
    );

    this.handleResize();
    window.addEventListener('resize', () => this.handleResize());

    this.setupInputListeners();
    await this.preloadCoreSprites();
    this.initPlayerNodes();

    this.connectWebSocket();

    // 60 Hz Fixed Client Prediction + Render Loop
    let accumulator = 0;
    let lastTime = performance.now();
    this.app.ticker.add(() => {
      const now = performance.now();
      const dt = Math.min(0.1, (now - lastTime) / 1000);
      lastTime = now;
      accumulator += dt;

      while (accumulator >= C.FIXED_DT) {
        this.stepClientTick();
        accumulator -= C.FIXED_DT;
      }

      this.renderScene(dt);
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
    const states = ['fly', 'attach', 'hurt', 'ropecut'];

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
          this.texturesCache.set(u, tex);
        } catch {
          // Fallback graphics will be used if any texture fails
        }
      })
    );
  }

  private initPlayerNodes(): void {
    for (let i = 0; i < 4; i++) {
      const spr = new Sprite(Texture.WHITE);
      spr.anchor.set(0.5);
      spr.width = 54;
      spr.height = 54;
      this.playersContainer.addChild(spr);
      this.playerSprites.push(spr);

      const lbl = new Text({
        text: `P${i + 1}`,
        style: {
          fontFamily: 'system-ui, sans-serif',
          fontSize: 13,
          fontWeight: 'bold',
          fill: 0xffffff,
          stroke: { color: 0x0f172a, width: 3 },
        },
      });
      lbl.anchor.set(0.5, 1.8);
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
      this.pointerDown = true;
      this.audio.preloadAll();
    });

    window.addEventListener('pointerup', () => {
      this.pointerDown = false;
    });

    document.getElementById('btn-toggle-lobby')?.addEventListener('click', () => {
      this.audio.play('select');
      this.showLobbyOverlay = !this.showLobbyOverlay;
      this.renderModalOverlay();
    });

    const muteBtn = document.getElementById('btn-toggle-mute');
    muteBtn?.addEventListener('click', () => {
      this.audio.muted = !this.audio.muted;
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
        this.showLobbyOverlay = false;
        this.audio.play('gong', 0.55, 0.02);
      } else if (
        this.lobbyState.sessionState === OnlineSessionState.LOBBY_OPEN &&
        prevState === OnlineSessionState.POST_MATCH_STANDINGS
      ) {
        this.showLobbyOverlay = true;
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

  private reconcileWorldSnapshot(serverWorld: WorldSimState, events: SimEvent[]): void {
    if (serverWorld.mapId !== this.localSim.state.mapId) {
      this.localSim.resetMatch(
        serverWorld.mapId,
        serverWorld.scoreLimit,
        serverWorld.timeRemainingSec
      );
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
      authLocal.status !== PlayerStatus.DEAD
    ) {
      const errDist = Math.hypot(authLocal.x - localPlayerBefore.x, authLocal.y - localPlayerBefore.y);
      if (errDist < 2.2) {
        // Smoothly blend local predicted position toward server authority
        authLocal.x = localPlayerBefore.x + (authLocal.x - localPlayerBefore.x) * 0.35;
        authLocal.y = localPlayerBefore.y + (authLocal.y - localPlayerBefore.y) * 0.35;
      }
    }

    this.updateHudDom();
  }

  private triggerSimEventFeedback(ev: SimEvent): void {
    const sx = worldToScreenX(ev.x);
    const sy = worldToScreenY(ev.y);

    switch (ev.type) {
      case 'attach':
        this.audio.play('attach', 0.3, 0.08);
        break;
      case 'release':
        this.audio.play('release', 0.28, 0.08);
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
      case 'ropecut':
        this.audio.play('ropecut', 0.55, 0.05);
        this.spawnFloatingText('CORDA CORTADA!', sx, sy, 0xf97316);
        break;
      case 'slaughter':
        this.audio.play('slaughter', 0.65, 0.04);
        this.spawnFloatingText('SLAUGHTER!', sx, sy, 0xef4444);
        break;
      case 'wallbreak':
        this.audio.play('wallbreak', 0.5, 0.05);
        this.spawnFloatingText('CRASH!', sx, sy, 0xe2e8f0);
        break;
      case 'bounce':
        this.audio.play('bounce', 0.25, 0.1);
        break;
      case 'death':
        this.audio.play('death', 0.5, 0.04);
        this.spawnFloatingText('KO!', sx, sy, 0xef4444);
        break;
      case 'respawn':
        this.audio.play('respawn', 0.35, 0.05);
        break;
      case 'suddendeath':
        this.audio.play('gong', 0.65, 0.01);
        this.spawnFloatingText('MORTE SÚBITA!', VIEW_WIDTH * 0.5, VIEW_HEIGHT * 0.35, 0xef4444);
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

    // Step local prediction
    this.localSim.step({ [this.mySlotIndex]: cmd }, C.FIXED_DT);

    // Smoothly interpolate display positions & trails
    for (let i = 0; i < 4; i++) {
      const p = this.localSim.state.players[i];
      const disp = this.displayPos[i];
      if (!p || !p.active || p.status === PlayerStatus.DEAD) {
        disp.trails = [];
        continue;
      }
      const dist = Math.hypot(p.x - disp.x, p.y - disp.y);
      if (dist > 4.0 || i === this.mySlotIndex) {
        disp.x = p.x;
        disp.y = p.y;
      } else {
        disp.x += (p.x - disp.x) * 0.45;
        disp.y += (p.y - disp.y) * 0.45;
      }
      disp.trails.unshift({ x: disp.x, y: disp.y });
      if (disp.trails.length > 14) disp.trails.pop();
    }
  }

  private renderScene(dt: number): void {
    const map = this.localSim.map;
    const state = this.localSim.state;

    // 1. Arena Bounds, Grid, Vortices, Hill Zone & Walls
    this.arenaGraphics.clear();

    // Subtle arena border
    const left = worldToScreenX(-C.ARENA_HALF_WIDTH);
    const right = worldToScreenX(C.ARENA_HALF_WIDTH);
    const top = worldToScreenY(C.ARENA_HALF_HEIGHT);
    const bottom = worldToScreenY(-C.ARENA_HALF_HEIGHT);
    this.arenaGraphics
      .rect(left, top, right - left, bottom - top)
      .stroke({ color: 0x1e293b, width: 2 });

    // KOTH Crown Zone
    if (map.hillZone) {
      const hx = worldToScreenX(map.hillZone.x);
      const hy = worldToScreenY(map.hillZone.y);
      const hr = map.hillZone.radius * PIXELS_PER_METER;
      this.arenaGraphics
        .circle(hx, hy, hr)
        .fill({ color: 0xf59e0b, alpha: 0.14 })
        .stroke({ color: 0xfbbf24, width: 3 });
    }

    // Gravity Vortices
    for (const v of map.vortices) {
      const vx = worldToScreenX(v.x);
      const vy = worldToScreenY(v.y);
      const vr = v.radius * PIXELS_PER_METER;
      const col = v.strength >= 0 ? 0x8b5cf6 : 0xec4899;
      this.arenaGraphics
        .circle(vx, vy, vr)
        .fill({ color: col, alpha: 0.12 })
        .stroke({ color: col, width: 2, alpha: 0.55 });
    }

    // Walls
    for (const w of state.walls) {
      if (!w.active) continue;
      const x1 = worldToScreenX(w.x1);
      const y1 = worldToScreenY(w.y1);
      const x2 = worldToScreenX(w.x2);
      const y2 = worldToScreenY(w.y2);
      const wallColor =
        w.type === 'deadly'
          ? 0xef4444
          : w.type === 'bouncy'
            ? 0x38bdf8
            : w.type === 'breakable'
              ? 0xf59e0b
              : 0x94a3b8;
      this.arenaGraphics
        .moveTo(x1, y1)
        .lineTo(x2, y2)
        .stroke({ color: wallColor, width: 10, cap: 'round' });
    }

    // 2. Pickups (Gems) & Attach Points
    this.ropesGraphics.clear();

    for (const pk of state.pickups) {
      if (!pk.active) continue;
      const gx = worldToScreenX(pk.x);
      const gy = worldToScreenY(pk.y);
      const color =
        pk.gemType === 'diamond'
          ? 0x38bdf8
          : pk.gemType === 'gold'
            ? 0xfacc15
            : pk.gemType === 'silver'
              ? 0xe2e8f0
              : 0xd97706;
      const radius = pk.gemType === 'diamond' ? 13 : pk.gemType === 'gold' ? 9 : 7;
      this.arenaGraphics
        .poly([gx, gy - radius, gx + radius, gy, gx, gy + radius, gx - radius, gy])
        .fill({ color })
        .stroke({ color: 0x0f172a, width: 2 });
    }

    // Attach Points (Pivots)
    const localPlayer = state.players[this.mySlotIndex];
    const nearestPivot =
      localPlayer && localPlayer.active && localPlayer.status === PlayerStatus.FREE_FALL
        ? this.localSim.findNearestAttachPoint(localPlayer.x, localPlayer.y)
        : null;

    for (const ap of map.attachPoints) {
      const px = worldToScreenX(ap.x);
      const py = worldToScreenY(ap.y);
      const isTarget = nearestPivot?.id === ap.id;

      if (isTarget) {
        this.arenaGraphics
          .circle(px, py, 22)
          .stroke({ color: 0xfbbf24, width: 2.5, alpha: 0.9 });
      }
      this.arenaGraphics
        .circle(px, py, 11)
        .fill({ color: isTarget ? 0xfbbf24 : 0x475569 })
        .stroke({ color: 0xf8fafc, width: 2.5 });
    }

    // 3. Ropes, Motion Trails & Players
    for (let i = 0; i < 4; i++) {
      const p = state.players[i];
      const spr = this.playerSprites[i];
      const lbl = this.playerLabels[i];
      const disp = this.displayPos[i];

      if (!p || !p.active || p.status === PlayerStatus.DEAD) {
        spr.visible = false;
        lbl.visible = false;
        continue;
      }

      spr.visible = true;
      lbl.visible = true;

      const colorMeta = PLAYER_COLORS[p.colorId] ?? PLAYER_COLORS[0];
      const charMeta = CHARACTER_NAMES[p.characterId] ?? CHARACTER_NAMES[0];
      const sx = worldToScreenX(disp.x);
      const sy = worldToScreenY(disp.y);

      // Motion Trail
      for (let t = 0; t < disp.trails.length - 1; t++) {
        const pt = disp.trails[t];
        const alpha = (1 - t / disp.trails.length) * 0.35;
        const r = (1 - t / disp.trails.length) * 14;
        this.ropesGraphics
          .circle(worldToScreenX(pt.x), worldToScreenY(pt.y), r)
          .fill({ color: colorMeta.hex, alpha });
      }

      // Active Rope Line
      if (p.status === PlayerStatus.SWINGING && p.attachedPivotId >= 0) {
        const pivot = map.attachPoints.find((a) => a.id === p.attachedPivotId);
        if (pivot) {
          const px = worldToScreenX(pivot.x);
          const py = worldToScreenY(pivot.y);
          this.ropesGraphics
            .moveTo(px, py)
            .lineTo(sx, sy)
            .stroke({ color: colorMeta.hex, width: 4.5, cap: 'round' });
        }
      }

      // Select authentic Rotastic sprite texture based on player state
      const stateSuffix =
        p.status === PlayerStatus.DIZZY
          ? 'hurt'
          : p.status === PlayerStatus.SWINGING
            ? 'attach'
            : Math.hypot(p.vx, p.vy) >= C.SLAUGHTER_MIN_SPEED
              ? 'ropecut'
              : 'fly';
      const texKey = `/assets/textures/global/t_character_${colorMeta.code}_${charMeta.id}_${stateSuffix}_c.png`;
      const tex = this.texturesCache.get(texKey);
      if (tex) {
        spr.texture = tex;
        spr.tint = 0xffffff;
      } else {
        spr.tint = colorMeta.hex;
      }

      spr.x = sx;
      spr.y = sy;
      spr.rotation = Math.atan2(-p.vy, p.vx) * 0.25;
      spr.alpha = p.invulnTimer > 0 ? (Math.floor(performance.now() / 80) % 2 === 0 ? 0.5 : 1.0) : 1.0;

      // Player Ring & Nameplate
      this.ropesGraphics
        .circle(sx, sy, C.PLAYER_RADIUS * PIXELS_PER_METER)
        .stroke({
          color: p.status === PlayerStatus.DIZZY ? 0xf97316 : colorMeta.hex,
          width: i === this.mySlotIndex ? 3.5 : 2,
        });

      lbl.text = p.status === PlayerStatus.DIZZY ? `💫 ${p.name}` : p.name;
      lbl.x = sx;
      lbl.y = sy;
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

    const cardsHtml = state.players
      .filter((p) => p.active)
      .map((p) => {
        const col = PLAYER_COLORS[p.colorId] ?? PLAYER_COLORS[0];
        const ch = CHARACTER_NAMES[p.characterId] ?? CHARACTER_NAMES[0];
        const isMe = p.slotIndex === this.mySlotIndex;
        return `
          <div class="player-hud-card" style="border-color: ${col.css}">
            <div class="p-name">
              <span style="color: ${col.css}">${p.name}${isMe ? ' (Você)' : ''}</span>
              <span>${p.isBot ? '🤖' : '🎮'}</span>
            </div>
            <div class="p-score">${p.score}</div>
            <div class="p-sub">${ch.label} • K:${p.kills} D:${p.deaths}</div>
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
        }>[${m.mode.toUpperCase()}] ${m.name}</option>`
    ).join('');

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
              <label>Arena Multiplayer (19 Mapas Originais)</label>
              <select id="sel-map">${mapOptionsHtml}</select>
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
          </div>
          <div style="display: flex; gap: 10px">
            ${
              this.lobbyState.sessionState === OnlineSessionState.IN_GAME
                ? '<button class="btn-secondary" id="btn-resume-game">Voltar à Partida</button>'
                : ''
            }
            <button class="btn-primary" id="btn-ready-toggle">
              ${mySlot.ready ? 'Cancelar Pronto' : '✔ Marcar Pronto'}
            </button>
            <button class="btn-success" id="btn-start-match">
              🚀 Iniciar Partida Agora!
            </button>
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
