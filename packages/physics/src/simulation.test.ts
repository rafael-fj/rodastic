import { describe, expect, it } from 'vitest';
import {
  PlayerStatus,
  ROTASTIC_PHYSICS_CONSTANTS as C,
  RotasticSimulation,
} from './index.js';

describe('@rotastic/physics — RotasticSimulation 60 Hz Determinism & Mechanics', () => {
  it('enforces oscillating SPAWN_CURSOR along top edge until action signal drops player with vy=+100 & 1.0s invuln', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'P1' });
    const p = sim.state.players[0];

    expect(p.status).toBe(PlayerStatus.SPAWN_CURSOR);
    const startX = p.spawnCursorX;

    // Step through SPAWN_ALLOW_DELAY_SEC without pressing action -> cursor moves horizontally along y=1080
    for (let i = 1; i <= 20; i++) {
      sim.step({ 0: { seq: i, actionHeld: false, axisX: 0, axisY: 0 } });
    }
    expect(p.status).toBe(PlayerStatus.SPAWN_CURSOR);
    expect(p.y).toBe(C.SPAWN_DROP_Y);
    expect(p.spawnCursorX).not.toBe(startX);

    // Signal spawn drop
    const evs = sim.step({ 0: { seq: 21, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(evs.some((e) => e.type === 'spawndrop' && e.slotIndex === 0)).toBe(true);
    expect(p.status).toBe(PlayerStatus.FREE_FALL);
    expect(p.invulnTimer).toBe(C.SPAWN_INVULN_SEC);
    expect(p.chargeGauge).toBe(1.0);
    expect(p.chargeGauge2).toBe(0.0);
    expect(p.vy).toBeCloseTo(C.SPAWN_DROP_INITIAL_VY, 3);
  });

  it('enforces orbital swing around pivot and applies 1.2x release boost (no horizontal air drag)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'P1' });
    const p = sim.state.players[0];

    // Place near pivot #0 (350, 300) in FREE_FALL
    p.status = PlayerStatus.FREE_FALL;
    p.x = 350;
    p.y = 100;
    p.vx = 400;
    p.vy = 0;
    p.regrappleTimer = 0;

    sim.step({ 0: { seq: 1, actionHeld: true, axisX: 1, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    expect(p.attachedPivotId).toBe(0);
    expect(Math.abs(p.omega)).toBeGreaterThanOrEqual(C.MIN_OMEGA_RAD_S);

    const r0 = p.ropeLength;
    for (let i = 2; i <= 20; i++) {
      sim.step({ 0: { seq: i, actionHeld: true, axisX: 1, axisY: 0 } });
    }
    expect(Math.hypot(p.x - 350, p.y - 300)).toBeCloseTo(r0, 2);

    const speedSwinging = Math.hypot(p.vx, p.vy);
    sim.step({ 0: { seq: 21, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.FREE_FALL);
    const speedAfterRelease = Math.hypot(p.vx, p.vy);
    // vx preserved on first step after 1.2x release boost (gravity only changes vy)
    expect(speedAfterRelease).toBeGreaterThan(speedSwinging * 1.15);
  });

  it('slices another player rope via 2D cross-product intersection ("Cut!") and awards +0.2 orange charge', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl02');
    sim.configurePlayerSlot(0, { active: true, name: 'Swinger' });
    sim.configurePlayerSlot(1, { active: true, name: 'Cutter' });

    const swinger = sim.state.players[0];
    const cutter = sim.state.players[1];

    // Pivot #0 on lvl02 is (340, 880)
    swinger.status = PlayerStatus.FREE_FALL;
    swinger.regrappleTimer = 0;
    swinger.x = 340;
    swinger.y = 660;
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

    cutter.status = PlayerStatus.FREE_FALL;
    cutter.x = (340 + swinger.x) * 0.5;
    cutter.y = (880 + swinger.y) * 0.5;
    cutter.vx = 700;
    cutter.vy = 0;

    const events = sim.step({
      0: { seq: 21, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 21, actionHeld: false, axisX: 1, axisY: 0 },
    });

    expect(events.some((e) => e.type === 'ropecut')).toBe(true);
    expect(swinger.status).toBe(PlayerStatus.DIZZY);
    expect(swinger.lastAttackerSlot).toBe(1);
    expect(cutter.chargeGauge2).toBeCloseTo(C.ORANGE_CHARGE_STEP, 5);
  });

  it('consumes white bubble (c1) or full orange bar (c2) to absorb deadly hazard hit with 0.5s invuln', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'Shielded' });
    const p = sim.state.players[0];

    p.status = PlayerStatus.FREE_FALL;
    p.invulnTimer = 0;
    p.chargeGauge = 1.0;
    p.chargeGauge2 = 1.0;
    // Place touching MurTueurGauche (cx=22, cy=955, halfW=25, halfH=125)
    p.x = 55;
    p.y = 955;
    p.vx = -600;
    p.vy = 0;

    const ev1 = sim.step({ 0: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(ev1.some((e) => e.type === 'shieldbreak')).toBe(true);
    expect(p.status).toBe(PlayerStatus.FREE_FALL);
    expect(p.chargeGauge).toBeLessThan(0.1); // First hit consumed c1!
    expect(p.chargeGauge2).toBe(1.0); // c2 still intact!
    expect(p.invulnTimer).toBeCloseTo(C.SHIELD_BREAK_INVULN_SEC, 2);

    // Hit deadly wall a second time with c1 < 1.0 and c2 == 1.0 -> c2 protects player!
    p.invulnTimer = 0;
    p.chargeGauge = 0.2;
    p.x = 55;
    p.y = 955;
    p.vx = -600;
    const ev2 = sim.step({ 0: { seq: 2, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(ev2.some((e) => e.type === 'shieldbreak')).toBe(true);
    expect(p.status).toBe(PlayerStatus.FREE_FALL);
    expect(p.chargeGauge2).toBe(0);
  });

  it('produces 100% bit-identical state across two independent instances given the same inputs', () => {
    const simA = new RotasticSimulation('w_multi_dm_lvl02');
    const simB = new RotasticSimulation('w_multi_dm_lvl02');

    for (let i = 0; i < 4; i++) {
      simA.configurePlayerSlot(i, { active: true, isBot: true });
      simB.configurePlayerSlot(i, { active: true, isBot: true });
    }

    for (let t = 1; t <= 180; t++) {
      const inputs: Record<number, ReturnType<RotasticSimulation['computeBotInput']>> = {};
      for (let i = 0; i < 4; i++) {
        inputs[i] = simA.computeBotInput(i, t);
      }
      simA.step(inputs, C.FIXED_DT);
      simB.step(inputs, C.FIXED_DT);
    }

    expect(simA.cloneState()).toEqual(simB.cloneState());
  });
});
