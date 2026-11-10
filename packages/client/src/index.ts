import { ROTASTIC_PHYSICS_CONSTANTS } from '@rotastic/physics';
import { PacketType } from '@rotastic/protocol';

export const CLIENT_INFO = {
  tickRateHz: ROTASTIC_PHYSICS_CONSTANTS.TICK_RATE_HZ,
  handshakeOpcode: PacketType.CONNECT_REQUEST,
};
