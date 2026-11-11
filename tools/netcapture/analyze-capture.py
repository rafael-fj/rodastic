#!/usr/bin/env python3
"""
Analyze a captured Rotastic Deathmatch telemetry session (`telemetry.jsonl` + `frames.jsonl`).

Usage:
  python tools/netcapture/analyze-capture.py reference/captures/session-20261111-113107
"""

from __future__ import annotations

import json
import sys
from collections import Counter
from pathlib import Path


def summarize_session(cap_dir: Path) -> None:
    telemetry_path = cap_dir / "telemetry.jsonl"
    if not telemetry_path.exists():
        print(f"Erro: nao encontrado {telemetry_path}")
        sys.exit(1)

    counts: Counter[str] = Counter()
    meta = None
    events: dict[str, list[dict]] = {}
    spawn_cursor_pts = []
    charge_deltas = []
    air_gravity = []
    wall_motion: dict[str, dict] = {}
    ap_motion: dict[str, dict] = {}
    dm_timer_range = [1e9, -1e9]
    prev_frame = None

    with open(telemetry_path, encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            rec = json.loads(line)
            t = rec.get("type", "UNKNOWN")
            counts[t] += 1
            if t == "SESSION_META" and meta is None:
                meta = rec
            elif t in (
                "SPAWN_CURSOR_ENTER",
                "SPAWN_DROP",
                "PLAYER_DEATH",
                "ATTACH",
                "RELEASE",
                "WALL_HIT",
                "PVP_HIT",
                "PVP_BOUNCE_SOLVER",
            ):
                events.setdefault(t, []).append(rec)
            elif t == "FRAME_SYNC":
                dt = rec.get("dt", 0) or 0
                dm = rec.get("dm")
                if dm and dm.get("matchTimer") is not None:
                    mt = dm["matchTimer"]
                    dm_timer_range[0] = min(dm_timer_range[0], mt)
                    dm_timer_range[1] = max(dm_timer_range[1], mt)

                for w in rec.get("walls", []):
                    p = w.get("pos") or {}
                    q = w.get("quat") or {}
                    entry = wall_motion.setdefault(
                        w["ptr"],
                        {"minX": 1e9, "maxX": -1e9, "minY": 1e9, "maxY": -1e9, "quats": set(), "n": 0},
                    )
                    entry["n"] += 1
                    if p:
                        entry["minX"] = min(entry["minX"], p["x"])
                        entry["maxX"] = max(entry["maxX"], p["x"])
                        entry["minY"] = min(entry["minY"], p["y"])
                        entry["maxY"] = max(entry["maxY"], p["y"])
                    if q:
                        entry["quats"].add((round(q.get("z", 0), 3), round(q.get("w", 0), 3)))

                for ap in rec.get("attachPoints", []):
                    p = ap.get("pos") or {}
                    entry = ap_motion.setdefault(
                        ap["ptr"],
                        {"minX": 1e9, "maxX": -1e9, "minY": 1e9, "maxY": -1e9, "n": 0},
                    )
                    entry["n"] += 1
                    if p:
                        entry["minX"] = min(entry["minX"], p["x"])
                        entry["maxX"] = max(entry["maxX"], p["x"])
                        entry["minY"] = min(entry["minY"], p["y"])
                        entry["maxY"] = max(entry["maxY"], p["y"])

                players = rec.get("players", [])
                for pl in players:
                    sp = pl.get("spawn", {})
                    if sp.get("spawnCursorActive") == 1 and pl.get("pos"):
                        spawn_cursor_pts.append(
                            (rec["frameId"], pl["playerIdx"], pl["pos"]["x"], pl["pos"]["y"], sp.get("allowInputForSpawn"))
                        )

                if prev_frame and dt > 0:
                    prev_by_ptr = {p["playerPtr"]: p for p in prev_frame.get("players", [])}
                    for pl in players:
                        pp = prev_by_ptr.get(pl["playerPtr"])
                        if not pp:
                            continue
                        if (
                            not pl["attached"]
                            and not pp["attached"]
                            and not pl["spawn"]["isDead"]
                            and not pl["spawn"]["spawnCursorActive"]
                            and not pp["spawn"]["spawnCursorActive"]
                            and pl["pos"]
                            and pp["pos"]
                        ):
                            dvx = (pl["vx"] - pp["vx"]) / dt
                            dvy = (pl["vy"] - pp["vy"]) / dt
                            if abs(dvx) < 200 and 50 < abs(dvy) < 5000:
                                air_gravity.append((round(dvx, 1), round(dvy, 1)))
                        dc = pl["chargeGauge"] - pp["chargeGauge"]
                        if abs(dc) > 1e-4:
                            charge_deltas.append(
                                (
                                    round(dc / dt, 4),
                                    pl["attached"],
                                    round(pl["angularSpeed"], 3),
                                    round(pl["speed"], 1),
                                    pl["chargeMultiplier"],
                                    round(pp["chargeGauge"], 3),
                                    round(pl["chargeGauge"], 3),
                                )
                            )
                prev_frame = rec

    print("=== EVENT COUNTS ===")
    for k, v in counts.most_common():
        print(f"  {k}: {v}")

    print("\n=== SESSION_META simRef ===")
    if meta:
        for item in meta.get("simRefTable", []):
            print(f"  {item['off']:>4}: f32={item['f32']:>12}  u32=0x{item['u32']:08X}")
    else:
        print("  (none)")

    print("\n=== DEATHMATCH TIMER RANGE ===")
    if dm_timer_range[0] < 1e8:
        print(f"  matchTimer: {dm_timer_range[0]} .. {dm_timer_range[1]}")

    print("\n=== AIRBORNE ACCEL (dvx/dt, dvy/dt) top 10 ===")
    for val, cnt in Counter(air_gravity).most_common(10):
        print(f"  {val}: {cnt}x")

    print("\n=== CHARGE DELTAS (dc/dt, attached, angVel, speed, mult, prev->cur) ===")
    inc = [c for c in charge_deltas if c[0] > 0]
    dec = [c for c in charge_deltas if c[0] < 0]
    print(f"  Total changes: {len(charge_deltas)} (inc={len(inc)}, dec={len(dec)})")
    for x in inc[:10]:
        print("  +", x)
    for x in dec[:10]:
        print("  -", x)

    print(f"\n=== WALLS TRACKED ({len(wall_motion)}) ===")
    moving_walls = {
        k: v
        for k, v in wall_motion.items()
        if abs(v["maxX"] - v["minX"]) > 1 or abs(v["maxY"] - v["minY"]) > 1 or len(v["quats"]) > 1
    }
    print(f"  Moving/rotating walls: {len(moving_walls)}")
    for k, v in list(wall_motion.items())[:25]:
        print(f"  {k}: n={v['n']} x=[{v['minX']},{v['maxX']}] y=[{v['minY']},{v['maxY']}] quats={len(v['quats'])}")

    print(f"\n=== ATTACH POINTS TRACKED ({len(ap_motion)}) ===")
    moving_aps = {k: v for k, v in ap_motion.items() if abs(v["maxX"] - v["minX"]) > 1 or abs(v["maxY"] - v["minY"]) > 1}
    print(f"  Moving attach points: {len(moving_aps)}")
    for k, v in list(ap_motion.items())[:25]:
        print(f"  {k}: n={v['n']} x=[{v['minX']},{v['maxX']}] y=[{v['minY']},{v['maxY']}]")

    print(f"\n=== SPAWN CURSOR POINTS ({len(spawn_cursor_pts)}) ===")
    if spawn_cursor_pts:
        xs = [p[2] for p in spawn_cursor_pts]
        ys = [p[3] for p in spawn_cursor_pts]
        print(f"  x=[{min(xs)}, {max(xs)}] y=[{min(ys)}, {max(ys)}]")
        for p in spawn_cursor_pts[:15]:
            print(" ", p)

    for ev_name in ("SPAWN_CURSOR_ENTER", "SPAWN_DROP", "PLAYER_DEATH", "ATTACH", "RELEASE", "WALL_HIT", "PVP_HIT", "PVP_BOUNCE_SOLVER"):
        lst = events.get(ev_name, [])
        print(f"\n=== SAMPLE {ev_name} (count={len(lst)}) ===")
        for item in lst[:3]:
            print(" ", json.dumps(item, ensure_ascii=False)[:420])


if __name__ == "__main__":
    target = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("reference/captures/session-20261111-113107")
    summarize_session(target)
