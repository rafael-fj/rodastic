import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { WebSocket } from 'ws';
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
  LobbyFullStatePayload,
  OnlineSessionState,
  PacketType,
  readBlitzHeader,
} from '@rotastic/protocol';
import { createRotasticServer } from './index.js';

describe('@rotastic/server — 2-Client End-to-End Authoritative Match Lifecycle', () => {
  const srv = createRotasticServer(0);
  let port = 0;

  beforeAll(async () => {
    port = await srv.start();
  });

  afterAll(async () => {
    await srv.stop();
  });

  it('connects 2 clients, completes BlitzTech 0x03/0x04 + 0x25 handshake, syncs clock (0x0B), advances barriers and streams 60Hz snapshots (0xC1)', async () => {
    const ws1 = new WebSocket(`ws://127.0.0.1:${port}/ws?room=E2ETEST&name=PlayerOne`);
    const ws2 = new WebSocket(`ws://127.0.0.1:${port}/ws?room=E2ETEST&name=PlayerTwo`);
    ws1.binaryType = 'arraybuffer';
    ws2.binaryType = 'arraybuffer';

    let peerId1 = 0;
    let peerId2 = 0;
    let lobbyState1: LobbyFullStatePayload | null = null;
    let pongReceived = false;
    let snapshotsReceived1 = 0;
    let snapshotsReceived2 = 0;

    const setupClient = (
      ws: WebSocket,
      name: string,
      onAssigned: (id: number) => void,
      onSnapshot: () => void
    ) => {
      ws.on('open', () => {
        ws.send(encodeConnectRequest(1));
      });

      ws.on('message', (data) => {
        const u8 = new Uint8Array(data as ArrayBuffer);
        const hdr = readBlitzHeader(u8);

        if (hdr.packetType === PacketType.CONNECT_ACCEPT) {
          const acc = decodeConnectAccept(u8);
          onAssigned(acc.assignedPeerId);
          ws.send(
            encodeAppControlMessage(
              2,
              acc.assignedPeerId,
              0,
              AppMessageSubType.CLIENT_JOIN_HANDSHAKE,
              { localPlayerCount: 1, name }
            )
          );
          ws.send(encodePingClockSyncReq(3, acc.assignedPeerId, 10000, 0, 15));
        } else if (hdr.packetType === PacketType.PING_CLOCK_SYNC) {
          const pong = decodePingClockSync(u8);
          if (pong.clientSendMs === 10000) {
            pongReceived = true;
          }
        } else if (hdr.packetType === PacketType.APP_CONTROL_MESSAGE) {
          const msg = decodeAppControlMessage<Record<string, unknown>>(u8);
          if (msg.subType === AppMessageSubType.LOBBY_FULL_STATE_SYNC) {
            lobbyState1 = msg.payload as unknown as LobbyFullStatePayload;
          } else if (msg.subType === AppMessageSubType.HOST_PHASE_ADVANCE_CMD) {
            const targetPhase = Number(msg.payload.targetPhase ?? 0);
            if (targetPhase === BarrierPhaseCode.LOBBY_READY) {
              ws.send(
                encodeAppControlMessage(
                  4,
                  1,
                  0,
                  AppMessageSubType.CLIENT_READY_PHASE_ACK,
                  { phaseCode: BarrierPhaseCode.MAP_LOADED, ready: true }
                )
              );
            }
          }
        } else if (hdr.packetType === PacketType.WORLD_SNAPSHOT) {
          const { snapshot } = decodeWorldSnapshot(u8);
          expect(snapshot.world.players.length).toBe(4);
          onSnapshot();
        }
      });
    };

    setupClient(
      ws1,
      'PlayerOne',
      (id) => {
        peerId1 = id;
      },
      () => {
        snapshotsReceived1++;
      }
    );

    setupClient(
      ws2,
      'PlayerTwo',
      (id) => {
        peerId2 = id;
      },
      () => {
        snapshotsReceived2++;
      }
    );

    // Wait for both clients to join lobby
    await new Promise((r) => setTimeout(r, 150));
    expect(peerId1).toBe(1);
    expect(peerId2).toBe(2);
    expect(pongReceived).toBe(true);
    expect(lobbyState1).not.toBeNull();

    // Force-start the match from client 1 and also start simulation immediately for fast test
    const room = srv.rooms.get('E2ETEST')!;
    room.startMatchSimulation();
    expect(room.sessionState).toBe(OnlineSessionState.IN_GAME);

    // Send input commands from both clients
    ws1.send(encodeClientInputCmd(10, peerId1, 0, { seq: 1, actionHeld: true, axisX: 1, axisY: 0 }));
    ws2.send(encodeClientInputCmd(10, peerId2, 1, { seq: 1, actionHeld: true, axisX: -1, axisY: 0 }));

    await new Promise((r) => setTimeout(r, 180));

    expect(snapshotsReceived1).toBeGreaterThanOrEqual(2);
    expect(snapshotsReceived2).toBeGreaterThanOrEqual(2);
    expect((lobbyState1 as LobbyFullStatePayload | null)?.config.mode).toBe('deathmatch');

    // Non-host cannot end match early via HOST_RETURN_TO_LOBBY
    ws2.send(
      encodeAppControlMessage(11, peerId2, 0, AppMessageSubType.HOST_RETURN_TO_LOBBY, {
        reason: 'unauthorized_client',
      })
    );
    await new Promise((r) => setTimeout(r, 80));
    expect(room.sessionState).toBe(OnlineSessionState.IN_GAME);

    // Host (leaderPeerId === peerId1) can end match early and return all peers to Lobby
    ws1.send(
      encodeAppControlMessage(11, peerId1, 0, AppMessageSubType.HOST_RETURN_TO_LOBBY, {
        reason: 'host_ended_match',
      })
    );
    await new Promise((r) => setTimeout(r, 100));
    expect(room.sessionState).toBe(OnlineSessionState.LOBBY_OPEN);
    expect((lobbyState1 as LobbyFullStatePayload | null)?.sessionState).toBe(OnlineSessionState.LOBBY_OPEN);

    ws1.close();
    ws2.close();
  });
});
