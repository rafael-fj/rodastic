/**
 * @rotastic/protocol — Binary Framing (8-byte BlitzTech Header), Clock Sync (0x0B),
 * Application Lobby Protocol (0x25 -> subTypes 0x00..0x14) & World Snapshot Codec (0xC1/0xC2).
 *
 * Mirrors the exact wire protocol extracted from Rotastic.exe in Phase 3 (`docs/spec/protocol.md`).
 */

import {
  CharacterId,
  GameModeId,
  PlayerColorId,
  PlayerInputCommand,
  PlayerStatus,
  SimEvent,
  WorldSimState,
} from '@rotastic/physics';

export const BLITZ_HEADER_BYTES = 8;

export enum PacketType {
  LAN_DISCOVERY_PING = 0x00,
  LAN_DISCOVERY_PONG = 0x01,
  CONNECT_REQUEST = 0x03,
  CONNECT_ACCEPT = 0x04,
  CONNECT_REJECT = 0x06,
  PEER_CONNECTED_LOCAL = 0x08,
  PEER_DISCONNECTED = 0x09,
  KEEPALIVE_PROBE = 0x0a,
  PING_CLOCK_SYNC = 0x0b,
  TRANSPORT_ACK = 0x0d,
  TRANSPORT_SACK = 0x0e,
  PEER_JOINED_ANNOUNCE = 0x0f,
  PEER_TABLE_SYNC = 0x10,
  APP_CONTROL_MESSAGE = 0x25,
  SESSION_CLOSED = 0x26,
  SESSION_LOCKED = 0x27,
  WORLD_SNAPSHOT = 0xc1,
  CLIENT_INPUT_CMD = 0xc2,
}

export enum PacketFlags {
  UNRELIABLE_UNORDERED = 0x00,
  RELIABLE = 0x02,
  LOCAL_LOOPBACK = 0x08,
  HOST_RELAYED = 0x10,
  ORDERED = 0x20,
  RELIABLE_ORDERED = 0x22,
}

export enum AppMessageSubType {
  CLIENT_JOIN_HANDSHAKE = 0x00,
  HOST_JOIN_DECISION = 0x01,
  LOBBY_FULL_STATE_SYNC = 0x02,
  CLIENT_SLOT_UPDATE_REQ = 0x05,
  HOST_SLOT_UPDATE_BROADCAST = 0x06,
  HOST_MATCH_CONFIG_SYNC = 0x07,
  CLIENT_READY_PHASE_ACK = 0x0d,
  HOST_PHASE_ADVANCE_CMD = 0x0e,
  CLIENT_RESULTS_REPORT = 0x13,
  HOST_FINAL_STANDINGS = 0x14,
  HOST_RETURN_TO_LOBBY = 0x15,
}

export enum OnlineSessionState {
  IDLE = 0x01,
  QUICKMATCH_SEARCH = 0x0b,
  TRANSPORT_CONNECTING = 0x2a,
  WAIT_JOIN_DECISION = 0x2c,
  LOBBY_OPEN = 0x78,
  LOBBY_COUNTDOWN = 0x7a,
  LOADING_MAP = 0x8f,
  IN_GAME = 0x99,
  REPORTING_RESULTS = 0xa8,
  POST_MATCH_STANDINGS = 0xb8,
  CLOSING = 0xda,
}

export enum BarrierPhaseCode {
  LOBBY_READY = 0,
  MAP_LOADED = 1,
  POST_MATCH_ACK = 2,
}

export interface BlitzHeader {
  packetType: PacketType;
  flags: number;
  totalSize: number;
  seqNum: number;
  senderPeerId: number;
  destPeerId: number;
}

export interface LobbySlotInfo {
  slotIndex: number;
  occupied: boolean;
  peerId: number; // 0 = Server/Bot, 1..4 = Connected Client
  isBot: boolean;
  name: string;
  characterId: CharacterId;
  colorId: PlayerColorId;
  ready: boolean;
  rttMs: number;
}

export interface MatchConfigInfo {
  roomCode: string;
  mapId: string;
  mode: GameModeId;
  scoreLimit: number;
  timeLimitSec: number;
  botCount: number;
}

export interface LobbyFullStatePayload {
  sessionState: OnlineSessionState;
  assignedPeerId: number;
  assignedSlotIndex: number;
  leaderPeerId: number;
  readyMask1: number;
  readyMask2: number;
  readyMask3: number;
  countdownSec: number;
  slots: LobbySlotInfo[];
  config: MatchConfigInfo;
}

export interface FinalStandingEntry {
  rank: number;
  slotIndex: number;
  name: string;
  characterId: CharacterId;
  colorId: PlayerColorId;
  score: number;
  kills: number;
  deaths: number;
  gemsCollected: number;
}

export interface WorldSnapshotPayload {
  world: WorldSimState;
  events: SimEvent[];
  serverTimeMs: number;
}

// ============================================================================
// 8-Byte BlitzTech Transport Header Encoder & Decoder
// ============================================================================
export function writeBlitzHeader(
  view: DataView,
  packetType: PacketType,
  flags: number,
  totalSize: number,
  seqNum: number,
  senderPeerId: number,
  destPeerId: number
): void {
  view.setUint8(0, packetType & 0xff);
  view.setUint8(1, flags & 0xff);
  view.setUint16(2, totalSize & 0xffff, true);
  view.setUint16(4, seqNum & 0xffff, true);
  view.setUint8(6, senderPeerId & 0xff);
  view.setUint8(7, destPeerId & 0xff);
}

export function readBlitzHeader(buf: ArrayBuffer | Uint8Array): BlitzHeader {
  const u8 = buf instanceof Uint8Array ? buf : new Uint8Array(buf);
  if (u8.byteLength < BLITZ_HEADER_BYTES) {
    throw new Error(`Packet too short (${u8.byteLength} < ${BLITZ_HEADER_BYTES})`);
  }
  const view = new DataView(u8.buffer, u8.byteOffset, u8.byteLength);
  return {
    packetType: view.getUint8(0) as PacketType,
    flags: view.getUint8(1),
    totalSize: view.getUint16(2, true),
    seqNum: view.getUint16(4, true),
    senderPeerId: view.getUint8(6),
    destPeerId: view.getUint8(7),
  };
}

// ============================================================================
// Transport Packets: 0x03 CONNECT_REQUEST, 0x04 CONNECT_ACCEPT, 0x0B PING_CLOCK_SYNC
// ============================================================================
export function encodeConnectRequest(
  seqNum: number,
  protocolVersion = 1,
  joinToken = 0x524f5441
): Uint8Array {
  const buf = new ArrayBuffer(16);
  const view = new DataView(buf);
  writeBlitzHeader(view, PacketType.CONNECT_REQUEST, PacketFlags.RELIABLE_ORDERED, 16, seqNum, 0xfe, 0);
  view.setUint32(8, protocolVersion, true);
  view.setUint32(12, joinToken, true);
  return new Uint8Array(buf);
}

export function encodeConnectAccept(
  seqNum: number,
  assignedPeerId: number,
  maxPeers = 4,
  sessionFlags = 0x80200
): Uint8Array {
  const buf = new ArrayBuffer(16);
  const view = new DataView(buf);
  writeBlitzHeader(
    view,
    PacketType.CONNECT_ACCEPT,
    PacketFlags.RELIABLE_ORDERED,
    16,
    seqNum,
    0,
    assignedPeerId
  );
  view.setUint8(8, assignedPeerId & 0xff);
  view.setUint8(9, 0); // hostPeerId = 0
  view.setUint16(10, maxPeers, true);
  view.setUint32(12, sessionFlags, true);
  return new Uint8Array(buf);
}

export function decodeConnectAccept(u8: Uint8Array): {
  assignedPeerId: number;
  hostPeerId: number;
  maxPeers: number;
  sessionFlags: number;
} {
  const view = new DataView(u8.buffer, u8.byteOffset, u8.byteLength);
  return {
    assignedPeerId: view.getUint8(8),
    hostPeerId: view.getUint8(9),
    maxPeers: view.getUint16(10, true),
    sessionFlags: view.getUint32(12, true),
  };
}

/**
 * 0x0B PING_CLOCK_SYNC (20 bytes Client->Host, 36 bytes Host->Client with 16-byte RTT table)
 */
export function encodePingClockSyncReq(
  seqNum: number,
  senderPeerId: number,
  clientSendMs: number,
  hostTimeEchoMs = 0,
  lastRttMs = 0
): Uint8Array {
  const buf = new ArrayBuffer(20);
  const view = new DataView(buf);
  writeBlitzHeader(
    view,
    PacketType.PING_CLOCK_SYNC,
    PacketFlags.UNRELIABLE_UNORDERED,
    20,
    seqNum,
    senderPeerId,
    0
  );
  view.setUint32(8, clientSendMs >>> 0, true);
  view.setUint32(12, hostTimeEchoMs >>> 0, true);
  view.setUint32(16, lastRttMs >>> 0, true);
  return new Uint8Array(buf);
}

export function encodePingClockSyncResp(
  seqNum: number,
  destPeerId: number,
  clientSendMs: number,
  hostCurrentMs: number,
  peerRttsMs: number[]
): Uint8Array {
  const buf = new ArrayBuffer(36);
  const view = new DataView(buf);
  writeBlitzHeader(
    view,
    PacketType.PING_CLOCK_SYNC,
    PacketFlags.UNRELIABLE_UNORDERED,
    36,
    seqNum,
    0,
    destPeerId
  );
  view.setUint32(8, clientSendMs >>> 0, true);
  view.setUint32(12, hostCurrentMs >>> 0, true);
  view.setUint32(16, seqNum >>> 0, true);
  // 16 compressed RTT bytes (1 byte per slot in 4ms increments, capped at 1020ms)
  for (let i = 0; i < 16; i++) {
    const rtt = peerRttsMs[i] ?? 0;
    view.setUint8(20 + i, Math.min(255, Math.round(rtt / 4)));
  }
  return new Uint8Array(buf);
}

export function decodePingClockSync(u8: Uint8Array): {
  clientSendMs: number;
  hostCurrentMs: number;
  thirdWord: number;
  peerRttsMs: number[];
} {
  const view = new DataView(u8.buffer, u8.byteOffset, u8.byteLength);
  const clientSendMs = view.getUint32(8, true);
  const hostCurrentMs = view.getUint32(12, true);
  const thirdWord = view.getUint32(16, true);
  const peerRttsMs: number[] = [];
  if (u8.byteLength >= 36) {
    for (let i = 0; i < 16; i++) {
      peerRttsMs.push(view.getUint8(20 + i) * 4);
    }
  }
  return { clientSendMs, hostCurrentMs, thirdWord, peerRttsMs };
}

// ============================================================================
// Binary Client Input Command (0xC2 — 16 bytes)
// ============================================================================
export function encodeClientInputCmd(
  seqNum: number,
  senderPeerId: number,
  slotIndex: number,
  cmd: PlayerInputCommand
): Uint8Array {
  const buf = new ArrayBuffer(16);
  const view = new DataView(buf);
  writeBlitzHeader(
    view,
    PacketType.CLIENT_INPUT_CMD,
    PacketFlags.UNRELIABLE_UNORDERED,
    16,
    seqNum,
    senderPeerId,
    0
  );
  view.setUint32(8, cmd.seq >>> 0, true);
  view.setUint8(12, slotIndex & 0x03);
  const flags = (cmd.actionHeld ? 1 : 0) | (cmd.reverseHeld ? 2 : 0);
  view.setUint8(13, flags);
  view.setInt8(14, Math.round(Math.max(-1, Math.min(1, cmd.axisX)) * 127));
  view.setInt8(15, Math.round(Math.max(-1, Math.min(1, cmd.axisY)) * 127));
  return new Uint8Array(buf);
}

export function decodeClientInputCmd(u8: Uint8Array): {
  slotIndex: number;
  cmd: PlayerInputCommand;
} {
  const view = new DataView(u8.buffer, u8.byteOffset, u8.byteLength);
  const seq = view.getUint32(8, true);
  const slotIndex = view.getUint8(12);
  const flags = view.getUint8(13);
  const actionHeld = (flags & 1) !== 0;
  const reverseHeld = (flags & 2) !== 0;
  const axisX = Number((view.getInt8(14) / 127).toFixed(3));
  const axisY = Number((view.getInt8(15) / 127).toFixed(3));
  return {
    slotIndex,
    cmd: { seq, actionHeld, reverseHeld, axisX, axisY },
  };
}

// ============================================================================
// Application Control Messages (packetType = 0x25, subTypes 0x00..0x14)
// ============================================================================
const textEncoder = new TextEncoder();
const textDecoder = new TextDecoder();

export function encodeAppControlMessage<T>(
  seqNum: number,
  senderPeerId: number,
  destPeerId: number,
  subType: AppMessageSubType,
  payload: T
): Uint8Array {
  const jsonBytes = textEncoder.encode(JSON.stringify(payload));
  const totalSize = 12 + jsonBytes.byteLength;
  const buf = new ArrayBuffer(totalSize);
  const view = new DataView(buf);
  writeBlitzHeader(
    view,
    PacketType.APP_CONTROL_MESSAGE,
    PacketFlags.RELIABLE_ORDERED,
    totalSize,
    seqNum,
    senderPeerId,
    destPeerId
  );
  view.setUint32(8, subType >>> 0, true);
  new Uint8Array(buf, 12).set(jsonBytes);
  return new Uint8Array(buf);
}

export function decodeAppControlMessage<T = unknown>(u8: Uint8Array): {
  header: BlitzHeader;
  subType: AppMessageSubType;
  payload: T;
} {
  const header = readBlitzHeader(u8);
  const view = new DataView(u8.buffer, u8.byteOffset, u8.byteLength);
  const subType = view.getUint32(8, true) as AppMessageSubType;
  const jsonStr = textDecoder.decode(u8.subarray(12));
  const payload = (jsonStr ? JSON.parse(jsonStr) : {}) as T;
  return { header, subType, payload };
}

// ============================================================================
// World Snapshot Packet (0xC1)
// ============================================================================
export function encodeWorldSnapshot(
  seqNum: number,
  destPeerId: number,
  snapshot: WorldSnapshotPayload
): Uint8Array {
  const jsonBytes = textEncoder.encode(JSON.stringify(snapshot));
  const totalSize = 8 + jsonBytes.byteLength;
  const buf = new ArrayBuffer(totalSize);
  const view = new DataView(buf);
  writeBlitzHeader(
    view,
    PacketType.WORLD_SNAPSHOT,
    PacketFlags.UNRELIABLE_UNORDERED,
    totalSize,
    seqNum,
    0,
    destPeerId
  );
  new Uint8Array(buf, 8).set(jsonBytes);
  return new Uint8Array(buf);
}

export function decodeWorldSnapshot(u8: Uint8Array): {
  header: BlitzHeader;
  snapshot: WorldSnapshotPayload;
} {
  const header = readBlitzHeader(u8);
  const jsonStr = textDecoder.decode(u8.subarray(8));
  const snapshot = JSON.parse(jsonStr) as WorldSnapshotPayload;
  return { header, snapshot };
}
