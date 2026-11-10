import { describe, expect, it } from 'vitest';
import {
  AppMessageSubType,
  BarrierPhaseCode,
  decodeAppControlMessage,
  decodeClientInputCmd,
  decodeConnectAccept,
  decodePingClockSync,
  encodeAppControlMessage,
  encodeClientInputCmd,
  encodeConnectAccept,
  encodeConnectRequest,
  encodePingClockSyncReq,
  encodePingClockSyncResp,
  PacketFlags,
  PacketType,
  readBlitzHeader,
} from './index.js';

describe('@rotastic/protocol — BlitzTech 8-Byte Framing & Message Codec', () => {
  it('encodes and decodes 8-byte BlitzTech header and CONNECT_REQUEST / CONNECT_ACCEPT', () => {
    const req = encodeConnectRequest(1);
    const reqHdr = readBlitzHeader(req);
    expect(req.byteLength).toBe(16);
    expect(reqHdr.packetType).toBe(PacketType.CONNECT_REQUEST);
    expect(reqHdr.flags).toBe(PacketFlags.RELIABLE_ORDERED);
    expect(reqHdr.senderPeerId).toBe(0xfe);
    expect(reqHdr.destPeerId).toBe(0);

    const acc = encodeConnectAccept(2, 1, 4);
    const accHdr = readBlitzHeader(acc);
    const accBody = decodeConnectAccept(acc);
    expect(accHdr.packetType).toBe(PacketType.CONNECT_ACCEPT);
    expect(accBody.assignedPeerId).toBe(1);
    expect(accBody.hostPeerId).toBe(0);
    expect(accBody.maxPeers).toBe(4);
  });

  it('encodes and decodes 0x0B PING_CLOCK_SYNC with 16-byte compressed peer RTT table', () => {
    const ping = encodePingClockSyncReq(10, 2, 123456, 123400, 32);
    expect(ping.byteLength).toBe(20);

    const pong = encodePingClockSyncResp(11, 2, 123456, 123480, [0, 24, 48, 60]);
    expect(pong.byteLength).toBe(36);

    const decoded = decodePingClockSync(pong);
    expect(decoded.clientSendMs).toBe(123456);
    expect(decoded.hostCurrentMs).toBe(123480);
    expect(decoded.peerRttsMs.slice(0, 4)).toEqual([0, 24, 48, 60]);
  });

  it('encodes and decodes 0x25 APP_CONTROL_MESSAGE (subType 0x0D Barrier Ack)', () => {
    const pkt = encodeAppControlMessage(5, 1, 0, AppMessageSubType.CLIENT_READY_PHASE_ACK, {
      phaseCode: BarrierPhaseCode.LOBBY_READY,
      ready: true,
    });
    const decoded = decodeAppControlMessage<{ phaseCode: number; ready: boolean }>(pkt);
    expect(decoded.header.packetType).toBe(PacketType.APP_CONTROL_MESSAGE);
    expect(decoded.subType).toBe(AppMessageSubType.CLIENT_READY_PHASE_ACK);
    expect(decoded.payload.phaseCode).toBe(BarrierPhaseCode.LOBBY_READY);
    expect(decoded.payload.ready).toBe(true);
  });

  it('encodes and decodes 16-byte binary 0xC2 CLIENT_INPUT_CMD with quantized axes', () => {
    const pkt = encodeClientInputCmd(42, 1, 0, {
      seq: 99,
      actionHeld: true,
      axisX: -0.5,
      axisY: 1.0,
    });
    expect(pkt.byteLength).toBe(16);
    const decoded = decodeClientInputCmd(pkt);
    expect(decoded.slotIndex).toBe(0);
    expect(decoded.cmd.seq).toBe(99);
    expect(decoded.cmd.actionHeld).toBe(true);
    expect(decoded.cmd.axisX).toBeCloseTo(-0.5, 1);
    expect(decoded.cmd.axisY).toBeCloseTo(1.0, 2);
  });
});
