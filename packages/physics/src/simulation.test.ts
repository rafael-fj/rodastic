import { describe, expect, it } from 'vitest';
import {
  PlayerStatus,
  ROTASTIC_PHYSICS_CONSTANTS as C,
  RotasticSimulation,
} from './index.js';

describe('@rotastic/physics — RotasticSimulation 60 Hz Determinism & Mechanics', () => {
  it('enforces minimum angular speed (60 deg/s = 1.0471976 rad/s) and pendulum orbit when attached', () => {
    const sim = new RotasticSimulation('w_multi_coll_lvl01');
    sim.configurePlayerSlot(0, { active: true, name: 'P1' });

    const p = sim.state.players[0];
    // Position player near pivot #0 (-9.5, 3.5)
    p.x = -9.5;
    p.y = 1.0;
    p.vx = 0.1;
    p.vy = 0;

    sim.step({ 0: { seq: 1, actionHeld: true, axisX: 1, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    expect(p.attachedPivotId).toBe(0);
    expect(Math.abs(p.omega)).toBeGreaterThanOrEqual(C.MIN_OMEGA_RAD_S);

    // Step 30 frames while holding rope and verify orbital radius remains constant
    const r0 = p.ropeLength;
    for (let i = 2; i <= 31; i++) {
      sim.step({ 0: { seq: i, actionHeld: true, axisX: 1, axisY: 0 } });
    }
    const distFromPivot = Math.hypot(p.x - -9.5, p.y - 3.5);
    expect(distFromPivot).toBeCloseTo(r0, 4);
  });

  it('applies release velocity boost (1.1x) when releasing from a pivot', () => {
    const sim = new RotasticSimulation('w_multi_coll_lvl01');
    sim.configurePlayerSlot(0, { active: true });
    const p = sim.state.players[0];
    p.x = -9.5;
    p.y = 1.0;

    sim.step({ 0: { seq: 1, actionHeld: true, axisX: 1, axisY: 0 } });
    const speedWhileSwinging = Math.hypot(p.vx, p.vy);

    sim.step({ 0: { seq: 2, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.FREE_FALL);
    const speedAfterRelease = Math.hypot(p.vx, p.vy);
    expect(speedAfterRelease).toBeGreaterThan(speedWhileSwinging);
  });

  it('slices another player rope via 2D cross-product intersection after 0.25s grace window', () => {
    const sim = new RotasticSimulation('w_multi_coll_lvl01');
    sim.configurePlayerSlot(0, { active: true, name: 'Swinger' });
    sim.configurePlayerSlot(1, { active: true, name: 'Cutter' });

    const swinger = sim.state.players[0];
    const cutter = sim.state.players[1];

    // Attach swinger to pivot #4 (-4.2, 0.0)
    swinger.x = -4.2;
    swinger.y = -3.0;
    sim.step({
      0: { seq: 1, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 },
    });
    expect(swinger.status).toBe(PlayerStatus.SWINGING);

    // Advance past ROPE_CUT_GRACE_SEC (0.25s = 16 ticks)
    for (let t = 2; t <= 20; t++) {
      sim.step({
        0: { seq: t, actionHeld: true, axisX: 0, axisY: 0 },
        1: { seq: t, actionHeld: false, axisX: 0, axisY: 0 },
      });
    }

    // Place cutter right on midpoint of swinger's rope with high velocity
    const pivot = { x: -4.2, y: 0.0 };
    cutter.x = (pivot.x + swinger.x) * 0.5;
    cutter.y = (pivot.y + swinger.y) * 0.5;
    cutter.vx = 9.0;
    cutter.vy = 0.0;

    const events = sim.step({
      0: { seq: 21, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 21, actionHeld: false, axisX: 1, axisY: 0 },
    });

    expect(events.some((e) => e.type === 'ropecut')).toBe(true);
    expect(swinger.status).toBe(PlayerStatus.DIZZY);
    expect(swinger.lastAttackerSlot).toBe(1);
  });

  it('produces 100% bit-identical state across two independent instances given the same inputs', () => {
    const simA = new RotasticSimulation('w_multi_coll_lvl02');
    const simB = new RotasticSimulation('w_multi_coll_lvl02');

    for (let i = 0; i < 4; i++) {
      simA.configurePlayerSlot(i, { active: true, isBot: true });
      simB.configurePlayerSlot(i, { active: true, isBot: true });
    }

    for (let tick = 1; tick <= 180; tick++) {
      const cmdsA: Record<number, ReturnType<typeof simA.computeBotInput>> = {};
      const cmdsB: Record<number, ReturnType<typeof simB.computeBotInput>> = {};
      for (let i = 0; i < 4; i++) {
        cmdsA[i] = simA.computeBotInput(i, tick);
        cmdsB[i] = simB.computeBotInput(i, tick);
      }
      simA.step(cmdsA);
      simB.step(cmdsB);
    }

    expect(simA.state).toEqual(simB.state);
  });
});
