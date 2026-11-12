import { PlayerStatus, ROTASTIC_PHYSICS_CONSTANTS as C } from './constants.js';
import {
  PlayerInputCommand,
  PlayerSimState,
  RotasticSimulation,
  WorldSimState,
} from './simulation.js';

interface BufferedInput {
  seq: number;
  cmd: PlayerInputCommand;
}

const MAX_PENDING_INPUTS = 60;
const MAX_REPLAY_INPUTS = 18;
const SNAP_THRESHOLD_PX = 160;
const ERROR_DECAY_RATE = 12;

function isPredictablePlayer(p: PlayerSimState | undefined): p is PlayerSimState {
  return Boolean(
    p && p.active && p.status !== PlayerStatus.DEAD && p.status !== PlayerStatus.SPAWN_CURSOR
  );
}

function buildStepInputs(
  sim: RotasticSimulation,
  mySlotIndex: number,
  localCmd: PlayerInputCommand
): Record<number, PlayerInputCommand> {
  const stepInputs: Record<number, PlayerInputCommand> = {
    [mySlotIndex]: localCmd,
  };
  for (let i = 0; i < sim.state.players.length; i++) {
    if (i === mySlotIndex) continue;
    const rp = sim.state.players[i];
    if (rp && rp.active && rp.status === PlayerStatus.SWINGING) {
      stepInputs[i] = { seq: 0, actionHeld: true, reverseHeld: false, axisX: 0, axisY: 0 };
    }
  }
  return stepInputs;
}

function decayErrorAxis(offset: number, velAxis: number, dt: number): number {
  if (Math.abs(offset) < 1e-3) return 0;
  let next = offset * Math.exp(-ERROR_DECAY_RATE * dt);
  const stepMove = velAxis * dt;
  // Never let visual correction step backwards against active bounce/flight velocity.
  if (Math.abs(stepMove) > 1.0) {
    const deltaVis = next - offset;
    if (deltaVis * stepMove < 0) {
      const maxCounter = Math.abs(stepMove) * 0.45;
      if (Math.abs(deltaVis) > maxCounter) {
        next = offset + Math.sign(deltaVis) * maxCounter;
      }
    }
  }
  return next;
}

/**
 * Authoritative snapshot reconciliation with unacknowledged input replay and
 * visual-only anti-reversal error decay so high-speed wall bounces never
 * overwrite predicted post-bounce velocity with stale pre-bounce snapshots.
 */
export class ClientPredictionController {
  private pendingInputs: BufferedInput[] = [];
  public errOffsetX = 0;
  public errOffsetY = 0;
  private lastAckedServerTick = -1;

  public reset(): void {
    this.pendingInputs = [];
    this.errOffsetX = 0;
    this.errOffsetY = 0;
    this.lastAckedServerTick = -1;
  }

  public getPendingCount(): number {
    return this.pendingInputs.length;
  }

  public stepPredictedTick(
    sim: RotasticSimulation,
    mySlotIndex: number,
    localCmd: PlayerInputCommand,
    dt: number = C.FIXED_DT
  ): void {
    sim.step(buildStepInputs(sim, mySlotIndex, localCmd), dt);

    const localPlayer = sim.state.players[mySlotIndex];
    if (isPredictablePlayer(localPlayer)) {
      this.pendingInputs.push({ seq: localCmd.seq, cmd: { ...localCmd } });
      if (this.pendingInputs.length > MAX_PENDING_INPUTS) {
        this.pendingInputs.splice(0, this.pendingInputs.length - MAX_PENDING_INPUTS);
      }
      this.errOffsetX = decayErrorAxis(this.errOffsetX, localPlayer.vx, dt);
      this.errOffsetY = decayErrorAxis(this.errOffsetY, localPlayer.vy, dt);
    } else {
      this.pendingInputs = [];
      this.errOffsetX = 0;
      this.errOffsetY = 0;
    }
  }

  public reconcileSnapshot(
    sim: RotasticSimulation,
    serverWorld: WorldSimState,
    mySlotIndex: number,
    dt: number = C.FIXED_DT
  ): { snapped: boolean } {
    if (
      serverWorld.mapId !== sim.state.mapId ||
      (this.lastAckedServerTick >= 0 && serverWorld.tick + 10 < this.lastAckedServerTick)
    ) {
      this.reset();
    } else if (serverWorld.tick < this.lastAckedServerTick) {
      return { snapped: false };
    }
    this.lastAckedServerTick = serverWorld.tick;

    const beforeLocal = sim.state.players[mySlotIndex];
    const hadBefore = isPredictablePlayer(beforeLocal);
    const prevVisX = hadBefore ? beforeLocal.x + this.errOffsetX : 0;
    const prevVisY = hadBefore ? beforeLocal.y + this.errOffsetY : 0;

    sim.restoreState(serverWorld);

    const authLocal = sim.state.players[mySlotIndex];
    if (!isPredictablePlayer(authLocal)) {
      this.pendingInputs = [];
      this.errOffsetX = 0;
      this.errOffsetY = 0;
      return { snapped: true };
    }

    const ackSeq = authLocal.lastInputSeq;
    if (ackSeq > 0) {
      this.pendingInputs = this.pendingInputs.filter((entry) => entry.seq > ackSeq);
    }
    if (this.pendingInputs.length > MAX_REPLAY_INPUTS) {
      this.pendingInputs = this.pendingInputs.slice(-MAX_REPLAY_INPUTS);
    }

    for (const entry of this.pendingInputs) {
      sim.step(buildStepInputs(sim, mySlotIndex, entry.cmd), dt);
    }

    const postLocal = sim.state.players[mySlotIndex];
    if (!hadBefore || !isPredictablePlayer(postLocal)) {
      this.errOffsetX = 0;
      this.errOffsetY = 0;
      return { snapped: true };
    }

    const errX = prevVisX - postLocal.x;
    const errY = prevVisY - postLocal.y;
    if (Math.hypot(errX, errY) > SNAP_THRESHOLD_PX) {
      this.errOffsetX = 0;
      this.errOffsetY = 0;
      return { snapped: true };
    }

    this.errOffsetX = errX;
    this.errOffsetY = errY;
    return { snapped: false };
  }

  public getRenderPosition(player: PlayerSimState, isLocalPlayer: boolean): { x: number; y: number } {
    if (!isLocalPlayer) {
      return { x: player.x, y: player.y };
    }
    return {
      x: player.x + this.errOffsetX,
      y: player.y + this.errOffsetY,
    };
  }
}
