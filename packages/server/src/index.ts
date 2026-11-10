import { ROTASTIC_PHYSICS_CONSTANTS } from '@rotastic/physics';
import { PacketType } from '@rotastic/protocol';

export const SERVER_INFO = {
  tickRateHz: ROTASTIC_PHYSICS_CONSTANTS.TICK_RATE_HZ,
  defaultPacketType: PacketType.WORLD_SNAPSHOT,
};
