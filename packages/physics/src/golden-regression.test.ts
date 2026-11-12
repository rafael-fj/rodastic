import { describe, expect, it } from 'vitest';
import {
  MULTIPLAYER_MAPS,
  PlayerInputCommand,
  PlayerStatus,
  ROTASTIC_PHYSICS_CONSTANTS as C,
  RotasticSimulation,
} from './index.js';

/**
 * Calibrated Regression & Fidelity Suite against live `Rotastic.exe` telemetry captures
 * (`session-20261111-113107` & `session-20261111-115315`).
 */
describe('@rotastic/physics — Golden File Regression & Fidelity Validation', () => {
  it('reproduces exact weighted PvP velocity transfer (m = 1 + 10 * c2^2) measured in PVP_BOUNCE_SOLVER', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl02');
    sim.configurePlayerSlot(0, { active: true, name: 'Heavy' });
    sim.configurePlayerSlot(1, { active: true, name: 'Light' });

    const heavy = sim.state.players[0];
    const light = sim.state.players[1];

    heavy.status = PlayerStatus.FREE_FALL;
    light.status = PlayerStatus.FREE_FALL;
    heavy.invulnTimer = 0;
    light.invulnTimer = 0;

    // c2 = 0.4 -> mass 2.6 vs c2 = 0.0 -> mass 1.0 (matches session-2 f=7201)
    heavy.chargeGauge = 0.2;
    heavy.chargeGauge2 = 0.4;
    light.chargeGauge = 0.2;
    light.chargeGauge2 = 0.0;

    heavy.x = 400;
    heavy.y = 500;
    heavy.vx = 500;
    heavy.vy = 0;

    light.x = 448;
    light.y = 500;
    light.vx = -500;
    light.vy = 0;

    const events = sim.step({});
    expect(events.some((e) => e.type === 'bounce')).toBe(true);

    // Exact 2D impulse check (above the 450.0 binary pre-impact floor):
    // relVx = 1000; m1 = 2.6, m2 = 1.0 -> factorA = 2/3.6 = 0.5556, factorB = 5.2/3.6 = 1.4444
    // heavy.vx = 500 - 0.5556 * 1000 = -55.556; light.vx = -500 + 1.4444 * 1000 = +944.444
    expect(heavy.vx).toBeCloseTo(-55.556, 1);
    expect(light.vx).toBeCloseTo(944.444, 1);
  });

  it('launches unshielded victim with weighted impulse without instant mid-air death and attributes bottom KO (#36)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl01');
    sim.configurePlayerSlot(0, { active: true, name: 'Attacker' });
    sim.configurePlayerSlot(1, { active: true, name: 'Victim' });

    const attacker = sim.state.players[0];
    const victim = sim.state.players[1];
    attacker.status = PlayerStatus.FREE_FALL;
    victim.status = PlayerStatus.FREE_FALL;
    attacker.invulnTimer = 0;
    victim.invulnTimer = 0;
    victim.chargeGauge = 0.2;
    victim.chargeGauge2 = 0.0;

    attacker.x = 600;
    attacker.y = 500;
    attacker.vx = 950;
    attacker.vy = 0;

    victim.x = 650;
    victim.y = 500;
    victim.vx = 0;
    victim.vy = 0;

    const events = sim.step({});
    expect(events.some((e) => e.type === 'slaughter')).toBe(false);
    expect(events.some((e) => e.type === 'bounce')).toBe(true);
    expect(victim.status).toBe(PlayerStatus.FREE_FALL);
    expect(victim.vx).toBeGreaterThan(700);
    expect(victim.lastAttackerSlot).toBe(attacker.slotIndex);

    // Pushing victim down past DEATH_BOTTOM_Y credits the attacker
    victim.y = C.DEATH_BOTTOM_Y - 5;
    sim.step({});
    expect(victim.status).toBe(PlayerStatus.DEAD);
    expect(attacker.kills).toBe(1);
    expect(attacker.score).toBe(1);
  });

  it('activates Sudden Death on tied timer expiration and ends the match on the next frag', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl01', 10, C.FIXED_DT * 0.5);
    sim.configurePlayerSlot(0, { active: true, name: 'P1' });
    sim.configurePlayerSlot(1, { active: true, name: 'P2' });

    sim.state.players[0].score = 2;
    sim.state.players[1].score = 2;

    const ev1 = sim.step({});
    expect(sim.state.suddenDeath).toBe(true);
    expect(sim.state.matchFinished).toBe(false);
    expect(ev1.some((e) => e.type === 'suddendeath')).toBe(true);

    // P2 knocks P1 down into the bottom death zone
    sim.state.players[0].status = PlayerStatus.FREE_FALL;
    sim.state.players[1].status = PlayerStatus.FREE_FALL;
    sim.state.players[0].invulnTimer = 0;
    sim.state.players[0].chargeGauge = 0;
    sim.state.players[0].x = 500;
    sim.state.players[0].y = 500;
    sim.state.players[0].vx = 0;
    sim.state.players[1].x = 460;
    sim.state.players[1].y = 500;
    sim.state.players[1].vx = 950;

    sim.step({});
    expect(sim.state.players[0].status).toBe(PlayerStatus.FREE_FALL);
    sim.state.players[0].y = C.DEATH_BOTTOM_Y - 5;
    const ev2 = sim.step({});
    expect(sim.state.matchFinished).toBe(true);
    expect(sim.state.winnerSlot).toBe(1);
    expect(ev2.some((e) => e.type === 'matchfinish')).toBe(true);
  });

  it('includes exclusively the 8 official Deathmatch arenas and steps all 8 stably with moving obstacles', () => {
    expect(MULTIPLAYER_MAPS.length).toBe(8);
    expect(MULTIPLAYER_MAPS.every((m) => m.mode === 'deathmatch')).toBe(true);

    for (const mapDef of MULTIPLAYER_MAPS) {
      const sim = new RotasticSimulation(mapDef.id);
      for (let s = 0; s < 4; s++) {
        sim.configurePlayerSlot(s, { active: true, isBot: true, name: `Bot_${s}` });
      }

      for (let tick = 1; tick <= 180; tick++) {
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
