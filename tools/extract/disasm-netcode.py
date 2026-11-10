#!/usr/bin/env python3
"""
Phase 3 Netcode Disassembler & Replication Inspector for Rotastic.exe
Disassembles the 4 networking & replication subsystems of Rotastic.exe:
  1. Steamworks Matchmaking, Lobby & P2P Packet Engine (0x006B4000 .. 0x006C4600)
  2. Online Lobby & Match Flow Actions (0x004F4500 .. 0x004FC500)
  3. Entity/Property Replication Engine (faReplicateNode @ 0x00816350..0x00817000, 0x00845350..0x00845900, and 0x006A8000..0x006B4000)
  4. Low-level Winsock2 (WS2_32.dll) Transport & Packet Framing (0x00593E00 .. 0x00598000)
"""

import json
import struct
from pathlib import Path
from capstone import Cs, CS_ARCH_X86, CS_MODE_32

REPO_ROOT = Path(__file__).resolve().parent.parent.parent
EXE_PATH = REPO_ROOT / "reference" / "game-files" / "Rotastic.exe"
DISASM_DIR = REPO_ROOT / "reference" / "decompiled" / "disasm"
CODE_MAP_PATH = REPO_ROOT / "reference" / "decompiled" / "rotastic-code-map.json"

IMAGE_BASE = 0x00400000

# Standard WS2_32.dll ordinal names
WS2_ORDINALS = {
    "Ordinal#1": "accept",
    "Ordinal#2": "bind",
    "Ordinal#3": "closesocket",
    "Ordinal#4": "connect",
    "Ordinal#6": "getsockname",
    "Ordinal#7": "getsockopt",
    "Ordinal#8": "htonl",
    "Ordinal#9": "htons",
    "Ordinal#10": "ioctlsocket",
    "Ordinal#11": "inet_addr",
    "Ordinal#12": "inet_ntoa",
    "Ordinal#13": "listen",
    "Ordinal#14": "ntohl",
    "Ordinal#15": "ntohs",
    "Ordinal#17": "recv",
    "Ordinal#18": "select",
    "Ordinal#19": "send",
    "Ordinal#20": "sendto",
    "Ordinal#21": "setsockopt",
    "Ordinal#22": "shutdown",
    "Ordinal#23": "socket",
    "Ordinal#52": "gethostbyname",
    "Ordinal#111": "WSAGetLastError",
    "Ordinal#115": "WSAStartup",
    "Ordinal#116": "WSACleanup",
    "Ordinal#151": "__WSAFDIsSet",
}


def load_pe_sections(pe_bytes: bytes):
    e_lfanew = struct.unpack_from("<I", pe_bytes, 0x3C)[0]
    num_sections = struct.unpack_from("<H", pe_bytes, e_lfanew + 6)[0]
    opt_hdr_size = struct.unpack_from("<H", pe_bytes, e_lfanew + 20)[0]
    sec_table_off = e_lfanew + 24 + opt_hdr_size
    sections = []
    for i in range(num_sections):
        off = sec_table_off + i * 40
        name = pe_bytes[off : off + 8].rstrip(b"\x00").decode("ascii", errors="replace")
        vsize, vaddr, raw_size, raw_ptr = struct.unpack_from("<IIII", pe_bytes, off + 8)
        sections.append((name, IMAGE_BASE + vaddr, vsize, raw_ptr, raw_size))
    return sections


def va_to_offset(va: int, sections):
    for _, sec_va, vsize, raw_ptr, raw_size in sections:
        if sec_va <= va < sec_va + max(vsize, raw_size):
            return raw_ptr + (va - sec_va)
    return None


def read_cstring(pe_bytes: bytes, va: int, sections, max_len=120):
    off = va_to_offset(va, sections)
    if off is None or off < 0 or off >= len(pe_bytes):
        return None
    end = off
    while end < min(len(pe_bytes), off + max_len) and 0x20 <= pe_bytes[end] <= 0x7E:
        end += 1
    if end - off >= 3 and end < len(pe_bytes) and pe_bytes[end] == 0:
        return pe_bytes[off:end].decode("ascii", errors="replace")
    return None


def build_symbol_map():
    symbols = {}
    if CODE_MAP_PATH.exists():
        cm = json.loads(CODE_MAP_PATH.read_text(encoding="utf-8"))
        for cls in cm.get("classes", []):
            name = cls["className"]
            if cls.get("constructorVA") and cls["constructorVA"] != "-":
                symbols[int(cls["constructorVA"], 16)] = f"{name}::ctor"
            if cls.get("vtableVA") and cls["vtableVA"] != "-":
                symbols[int(cls["vtableVA"], 16)] = f"{name}::vtable"
            if cls.get("initReflectionVA") and cls["initReflectionVA"] != "-":
                symbols[int(cls["initReflectionVA"], 16)] = f"{name}::InitReflection"
        for fa in cm.get("flowActionsAndFunctions", []):
            name = fa["name"]
            if fa.get("executeOrVtableVA"):
                symbols[int(fa["executeOrVtableVA"], 16)] = f"{name}::Execute"
            if fa.get("factoryOrGetNameVA"):
                symbols[int(fa["factoryOrGetNameVA"], 16)] = f"{name}::Factory"
        for imp in cm.get("networkAndSteamImports", []):
            mod = imp["dll"]
            for fn in imp.get("functions", []):
                iat_va = int(fn["iatVA"], 16)
                fn_name = WS2_ORDINALS.get(fn["name"], fn["name"])
                symbols[iat_va] = f"IAT::{mod}!{fn_name}"
    return symbols


def disasm_range(md, pe_bytes: bytes, start_va: int, end_va: int, sections, symbols, title: str):
    start_off = va_to_offset(start_va, sections)
    end_off = va_to_offset(end_va, sections)
    if start_off is None or end_off is None or end_off <= start_off:
        return f"; Invalid range {hex(start_va)}..{hex(end_va)}\n"

    code = pe_bytes[start_off:end_off]
    lines = [
        f"; =============================================================================",
        f"; {title}",
        f"; Range: 0x{start_va:08X} .. 0x{end_va:08X} ({end_va - start_va} bytes)",
        f"; =============================================================================",
        "",
    ]

    for insn in md.disasm(code, start_va):
        if insn.address in symbols:
            lines.append("")
            lines.append(f"; --- SYMBOL: {symbols[insn.address]} @ 0x{insn.address:08X} ---")

        comment_parts = []
        for op in insn.operands:
            val = None
            if op.type == 2:  # IMM
                val = op.imm & 0xFFFFFFFF
            elif op.type == 3 and op.mem.base == 0 and op.mem.index == 0:
                val = op.mem.disp & 0xFFFFFFFF

            if val is not None:
                if val in symbols:
                    comment_parts.append(symbols[val])
                elif 0x008F6000 <= val < 0x009C0000:
                    s = read_cstring(pe_bytes, val, sections)
                    if s:
                        comment_parts.append(f'"{s}"')

        comment = f" ; {' | '.join(comment_parts)}" if comment_parts else ""
        lines.append(f"0x{insn.address:08X}:  {insn.mnemonic:<8} {insn.op_str:<34}{comment}")

    lines.append("")
    return "\n".join(lines)


def main():
    pe_bytes = EXE_PATH.read_bytes()
    sections = load_pe_sections(pe_bytes)
    symbols = build_symbol_map()

    md = Cs(CS_ARCH_X86, CS_MODE_32)
    md.detail = True

    DISASM_DIR.mkdir(parents=True, exist_ok=True)

    # 1. Netcode_Steamworks.asm (0x006B4000 .. 0x006C4600)
    steam_asm = disasm_range(
        md,
        pe_bytes,
        0x006B4000,
        0x006C4600,
        sections,
        symbols,
        "Steamworks Matchmaking, Lobby & P2P Networking Subsystem (0x006B4000..0x006C4600)",
    )
    (DISASM_DIR / "Netcode_Steamworks.asm").write_text(steam_asm, encoding="utf-8")

    # 2. Netcode_LobbyAndModes.asm (0x004F4500 .. 0x004FC500)
    lobby_asm = disasm_range(
        md,
        pe_bytes,
        0x004F4500,
        0x004FC500,
        sections,
        symbols,
        "Framework Online Lobby, QuickMatch, Invitations & Session Flow Actions (0x004F4500..0x004FC500)",
    )
    (DISASM_DIR / "Netcode_LobbyAndModes.asm").write_text(lobby_asm, encoding="utf-8")

    # 3. Netcode_Replication.asm (faReplicateNode @ 0x00816350..0x00817200, 0x00845350..0x00845800, and core session/packet handler 0x006A8000..0x006B4000)
    rep_chunks = [
        disasm_range(
            md,
            pe_bytes,
            0x00816350,
            0x00817200,
            sections,
            symbols,
            "faReplicateNode Execution & ReplicatingProp* Handlers (0x00816350..0x00817200)",
        ),
        disasm_range(
            md,
            pe_bytes,
            0x00845350,
            0x00845800,
            sections,
            symbols,
            "faReplicateNode Factory & Registration (0x00845350..0x00845800)",
        ),
        disasm_range(
            md,
            pe_bytes,
            0x006A8000,
            0x006B4000,
            sections,
            symbols,
            "BlitzTech Core Network Session, Peer State Machine & Replication Dispatcher (0x006A8000..0x006B4000)",
        ),
    ]
    (DISASM_DIR / "Netcode_Replication.asm").write_text("\n".join(rep_chunks), encoding="utf-8")

    # 4. Netcode_UDPSocket.asm (0x00593E00 .. 0x00598000)
    udp_asm = disasm_range(
        md,
        pe_bytes,
        0x00593E00,
        0x00598000,
        sections,
        symbols,
        "Winsock2 (WS2_32.dll) Socket Wrapper & Transport Layer (0x00593E00..0x00598000)",
    )
    (DISASM_DIR / "Netcode_UDPSocket.asm").write_text(udp_asm, encoding="utf-8")

    # 5. Netcode_TransportCore.asm (0x00583000 .. 0x00593E00)
    transport_asm = disasm_range(
        md,
        pe_bytes,
        0x00583000,
        0x00593E00,
        sections,
        symbols,
        "BlitzTech Transport Core, Reliable/Unreliable Framing, Peer Handshake & Object Replication Serializer (0x00583000..0x00593E00)",
    )
    (DISASM_DIR / "Netcode_TransportCore.asm").write_text(transport_asm, encoding="utf-8")

    print("Updated 5 netcode disassembly files in reference/decompiled/disasm/:")
    for fn in [
        "Netcode_Steamworks.asm",
        "Netcode_LobbyAndModes.asm",
        "Netcode_Replication.asm",
        "Netcode_UDPSocket.asm",
        "Netcode_TransportCore.asm",
    ]:
        p = DISASM_DIR / fn
        print(f"  - {fn}: {p.stat().st_size:,} bytes")


if __name__ == "__main__":
    main()
