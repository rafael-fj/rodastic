import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { WebSocket, WebSocketServer } from 'ws';
import {
  CharacterId,
  getMultiplayerMapById,
  MULTIPLAYER_MAPS,
  PlayerColorId,
  PlayerInputCommand,
  ROTASTIC_PHYSICS_CONSTANTS as C,
  RotasticSimulation,
  SimEvent,
} from '@rotastic/physics';
import {
  AppMessageSubType,
  BarrierPhaseCode,
  decodeAppControlMessage,
  decodeClientInputCmd,
  decodePingClockSync,
  encodeAppControlMessage,
  encodeConnectAccept,
  encodePingClockSyncResp,
  encodeWorldSnapshot,
  FinalStandingEntry,
  LobbyFullStatePayload,
  LobbySlotInfo,
  MatchConfigInfo,
  OnlineSessionState,
  PacketType,
  readBlitzHeader,
} from '@rotastic/protocol';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

interface ConnectedClient {
  ws: WebSocket;
  peerId: number;
  slotIndex: number;
  name: string;
  characterId: CharacterId;
  colorId: PlayerColorId;
  ready: boolean;
  rttMs: number;
  outSeq: number;
  latestInput: PlayerInputCommand;
  pendingInputs: PlayerInputCommand[];
}

const BOT_NAMES = ['Botagnar', 'Botlind', 'Porkchop-AI', 'Bonehead-AI'];

export class RoomSession {
  public readonly roomCode: string;
  public sessionState: OnlineSessionState = OnlineSessionState.LOBBY_OPEN;
  public clients = new Map<number, ConnectedClient>(); // peerId -> ConnectedClient
  public leaderPeerId = 0;
  public readyMask1 = 0;
  public readyMask2 = 0;
  public readyMask3 = 0;
  public countdownSec = 0;
  public config: MatchConfigInfo;
  public sim: RotasticSimulation;
  public pendingEvents: SimEvent[] = [];
  public lastStandings: FinalStandingEntry[] = [];

  private nextSeq = 1;
  private countdownTimer = 0;
  private botInputSeq = 1;

  constructor(roomCode: string) {
    this.roomCode = roomCode;
    const defaultMap = MULTIPLAYER_MAPS[0];
    this.config = {
      roomCode,
      mapId: defaultMap.id,
      mode: defaultMap.mode,
      scoreLimit: defaultMap.defaultScoreLimit,
      timeLimitSec: defaultMap.defaultTimeLimitSec,
      botCount: 2, // Default 2 bots so 1 or 2 human players immediately enjoy a lively arena
    };
    this.sim = new RotasticSimulation(
      this.config.mapId,
      this.config.scoreLimit,
      this.config.timeLimitSec
    );
  }

  private allocSeq(): number {
    const s = this.nextSeq;
    this.nextSeq = (this.nextSeq % 0xfffe) + 1;
    return s;
  }

  public addClient(ws: WebSocket, requestedName?: string): ConnectedClient | null {
    // Find first free human slot (0..3)
    const usedSlots = new Set<number>();
    const usedPeers = new Set<number>();
    for (const c of this.clients.values()) {
      usedSlots.add(c.slotIndex);
      usedPeers.add(c.peerId);
    }
    let slotIndex = -1;
    for (let s = 0; s < 4; s++) {
      if (!usedSlots.has(s)) {
        slotIndex = s;
        break;
      }
    }
    if (slotIndex === -1) return null;

    let peerId = 1;
    while (usedPeers.has(peerId)) peerId++;

    const client: ConnectedClient = {
      ws,
      peerId,
      slotIndex,
      name: requestedName || `Knight ${slotIndex + 1}`,
      characterId: (slotIndex % 4) as CharacterId,
      colorId: (slotIndex % 4) as PlayerColorId,
      ready: false,
      rttMs: 12,
      outSeq: 1,
      latestInput: { seq: 0, actionHeld: false, axisX: 0, axisY: 0 },
      pendingInputs: [],
    };

    this.clients.set(peerId, client);
    if (this.leaderPeerId === 0 || !this.clients.has(this.leaderPeerId)) {
      this.leaderPeerId = peerId;
    }

    // If match is already in-game, activate the new player's slot immediately
    if (this.sessionState === OnlineSessionState.IN_GAME) {
      this.sim.configurePlayerSlot(slotIndex, {
        active: true,
        isBot: false,
        name: client.name,
        characterId: client.characterId,
        colorId: client.colorId,
      });
    }

    return client;
  }

  public removeClient(peerId: number): void {
    const client = this.clients.get(peerId);
    if (!client) return;
    this.clients.delete(peerId);

    const bit = ~(1 << peerId);
    this.readyMask1 &= bit;
    this.readyMask2 &= bit;
    this.readyMask3 &= bit;

    if (this.leaderPeerId === peerId) {
      const next = this.clients.keys().next();
      this.leaderPeerId = next.done ? 0 : next.value;
    }

    if (this.clients.size === 0) {
      this.sessionState = OnlineSessionState.LOBBY_OPEN;
      this.readyMask1 = 0;
      this.readyMask2 = 0;
      this.readyMask3 = 0;
      return;
    }

    if (this.sessionState === OnlineSessionState.IN_GAME) {
      this.sim.configurePlayerSlot(client.slotIndex, { active: false });
    }
    this.broadcastLobbyState();
    this.checkBarriers();
  }

  public getActivePeerMask(): number {
    let mask = 0;
    for (const peerId of this.clients.keys()) {
      mask |= 1 << peerId;
    }
    return mask;
  }

  public buildSlotsList(): LobbySlotInfo[] {
    const bySlot = new Map<number, ConnectedClient>();
    for (const c of this.clients.values()) {
      bySlot.set(c.slotIndex, c);
    }

    const slots: LobbySlotInfo[] = [];
    let botsRemaining = this.config.botCount;

    for (let s = 0; s < 4; s++) {
      const human = bySlot.get(s);
      if (human) {
        slots.push({
          slotIndex: s,
          occupied: true,
          peerId: human.peerId,
          isBot: false,
          name: human.name,
          characterId: human.characterId,
          colorId: human.colorId,
          ready: human.ready,
          rttMs: human.rttMs,
        });
      } else if (botsRemaining > 0) {
        botsRemaining--;
        slots.push({
          slotIndex: s,
          occupied: true,
          peerId: 0,
          isBot: true,
          name: BOT_NAMES[s % BOT_NAMES.length],
          characterId: (s % 4) as CharacterId,
          colorId: (s % 4) as PlayerColorId,
          ready: true,
          rttMs: 0,
        });
      } else {
        slots.push({
          slotIndex: s,
          occupied: false,
          peerId: 0,
          isBot: false,
          name: 'Open Slot',
          characterId: (s % 4) as CharacterId,
          colorId: (s % 4) as PlayerColorId,
          ready: false,
          rttMs: 0,
        });
      }
    }
    return slots;
  }

  public broadcastLobbyState(): void {
    const slots = this.buildSlotsList();
    for (const client of this.clients.values()) {
      const payload: LobbyFullStatePayload = {
        sessionState: this.sessionState,
        assignedPeerId: client.peerId,
        assignedSlotIndex: client.slotIndex,
        leaderPeerId: this.leaderPeerId,
        readyMask1: this.readyMask1,
        readyMask2: this.readyMask2,
        readyMask3: this.readyMask3,
        countdownSec: Math.ceil(this.countdownSec),
        slots,
        config: this.config,
      };
      const pkt = encodeAppControlMessage(
        this.allocSeq(),
        0,
        client.peerId,
        AppMessageSubType.LOBBY_FULL_STATE_SYNC,
        payload
      );
      this.sendBinary(client.ws, pkt);
    }
  }

  public handlePacket(client: ConnectedClient, u8: Uint8Array): void {
    const hdr = readBlitzHeader(u8);

    if (hdr.packetType === PacketType.CONNECT_REQUEST) {
      const acceptPkt = encodeConnectAccept(this.allocSeq(), client.peerId, 4);
      this.sendBinary(client.ws, acceptPkt);
      this.broadcastLobbyState();
      return;
    }

    if (hdr.packetType === PacketType.PING_CLOCK_SYNC) {
      const req = decodePingClockSync(u8);
      if (req.thirdWord > 0 && req.thirdWord < 2000) {
        client.rttMs = req.thirdWord;
      }
      const peerRtts: number[] = new Array(16).fill(0);
      for (const c of this.clients.values()) {
        peerRtts[c.slotIndex] = c.rttMs;
      }
      const resp = encodePingClockSyncResp(
        this.allocSeq(),
        client.peerId,
        req.clientSendMs,
        Date.now() & 0xffffffff,
        peerRtts
      );
      this.sendBinary(client.ws, resp);
      return;
    }

    if (hdr.packetType === PacketType.CLIENT_INPUT_CMD) {
      const decoded = decodeClientInputCmd(u8);
      if (decoded.cmd.seq > client.latestInput.seq) {
        client.pendingInputs.push(decoded.cmd);
        if (client.pendingInputs.length > 12) {
          client.pendingInputs.splice(0, client.pendingInputs.length - 12);
        }
        client.latestInput = decoded.cmd;
      }
      return;
    }

    if (hdr.packetType === PacketType.APP_CONTROL_MESSAGE) {
      const msg = decodeAppControlMessage<Record<string, unknown>>(u8);
      this.handleAppMessage(client, msg.subType, msg.payload);
    }
  }

  private handleAppMessage(
    client: ConnectedClient,
    subType: AppMessageSubType,
    payload: Record<string, unknown>
  ): void {
    switch (subType) {
      case AppMessageSubType.CLIENT_JOIN_HANDSHAKE: {
        if (typeof payload.name === 'string' && payload.name.trim().length > 0) {
          client.name = payload.name.trim().slice(0, 20);
        }
        const decision = encodeAppControlMessage(
          this.allocSeq(),
          0,
          client.peerId,
          AppMessageSubType.HOST_JOIN_DECISION,
          { accepted: 1, assignedSlot: client.slotIndex, peerId: client.peerId }
        );
        this.sendBinary(client.ws, decision);
        this.broadcastLobbyState();
        if (this.sessionState === OnlineSessionState.IN_GAME) {
          // Immediately send current world snapshot to late joiner
          const snap = encodeWorldSnapshot(this.allocSeq(), client.peerId, {
            world: this.sim.state,
            events: [],
            serverTimeMs: Date.now() & 0xffffffff,
          });
          this.sendBinary(client.ws, snap);
        }
        break;
      }

      case AppMessageSubType.CLIENT_SLOT_UPDATE_REQ: {
        if (typeof payload.name === 'string' && payload.name.trim().length > 0) {
          client.name = payload.name.trim().slice(0, 20);
        }
        if (typeof payload.characterId === 'number') {
          client.characterId = (Math.abs(payload.characterId) % 4) as CharacterId;
        }
        if (typeof payload.colorId === 'number') {
          client.colorId = (Math.abs(payload.colorId) % 4) as PlayerColorId;
        }
        if (typeof payload.ready === 'boolean') {
          client.ready = payload.ready;
          const bit = 1 << client.peerId;
          if (client.ready) this.readyMask1 |= bit;
          else this.readyMask1 &= ~bit;
        }
        this.broadcastLobbyState();
        this.checkBarriers();
        break;
      }

      case AppMessageSubType.HOST_MATCH_CONFIG_SYNC: {
        if (typeof payload.mapId === 'string') {
          const mapDef = getMultiplayerMapById(payload.mapId);
          this.config.mapId = mapDef.id;
          this.config.mode = mapDef.mode;
          this.config.scoreLimit =
            typeof payload.scoreLimit === 'number' && payload.scoreLimit > 0
              ? payload.scoreLimit
              : mapDef.defaultScoreLimit;
          this.config.timeLimitSec =
            typeof payload.timeLimitSec === 'number' && payload.timeLimitSec >= 30
              ? payload.timeLimitSec
              : mapDef.defaultTimeLimitSec;
        }
        if (typeof payload.botCount === 'number') {
          this.config.botCount = Math.max(0, Math.min(3, Math.floor(payload.botCount)));
        }
        this.broadcastLobbyState();
        break;
      }

      case AppMessageSubType.CLIENT_READY_PHASE_ACK: {
        const phaseCode = Number(payload.phaseCode ?? 0) as BarrierPhaseCode;
        const bit = 1 << client.peerId;

        if (phaseCode === BarrierPhaseCode.LOBBY_READY) {
          const ready = payload.ready !== false;
          client.ready = ready;
          if (ready) this.readyMask1 |= bit;
          else this.readyMask1 &= ~bit;

          if (payload.forceStart === true) {
            // Leader or QuickStart triggered immediate countdown
            this.readyMask1 = this.getActivePeerMask();
          }
        } else if (phaseCode === BarrierPhaseCode.MAP_LOADED) {
          this.readyMask2 |= bit;
        } else if (phaseCode === BarrierPhaseCode.POST_MATCH_ACK) {
          this.readyMask3 |= bit;
        }

        this.broadcastLobbyState();
        this.checkBarriers();
        break;
      }

      case AppMessageSubType.HOST_RETURN_TO_LOBBY: {
        if (client.peerId !== this.leaderPeerId) {
          break;
        }
        this.sim.state.matchFinished = true;
        this.countdownSec = 0;
        this.countdownTimer = 0;
        this.pendingEvents = [];
        this.returnToLobby();
        break;
      }

      default:
        break;
    }
  }

  private checkBarriers(): void {
    const activeMask = this.getActivePeerMask();
    if (activeMask === 0) return;

    // Barrier 0: Lobby Open -> Countdown
    if (
      this.sessionState === OnlineSessionState.LOBBY_OPEN &&
      (this.readyMask1 & activeMask) === activeMask
    ) {
      this.sessionState = OnlineSessionState.LOBBY_COUNTDOWN;
      this.countdownSec = 2.0;
      this.countdownTimer = 2.0;
      this.broadcastLobbyState();
    }

    // Barrier 1: Map Loaded -> Start Match (0x99 IN_GAME)
    if (
      this.sessionState === OnlineSessionState.LOADING_MAP &&
      (this.readyMask2 & activeMask) === activeMask
    ) {
      this.startMatchSimulation();
    }

    // Barrier 2: Post-Match Standings -> Return to Lobby (0x78)
    if (
      this.sessionState === OnlineSessionState.POST_MATCH_STANDINGS &&
      (this.readyMask3 & activeMask) !== 0
    ) {
      this.returnToLobby();
    }
  }

  public startMatchSimulation(): void {
    this.sessionState = OnlineSessionState.IN_GAME;
    this.readyMask1 = 0;
    this.readyMask2 = 0;
    this.readyMask3 = 0;

    this.sim.resetMatch(this.config.mapId, this.config.scoreLimit, this.config.timeLimitSec);
    const slots = this.buildSlotsList();
    for (const slot of slots) {
      this.sim.configurePlayerSlot(slot.slotIndex, {
        active: slot.occupied,
        isBot: slot.isBot,
        name: slot.name,
        characterId: slot.characterId,
        colorId: slot.colorId,
      });
    }

    for (const c of this.clients.values()) {
      c.ready = false;
      c.pendingInputs = [];
      const adv = encodeAppControlMessage(
        this.allocSeq(),
        0,
        c.peerId,
        AppMessageSubType.HOST_PHASE_ADVANCE_CMD,
        { targetPhase: BarrierPhaseCode.MAP_LOADED, sessionState: OnlineSessionState.IN_GAME }
      );
      this.sendBinary(c.ws, adv);
    }
    this.broadcastLobbyState();
  }

  public returnToLobby(): void {
    this.sessionState = OnlineSessionState.LOBBY_OPEN;
    this.readyMask1 = 0;
    this.readyMask2 = 0;
    this.readyMask3 = 0;
    for (const c of this.clients.values()) {
      c.ready = false;
      c.pendingInputs = [];
      const adv = encodeAppControlMessage(
        this.allocSeq(),
        0,
        c.peerId,
        AppMessageSubType.HOST_PHASE_ADVANCE_CMD,
        { targetPhase: BarrierPhaseCode.POST_MATCH_ACK, sessionState: OnlineSessionState.LOBBY_OPEN }
      );
      this.sendBinary(c.ws, adv);
    }
    this.broadcastLobbyState();
  }

  public stepFixed60Hz(): void {
    if (this.clients.size === 0) return;

    if (this.sessionState === OnlineSessionState.LOBBY_COUNTDOWN) {
      this.countdownTimer -= C.FIXED_DT;
      this.countdownSec = Math.max(0, this.countdownTimer);
      if (this.countdownTimer <= 0) {
        this.sessionState = OnlineSessionState.LOADING_MAP;
        this.readyMask2 = 0;
        for (const c of this.clients.values()) {
          const adv = encodeAppControlMessage(
            this.allocSeq(),
            0,
            c.peerId,
            AppMessageSubType.HOST_PHASE_ADVANCE_CMD,
            { targetPhase: BarrierPhaseCode.LOBBY_READY, sessionState: OnlineSessionState.LOADING_MAP }
          );
          this.sendBinary(c.ws, adv);
        }
        // Also start match immediately after 0.25s if map assets are already cached
        setTimeout(() => {
          if (this.sessionState === OnlineSessionState.LOADING_MAP) {
            this.startMatchSimulation();
          }
        }, 250);
      }
      return;
    }

    if (this.sessionState !== OnlineSessionState.IN_GAME) return;

    // Gather inputs for all 4 slots (consume 1 queued client input per tick to avoid burst drops)
    const inputs: Record<number, PlayerInputCommand> = {};
    for (const c of this.clients.values()) {
      inputs[c.slotIndex] = c.pendingInputs.length > 0 ? c.pendingInputs.shift()! : c.latestInput;
    }
    this.botInputSeq++;
    for (const p of this.sim.state.players) {
      if (p.active && p.isBot) {
        inputs[p.slotIndex] = this.sim.computeBotInput(p.slotIndex, this.botInputSeq);
      }
    }

    const frameEvents = this.sim.step(inputs, C.FIXED_DT);
    if (frameEvents.length > 0) {
      this.pendingEvents.push(...frameEvents);
    }

    if (this.sim.state.matchFinished) {
      this.finishMatchAndBroadcastStandings();
    }
  }

  public broadcastWorldSnapshot(): void {
    if (this.sessionState !== OnlineSessionState.IN_GAME || this.clients.size === 0) {
      return;
    }

    const eventsToSend = this.pendingEvents;
    this.pendingEvents = [];

    for (const c of this.clients.values()) {
      const pkt = encodeWorldSnapshot(this.allocSeq(), c.peerId, {
        world: this.sim.state,
        events: eventsToSend,
        serverTimeMs: Date.now() & 0xffffffff,
      });
      this.sendBinary(c.ws, pkt);
    }
  }

  private finishMatchAndBroadcastStandings(): void {
    this.sessionState = OnlineSessionState.POST_MATCH_STANDINGS;
    this.readyMask3 = 0;

    const activePlayers = this.sim.state.players.filter((p) => p.active);
    const sorted = [...activePlayers].sort((a, b) => b.score - a.score || b.kills - a.kills);
    this.lastStandings = sorted.map((p, idx) => ({
      rank: idx + 1,
      slotIndex: p.slotIndex,
      name: p.name,
      characterId: p.characterId,
      colorId: p.colorId,
      score: p.score,
      kills: p.kills,
      deaths: p.deaths,
      gemsCollected: p.gemsCollected,
    }));

    // Send final snapshot so clients see final scores & events
    const eventsToSend = this.pendingEvents;
    this.pendingEvents = [];
    for (const c of this.clients.values()) {
      const snapPkt = encodeWorldSnapshot(this.allocSeq(), c.peerId, {
        world: this.sim.state,
        events: eventsToSend,
        serverTimeMs: Date.now() & 0xffffffff,
      });
      this.sendBinary(c.ws, snapPkt);

      const standingsPkt = encodeAppControlMessage(
        this.allocSeq(),
        0,
        c.peerId,
        AppMessageSubType.HOST_FINAL_STANDINGS,
        {
          winnerSlot: this.sim.state.winnerSlot,
          mapId: this.config.mapId,
          mode: this.config.mode,
          standings: this.lastStandings,
        }
      );
      this.sendBinary(c.ws, standingsPkt);
    }
    this.broadcastLobbyState();
  }

  private sendBinary(ws: WebSocket, data: Uint8Array): void {
    if (ws.readyState === WebSocket.OPEN) {
      ws.send(data);
    }
  }
}

// ============================================================================
// HTTP + WebSocket Server Bootstrap
// ============================================================================
const MIME_TYPES: Record<string, string> = {
  '.html': 'text/html; charset=utf-8',
  '.js': 'application/javascript; charset=utf-8',
  '.mjs': 'application/javascript; charset=utf-8',
  '.css': 'text/css; charset=utf-8',
  '.json': 'application/json; charset=utf-8',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.jpeg': 'image/jpeg',
  '.webp': 'image/webp',
  '.wav': 'audio/wav',
  '.mp3': 'audio/mpeg',
  '.ogg': 'audio/ogg',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon',
  '.woff': 'font/woff',
  '.woff2': 'font/woff2',
};

interface ParsedByteRange {
  start: number;
  end: number;
}

/**
 * Parses an HTTP `Range: bytes=...` header against a known file length.
 * Returns `'unsatisfiable'` for malformed/out-of-bounds ranges, or `null` when absent.
 */
function parseByteRange(
  rangeHeader: string | undefined,
  totalSize: number
): ParsedByteRange | 'unsatisfiable' | null {
  if (!rangeHeader) return null;
  const match = /^bytes=(\d*)-(\d*)$/i.exec(rangeHeader.trim());
  if (!match || totalSize <= 0) return 'unsatisfiable';

  const [, startStr, endStr] = match;
  if (!startStr && !endStr) return 'unsatisfiable';

  let start: number;
  let end: number;
  if (!startStr) {
    const suffixLen = Number(endStr);
    if (!Number.isInteger(suffixLen) || suffixLen <= 0) return 'unsatisfiable';
    start = Math.max(0, totalSize - suffixLen);
    end = totalSize - 1;
  } else {
    start = Number(startStr);
    end = endStr ? Number(endStr) : totalSize - 1;
  }

  if (
    !Number.isInteger(start) ||
    !Number.isInteger(end) ||
    start < 0 ||
    end < start ||
    start >= totalSize
  ) {
    return 'unsatisfiable';
  }

  return { start, end: Math.min(end, totalSize - 1) };
}

function serveStaticFile(
  req: http.IncomingMessage,
  res: http.ServerResponse,
  filePath: string,
  stat: fs.Stats
): void {
  const totalSize = stat.size;
  const ext = path.extname(filePath).toLowerCase();
  const contentType = MIME_TYPES[ext] ?? 'application/octet-stream';
  const etag = `"${totalSize}-${Math.floor(stat.mtimeMs)}"`;
  const baseHeaders: http.OutgoingHttpHeaders = {
    'Content-Type': contentType,
    'Accept-Ranges': 'bytes',
    'Cache-Control': 'no-cache',
    ETag: etag,
  };

  if (!req.headers.range && req.headers['if-none-match'] === etag) {
    res.writeHead(304, baseHeaders);
    res.end();
    return;
  }

  const range = parseByteRange(req.headers.range, totalSize);
  if (range === 'unsatisfiable') {
    res.writeHead(416, {
      ...baseHeaders,
      'Content-Range': `bytes */${totalSize}`,
      'Content-Length': '0',
    });
    res.end();
    return;
  }

  if (range) {
    const chunkLen = range.end - range.start + 1;
    res.writeHead(206, {
      ...baseHeaders,
      'Content-Range': `bytes ${range.start}-${range.end}/${totalSize}`,
      'Content-Length': String(chunkLen),
    });
    if (req.method === 'HEAD') {
      res.end();
      return;
    }
    fs.createReadStream(filePath, { start: range.start, end: range.end }).pipe(res);
    return;
  }

  res.writeHead(200, {
    ...baseHeaders,
    'Content-Length': String(totalSize),
  });
  if (req.method === 'HEAD') {
    res.end();
    return;
  }
  fs.createReadStream(filePath).pipe(res);
}

export function createRotasticServer(port = Number(process.env.PORT) || 3001) {
  const rooms = new Map<string, RoomSession>();
  const getOrCreateRoom = (code: string): RoomSession => {
    const clean = (code || 'MAIN').toUpperCase().replace(/[^A-Z0-9_-]/g, '').slice(0, 12) || 'MAIN';
    let r = rooms.get(clean);
    if (!r) {
      r = new RoomSession(clean);
      rooms.set(clean, r);
    }
    return r;
  };

  // Pre-create default MAIN room
  getOrCreateRoom('MAIN');

  const clientDistDir = path.resolve(__dirname, '..', '..', 'client', 'dist');
  const clientPublicDir = path.resolve(__dirname, '..', '..', 'client', 'public');

  const httpServer = http.createServer((req, res) => {
    const reqUrl = new URL(req.url ?? '/', `http://${req.headers.host ?? 'localhost'}`);

    if (reqUrl.pathname === '/api/health') {
      res.writeHead(200, { 'Content-Type': 'application/json' });
      res.end(
        JSON.stringify({
          status: 'ok',
          service: 'rotastic-authoritative-server',
          tickRateHz: C.TICK_RATE_HZ,
          activeRooms: rooms.size,
          mapsAvailable: MULTIPLAYER_MAPS.length,
          uptimeSec: Math.round(process.uptime()),
        })
      );
      return;
    }

    if (reqUrl.pathname === '/api/rooms') {
      const list = Array.from(rooms.values()).map((r) => ({
        roomCode: r.roomCode,
        sessionState: r.sessionState,
        humanPlayers: r.clients.size,
        botCount: r.config.botCount,
        mapId: r.config.mapId,
        mode: r.config.mode,
      }));
      res.writeHead(200, { 'Content-Type': 'application/json' });
      res.end(JSON.stringify({ rooms: list }));
      return;
    }

    // Serve static files from packages/client/dist or packages/client/public
    const relPath = decodeURIComponent(reqUrl.pathname).replace(/^[/\\]+/, '');
    const candidates: Array<{ root: string; file: string }> = [
      {
        root: clientDistDir,
        file: path.resolve(clientDistDir, relPath === '' ? 'index.html' : relPath),
      },
      {
        root: clientPublicDir,
        file: path.resolve(clientPublicDir, relPath),
      },
    ];

    for (const { root, file: filePath } of candidates) {
      if (filePath !== root && !filePath.startsWith(root + path.sep)) continue;
      if (fs.existsSync(filePath)) {
        const stat = fs.statSync(filePath);
        if (stat.isFile()) {
          serveStaticFile(req, res, filePath, stat);
          return;
        }
      }
    }

    // SPA fallback to index.html if built
    const indexHtml = path.join(clientDistDir, 'index.html');
    if (fs.existsSync(indexHtml)) {
      res.writeHead(200, { 'Content-Type': 'text/html; charset=utf-8' });
      fs.createReadStream(indexHtml).pipe(res);
      return;
    }

    res.writeHead(404, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ error: 'Not Found' }));
  });

  const wss = new WebSocketServer({ server: httpServer, path: '/ws' });

  wss.on('connection', (ws, req) => {
    const reqUrl = new URL(req.url ?? '/ws', `http://${req.headers.host ?? 'localhost'}`);
    const roomCode = reqUrl.searchParams.get('room') ?? 'MAIN';
    const playerName = reqUrl.searchParams.get('name') ?? undefined;
    const room = getOrCreateRoom(roomCode);

    const client = room.addClient(ws, playerName);
    if (!client) {
      ws.close(4000, 'Room is full (max 4 players)');
      return;
    }

    ws.on('message', (data) => {
      try {
        const u8 =
          data instanceof ArrayBuffer
            ? new Uint8Array(data)
            : Array.isArray(data)
              ? new Uint8Array(Buffer.concat(data))
              : new Uint8Array(data.buffer, data.byteOffset, data.byteLength);
        room.handlePacket(client, u8);
      } catch (err) {
        console.error('[server] Error handling packet:', err);
      }
    });

    ws.on('close', () => {
      room.removeClient(client.peerId);
    });
  });

  // Authoritative 60.0 Hz fixed-dt accumulator & 30.0 Hz network snapshot loop
  let tickCounter = 0;
  let lastStepMs = performance.now();
  let accumulatorSec = 0;
  const simInterval = setInterval(() => {
    const nowMs = performance.now();
    const elapsedSec = Math.min(0.1, Math.max(0, (nowMs - lastStepMs) / 1000));
    lastStepMs = nowMs;
    accumulatorSec += elapsedSec;
    while (accumulatorSec >= C.FIXED_DT) {
      accumulatorSec -= C.FIXED_DT;
      tickCounter++;
      for (const room of rooms.values()) {
        room.stepFixed60Hz();
        if (tickCounter % 2 === 0) {
          room.broadcastWorldSnapshot();
        }
      }
    }
  }, 8);

  const start = (): Promise<number> =>
    new Promise((resolve) => {
      httpServer.listen(port, process.env.HOST || '0.0.0.0', () => {
        const addr = httpServer.address();
        const actualPort = typeof addr === 'object' && addr ? addr.port : port;
        console.log(
          `[rotastic-server] Authoritative match server listening on http://localhost:${actualPort} (WS: ws://localhost:${actualPort}/ws)`
        );
        resolve(actualPort);
      });
    });

  const stop = (): Promise<void> =>
    new Promise((resolve) => {
      clearInterval(simInterval);
      wss.close();
      httpServer.close(() => resolve());
    });

  return { httpServer, wss, rooms, getOrCreateRoom, start, stop };
}

// Auto-start when executed directly
if (process.argv[1] && path.resolve(process.argv[1]) === path.resolve(__filename)) {
  const srv = createRotasticServer();
  srv.start();
}
