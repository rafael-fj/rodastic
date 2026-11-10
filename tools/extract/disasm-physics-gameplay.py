#!/usr/bin/env python3
"""
Disassembler anotado com resolução automática de constantes float32/float64 em .rdata,
strings ASCII e nomes de funções para análise de Física e Gameplay do Rotastic.
"""

import struct
import sys
import json
from pathlib import Path
from capstone import Cs, CS_ARCH_X86, CS_MODE_32

REPO_ROOT = Path(__file__).resolve().parents[2]
EXE_PATH = REPO_ROOT / "reference/game-files/Rotastic.exe"
CODE_MAP_PATH = REPO_ROOT / "reference/decompiled/rotastic-code-map.json"

buf = EXE_PATH.read_bytes()
code_map = json.loads(CODE_MAP_PATH.read_text(encoding="utf-8"))

# Build symbol table from code_map
sym_map = {}
for c in code_map["classes"]:
    if c["constructorVA"]:
        sym_map[int(c["constructorVA"], 16)] = f"{c['className']}::ctor"
    if c["factoryVA"]:
        sym_map[int(c["factoryVA"], 16)] = f"{c['className']}::factory"
    if c["initReflectionVA"]:
        sym_map[int(c["initReflectionVA"], 16)] = f"{c['className']}::initReflection"
    for idx, m in enumerate(c["vtableMethods"]):
        va = int(m, 16)
        if va not in sym_map:
            sym_map[va] = f"{c['className']}::vfunc_{idx}"

for f in code_map["flowHandlers"]:
    if f.get("executeVA"):
        sym_map[int(f["executeVA"], 16)] = f"{f['name']}::execute"

def va_to_offset(va: int) -> int:
    rva = va - 0x00400000
    if 0x1000 <= rva < 0x55B000:
        return rva - 0xC00
    if 0x55B000 <= rva < 0x6F3000:
        return rva - 0xE00
    if 0x6F3000 <= rva < 0x77F000:
        return rva - 0x1A00
    return -1

def read_rdata_annotation(va: int) -> str:
    off = va_to_offset(va)
    if off < 0 or off + 8 > len(buf):
        return ""
    # Check if printable string
    end = off
    while end < len(buf) and end - off < 80 and 0x20 <= buf[end] <= 0x7E:
        end += 1
    if end - off >= 4 and end < len(buf) and buf[end] == 0:
        s = buf[off:end].decode("ascii", errors="ignore")
        return f'str="{s}"'
    f32 = struct.unpack_from("<f", buf, off)[0]
    f64 = struct.unpack_from("<d", buf, off)[0]
    u32 = struct.unpack_from("<I", buf, off)[0]
    parts = []
    if abs(f32) == 0.0 or (1e-5 <= abs(f32) <= 1e7):
        parts.append(f"f32={f32:.6g}")
    if 1e-6 <= abs(f64) <= 1e8:
        parts.append(f"f64={f64:.6g}")
    parts.append(f"u32=0x{u32:08X}")
    return ", ".join(parts)

md = Cs(CS_ARCH_X86, CS_MODE_32)

def disasm_range(start_va: int, end_va: int, title: str) -> str:
    lines = [f"=== {title} (0x{start_va:08X} .. 0x{end_va:08X}) ==="]
    off = va_to_offset(start_va)
    size = end_va - start_va
    code = buf[off : off + size]
    for insn in md.disasm(code, start_va):
        if insn.address in sym_map:
            lines.append(f"\n--- {sym_map[insn.address]} @ 0x{insn.address:08X} ---")
        note = ""
        # Check immediate float in mov dword ptr [reg + disp], imm32
        if insn.mnemonic == "mov" and "dword ptr" in insn.op_str and ", 0x" in insn.op_str:
            imm_hex = insn.op_str.split(", 0x")[-1]
            try:
                imm_val = int(imm_hex, 16)
                f_val = struct.unpack("<f", struct.pack("<I", imm_val))[0]
                if imm_val == 0 or (1e-4 <= abs(f_val) <= 1e6):
                    note = f" ; imm_f32={f_val:.6g}"
            except Exception:
                pass
        # Check memory reference to .rdata (0x0095B000 .. 0x00AE0000)
        if "[0x" in insn.op_str:
            try:
                mem_hex = insn.op_str.split("[0x")[1].split("]")[0]
                mem_va = int(mem_hex, 16)
                if 0x0095B000 <= mem_va < 0x00AF3000:
                    note = f" ; [{read_rdata_annotation(mem_va)}]"
            except Exception:
                pass
        if insn.mnemonic == "call" and insn.op_str.startswith("0x"):
            try:
                target_va = int(insn.op_str, 16)
                if target_va in sym_map:
                    note = f" ; {sym_map[target_va]}"
            except Exception:
                pass
        lines.append(f"0x{insn.address:08X}: {insn.mnemonic:<8} {insn.op_str}{note}")
    return "\n".join(lines)

if __name__ == "__main__":
    out_dir = REPO_ROOT / "reference/decompiled/disasm"
    out_dir.mkdir(parents=True, exist_ok=True)

    targets = [
        ("CRotasticPhysicPlayer", 0x0053FB80, 0x0053FF20),
        ("CRotasticPlayer", 0x0053FF20, 0x00542FE0),
        ("CRotasticRope", 0x00542FF0, 0x00543C20),
        ("CAttachPoint", 0x00520900, 0x00522600),
        ("CGravityVortex_and_CWall", 0x005068A0, 0x00508200),
        ("CModeMultiDeathMatch", 0x005341E0, 0x00535350),
        ("CPickUp", 0x005354E0, 0x00535FF0),
        ("CModeMultiCollecte", 0x005533A0, 0x00554C50),
        ("CRotasticPlayerSubcomponents", 0x0056A000, 0x0057B500),
        ("PhysicsCollisionHelpers", 0x00510500, 0x00516500),
    ]
    for name, s_va, e_va in targets:
        txt = disasm_range(s_va, e_va, name)
        (out_dir / f"{name}.asm").write_text(txt, encoding="utf-8")
        print(f"Saved {name}.asm ({len(txt.splitlines())} lines)")
