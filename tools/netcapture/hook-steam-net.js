/**
 * Frida Dynamic Netcode Interceptor for Rotastic.exe (x86 32-bit, ImageBase 0x00400000)
 *
 * Hooks the 4 layers of the BlitzTech / Steamworks networking stack identified in Phase 3:
 *   1. CSteamP2PSocket::SendPacket    @ 0x006BD6C0 (or RVA +0x2BD6C0)
 *   2. CSteamP2PSocket::ReceivePacket @ 0x006BD7A0 (or RVA +0x2BD7A0)
 *   3. Transport_SendUnicast          @ 0x0058CD50 (or RVA +0x18CD50)
 *   4. Transport_SendBroadcast        @ 0x0058CE90 (or RVA +0x18CE90)
 *   5. Lobby_HostHandleClientMsg      @ 0x006B8030 (or RVA +0x2B8030)
 *   6. Lobby_ClientHandleHostMsg      @ 0x006B8420 (or RVA +0x2B8420)
 *   7. OnlineSession_UpdateState      @ 0x006BA4E0 (or RVA +0x2BA4E0)
 *
 * Usage:
 *   frida -n Rotastic.exe -l tools/netcapture/hook-steam-net.js --logfile reference/captures/session.jsonl
 */

'use strict';

const mod = Process.findModuleByName('Rotastic.exe') || Process.enumerateModules()[0];
const base = mod.base;

function rva(va) {
  return base.add(va - 0x00400000);
}

const PACKET_TYPE_NAMES = {
  0x00: 'LAN_DISCOVERY_PING',
  0x01: 'LAN_DISCOVERY_PONG',
  0x03: 'CONNECT_REQUEST',
  0x04: 'CONNECT_ACCEPT',
  0x06: 'CONNECT_REJECT',
  0x08: 'PEER_CONNECTED_LOCAL',
  0x09: 'PEER_DISCONNECTED',
  0x0a: 'KEEPALIVE_PROBE',
  0x0b: 'PING_CLOCK_SYNC',
  0x0d: 'TRANSPORT_ACK',
  0x0e: 'TRANSPORT_SACK',
  0x0f: 'PEER_JOINED_ANNOUNCE',
  0x10: 'PEER_TABLE_SYNC',
  0x1b: 'DATABLOCK_SYNC',
  0x1c: 'DATABLOCK_LOCK_REQ',
  0x1f: 'DATABLOCK_UNLOCK',
  0x20: 'DATABLOCK_UPDATE',
  0x25: 'APP_CONTROL_MESSAGE',
  0x26: 'SESSION_CLOSED',
  0x27: 'SESSION_LOCKED',
};

const APP_SUBTYPE_NAMES = {
  0x00: 'CLIENT_JOIN_HANDSHAKE',
  0x01: 'HOST_JOIN_DECISION',
  0x02: 'LOBBY_FULL_STATE_SYNC',
  0x05: 'CLIENT_SLOT_UPDATE_REQ',
  0x06: 'HOST_SLOT_UPDATE_BROADCAST',
  0x07: 'HOST_MATCH_CONFIG_SYNC',
  0x0d: 'CLIENT_READY_PHASE_ACK',
  0x0e: 'HOST_PHASE_ADVANCE_CMD',
  0x13: 'CLIENT_RESULTS_REPORT',
  0x14: 'HOST_FINAL_STANDINGS',
};

function decodePacketHeader(bufPtr, byteLen) {
  if (byteLen < 8 || bufPtr.isNull()) {
    return { rawLen: byteLen };
  }
  const pktType = bufPtr.readU8();
  const flags = bufPtr.add(1).readU8();
  const totalSize = bufPtr.add(2).readU16();
  const seqNum = bufPtr.add(4).readU16();
  const senderPeerId = bufPtr.add(6).readU8();
  const destPeerId = bufPtr.add(7).readU8();

  let pktTypeName = PACKET_TYPE_NAMES[pktType];
  if (!pktTypeName) {
    if (pktType >= 0xc1 && pktType <= 0xfc) {
      pktTypeName = `REPLICATION_SNAPSHOT_0x${pktType.toString(16).toUpperCase()}`;
    } else {
      pktTypeName = `UNKNOWN_0x${pktType.toString(16).toUpperCase()}`;
    }
  }

  const info = {
    pktType: `0x${pktType.toString(16).padStart(2, '0')}`,
    pktTypeName,
    flags: `0x${flags.toString(16).padStart(2, '0')}`,
    reliable: (flags & 0x02) !== 0,
    ordered: (flags & 0x20) !== 0,
    relayed: (flags & 0x10) !== 0,
    totalSize,
    seqNum,
    senderPeerId,
    destPeerId,
  };

  if (pktType === 0x25 && byteLen >= 12) {
    const subType = bufPtr.add(8).readU32();
    info.appSubType = `0x${subType.toString(16).padStart(2, '0')}`;
    info.appSubTypeName = APP_SUBTYPE_NAMES[subType] || `SUBTYPE_${subType}`;
    if ((subType === 0x0d || subType === 0x0e) && byteLen >= 16) {
      info.phaseCode = bufPtr.add(12).readU32();
    }
  }

  const dumpLen = Math.min(byteLen, 128);
  const bytes = new Uint8Array(bufPtr.readByteArray(dumpLen));
  info.hexPreview = Array.from(bytes)
    .map((b) => b.toString(16).padStart(2, '0'))
    .join('');

  return info;
}

function readSteamIdFromSockaddr(sockaddrPtr) {
  if (!sockaddrPtr || sockaddrPtr.isNull()) return '0';
  const low = sockaddrPtr.add(8).readU32();
  const high = sockaddrPtr.add(12).readU32();
  return `0x${high.toString(16).padStart(8, '0')}${low.toString(16).padStart(8, '0')}`;
}

function emitEvent(eventObj) {
  const payload = Object.assign({ ts: Date.now() }, eventObj);
  console.log(JSON.stringify(payload));
}

// 1. Hook CSteamP2PSocket::SendPacket @ 0x006BD6C0
// Prototype (__thiscall): int SendPacket(void* this, sockaddr_in* destAddr, void* data, int len)
Interceptor.attach(rva(0x006bd6c0), {
  onEnter(args) {
    const destAddr = args[0];
    const dataPtr = args[1];
    const len = args[2].toInt32();
    const steamId = readSteamIdFromSockaddr(destAddr);
    const decoded = decodePacketHeader(dataPtr, len);
    emitEvent({
      dir: 'TX_P2P',
      remoteSteamId: steamId,
      len,
      ...decoded,
    });
  },
});

// 2. Hook CSteamP2PSocket::ReceivePacket @ 0x006BD7A0
// Prototype (__thiscall): int ReceivePacket(void* this, sockaddr_in* srcAddrOut, void* bufOut, int maxLen)
Interceptor.attach(rva(0x006bd7a0), {
  onEnter(args) {
    this.srcAddrOut = args[0];
    this.bufOut = args[1];
  },
  onLeave(retval) {
    const bytesRead = retval.toInt32();
    if (bytesRead > 0) {
      const steamId = readSteamIdFromSockaddr(this.srcAddrOut);
      const decoded = decodePacketHeader(this.bufOut, bytesRead);
      emitEvent({
        dir: 'RX_P2P',
        remoteSteamId: steamId,
        len: bytesRead,
        ...decoded,
      });
    }
  },
});

// 3. Track OnlineSession state transitions @ 0x006BA4E0
let lastSessionState = -1;
Interceptor.attach(rva(0x006ba4e0), {
  onEnter() {
    const sessionPtr = this.context.ecx;
    if (!sessionPtr.isNull()) {
      const curState = sessionPtr.add(0x08).readU32();
      if (curState !== lastSessionState) {
        emitEvent({
          dir: 'STATE_CHANGE',
          fromState: lastSessionState >= 0 ? `0x${lastSessionState.toString(16)}` : 'INIT',
          toState: `0x${curState.toString(16)}`,
          activePeerMask: `0x${sessionPtr.add(0x167c).readU32().toString(16)}`,
          readyMask1: `0x${sessionPtr.add(0x1680).readU32().toString(16)}`,
          readyMask2: `0x${sessionPtr.add(0x1684).readU32().toString(16)}`,
          readyMask3: `0x${sessionPtr.add(0x1688).readU32().toString(16)}`,
        });
        lastSessionState = curState;
      }
    }
  },
});

emitEvent({
  dir: 'HOOK_READY',
  moduleBase: base.toString(),
  hooks: [
    'CSteamP2PSocket::SendPacket@0x006BD6C0',
    'CSteamP2PSocket::ReceivePacket@0x006BD7A0',
    'OnlineSession_UpdateStateMachine@0x006BA4E0',
  ],
});
