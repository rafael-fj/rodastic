import { describe, expect, it } from 'vitest';
import {
  ClientPredictionController,
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

    // Pivot #0 on lvl02 is (340, 880) — attach outside spawn invuln so c1 is consumed to 0.0
    swinger.status = PlayerStatus.FREE_FALL;
    swinger.invulnTimer = 0;
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
    cutter.invulnTimer = 0; // Active non-invulnerable attacker earns +0xD4C orange charge (0x0056AFF5)
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
    expect(cutter.chargeGauge2).toBeCloseTo(C.TRICKS.CUT.charge, 5);
  });

  it('consumes white bubble (c1) or full orange bar (c2) to absorb deadly hazard hit with 0.5s invuln and 1.0s dizzy (0x00579458)', () => {
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
    expect(ev1.some((e) => e.type === 'shieldbreak' && e.shieldType === 'white')).toBe(true);
    expect(p.status).toBe(PlayerStatus.DIZZY);
    expect(p.statusTimer).toBeCloseTo(C.DIZZY_DURATION_SEC, 2);
    expect(p.chargeGauge).toBeLessThan(0.1); // First hit consumed c1!
    expect(p.chargeGauge2).toBe(1.0); // c2 still intact!
    expect(p.invulnTimer).toBeCloseTo(C.SHIELD_BREAK_INVULN_SEC, 2);

    // Hit deadly wall a second time with c1 < 1.0 and c2 == 1.0 -> c2 protects player!
    p.status = PlayerStatus.FREE_FALL;
    p.statusTimer = 0;
    p.invulnTimer = 0;
    p.chargeGauge = 0.2;
    p.x = 55;
    p.y = 955;
    p.vx = -600;
    const ev2 = sim.step({ 0: { seq: 2, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(ev2.some((e) => e.type === 'shieldbreak' && e.shieldType === 'orange')).toBe(true);
    expect(p.status).toBe(PlayerStatus.DIZZY);
    expect(p.statusTimer).toBeCloseTo(C.DIZZY_DURATION_SEC, 2);
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

  it('attaches right next to pivot (1 unit), delays unwind slightly then grows to 150 without speed spike, and never shrinks long ropes', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'CloseGrapple' });
    const p = sim.state.players[0];

    // Pivot #0 is at (350, 300); place player only 5 px away moving gently!
    p.status = PlayerStatus.FREE_FALL;
    p.x = 355;
    p.y = 300;
    p.vx = 0;
    p.vy = 80;
    p.regrappleTimer = 0;

    sim.step({ 0: { seq: 1, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    const attachLen = p.ropeLength;
    expect(attachLen).toBeLessThan(20);

    // During initial delay (< 0.22s = ~10 ticks), rope remains at initial short length
    for (let t = 2; t <= 10; t++) {
      sim.step({ 0: { seq: t, actionHeld: true, axisX: 0, axisY: 0 } });
    }
    expect(p.ropeLength).toBeCloseTo(attachLen, 4);

    // Advance 1s more (60 ticks): rope unwinds outward at 50 u/s without disproportionate velocity spike on release
    for (let t = 11; t <= 70; t++) {
      sim.step({ 0: { seq: t, actionHeld: true, axisX: 0, axisY: 0 } });
    }
    expect(p.ropeLength).toBeGreaterThan(40);
    expect(p.ropeLength).toBeLessThanOrEqual(C.ROPE_MIN_RADIUS);

    sim.step({ 0: { seq: 71, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(Math.hypot(p.vx, p.vy)).toBeLessThan(350);

    // Long rope (> 150) swinging below screen bottom (y < -32) stays constant until released
    p.status = PlayerStatus.FREE_FALL;
    p.regrappleTimer = 0;
    p.chargeGauge = 1.0;
    p.x = 350;
    p.y = -40; // 340 px below pivot (350, 300) and off-screen bottom
    p.vx = 400;
    p.vy = 0;
    sim.step({ 0: { seq: 72, actionHeld: true, axisX: 0, axisY: 0 } });
    const longLen = p.ropeLength;
    expect(longLen).toBeGreaterThan(250);
    for (let t = 73; t <= 100; t++) {
      sim.step({ 0: { seq: t, actionHeld: true, axisX: 0, axisY: 0 } });
    }
    expect(p.ropeLength).toBeCloseTo(longLen, 4);
  });

  it('inverts swing rotation direction and adds turnBoost stack on reverseHeld press', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'Spinner' });
    const p = sim.state.players[0];

    p.status = PlayerStatus.FREE_FALL;
    p.x = 350;
    p.y = 140;
    p.vx = 500;
    p.vy = 0;
    p.regrappleTimer = 0;

    sim.step({ 0: { seq: 1, actionHeld: true, reverseHeld: false, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    const omegaBefore = p.omega;
    expect(Math.abs(omegaBefore)).toBeGreaterThan(1);

    const evs = sim.step({ 0: { seq: 2, actionHeld: true, reverseHeld: true, axisX: 0, axisY: 0 } });
    expect(evs.some((e) => e.type === 'invert')).toBe(true);
    expect(Math.sign(p.omega)).toBe(-Math.sign(omegaBefore));
    expect(p.turnBoostCount).toBe(1);
  });

  it('tolerates flying below bottom edge (y = -150) and kills at TriggerPlanePlayerDeath (y <= -300)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'LowSwing' });
    const p = sim.state.players[0];

    p.status = PlayerStatus.FREE_FALL;
    p.x = 960;
    p.y = -150;
    p.vx = 0;
    p.vy = -100;
    sim.step({ 0: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.FREE_FALL);

    p.y = -305;
    sim.step({ 0: { seq: 2, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.DEAD);
  });

  it('cuts an opponent rope when swinging inside at a shorter radius around the same pivot', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl02');
    sim.configurePlayerSlot(0, { active: true, name: 'OuterVictim' });
    sim.configurePlayerSlot(1, { active: true, name: 'InnerCutter' });

    const victim = sim.state.players[0];
    const cutter = sim.state.players[1];

    // Pivot #0 on lvl02 is (340, 880). Outer victim swings at r = 180 (c1=0); inner cutter swings at r = 70
    victim.status = PlayerStatus.SWINGING;
    victim.attachedPivotId = 0;
    victim.ropeLength = 180;
    victim.ropeAngle = 0;
    victim.omega = 2.0;
    victim.attachTimer = 0.4;
    victim.chargeGauge = 0;
    victim.x = 340 + 180;
    victim.y = 880;
    victim.vx = 0;
    victim.vy = 360;

    // Inner cutter swinging faster at short radius (linear speed ~182 < old 320 threshold!)
    cutter.status = PlayerStatus.SWINGING;
    cutter.attachedPivotId = 0;
    cutter.ropeLength = 70;
    cutter.ropeAngle = -0.15;
    cutter.omega = 4.5; // |omega| >= 1.8 and swept across victim's rope angle 0!
    cutter.attachTimer = 0.4;
    cutter.x = 340 + Math.cos(-0.15) * 70;
    cutter.y = 880 + Math.sin(-0.15) * 70;
    cutter.vx = -cutter.omega * 70 * Math.sin(-0.15);
    cutter.vy = cutter.omega * 70 * Math.cos(-0.15);

    let cutSeen = false;
    for (let t = 1; t <= 8; t++) {
      const evs = sim.step({
        0: { seq: t, actionHeld: true, axisX: 0, axisY: 0 },
        1: { seq: t, actionHeld: true, axisX: 0, axisY: 0 },
      });
      if (evs.some((e) => e.type === 'ropecut' && e.slotIndex === 1 && e.targetSlot === 0)) {
        cutSeen = true;
        break;
      }
    }
    expect(cutSeen).toBe(true);
    expect(victim.status).toBe(PlayerStatus.DIZZY);
  });

  it('applies full orange circle (c2=1.0 -> mass 11) + 450 u/s collision floor to launch lighter rivals hard', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'OrangeHolder' });
    sim.configurePlayerSlot(1, { active: true, name: 'LightRival' });

    const heavy = sim.state.players[0];
    const light = sim.state.players[1];

    heavy.status = PlayerStatus.FREE_FALL;
    heavy.chargeGauge = 0.5;
    heavy.chargeGauge2 = 1.0; // mass = 11.0
    heavy.x = 900;
    heavy.y = 500;
    heavy.vx = 250; // Below 450 u/s, binary clamps pre-impact speed to >= 450!
    heavy.vy = 0;

    light.status = PlayerStatus.FREE_FALL;
    light.chargeGauge = 1.0; // full white shield so it absorbs lethal threshold if any
    light.chargeGauge2 = 0.0; // mass = 1.0
    light.x = 960; // within PLAYER_RADIUS * 2 (88 px)
    light.y = 500;
    light.vx = -250;
    light.vy = 0;

    sim.step({
      0: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 },
      1: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 },
    });

    // Light rival blasted rightward way harder than heavy player was knocked leftward
    expect(light.vx).toBeGreaterThan(750);
    expect(Math.abs(heavy.vx)).toBeGreaterThan(250);
  });

  it('connects to pivots beyond 450px (e.g. 670px matching 668.2px in original telemetry)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'LongGrapple' });
    const p = sim.state.players[0];

    // Nearest pivot from (1620, 970) on lvl09 is pivot #2 at (1570, 300) -> ~672px (> old 450 limit!)
    p.status = PlayerStatus.FREE_FALL;
    p.x = 1620;
    p.y = 970;
    p.vx = -250;
    p.vy = -100;
    p.regrappleTimer = 0;

    sim.step({ 0: { seq: 1, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    expect(p.attachedPivotId).toBe(2);
    expect(p.ropeLength).toBeGreaterThan(650);
  });

  it('matches Rotastic.exe StepSwinging quadratic pump + gravity on climbing arcs (0x0056B3D0)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'Climber' });
    const p = sim.state.players[0];
    const pivot = sim.state.attachPoints.find((ap) => ap.id === 1)!; // (960, 400)

    // Upper-arc climb observed in session-20261111-170417 (f=546..580): r=164.9, ang=122.1 deg, vt=-454.4 u/s
    const r = 164.9;
    const startAng = (122.1 * Math.PI) / 180;
    p.status = PlayerStatus.SWINGING;
    p.attachedPivotId = pivot.id;
    p.ropeLength = r;
    p.ropeAngle = startAng;
    p.omega = -454.4 / r;
    p.attachTimer = 0.25;
    p.swingBoostTimer = 0;
    p.x = pivot.x + Math.cos(startAng) * r;
    p.y = pivot.y + Math.sin(startAng) * r;
    p.vx = -p.omega * r * Math.sin(startAng);
    p.vy = p.omega * r * Math.cos(startAng);

    for (let i = 1; i <= 14; i++) {
      sim.step({ 0: { seq: i, actionHeld: true, axisX: 0, axisY: 0 } });
    }
    const endSpeed = Math.hypot(p.vx, p.vy);
    expect(p.status).toBe(PlayerStatus.SWINGING);
    // Original telemetry speeds up slightly across the apex (454 -> ~480 u/s) instead of stalling!
    expect(endSpeed).toBeGreaterThan(465);
    expect(endSpeed).toBeLessThan(530);
  });

  it('triggers apex zero-crossing swingBoostTimer (0x0056BB75) when gravity reverses swing direction', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'ApexStall' });
    const p = sim.state.players[0];
    const pivot = sim.state.attachPoints.find((ap) => ap.id === 1)!;

    // Slow upward climb near -29.6 deg (matching session-20261111-170417 f=11335..11368)
    const r = 155.4;
    const startAng = (-29.6 * Math.PI) / 180;
    p.status = PlayerStatus.SWINGING;
    p.attachedPivotId = pivot.id;
    p.ropeLength = r;
    p.ropeAngle = startAng;
    p.omega = 15.0 / r; // slowly rising against gravity, about to cross 0
    p.attachTimer = 0.5;
    p.swingBoostTimer = 0;
    p.x = pivot.x + Math.cos(startAng) * r;
    p.y = pivot.y + Math.sin(startAng) * r;
    p.vx = -p.omega * r * Math.sin(startAng);
    p.vy = p.omega * r * Math.cos(startAng);

    let peakBoost = 0;
    for (let i = 1; i <= 14; i++) {
      sim.step({ 0: { seq: i, actionHeld: true, axisX: 0, axisY: 0 } });
      peakBoost = Math.max(peakBoost, p.swingBoostTimer);
    }

    // Should have triggered ~0.198s swingBoostTimer (`0.4 * sin(29.6 deg)`) and whipped downward to ~-295 u/s
    expect(peakBoost).toBeGreaterThan(0.16);
    expect(peakBoost).toBeLessThan(0.24);
    expect(p.omega * p.ropeLength).toBeLessThan(-240);
  });

  it('consumes c1 (+0xD48) on normal attach, blocks rapid re-attach spam until recharged to 1.0 (0x0056A5A0)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'CooldownTester' });
    const p = sim.state.players[0];

    p.status = PlayerStatus.FREE_FALL;
    p.invulnTimer = 0;
    p.chargeGauge = 1.0;
    p.chargeGauge2 = 0.0;
    p.x = 350;
    p.y = 140;
    p.vx = 300;
    p.vy = 0;

    // 1. First attach consumes c1 -> ~0 (1 tick of recharge adds dt * 0.58)
    sim.step({ 0: { seq: 1, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    expect(p.chargeGauge).toBeLessThan(0.05);

    // 2. Release and wait past anti-bounce guard; spamming attach while c1 < 1.0 must be denied
    sim.step({ 0: { seq: 2, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.FREE_FALL);
    for (let t = 3; t <= 10; t++) {
      sim.step({ 0: { seq: t, actionHeld: false, axisX: 0, axisY: 0 } });
    }
    expect(p.regrappleTimer).toBe(0);
    expect(p.chargeGauge).toBeLessThan(1.0);

    const denyEvents = sim.step({ 0: { seq: 11, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.FREE_FALL);
    expect(denyEvents.some((e) => e.type === 'attachdenied' && e.slotIndex === 0)).toBe(true);

    // 3. Recharge at ~0.58/s until full (~1.8s = 110 ticks), keeping player in bounds so he doesn't fall out of arena
    for (let t = 12; t <= 125; t++) {
      if (p.y < 300) {
        p.y = 900;
        p.vy = 0;
      }
      sim.step({ 0: { seq: t, actionHeld: false, axisX: 0, axisY: 0 } });
    }
    expect(p.status).toBe(PlayerStatus.FREE_FALL);
    expect(p.chargeGauge).toBe(1.0);
    p.x = 350;
    p.y = 140;
    p.vx = 300;
    p.vy = 0;
    const attachEvents = sim.step({ 0: { seq: 126, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    expect(attachEvents.some((e) => e.type === 'attach' && e.slotIndex === 0)).toBe(true);
    expect(p.chargeGauge).toBeLessThan(0.05);
  });

  it('allows fallback attach using full orange shield (c2=1.0), free attach during invuln, and honors +0xC50 lock', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'FallbackTester' });
    const p = sim.state.players[0];

    // Case A: c1 < 1.0, c2 == 1.0 -> consumes c2 instead of blocking
    p.status = PlayerStatus.FREE_FALL;
    p.invulnTimer = 0;
    p.chargeGauge = 0.25;
    p.chargeGauge2 = 1.0;
    p.x = 350;
    p.y = 140;
    p.vx = 300;
    p.vy = 0;
    sim.step({ 0: { seq: 1, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    expect(p.chargeGauge2).toBe(0.0);

    // Case B: While invulnerable and not dizzy, attach does not consume c1
    p.status = PlayerStatus.FREE_FALL;
    p.invulnTimer = 0.5;
    p.chargeGauge = 1.0;
    p.regrappleTimer = 0;
    sim.step({ 0: { seq: 2, actionHeld: false, axisX: 0, axisY: 0 } });
    sim.step({ 0: { seq: 3, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    expect(p.chargeGauge).toBe(1.0);

    // Case C: +0xC50 attachLockTimer blocks attach while > 0 and clears at dt rate
    p.status = PlayerStatus.FREE_FALL;
    p.attachLockTimer = 0.1;
    sim.step({ 0: { seq: 4, actionHeld: false, axisX: 0, axisY: 0 } });
    sim.step({ 0: { seq: 5, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.FREE_FALL);
    for (let t = 6; t <= 12; t++) {
      sim.step({ 0: { seq: t, actionHeld: false, axisX: 0, axisY: 0 } });
    }
    expect(p.attachLockTimer).toBe(0);
    p.x = 350;
    p.y = 140;
    sim.step({ 0: { seq: 13, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
  });

  it('protects invulnerable players (+0xD54 > 0) against deadly hazards, slaughter, knock-detach, and blocks c2 gain (0x005790F9 / 0x0056AFF5)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'InvulnVictim' });
    sim.configurePlayerSlot(1, { active: true, name: 'Attacker' });
    const victim = sim.state.players[0];
    const attacker = sim.state.players[1];

    // 1. Invulnerable player resists Slaughter even at massive kinetic energy ratio & does not lose c1
    victim.status = PlayerStatus.FREE_FALL;
    victim.invulnTimer = C.SPAWN_INVULN_SEC; // 1.0s
    victim.chargeGauge = 0.3;
    victim.chargeGauge2 = 0.0;
    victim.x = 600;
    victim.y = 500;
    victim.vx = 0;
    victim.vy = 0;

    attacker.status = PlayerStatus.FREE_FALL;
    attacker.invulnTimer = 0;
    attacker.chargeGauge2 = 1.0; // mass 11.0
    attacker.x = 550;
    attacker.y = 500;
    attacker.vx = 950;
    attacker.vy = 0;

    const slaughterEvs = sim.step({
      0: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 },
      1: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 },
    });
    expect(slaughterEvs.some((e) => e.type === 'slaughter')).toBe(false);
    expect(victim.status).toBe(PlayerStatus.FREE_FALL);

    // 2. Deadly wall contact while invulnerable bounces cleanly without killing or breaking c1 shield (0x005790F9)
    victim.status = PlayerStatus.FREE_FALL;
    victim.invulnTimer = 0.5;
    victim.chargeGauge = 1.0;
    victim.x = 55; // touching MurTueurGauche (cx=22, halfW=25)
    victim.y = 955;
    victim.vx = -600;
    victim.vy = 0;
    const trapEvs = sim.step({
      0: { seq: 2, actionHeld: false, axisX: 0, axisY: 0 },
      1: { seq: 2, actionHeld: false, axisX: 0, axisY: 0 },
    });
    expect(trapEvs.some((e) => e.type === 'death' || e.type === 'shieldbreak')).toBe(false);
    expect(victim.status).toBe(PlayerStatus.FREE_FALL);
    expect(victim.chargeGauge).toBe(1.0);
    expect(victim.vx).toBeGreaterThan(0); // reflected outward safely

    // 3. Orange c2 (+0xD4C) gain is blocked while invulnTimer > 0 (0x0056AFF5)
    victim.chargeGauge2 = 0;
    attacker.status = PlayerStatus.SWINGING;
    attacker.attachedPivotId = 0;
    attacker.ropeLength = 220;
    attacker.attachTimer = 0.5;
    attacker.invulnTimer = 0;
    attacker.chargeGauge = 0;
    attacker.x = 350;
    attacker.y = 80;
    victim.status = PlayerStatus.FREE_FALL;
    victim.invulnTimer = 0.6;
    victim.x = 350;
    victim.y = 190;
    victim.vx = 650;
    victim.vy = 0;
    const invulnCutEvs = sim.step({
      0: { seq: 3, actionHeld: false, axisX: 0, axisY: 0 },
      1: { seq: 3, actionHeld: true, axisX: 0, axisY: 0 },
    });
    expect(invulnCutEvs.some((e) => e.type === 'ropecut' && e.slotIndex === 0)).toBe(true);
    expect(victim.chargeGauge2).toBe(0); // +0xD4C untouched while invulnTimer > 0!
  });

  it('enforces all native +0xD4C orange power-up retention and termination criteria (#29)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl09');
    sim.configurePlayerSlot(0, { active: true, name: 'OrangeHolder' });
    sim.configurePlayerSlot(1, { active: true, name: 'Target' });
    const p = sim.state.players[0];
    const rival = sim.state.players[1];

    // 1. No time-based decay: full c2 persists indefinitely in flight when unused
    p.status = PlayerStatus.FREE_FALL;
    p.invulnTimer = 0;
    p.chargeGauge = 1.0;
    p.chargeGauge2 = 1.0;
    p.x = 960;
    p.y = 700;
    p.vx = 0;
    p.vy = 0;
    for (let t = 1; t <= 120; t++) {
      // keep suspended above void for 2 seconds
      p.y = 700;
      p.vy = 0;
      sim.step({ 0: { seq: t, actionHeld: false, axisX: 0, axisY: 0 } });
    }
    expect(p.chargeGauge2).toBe(1.0);

    // 2. Preserved on normal pivot attach when c1 >= 1.0 (0x0056C6FA spends c1, keeps c2)
    p.x = 350;
    p.y = 140;
    p.vx = 300;
    p.vy = 0;
    p.chargeGauge = 1.0;
    p.chargeGauge2 = 1.0;
    const normAttach = sim.step({ 0: { seq: 121, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(normAttach.some((e) => e.type === 'attach' && e.shieldType === 'white')).toBe(true);
    expect(p.chargeGauge2).toBe(1.0);

    // 3. Preserved on PvP knock / bounce against rival (0x00578426 read-only)
    p.status = PlayerStatus.FREE_FALL;
    p.invulnTimer = 0;
    p.chargeGauge = 1.0;
    p.chargeGauge2 = 1.0;
    p.x = 600;
    p.y = 500;
    p.vx = 700;
    p.vy = 0;
    rival.status = PlayerStatus.FREE_FALL;
    rival.invulnTimer = 0;
    rival.chargeGauge = 1.0;
    rival.chargeGauge2 = 0.0;
    rival.x = 640;
    rival.y = 500;
    rival.vx = 0;
    rival.vy = 0;
    const pvpEvs = sim.step({
      0: { seq: 122, actionHeld: false, axisX: 0, axisY: 0 },
      1: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 },
    });
    expect(pvpEvs.some((e) => e.type === 'bounce')).toBe(true);
    expect(p.chargeGauge2).toBe(1.0); // Attacker keeps full orange ring!

    // 4. Consumed when emergency attaching while white shield c1 < 1.0 (0x0056C729 -> shieldType 'orange')
    p.x = 350;
    p.y = 140;
    p.vx = 300;
    p.vy = 0;
    p.chargeGauge = 0.35;
    p.chargeGauge2 = 1.0;
    p.regrappleTimer = 0;
    const orangeAttach = sim.step({ 0: { seq: 123, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(p.status).toBe(PlayerStatus.SWINGING);
    expect(orangeAttach.some((e) => e.type === 'attach' && e.shieldType === 'orange')).toBe(true);
    expect(p.chargeGauge2).toBe(0.0);

    // 5. Cleared on SPAWN_DROP respawn (0x00541F5E)
    p.status = PlayerStatus.SPAWN_CURSOR;
    p.spawnAllowDelay = 0;
    p.chargeGauge2 = 1.0;
    const dropEvs = sim.step({ 0: { seq: 124, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(dropEvs.some((e) => e.type === 'spawndrop')).toBe(true);
    expect(p.chargeGauge2).toBe(0.0);
  });

  it('cuts enemy ropes without minimum speed, enforces shorter-rope on shared pivot, and respects full white bubble protection (#31)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl02');
    sim.configurePlayerSlot(0, { active: true, name: 'SwingingVictim' });
    sim.configurePlayerSlot(1, { active: true, name: 'Cutter' });
    const victim = sim.state.players[0];
    const cutter = sim.state.players[1];

    // Pivot #0 on lvl02 is (340, 880)
    const setupVictim = (ropeLen: number, charge1: number) => {
      victim.status = PlayerStatus.SWINGING;
      victim.attachedPivotId = 0;
      victim.ropeLength = ropeLen;
      victim.ropeAngle = -Math.PI * 0.5; // straight down: (340, 880 - ropeLen)
      victim.omega = 0;
      victim.attachTimer = 0.5;
      victim.chargeGauge = charge1;
      victim.x = 340;
      victim.y = 880 - ropeLen;
      victim.vx = 0;
      victim.vy = 0;
    };

    // 1. Slow free-fall cutter (speed = 25 u/s << old 160 threshold) cleanly cuts incomplete-bubble victim
    setupVictim(260, 0.4);
    cutter.status = PlayerStatus.FREE_FALL;
    cutter.invulnTimer = 0;
    cutter.x = 340;
    cutter.y = 880 - 120; // dist to victim = 140 > 88
    cutter.vx = 25;
    cutter.vy = 0;
    const slowFreeCut = sim.step({
      0: { seq: 1, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 },
    });
    expect(slowFreeCut.some((e) => e.type === 'ropecut' && e.slotIndex === 1)).toBe(true);
    expect(victim.status).toBe(PlayerStatus.DIZZY);

    // 2. Slow inner swinger (|omega| = 0.5 < old 1.8, linear speed = 35 < 160) cuts outer swinger
    setupVictim(260, 0.2);
    cutter.status = PlayerStatus.SWINGING;
    cutter.attachedPivotId = 0;
    cutter.ropeLength = 70;
    cutter.ropeAngle = -Math.PI * 0.5;
    cutter.omega = 0.5;
    cutter.attachTimer = 0.5;
    cutter.x = 340;
    cutter.y = 880 - 70; // dist to victim = 190 > 88
    cutter.vx = 35;
    cutter.vy = 0;
    const slowSwingCut = sim.step({
      0: { seq: 2, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 2, actionHeld: true, axisX: 0, axisY: 0 },
    });
    expect(slowSwingCut.some((e) => e.type === 'ropecut' && e.slotIndex === 1)).toBe(true);
    expect(victim.status).toBe(PlayerStatus.DIZZY);

    // 3. Shared-pivot longer/equal rope (cutter >= victim) cannot cut victim
    setupVictim(200, 0.0);
    cutter.status = PlayerStatus.SWINGING;
    cutter.attachedPivotId = 0;
    cutter.ropeLength = 210; // >= 200
    cutter.ropeAngle = -Math.PI * 0.5;
    cutter.omega = 2.5;
    cutter.attachTimer = 0.5;
    cutter.x = 340;
    cutter.y = 880 - 210;
    const longerSamePivot = sim.step({
      0: { seq: 3, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 3, actionHeld: true, axisX: 0, axisY: 0 },
    });
    expect(longerSamePivot.some((e) => e.type === 'ropecut')).toBe(false);

    // 4. Full white bubble (c1 >= 1.0) blocks cut when cutter collides with the bubble (dist = 110 <= 44 + 78 = 122)
    setupVictim(220, 1.0);
    cutter.status = PlayerStatus.FREE_FALL;
    cutter.x = 340;
    cutter.y = 880 - 110; // dist to victim = 110 <= 122
    cutter.vx = 400;
    cutter.vy = 0;
    const fullBubbleBlocked = sim.step({
      0: { seq: 4, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 4, actionHeld: false, axisX: 0, axisY: 0 },
    });
    expect(fullBubbleBlocked.some((e) => e.type === 'ropecut')).toBe(false);
    expect(victim.status).toBe(PlayerStatus.SWINGING);

    // 5. Same distance (dist = 110) DOES cut when victim's white bubble is incomplete (c1 = 0.85 < 1.0)
    setupVictim(220, 0.85);
    cutter.status = PlayerStatus.FREE_FALL;
    cutter.x = 340;
    cutter.y = 880 - 110;
    cutter.vx = 400;
    cutter.vy = 0;
    const incompleteBubbleCut = sim.step({
      0: { seq: 5, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 5, actionHeld: false, axisX: 0, axisY: 0 },
    });
    expect(incompleteBubbleCut.some((e) => e.type === 'ropecut' && e.slotIndex === 1)).toBe(true);

    // 6. Full white bubble (c1 >= 1.0) STILL allows cut when crossing cleanly outside the bubble (dist > 122)
    setupVictim(260, 1.0);
    cutter.status = PlayerStatus.FREE_FALL;
    cutter.x = 340;
    cutter.y = 880 - 100; // dist to victim = 160 > 122
    cutter.vx = 120;
    cutter.vy = 0;
    const clearBubbleCut = sim.step({
      0: { seq: 6, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 6, actionHeld: false, axisX: 0, axisY: 0 },
    });
    expect(clearBubbleCut.some((e) => e.type === 'ropecut' && e.slotIndex === 1)).toBe(true);
    expect(victim.status).toBe(PlayerStatus.DIZZY);

    // 7. Shorter rope crossing longer rope when players are close (< 88px apart, e.g. dist = 50px)
    // cuts successfully without being blocked by body collision (#39)
    setupVictim(220, 0.0);
    cutter.status = PlayerStatus.SWINGING;
    cutter.attachedPivotId = 0;
    cutter.ropeLength = 170; // 170 < 220, delta = 50px (< 88px body collision distance)
    cutter.ropeAngle = -Math.PI * 0.5 - 0.15;
    cutter.omega = 4.0;
    cutter.attachTimer = 0.5;
    cutter.chargeGauge = 0;
    cutter.x = 340 + Math.cos(cutter.ropeAngle) * 170;
    cutter.y = 880 + Math.sin(cutter.ropeAngle) * 170;
    const closeProximityCut = sim.step({
      0: { seq: 7, actionHeld: true, axisX: 0, axisY: 0 },
      1: { seq: 7, actionHeld: true, axisX: 0, axisY: 0 },
    });
    expect(closeProximityCut.some((e) => e.type === 'ropecut' && e.slotIndex === 1)).toBe(true);
    expect(victim.status).toBe(PlayerStatus.DIZZY);
  });

  it('bounces smoothly without stutter or wrong normal on fast upward impacts (#32)', () => {
    // 1. Fast upward FREE_FALL strike into narrow pillar underside (Prop006: halfW=18.75, bottom y=452.5)
    //    and overhead WallTop (y=1455) must reflect straight downward with no sideways/upward stutter.
    const sim11 = new RotasticSimulation('w_multi_dm_lvl11');
    sim11.configurePlayerSlot(0, { active: true, name: 'P1' });
    const p1 = sim11.state.players[0];
    p1.status = PlayerStatus.FREE_FALL;
    p1.invulnTimer = 0;
    p1.x = 665; // inside [615.6, 691.6] and closer to underside (penY < penX)
    p1.y = 285; // 285 + 44 = 329 < 342 (strictly below underside)
    p1.vx = 0;
    p1.vy = 2200; // sweeps +36.7 px/tick straight into Prop006 underside

    let sawBounce = false;
    for (let t = 1; t <= 12; t++) {
      const evs = sim11.step({ 0: { seq: t, actionHeld: false, axisX: 0, axisY: 0 } });
      if (evs.some((e) => e.type === 'bounce' && e.slotIndex === 0)) {
        sawBounce = true;
      }
      if (sawBounce) {
        expect(p1.vy).toBeLessThan(0);
        expect(Math.abs(p1.vx)).toBeLessThan(1e-3);
        expect(p1.y).toBeLessThanOrEqual(342 - C.PLAYER_RADIUS + 0.01);
      }
    }
    expect(sawBounce).toBe(true);

    // 1b. Very fast upward tunnel directly into thin WallTop (halfH=25, bottom y=1455, top y=1505)
    p1.x = 960;
    p1.y = 1405; // 1405 + 44 = 1449 < 1455
    p1.vx = 0;
    p1.vy = 4800; // +80 px/tick -> raw end y=1485 > cy(1480), would have pushed UP cleanly before fix
    sim11.step({ 0: { seq: 13, actionHeld: false, axisX: 0, axisY: 0 } });
    expect(p1.vy).toBeLessThan(0);
    expect(p1.y).toBeLessThanOrEqual(C.TOP_CEILING_Y - C.PLAYER_RADIUS + 0.01);
    let prevY = p1.y;
    for (let t = 14; t <= 22; t++) {
      sim11.step({ 0: { seq: t, actionHeld: false, axisX: 0, axisY: 0 } });
      expect(p1.vy).toBeLessThan(0);
      expect(p1.y).toBeLessThan(prevY);
      prevY = p1.y;
    }

    // 2. High upward slide past y=1140 along PRP_wallLeft (cx=15, halfW=15, y in [-350, 1550])
    const simWall = new RotasticSimulation('w_multi_dm_lvl09');
    simWall.configurePlayerSlot(0, { active: true, name: 'P1' });
    const pw = simWall.state.players[0];
    pw.status = PlayerStatus.FREE_FALL;
    pw.invulnTimer = 0;
    pw.x = 76;
    pw.y = 1125;
    pw.vx = -400;
    pw.vy = 1400;
    for (let t = 1; t <= 8; t++) {
      simWall.step({ 0: { seq: t, actionHeld: false, axisX: 0, axisY: 0 } });
    }
    // Refleted rightward off left wall without clipping any artificial y=1140 cap
    expect(pw.vx).toBeGreaterThan(0);
    expect(pw.vy).toBeGreaterThan(0);
    expect(pw.y).toBeGreaterThan(1200);

    // 3. Angled 45-deg block underside bounce (Prop005 in w_multi_dm_lvl07: cx=0, cy=540, half=150, rot=45)
    const sim07 = new RotasticSimulation('w_multi_dm_lvl07');
    sim07.configurePlayerSlot(0, { active: true, name: 'P1' });
    const p7 = sim07.state.players[0];
    p7.status = PlayerStatus.FREE_FALL;
    p7.invulnTimer = 0;
    p7.x = 135;
    p7.y = 390; // signed dist to 45-deg face (nx=+0.707, ny=-0.707) is ~51.5 > 44
    p7.vx = -600;
    p7.vy = 1500;
    let angledBounce = false;
    for (let t = 1; t <= 8; t++) {
      const evs = sim07.step({ 0: { seq: t, actionHeld: false, axisX: 0, axisY: 0 } });
      if (evs.some((e) => e.type === 'bounce' && e.slotIndex === 0)) {
        angledBounce = true;
        expect(p7.vx).toBeGreaterThan(0);
        expect(p7.vy).toBeLessThan(0);
      }
    }
    expect(angledBounce).toBe(true);

    // 4. SWINGING upward impact into WallTop: reverses omega once (vn < 0), preserves ropeLength, no stutter
    const simSwing = new RotasticSimulation('w_multi_dm_lvl11');
    simSwing.configurePlayerSlot(0, { active: true, name: 'P1' });
    const ps = simSwing.state.players[0];
    const pivot = simSwing.state.attachPoints[1]; // PRP_attachRef004 at (500, 900)
    ps.status = PlayerStatus.SWINGING;
    ps.invulnTimer = 0;
    ps.attachedPivotId = pivot.id;
    ps.ropeLength = 540;
    ps.ropeAngle = 1.1; // (500 + 245, 900 + 481 = 1381) safely below WallTop (1455 - 44 = 1411)
    ps.omega = 6.0; // swinging CCW upward toward WallTop
    ps.x = pivot.x + Math.cos(ps.ropeAngle) * ps.ropeLength;
    ps.y = pivot.y + Math.sin(ps.ropeAngle) * ps.ropeLength;

    let swingBounceTick = -1;
    let omegaAfterBounce = 0;
    for (let t = 1; t <= 15; t++) {
      const evs = simSwing.step({ 0: { seq: t, actionHeld: true, axisX: 0, axisY: 0 } });
      const radiusActual = Math.hypot(ps.x - pivot.x, ps.y - pivot.y);
      expect(Math.abs(radiusActual - ps.ropeLength)).toBeLessThan(1e-3);
      if (evs.some((e) => e.type === 'bounce' && e.slotIndex === 0)) {
        expect(swingBounceTick).toBe(-1); // single clean bounce, never double-toggles
        swingBounceTick = t;
        omegaAfterBounce = ps.omega;
        expect(omegaAfterBounce).toBeLessThan(0);
      } else if (swingBounceTick !== -1) {
        expect(ps.omega).toBeLessThan(0);
      }
    }
    expect(swingBounceTick).toBeGreaterThan(0);
  });

  it('prevents horizontal wall bounce zigzag (----> / <- / -> / <-----) under lagged 30Hz server snapshots (#32)', () => {
    const serverSim = new RotasticSimulation('w_multi_dm_lvl09');
    serverSim.configurePlayerSlot(0, { active: true, name: 'P1' });
    const sp = serverSim.state.players[0];
    sp.status = PlayerStatus.FREE_FALL;
    sp.invulnTimer = 0;
    sp.x = 1760;
    sp.y = 600;
    sp.vx = 1400; // +23.33 px/tick right toward PRP_wallRight (inner face x=1890)
    sp.vy = 120;

    const clientSim = new RotasticSimulation('w_multi_dm_lvl09');
    clientSim.restoreState(serverSim.cloneState());

    const predictor = new ClientPredictionController();
    const sentInputs: Array<{ seq: number; actionHeld: boolean; axisX: number; axisY: number }> = [];

    let bouncedClientTick = -1;
    let prevRenderXAfterBounce = Infinity;
    let sawPreBounceServerSnapshotAfterClientBounce = false;

    for (let tick = 1; tick <= 18; tick++) {
      const cmd = { seq: tick, actionHeld: false, axisX: 0, axisY: 0 };
      sentInputs.push(cmd);
      predictor.stepPredictedTick(clientSim, 0, cmd, C.FIXED_DT);

      const cp = clientSim.state.players[0];
      if (bouncedClientTick === -1 && cp.vx < 0) {
        bouncedClientTick = tick;
        prevRenderXAfterBounce = predictor.getRenderPosition(cp, true).x;
      } else if (bouncedClientTick !== -1) {
        expect(cp.vx).toBeLessThan(0);
        const rx = predictor.getRenderPosition(cp, true).x;
        expect(rx).toBeLessThan(prevRenderXAfterBounce);
        prevRenderXAfterBounce = rx;
      }

      // Server lags by 3 ticks (50ms RTT) and broadcasts at 30 Hz (every 2 ticks)
      if (tick > 3) {
        const serverInput = sentInputs[tick - 4];
        serverSim.step({ 0: serverInput }, C.FIXED_DT);
        if (tick % 2 === 0) {
          const snapshot = serverSim.cloneState();
          if (bouncedClientTick !== -1 && snapshot.players[0].vx > 0) {
            sawPreBounceServerSnapshotAfterClientBounce = true;
          }
          predictor.reconcileSnapshot(clientSim, snapshot, 0, C.FIXED_DT);
          if (bouncedClientTick !== -1) {
            // Stale pre-bounce snapshot (vx > 0) must NEVER reverse post-bounce vx < 0!
            expect(clientSim.state.players[0].vx).toBeLessThan(0);
          }
        }
      }
    }

    expect(bouncedClientTick).toBeGreaterThan(0);
    expect(sawPreBounceServerSnapshotAfterClientBounce).toBe(true);

    // Also verify anti-reversal visual decay even under ±1 tick server clock drift mismatch
    const driftySnapshot = serverSim.cloneState();
    driftySnapshot.players[0].vx = -1400;
    driftySnapshot.players[0].x = clientSim.state.players[0].x + 35; // 1.5 ticks behind client
    predictor.reconcileSnapshot(clientSim, driftySnapshot, 0, C.FIXED_DT);
    let lastX = predictor.getRenderPosition(clientSim.state.players[0], true).x;
    for (let t = 19; t <= 24; t++) {
      predictor.stepPredictedTick(clientSim, 0, { seq: t, actionHeld: false, axisX: 0, axisY: 0 }, C.FIXED_DT);
      const nextX = predictor.getRenderPosition(clientSim.state.players[0], true).x;
      expect(nextX).toBeLessThan(lastX);
      lastX = nextX;
    }
  });

  it('triggers only 1 of 4 saws per switch press in lvl04 and runs FlowGraph exit/return schedule in lvl13 (#33)', () => {
    // 1. w_multi_dm_lvl04: All 4 saws stay parked off-screen until switch is hit, then 1 sweeps once & re-arms
    const sim04 = new RotasticSimulation('w_multi_dm_lvl04');
    sim04.configurePlayerSlot(0, { active: true, name: 'P1' });
    const p04 = sim04.state.players[0];
    p04.status = PlayerStatus.FREE_FALL;
    p04.x = 960;
    p04.y = 540;

    for (let i = 1; i <= 300; i++) {
      sim04.step({ 0: { seq: i, actionHeld: false, axisX: 0, axisY: 0 } }, C.FIXED_DT);
    }
    const sawsBefore = sim04.state.walls.filter((w) => w.name.startsWith('Scie'));
    expect(sawsBefore.length).toBe(4);
    for (const saw of sawsBefore) {
      expect(saw.cx < 0 || saw.cx > C.ARENA_WIDTH).toBe(true);
    }
    expect(sim04.state.activeSwitchWallId).toBe(-1);

    // Moving downward onto top of lever collider must bounce WITHOUT triggering switch
    p04.status = PlayerStatus.FREE_FALL;
    p04.invulnTimer = 0;
    p04.x = 1833;
    p04.y = 560;
    p04.vx = 0;
    p04.vy = -800;
    const missDown = sim04.step({ 0: { seq: 301, actionHeld: false, axisX: 0, axisY: 0 } }, C.FIXED_DT);
    expect(missDown.some((e) => e.type === 'switchtoggle')).toBe(false);
    expect(missDown.some((e) => e.type === 'bounce')).toBe(true);

    // Hit PST_MecaSwitch_Collider from below (de baixo pra cima: ny < -0.2)
    p04.status = PlayerStatus.FREE_FALL;
    p04.x = 1833;
    p04.y = 420;
    p04.vx = -120;
    p04.vy = 850;
    const hitEvents = sim04.step({ 0: { seq: 302, actionHeld: false, axisX: 0, axisY: 0 } }, C.FIXED_DT);
    expect(hitEvents.some((e) => e.type === 'switchtoggle')).toBe(true);
    // Physical collider on PST_MecaSwitch bounces player away on impact
    expect(hitEvents.some((e) => e.type === 'bounce')).toBe(true);
    expect(p04.vy).toBeLessThan(0);

    // Top-left pivot (340,860) must NOT be reachable from near switch (dist=1543 > ROPE_ATTACH_RANGE=680)
    expect(sim04.findNearestAttachPoint(1840, 540, C.ROPE_ATTACH_RANGE)?.id).not.toBe(0);
    // Bottom-right pivot (1270,220) IS nearest within 680px range from (1850, 200) (dist=580 <= 680)
    expect(sim04.findNearestAttachPoint(1850, 200, C.ROPE_ATTACH_RANGE)?.id).toBe(2);
    // Out-of-range (>680px from all pivots) returns null
    expect(sim04.findNearestAttachPoint(1880, -250, C.ROPE_ATTACH_RANGE)).toBeNull();
    const activeId = sim04.state.activeSwitchWallId;
    expect(activeId).toBeGreaterThanOrEqual(3);

    // Step 4s into sweep: ONLY the 1 chosen saw enters the arena; other 3 remain parked off-screen
    for (let i = 302; i <= 541; i++) {
      p04.x = 1885; // Keep touching switch: must NOT spawn a 2nd saw while active
      p04.y = 540;
      p04.vx = 0;
      p04.vy = 0;
      sim04.step({ 0: { seq: i, actionHeld: false, axisX: 0, axisY: 0 } }, C.FIXED_DT);
    }
    const activeSawMid = sim04.state.walls.find((w) => w.id === activeId)!;
    expect(activeSawMid.cx).toBeGreaterThan(0);
    expect(activeSawMid.cx).toBeLessThan(C.ARENA_WIDTH);
    for (const w of sim04.state.walls) {
      if (w.name.startsWith('Scie') && w.id !== activeId) {
        expect(w.cx < 0 || w.cx > C.ARENA_WIDTH).toBe(true);
      }
    }

    // Complete remaining 20.5s of 24.2s sweep -> saw parks off-screen and switch resets
    for (let i = 542; i <= 1780; i++) {
      sim04.step({ 0: { seq: i, actionHeld: false, axisX: 0, axisY: 0 } }, C.FIXED_DT);
    }
    expect(sim04.state.activeSwitchWallId).toBe(-1);
    expect(sim04.state.switchReversed).toBe(false);
    expect(activeSawMid.cx < 0 || activeSawMid.cx > C.ARENA_WIDTH).toBe(true);

    // 2. w_multi_dm_lvl13: Anchors stay stationary for 5.0s, A1/A2 exit off-screen at 7.5s, return at 14.5s
    const sim13 = new RotasticSimulation('w_multi_dm_lvl13');
    sim13.configurePlayerSlot(0, { active: true, name: 'P1' });

    // At 4.5s (270 ticks): all 4 sliding anchors stationary at home positions
    for (let i = 1; i <= 270; i++) {
      sim13.step({ 0: { seq: i, actionHeld: false, axisX: 0, axisY: 0 } }, C.FIXED_DT);
    }
    expect(sim13.state.attachPoints[0].x).toBeCloseTo(1620, 1);
    expect(sim13.state.attachPoints[1].x).toBeCloseTo(500, 1);
    expect(sim13.state.attachPoints[2].x).toBeCloseTo(1420, 1);
    expect(sim13.state.attachPoints[3].x).toBeCloseTo(300, 1);

    // At 8.0s (480 ticks): A1 (2220) & A2 (-100) are off-screen & ungrappleable; A3 & A4 still home
    for (let i = 271; i <= 480; i++) {
      sim13.step({ 0: { seq: i, actionHeld: false, axisX: 0, axisY: 0 } }, C.FIXED_DT);
    }
    expect(sim13.state.attachPoints[0].x).toBeCloseTo(2220, 1);
    expect(sim13.state.attachPoints[1].x).toBeCloseTo(-100, 1);
    expect(sim13.state.attachPoints[2].x).toBeCloseTo(1420, 1);
    expect(sim13.state.attachPoints[3].x).toBeCloseTo(300, 1);
    expect(sim13.findNearestAttachPoint(1880, 780, 400)).toBeNull();
    expect(sim13.findNearestAttachPoint(1880, 780, C.ROPE_ATTACH_RANGE)?.id).not.toBe(0);

    // At 15.0s (900 ticks): A1 & A2 have returned to home positions
    for (let i = 481; i <= 900; i++) {
      sim13.step({ 0: { seq: i, actionHeld: false, axisX: 0, axisY: 0 } }, C.FIXED_DT);
    }
    expect(sim13.state.attachPoints[0].x).toBeCloseTo(1620, 1);
    expect(sim13.state.attachPoints[1].x).toBeCloseTo(500, 1);
    expect(sim13.findNearestAttachPoint(1620, 780, C.ROPE_ATTACH_RANGE)?.id).toBe(0);
  });

  it('detaches swinging opponent on heavy full-orange PvP hit (> 450 u/s) without mid-air instant death (#36)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl01');
    sim.configurePlayerSlot(0, { active: true, name: 'OrangeHeavy' });
    sim.configurePlayerSlot(1, { active: true, name: 'SwingingVictim' });
    const heavy = sim.state.players[0];
    const victim = sim.state.players[1];
    const ap0 = sim.state.attachPoints[0];

    // Victim is swinging straight below pivot 0
    victim.status = PlayerStatus.SWINGING;
    victim.attachedPivotId = ap0.id;
    victim.ropeLength = 200;
    victim.ropeAngle = -Math.PI * 0.5;
    victim.omega = 0;
    victim.invulnTimer = 0;
    victim.chargeGauge = 0.2;
    victim.chargeGauge2 = 0.0; // mB = 1.0
    victim.x = ap0.x;
    victim.y = ap0.y - 200;
    victim.vx = 0;
    victim.vy = 0;

    heavy.status = PlayerStatus.FREE_FALL;
    heavy.invulnTimer = 0;
    heavy.chargeGauge2 = 1.0; // mA = 11.0
    heavy.x = ap0.x - 55;
    heavy.y = ap0.y - 200;
    heavy.vx = 480;
    heavy.vy = 0;

    const evs = sim.step({
      0: { seq: 1, actionHeld: false, axisX: 0, axisY: 0 },
      1: { seq: 1, actionHeld: true, axisX: 0, axisY: 0 },
    });

    expect(evs.some((e) => e.type === 'slaughter')).toBe(false);
    expect(evs.some((e) => e.type === 'bounce')).toBe(true);
    // Heavy orange hit (~880 u/s > 450 u/s) detaches the swinging rival instead of keeping them glued to the pivot
    expect(victim.status).toBe(PlayerStatus.FREE_FALL);
    expect(victim.attachedPivotId).toBe(-1);
    expect(victim.vx).toBeGreaterThan(750);
    expect(victim.lastAttackerSlot).toBe(heavy.slotIndex);
  });

  it('awards exact native TricksParameters points and +0xD4C orange charge for Hit, Cut, Triangle, Rotastic and Risky (#37)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl01');
    sim.configurePlayerSlot(0, { active: true, name: 'Tricker' });
    sim.configurePlayerSlot(1, { active: true, name: 'Rival' });
    const p = sim.state.players[0];
    const rival = sim.state.players[1];

    // 1. Hit (+0.10, 50 pts) on PvP bump
    p.status = PlayerStatus.FREE_FALL;
    p.invulnTimer = 0;
    p.chargeGauge2 = 0;
    p.x = 500;
    p.y = 500;
    p.vx = 500;
    p.vy = 0;
    rival.status = PlayerStatus.FREE_FALL;
    rival.invulnTimer = 0;
    rival.x = 550;
    rival.y = 500;
    rival.vx = 0;
    rival.vy = 0;
    const hitEvs = sim.step({});
    expect(hitEvs.some((e) => e.type === 'trick' && e.points === 50 && e.label === 'Hit! +50')).toBe(true);
    expect(p.chargeGauge2).toBeCloseTo(0.1, 4);

    // 2. Triangle (+0.25, 300 pts) on closed 3-pivot cycle A -> B -> C -> A
    p.chargeGauge2 = 0;
    p.pivotHistory = [];
    const aps = sim.state.attachPoints;
    for (const ap of [aps[0], aps[1], aps[2], aps[0]]) {
      p.status = PlayerStatus.FREE_FALL;
      p.lastActionHeld = false;
      p.chargeGauge = 1.0;
      p.regrappleTimer = 0;
      p.x = ap.x;
      p.y = ap.y - 60;
      p.vx = 300;
      p.vy = 0;
      sim.step({ 0: { seq: 1, actionHeld: true, axisX: 0, axisY: 0 } });
    }
    expect(p.chargeGauge2).toBeCloseTo(0.25, 4);

    // 3. Risky (+0.25, 300 pts) when clutching a pivot grapple while dipping in danger zone (<= 160)
    p.chargeGauge2 = 0;
    p.status = PlayerStatus.FREE_FALL;
    p.x = aps[0].x;
    p.y = 140;
    p.vx = 0;
    p.vy = 0;
    sim.step({});
    expect(p.riskyArmed).toBe(true);
    p.lastActionHeld = false;
    p.chargeGauge = 1.0;
    p.regrappleTimer = 0;
    const riskyEvs = sim.step({ 0: { seq: 10, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(riskyEvs.some((e) => e.type === 'trick' && e.points === 300 && e.label === 'Risky! +300')).toBe(true);
    expect(p.chargeGauge2).toBeCloseTo(0.25, 4);

    // 4. Emergency attach while DIZZY (after rope cut) consuming full orange bar c2 >= 1.0 (0x0056A5A0)
    p.riskyArmed = false;
    p.status = PlayerStatus.DIZZY;
    p.statusTimer = 0.8;
    p.lastActionHeld = false;
    p.regrappleTimer = 0;
    p.attachLockTimer = 0;
    p.chargeGauge = 0.2;
    p.chargeGauge2 = 1.0;
    p.x = aps[0].x;
    p.y = aps[0].y - 180;
    p.vx = 250;
    p.vy = 0;
    const dizzyAttachEvs = sim.step({ 0: { seq: 1, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(dizzyAttachEvs.some((e) => e.type === 'attach' && e.shieldType === 'orange')).toBe(true);
    expect(p.status).toBe(PlayerStatus.SWINGING);
    expect(p.statusTimer).toBe(0);
    expect(p.chargeGauge2).toBe(0);
  });

  it('calibrates combo charge accumulation: kills, saw switches and single-pivot spinning do not grant false-positive combo (+0xD4C) (#41)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl01');
    sim.configurePlayerSlot(0, { active: true, name: 'Attacker' });
    sim.configurePlayerSlot(1, { active: true, name: 'Victim' });
    const p = sim.state.players[0];
    const victim = sim.state.players[1];

    // 1. Kills award score and kills count, but do NOT award +1.0 full orange combo
    p.chargeGauge2 = 0.0;
    victim.status = PlayerStatus.FREE_FALL;
    victim.y = -350; // Triggers bottom lethal fall death credited to lastAttackerSlot
    victim.lastAttackerSlot = p.slotIndex;
    victim.lastAttackTimer = 2.0;
    sim.step({});
    expect(victim.status).toBe(PlayerStatus.DEAD);
    expect(p.kills).toBe(1);
    expect(p.score).toBe(1);
    expect(p.chargeGauge2).toBe(0.0); // No free +1.0 combo on kill!

    // 2. Continuous multi-loop spinning on a single pivot in open space does NOT spam combo charge
    p.chargeGauge2 = 0.0;
    p.status = PlayerStatus.SWINGING;
    p.attachedPivotId = sim.state.attachPoints[1].id;
    p.ropeLength = 80;
    p.ropeAngle = 0;
    p.omega = 8.0; // Fast spin (640 u/s tangential speed)
    // Run 180 ticks (3 full seconds of fast spinning = ~4 full revolutions)
    for (let t = 0; t < 180; t++) {
      sim.step({ 0: { seq: t + 1, actionHeld: true, axisX: 0, axisY: 0 } });
    }
    expect(p.chargeGauge2).toBe(0.0); // Single-pivot spinning does not grant combo points!
  });

  it('calibrates Ville Marron rotating cube hitbox to 440x440 (halfW=220, halfH=220) matching visible wood sprite (#43)', () => {
    const sim = new RotasticSimulation('w_multi_dm_lvl02');
    const cube = sim.map.walls.find((w) => w.name === 'Mur001');
    expect(cube).toBeDefined();
    expect(cube?.halfW).toBe(220);
    expect(cube?.halfH).toBe(220);
    expect(cube?.cx).toBe(960);
    expect(cube?.cy).toBe(540);

    // Player outside the calibrated 440x440 box (at x = 960 + 220 + PLAYER_RADIUS + 5) does not collide
    const p = sim.state.players[0];
    sim.configurePlayerSlot(0, { active: true });
    p.status = PlayerStatus.FREE_FALL;
    p.x = 960 + 220 + C.PLAYER_RADIUS + 5;
    p.y = 540;
    p.vx = 0;
    p.vy = 0;
    const events = sim.step({});
    expect(events.some((e) => e.type === 'bounce')).toBe(false);
  });

  it('bounces reliably off Pillars (w_multi_dm_lvl11) on short ropes even at high omega (#47)', () => {
    // 1. Center pivot short-rope high-omega spin into Prop006 (halfW=38 -> right edge 691.6)
    const sim = new RotasticSimulation('w_multi_dm_lvl11');
    sim.configurePlayerSlot(0, { active: true, name: 'P1' });
    const p = sim.state.players[0];
    const centerPivot = sim.state.attachPoints[0]; // (960, 540)
    p.status = PlayerStatus.SWINGING;
    p.invulnTimer = 0;
    p.attachedPivotId = centerPivot.id;
    p.ropeLength = 230; // hits Prop006 right edge (691.6 + 44 = 735.6 > 730)
    p.ropeAngle = Math.PI * 0.5;
    p.omega = 20.0;
    p.x = centerPivot.x + Math.cos(p.ropeAngle) * p.ropeLength;
    p.y = centerPivot.y + Math.sin(p.ropeAngle) * p.ropeLength;

    let bounced = false;
    for (let t = 1; t <= 60; t++) {
      const evs = sim.step({ 0: { seq: t, actionHeld: true, axisX: 0, axisY: 0 } });
      if (evs.some((e) => e.type === 'bounce' && e.slotIndex === 0)) {
        bounced = true;
        break;
      }
    }
    expect(bounced).toBe(true);
    expect(p.omega).toBeLessThan(0);

    // 2. Overlap recovery (!startClear) at r=245 pushes cleanly outside Prop006 clearance
    p.ropeLength = 245;
    p.ropeAngle = Math.PI - 0.12;
    p.omega = 6.0;
    p.x = centerPivot.x + Math.cos(p.ropeAngle) * p.ropeLength;
    p.y = centerPivot.y + Math.sin(p.ropeAngle) * p.ropeLength;
    const evs2 = sim.step({ 0: { seq: 61, actionHeld: true, axisX: 0, axisY: 0 } });
    expect(evs2.some((e) => e.type === 'bounce' && e.slotIndex === 0)).toBe(true);
    expect(p.x).toBeGreaterThanOrEqual(653.6 + 38 + C.PLAYER_RADIUS - 0.1);
  });
});
