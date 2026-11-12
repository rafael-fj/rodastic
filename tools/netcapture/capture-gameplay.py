#!/usr/bin/env python3
"""
Synchronized Frida Physics Telemetry + Window Frame Capture for Rotastic.exe.

Captures frame-by-frame gameplay telemetry (`telemetry.jsonl`) alongside
synchronized client-area screenshots (`frames/*.png` + `frames.jsonl`) so we can
compare original Rotastic mechanics pixel-by-pixel and value-by-value against
`@rotastic/physics` and `@rotastic/client`.

Usage examples:
  # Attach to running Rotastic.exe (waits until opened via Steam if not running)
  python tools/netcapture/capture-gameplay.py

  # Telemetry only (no PNG screenshots)
  python tools/netcapture/capture-gameplay.py --no-screenshots

  # Also capture Steamworks P2P network packets simultaneously
  python tools/netcapture/capture-gameplay.py --net

  # Spawn Rotastic.exe directly (while Steam client is running)
  python tools/netcapture/capture-gameplay.py --spawn
"""

from __future__ import annotations

import argparse
import ctypes
import ctypes.wintypes as wintypes
import json
import os
import signal
import sys
import threading
import time
from collections import Counter
from datetime import datetime
from pathlib import Path

import frida
from PIL import ImageGrab

DEFAULT_EXE = os.environ.get("ROTASTIC_EXE", str(Path(__file__).resolve().parent.parent.parent / "reference" / "game-files" / "Rotastic.exe"))
SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parent.parent
DEFAULT_CAPTURES_DIR = REPO_ROOT / "reference" / "captures"

EVENT_SCREENSHOT_TRIGGERS = {
    "SPAWN_CURSOR_ENTER",
    "SPAWN_DROP",
    "PLAYER_DEATH",
    "WALL_HIT",
    "PVP_HIT",
    "ATTACH",
    "RELEASE",
}

# Make process DPI-aware on Windows so GetClientRect matches physical screen pixels
try:
    ctypes.windll.user32.SetProcessDPIAware()
except Exception:
    pass


class POINT(ctypes.Structure):
    _fields_ = [("x", ctypes.c_long), ("y", ctypes.c_long)]


class RECT(ctypes.Structure):
    _fields_ = [
        ("left", ctypes.c_long),
        ("top", ctypes.c_long),
        ("right", ctypes.c_long),
        ("bottom", ctypes.c_long),
    ]


def find_process_window_rect(target_pid: int) -> tuple[int, int, int, int] | None:
    """Return screen-space (left, top, right, bottom) of Rotastic's visible client area."""
    user32 = ctypes.windll.user32
    found_hwnd: list[int] = []

    EnumWindowsProc = ctypes.WINFUNCTYPE(wintypes.BOOL, wintypes.HWND, wintypes.LPARAM)

    def callback(hwnd: int, _lparam: int) -> bool:
        if not user32.IsWindowVisible(hwnd) or user32.IsIconic(hwnd):
            return True
        pid = wintypes.DWORD()
        user32.GetWindowThreadProcessId(hwnd, ctypes.byref(pid))
        if pid.value != target_pid:
            return True
        rect = RECT()
        if user32.GetClientRect(hwnd, ctypes.byref(rect)):
            w = rect.right - rect.left
            h = rect.bottom - rect.top
            if w >= 200 and h >= 150:
                found_hwnd.append(hwnd)
                return False
        return True

    user32.EnumWindows(EnumWindowsProc(callback), 0)
    if not found_hwnd:
        return None

    hwnd = found_hwnd[0]
    rect = RECT()
    if not user32.GetClientRect(hwnd, ctypes.byref(rect)):
        return None
    tl = POINT(rect.left, rect.top)
    br = POINT(rect.right, rect.bottom)
    user32.ClientToScreen(hwnd, ctypes.byref(tl))
    user32.ClientToScreen(hwnd, ctypes.byref(br))
    if br.x <= tl.x or br.y <= tl.y:
        return None
    return (tl.x, tl.y, br.x, br.y)


def wait_for_process(name: str, poll_sec: float = 0.5) -> int:
    print(f"[capture] Aguardando processo '{name}'...")
    device = frida.get_local_device()
    while True:
        for proc in device.enumerate_processes():
            if proc.name.lower() == name.lower():
                return proc.pid
        time.sleep(poll_sec)


class CaptureSession:
    def __init__(self, args: argparse.Namespace) -> None:
        self.args = args
        ts = datetime.now().strftime("%Y%m%d-%H%M%S")
        self.out_dir = Path(args.out_dir) if args.out_dir else (DEFAULT_CAPTURES_DIR / f"session-{ts}")
        self.frames_dir = self.out_dir / "frames"
        self.out_dir.mkdir(parents=True, exist_ok=True)
        if not args.no_screenshots:
            self.frames_dir.mkdir(parents=True, exist_ok=True)

        self.telemetry_fp = open(self.out_dir / "telemetry.jsonl", "w", encoding="utf-8", buffering=1)
        self.frames_fp = (
            open(self.out_dir / "frames.jsonl", "w", encoding="utf-8", buffering=1)
            if not args.no_screenshots
            else None
        )

        self.lock = threading.Lock()
        self.stop_event = threading.Event()
        self.start_mono = time.monotonic()
        self.latest_frame_id = 0
        self.shot_count = 0
        self.last_shot_mono = 0.0
        self.event_counts: Counter[str] = Counter()
        self.target_pid = 0
        self.pending_trigger: str | None = None
        self.trigger_event = threading.Event()

    def host_ts_ms(self) -> float:
        return round((time.monotonic() - self.start_mono) * 1000.0, 3)

    def on_message(self, script_name: str, message: dict, _data: bytes | None) -> None:
        msg_type = message.get("type")
        if msg_type == "send":
            payload = message.get("payload", {})
            if isinstance(payload, dict):
                ev_type = str(payload.get("type", "UNKNOWN"))
                if "frameId" in payload:
                    self.latest_frame_id = int(payload["frameId"])
                record = {
                    "source": script_name,
                    "hostTsMs": self.host_ts_ms(),
                    **payload,
                }
            else:
                ev_type = "RAW"
                record = {"source": script_name, "hostTsMs": self.host_ts_ms(), "payload": payload}

            self.event_counts[ev_type] += 1
            with self.lock:
                self.telemetry_fp.write(json.dumps(record, ensure_ascii=False) + "\n")

            if ev_type == "HOOK_READY":
                print(f"[frida:{script_name}] HOOK_READY base={payload.get('moduleBase')} pid={payload.get('pid')}")
            elif ev_type in EVENT_SCREENSHOT_TRIGGERS and not self.args.no_screenshots:
                self.pending_trigger = ev_type
                self.trigger_event.set()
        elif msg_type == "error":
            print(f"[frida:{script_name}][ERROR] {message.get('description')}\n{message.get('stack', '')}", file=sys.stderr)

    def on_log(self, script_name: str, _level: str, text: str) -> None:
        try:
            parsed = json.loads(text)
            record = {"source": script_name, "hostTsMs": self.host_ts_ms(), **parsed}
            ev_type = str(parsed.get("dir", "NET_LOG"))
        except Exception:
            ev_type = "LOG"
            record = {"source": script_name, "hostTsMs": self.host_ts_ms(), "type": "LOG", "text": text}
        self.event_counts[ev_type] += 1
        with self.lock:
            self.telemetry_fp.write(json.dumps(record, ensure_ascii=False) + "\n")

    def screenshot_loop(self) -> None:
        interval = 1.0 / max(self.args.fps, 0.5)
        min_event_gap = 0.045
        while not self.stop_event.is_set():
            triggered = self.trigger_event.wait(timeout=interval)
            if self.stop_event.is_set():
                break
            now = time.monotonic()
            if triggered:
                self.trigger_event.clear()
                if now - self.last_shot_mono < min_event_gap:
                    continue
                reason = self.pending_trigger or "event"
            else:
                if now - self.last_shot_mono < interval * 0.85:
                    continue
                reason = "periodic"

            bbox = find_process_window_rect(self.target_pid)
            if bbox is None:
                continue

            try:
                img = ImageGrab.grab(bbox=bbox)
                self.shot_count += 1
                fname = f"frame_{self.shot_count:06d}_f{self.latest_frame_id:06d}.png"
                img.save(self.frames_dir / fname, optimize=False, compress_level=1)
                self.last_shot_mono = time.monotonic()
                if self.frames_fp:
                    meta = {
                        "shotIdx": self.shot_count,
                        "file": f"frames/{fname}",
                        "hostTsMs": self.host_ts_ms(),
                        "frameId": self.latest_frame_id,
                        "trigger": reason,
                        "bbox": list(bbox),
                        "size": [img.width, img.height],
                    }
                    with self.lock:
                        self.frames_fp.write(json.dumps(meta) + "\n")
            except Exception as exc:
                print(f"[screenshot][WARN] {exc}", file=sys.stderr)

    def run(self) -> int:
        device = frida.get_local_device()
        spawned_pid: int | None = None

        if self.args.spawn:
            exe = Path(self.args.exe)
            if not exe.exists():
                print(f"[capture][ERROR] Executavel nao encontrado: {exe}", file=sys.stderr)
                return 1
            print(f"[capture] Iniciando {exe} via Frida spawn...")
            spawned_pid = device.spawn([str(exe)], cwd=str(exe.parent))
            self.target_pid = spawned_pid
        elif self.args.pid:
            self.target_pid = self.args.pid
        else:
            self.target_pid = wait_for_process(self.args.process)

        print(f"[capture] Conectando ao PID {self.target_pid} -> {self.out_dir}")
        session = device.attach(self.target_pid)
        session.on("detached", lambda reason, *_: self._on_detached(reason))

        scripts: list[frida.core.Script] = []
        hooks = [("physics", SCRIPT_DIR / "hook-physics-telemetry.js")]
        if self.args.net:
            hooks.append(("net", SCRIPT_DIR / "hook-steam-net.js"))

        for name, path in hooks:
            code = path.read_text(encoding="utf-8")
            script = session.create_script(code)
            script.on("message", lambda msg, data, sname=name: self.on_message(sname, msg, data))
            script.set_log_handler(lambda level, text, sname=name: self.on_log(sname, level, text))
            script.load()
            scripts.append(script)

        if spawned_pid is not None:
            device.resume(spawned_pid)

        shot_thread: threading.Thread | None = None
        if not self.args.no_screenshots:
            shot_thread = threading.Thread(target=self.screenshot_loop, daemon=True)
            shot_thread.start()

        print("[capture] Telemetria ativa! Jogue Deathmatch e pressione Ctrl+C para encerrar.")
        deadline = (time.monotonic() + self.args.duration) if self.args.duration else None
        try:
            while not self.stop_event.is_set():
                if deadline and time.monotonic() >= deadline:
                    print("[capture] Tempo limite atingido, encerrando...")
                    break
                time.sleep(0.25)
        except KeyboardInterrupt:
            print("\n[capture] Ctrl+C recebido, salvando logs...")
        finally:
            self.stop_event.set()
            self.trigger_event.set()
            if shot_thread:
                shot_thread.join(timeout=2.0)
            for s in scripts:
                try:
                    s.unload()
                except Exception:
                    pass
            try:
                session.detach()
            except Exception:
                pass
            self.telemetry_fp.close()
            if self.frames_fp:
                self.frames_fp.close()

        print(f"[capture] Sessao salva em: {self.out_dir}")
        print(f"[capture] Screenshots: {self.shot_count} | Eventos: {dict(self.event_counts)}")
        return 0

    def _on_detached(self, reason: str) -> None:
        print(f"\n[capture] Processo desconectado ({reason}).")
        self.stop_event.set()


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser(description="Rotastic Deathmatch Frida telemetry & screenshot recorder")
    p.add_argument("--process", default="Rotastic.exe", help="Process name to attach to (default: Rotastic.exe)")
    p.add_argument("--pid", type=int, default=None, help="Explicit PID to attach to")
    p.add_argument("--spawn", action="store_true", help="Spawn Rotastic.exe directly instead of attaching")
    p.add_argument("--exe", default=DEFAULT_EXE, help="Path to Rotastic.exe when --spawn is used")
    p.add_argument("--out-dir", default=None, help="Output directory (default: reference/captures/session-<ts>)")
    p.add_argument("--fps", type=float, default=15.0, help="Periodic window screenshot FPS (default: 15)")
    p.add_argument("--no-screenshots", action="store_true", help="Disable screenshot capture (JSONL telemetry only)")
    p.add_argument("--net", action="store_true", help="Also load hook-steam-net.js to record Steam P2P packets")
    p.add_argument("--duration", type=float, default=None, help="Auto-stop after N seconds")
    return p.parse_args()


if __name__ == "__main__":
    signal.signal(signal.SIGINT, signal.default_int_handler)
    sys.exit(CaptureSession(parse_args()).run())
