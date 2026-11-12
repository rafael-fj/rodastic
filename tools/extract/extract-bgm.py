#!/usr/bin/env python3
"""
Decodifica os streams nativos de BGM (`ASTR` + `STRD`) de `w_global.pc` usando o
decodificador Sony VAG / PS-ADPCM exatamente como decompilado de `Rotastic.exe`
(`0x006CC660` / `0x006CDE80`: blocos de 16 bytes -> 28 amostras em planos de
0x8000 bytes por canal a 44100 Hz estéreo) e gera os MP3 em
`packages/client/public/assets/audio/bgm/`.
"""

import math
import os
import struct
import sys

try:
    import lameenc
except ImportError as exc:
    sys.stderr.write("Missing Python package 'lameenc'. Install it to encode BGM MP3s.\n")
    raise SystemExit(1) from exc

REPO_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
PKG_CANDIDATES = [
    os.path.join(REPO_ROOT, "reference", "game-files", "packages", "w_global.pc"),
]
if os.environ.get("ROTASTIC_GLOBAL_PC"):
    PKG_CANDIDATES.insert(0, os.environ["ROTASTIC_GLOBAL_PC"])
OUT_BGM_DIR = os.path.join(REPO_ROOT, "packages", "client", "public", "assets", "audio", "bgm")

# Tabelas exatamente como em Rotastic.exe @ 0x00B03488 / 0x00B0348C
VAG_F0 = (0.0, 0.9375, 1.796875, 1.53125, 1.90625)
VAG_F1 = (0.0, 0.0, -0.8125, -0.859375, -0.9375)

# Faixas usadas nos mapas DM jogáveis e Menu
TARGET_TRACKS = (
    "bgm_syl_menu",
    "bgm_syl_campagne",
    "bgm_syl_chateau",
    "bgm_syl_cimetiere_alt",
    "bgm_syl_donjon",
    "bgm_syl_foret",
    "bgm_syl_port",
    "bgm_syl_ville",
)


def decode_vag_stream(raw: bytes, n_blocks: int, channels: int = 2) -> list[list[int]]:
    plane_bytes = 0x8000 if channels <= 4 else 0x4000
    s1 = [0.0] * channels
    s2 = [0.0] * channels
    ch_samples: list[list[int]] = [[] for _ in range(channels)]
    stopped = [False] * channels

    for b in range(n_blocks):
        blk_off = b * channels * plane_bytes
        for c in range(channels):
            if stopped[c]:
                continue
            plane = raw[blk_off + c * plane_bytes : blk_off + (c + 1) * plane_bytes]
            k1_s, k2_s = s1[c], s2[c]
            out = ch_samples[c]
            for p in range(0, len(plane), 16):
                b0 = plane[p]
                flags = plane[p + 1]
                if flags == 7:
                    stopped[c] = True
                    break
                shift = b0 & 0xF
                pred = b0 >> 4
                if pred > 4:
                    pred = 0
                c0, c1 = VAG_F0[pred], VAG_F1[pred]
                for byte_val in plane[p + 2 : p + 16]:
                    for nib in (byte_val & 0xF, (byte_val >> 4) & 0xF):
                        raw_s = nib << 12
                        if raw_s & 0x8000:
                            raw_s -= 0x10000
                        raw_s >>= shift
                        val = raw_s + k1_s * c0 + k2_s * c1
                        k2_s = k1_s
                        k1_s = val
                        iv = int(math.floor(val + 0.5))
                        if iv > 32767:
                            iv = 32767
                        elif iv < -32768:
                            iv = -32768
                        out.append(iv)
            s1[c], s2[c] = k1_s, k2_s
    return ch_samples


def encode_mp3(left: list[int], right: list[int], sample_rate: int, bitrate: int = 192) -> bytes:
    n = min(len(left), len(right))
    interleaved = struct.pack("<" + "h" * (n * 2), *(v for pair in zip(left[:n], right[:n]) for v in pair))
    enc = lameenc.Encoder()
    enc.set_bit_rate(bitrate)
    enc.set_in_sample_rate(sample_rate)
    enc.set_out_sample_rate(sample_rate)
    enc.set_channels(2)
    enc.set_quality(2)
    return bytes(enc.encode(interleaved)) + bytes(enc.flush())


def main() -> None:
    pkg_path = next((p for p in PKG_CANDIDATES if os.path.isfile(p)), None)
    if not pkg_path:
        raise FileNotFoundError("Could not locate w_global.pc")

    os.makedirs(OUT_BGM_DIR, exist_ok=True)
    with open(pkg_path, "rb") as fd:
        file_size = os.path.getsize(pkg_path)
        hdr = fd.read(0x190)
        entry_count = struct.unpack_from("<I", hdr, 0x0C)[0]
        str_len = struct.unpack_from("<I", hdr, 0x1C)[0]
        dir_size = struct.unpack_from("<I", hdr, 0x30)[0]
        dir_buf = fd.read(dir_size)
        str_buf = fd.read(str_len)

        entries = []
        total_strd_bytes = 0
        for i in range(entry_count):
            off = i * 32
            sec_off, _hash_v, size, name_off = struct.unpack_from("<IIII", dir_buf, off)
            fourcc = dir_buf[off + 16 : off + 20].decode("ascii", "replace")
            end = str_buf.find(b"\x00", name_off)
            name = str_buf[name_off:end].decode("ascii", "replace")
            entries.append((fourcc, name, sec_off, size))
            if fourcc == "STRD":
                total_strd_bytes += size

        stream_base = file_size - total_strd_bytes
        astr = {}
        strd = {}
        for fourcc, name, sec_off, size in entries:
            if fourcc == "ASTR":
                fd.seek(sec_off * 16)
                ab = fd.read(size)
                astr[name] = {
                    "dur_ms": struct.unpack_from("<f", ab, 0x38)[0],
                    "data_sz": struct.unpack_from("<I", ab, 0x40)[0],
                    "sr": struct.unpack_from("<I", ab, 0x48)[0],
                    "n_blocks": struct.unpack_from("<H", ab, 0x5C)[0],
                    "ch": struct.unpack_from("<I", ab, 0x80)[0],
                }
            elif fourcc == "STRD":
                strd[name[:-5]] = (stream_base + sec_off * 16, size)

        for name in TARGET_TRACKS:
            meta = astr[name]
            off, sz = strd[name]
            fd.seek(off)
            raw = fd.read(sz)
            channels = meta["ch"] or 2
            ch_samples = decode_vag_stream(raw, meta["n_blocks"], channels)
            n_active = min(len(ch_samples[0]), len(ch_samples[1]), meta["data_sz"])
            tail_peak = max((abs(s) for s in ch_samples[0][max(0, n_active - 441) : n_active]), default=0)
            mp3_bytes = encode_mp3(ch_samples[0][:n_active], ch_samples[1][:n_active], meta["sr"], bitrate=192)
            out_path = os.path.join(OUT_BGM_DIR, f"{name}.mp3")
            with open(out_path, "wb") as out_f:
                out_f.write(mp3_bytes)
            print(
                f"[extract-bgm] {name}.mp3: sr={meta['sr']}Hz dur={n_active/meta['sr']:.3f}s "
                f"(ASTR={meta['dur_ms']/1000:.3f}s) preEndPeak={tail_peak} out={len(mp3_bytes)} bytes"
            )


if __name__ == "__main__":
    main()
