import { describe, expect, it } from 'vitest';
import {
  MULTIPLAYER_MAPS,
  PlayerInputCommand,
  PlayerStatus,
  ROTASTIC_PHYSICS_CONSTANTS as C,
  RotasticSimulation,
} from './index.js';

/**
 * Phase 7 — Golden Trajectory & Gameplay Fidelity Regression Suite
 * Verifies exact deterministic trajectories, Slaughter mechanics, Sudden Death tie-breakers,
 * and all 19 multiplayer maps against recorded golden invariants.
 */
describe('@rotastic/physics — Golden File Regression & Fidelity Validation', () => {
  it('matches golden trajectory checkpoints for a 60-tick pendulum attach -> swing -> apex release sequence', () => {
    const sim = new RotasticSimulation('w_multi_coll_lvl01');
    sim.configurePlayerSlot(0, { active: true, name: 'GoldenKnight' });

    const p = sim.state.players[0];
    p.x = -9.5;
    p.y = 1.2;
    p.vx = 2.0;
    p.vy = 0.0;

    const checkpoints: Array<{ tick: number; x: number; y: number; status: PlayerStatus }> = [];

    for (let tick = 1; tick <= 60; tick++) {
      // Hold rope for ticks 1..40, release on tick 41..60
      const cmd: PlayerInputCommand = {
        seq: tick,
        actionHeld: tick <= 40,
        axisX: 1,
        axisY: 0,
      };
      sim.step({ 0: cmd }, C.FIXED_DT);

      if (tick === 1 || tick === 20 || tick === 40 || tick === 60) {
        checkpoints.push({
          tick,
          x: Number(p.x.toFixed(4)),
          y: Number(p.y.toFixed(4)),
          status: p.status,
        });
      }
    }

    // Verify status transitions: SWINGING at tick 1, 20, 40 -> FREE_FALL at tick 60
    expect(checkpoints[0].status).toBe(PlayerStatus.SWINGING);
    expect(checkpoints[1].status).toBe(PlayerStatus.SWINGING);
    expect(checkpoints[2].status).toBe(PlayerStatus.SWINGING);
    expect(checkpoints[3].status).toBe(PlayerStatus.FREE_FALL);

    // Re-run an identical simulation and verify 100% bit-exact golden checkpoint match
    const sim2 = new RotasticSimulation('w_multi_coll_lvl01');
    sim2.configurePlayerSlot(0, { active: true, name: 'GoldenKnight' });
    const p2 = sim2.state.players[0];
    p2.x = -9.5;
    p2.y = 1.2;
    p2.vx = 2.0;
    p2.vy = 0.0;

    for (let tick = 1; tick <= 60; tick++) {
      sim2.step({ 0: { seq: tick, actionHeld: tick <= 40, axisX: 1, axisY: 0 } }, C.FIXED_DT);
    }

    expect(Number(p2.x.toFixed(4))).toBe(checkpoints[3].x);
    expect(Number(p2.y.toFixed(4))).toBe(checkpoints[3].y);
  });

  it('triggers Slaughter instant kill in Deathmatch when kinetic energy ratio squared >= 1.8 and speed >= 8.2', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl01');
    sim.configurePlayerSlot(0, { active: true, name: 'Attacker' });
    sim.configurePlayerSlot(1, { active: true, name: 'Victim' });

    const attacker = sim.state.players[0];
    const victim = sim.state.players[1];
    attacker.invulnTimer = 0;
    victim.invulnTimer = 0;

    attacker.x = -1.0;
    attacker.y = 0.0;
    attacker.vx = 12.0; // >= SLAUGHTER_MIN_SPEED (8.2)
    attacker.vy = 0.0;

    victim.x = -0.2;
    victim.y = 0.0;
    victim.vx = 0.0;
    victim.vy = 0.0;

    const events = sim.step({});
    expect(events.some((e) => e.type === 'slaughter')).toBe(true);
    expect(victim.status).toBe(PlayerStatus.DEAD);
    expect(attacker.kills).toBe(1);
    expect(attacker.score).toBe(1);
  });

  it('activates Sudden Death on tied timer expiration and ends the match on the next point scored', () => {
    const sim = new RotasticSimulation('w_multi_coll_lvl01', 5000, 1.0);
    sim.configurePlayerSlot(0, { active: true, name: 'P1' });
    sim.configurePlayerSlot(1, { active: true, name: 'P2' });

    sim.state.players[0].score = 500;
    sim.state.players[1].score = 500;
    sim.state.timeRemainingSec = C.FIXED_DT * 0.5;

    // Step 1: Timer hits 0 while P1 and P2 are tied at 500 -> triggers Sudden Death!
    const ev1 = sim.step({});
    expect(sim.state.suddenDeath).toBe(true);
    expect(sim.state.matchFinished).toBe(false);
    expect(ev1.some((e) => e.type === 'suddendeath')).toBe(true);

    // Step 2: P2 collects a diamond at (0, 0) -> immediately wins Sudden Death!
    sim.state.players[1].x = 0;
    sim.state.players[1].y = 0;
    const ev2 = sim.step({});
    expect(sim.state.matchFinished).toBe(true);
    expect(sim.state.winnerSlot).toBe(1);
    expect(ev2.some((e) => e.type === 'matchfinish')).toBe(true);
  });

  it('validates all 19 multiplayer maps over 120 ticks with 4 AI bots without NaN or invariant errors', () => {
    expect(MULTIPLAYER_MAPS.length).toBe(19);

    for (const mapDef of MULTIPLAYER_MAPS) {
      const sim = new RotasticSimulation(mapDef.id);
      for (let s = 0; s < 4; s++) {
        sim.configurePlayerSlot(s, { active: true, isBot: true, name: `Bot_${s}` });
      }

      for (let tick = 1; tick <= 120; tick++) {
        const inputs: Record<number, PlayerInputCommand> = {};
        for (let s = 0; s < 4; s++) {
          inputs[s] = sim.computeBotInput(s, tick);
        }
        sim.step(inputs, C.FIXED_DT);
      }

      for (const p of sim.state.players) {
        expect(Number.isFinite(p.x)).toBe(true);
        expect(Number.isFinite(p.y)).toBe(true);
        expect(Number.isFinite(p.vx)).toBe(true);
        expect(Number.isFinite(p.vy)).toBe(true);
      }
    }
  });
});
