=== CRotasticPhysicPlayer (0x0053FB80 .. 0x0053FF20) ===
0x0053FB80: inc      eax
0x0053FB81: mov      eax, dword ptr [edx + ecx*4 + 8]
0x0053FB85: movzx    ecx, byte ptr [edi + 1]
0x0053FB89: mov      edx, dword ptr [eax + 0x78]
0x0053FB8C: mov      eax, dword ptr [edx + ecx*4]
0x0053FB8F: jmp      0x53fbaf
0x0053FB91: mov      ecx, dword ptr [0xb79350]
0x0053FB97: test     ecx, ecx
0x0053FB99: je       0x53fbad
0x0053FB9B: mov      eax, dword ptr [esi + 4]
0x0053FB9E: mov      edx, dword ptr [esi]
0x0053FBA0: push     eax
0x0053FBA1: push     0
0x0053FBA3: push     0
0x0053FBA5: push     edx
0x0053FBA6: call     0x7cd120
0x0053FBAB: jmp      0x53fbaf
0x0053FBAD: xor      eax, eax
0x0053FBAF: push     0x200
0x0053FBB4: add      ebx, 0x14
0x0053FBB7: push     ebx
0x0053FBB8: push     0x1c
0x0053FBBA: mov      ecx, eax
0x0053FBBC: call     0x7faa90
0x0053FBC1: pop      edi
0x0053FBC2: pop      esi
0x0053FBC3: pop      ebx
0x0053FBC4: ret      8
0x0053FBC7: int3     
0x0053FBC8: int3     
0x0053FBC9: int3     
0x0053FBCA: int3     
0x0053FBCB: int3     
0x0053FBCC: int3     
0x0053FBCD: int3     
0x0053FBCE: int3     
0x0053FBCF: int3     

--- CRotasticGameModeArkanoid::vfunc_0 @ 0x0053FBD0 ---
0x0053FBD0: push     esi
0x0053FBD1: mov      esi, ecx
0x0053FBD3: mov      dword ptr [esi], 0x98b118
0x0053FBD9: call     0x7b9fb0
0x0053FBDE: test     byte ptr [esp + 8], 1
0x0053FBE3: je       0x53fbee
0x0053FBE5: push     esi
0x0053FBE6: call     0x688fb0
0x0053FBEB: add      esp, 4
0x0053FBEE: mov      eax, esi
0x0053FBF0: pop      esi
0x0053FBF1: ret      4
0x0053FBF4: int3     
0x0053FBF5: int3     
0x0053FBF6: int3     
0x0053FBF7: int3     
0x0053FBF8: int3     
0x0053FBF9: int3     
0x0053FBFA: int3     
0x0053FBFB: int3     
0x0053FBFC: int3     
0x0053FBFD: int3     
0x0053FBFE: int3     
0x0053FBFF: int3     

--- CRotasticPhysicPlayer::vfunc_3 @ 0x0053FC00 ---
0x0053FC00: jmp      0x793040
0x0053FC05: int3     
0x0053FC06: int3     
0x0053FC07: int3     
0x0053FC08: int3     
0x0053FC09: int3     
0x0053FC0A: int3     
0x0053FC0B: int3     
0x0053FC0C: int3     
0x0053FC0D: int3     
0x0053FC0E: int3     
0x0053FC0F: int3     

--- CRotasticPhysicPlayer::vfunc_48 @ 0x0053FC10 ---
0x0053FC10: jmp      0x796800
0x0053FC15: int3     
0x0053FC16: int3     
0x0053FC17: int3     
0x0053FC18: int3     
0x0053FC19: int3     
0x0053FC1A: int3     
0x0053FC1B: int3     
0x0053FC1C: int3     
0x0053FC1D: int3     
0x0053FC1E: int3     
0x0053FC1F: int3     

--- CRotasticPhysicPlayer::vfunc_13 @ 0x0053FC20 ---
0x0053FC20: push     esi
0x0053FC21: mov      esi, ecx
0x0053FC23: mov      ecx, dword ptr [esi + 8]
0x0053FC26: push     1
0x0053FC28: call     0x7f6c90
0x0053FC2D: test     eax, eax
0x0053FC2F: je       0x53fc39
0x0053FC31: add      eax, 0x18
0x0053FC34: mov      dword ptr [esi + 0x60], eax
0x0053FC37: pop      esi
0x0053FC38: ret      
0x0053FC39: xor      eax, eax
0x0053FC3B: mov      dword ptr [esi + 0x60], eax
0x0053FC3E: pop      esi
0x0053FC3F: ret      

--- CRotasticPhysicPlayer::ctor @ 0x0053FC40 ---
0x0053FC40: push     -1
0x0053FC42: push     0x945c18
0x0053FC47: mov      eax, dword ptr fs:[0]
0x0053FC4D: push     eax
0x0053FC4E: push     ecx
0x0053FC4F: push     esi
0x0053FC50: mov      eax, dword ptr [0xb089c8]
0x0053FC55: xor      eax, esp
0x0053FC57: push     eax
0x0053FC58: lea      eax, [esp + 0xc]
0x0053FC5C: mov      dword ptr fs:[0], eax
0x0053FC62: mov      esi, ecx
0x0053FC64: mov      dword ptr [esp + 8], esi
0x0053FC68: mov      eax, dword ptr [esp + 0x1c]
0x0053FC6C: push     eax
0x0053FC6D: call     0x792d80
0x0053FC72: xor      eax, eax
0x0053FC74: mov      dword ptr [esi], 0x98b1f8
0x0053FC7A: mov      dword ptr [esi + 0x64], eax
0x0053FC7D: mov      dword ptr [esi + 0x60], eax
0x0053FC80: mov      ecx, dword ptr [0xb1ab18]
0x0053FC86: mov      dword ptr [esp + 0x14], eax
0x0053FC8A: call     0x491d80
0x0053FC8F: mov      ecx, dword ptr [eax + 0x18]
0x0053FC92: mov      eax, dword ptr [ecx]
0x0053FC94: mov      dword ptr [esi + 0x68], eax
0x0053FC97: mov      edx, dword ptr [eax + 0x2c]
0x0053FC9A: mov      dword ptr [esi + 0x6c], edx
0x0053FC9D: mov      eax, esi
0x0053FC9F: mov      ecx, dword ptr [esp + 0xc]
0x0053FCA3: mov      dword ptr fs:[0], ecx
0x0053FCAA: pop      ecx
0x0053FCAB: pop      esi
0x0053FCAC: add      esp, 0x10
0x0053FCAF: ret      4
0x0053FCB2: int3     
0x0053FCB3: int3     
0x0053FCB4: int3     
0x0053FCB5: int3     
0x0053FCB6: int3     
0x0053FCB7: int3     
0x0053FCB8: int3     
0x0053FCB9: int3     
0x0053FCBA: int3     
0x0053FCBB: int3     
0x0053FCBC: int3     
0x0053FCBD: int3     
0x0053FCBE: int3     
0x0053FCBF: int3     
0x0053FCC0: sub      esp, 0x10
0x0053FCC3: push     ebx
0x0053FCC4: mov      ebx, ecx
0x0053FCC6: mov      eax, dword ptr [ebx + 8]
0x0053FCC9: movzx    ecx, byte ptr [eax + 1]
0x0053FCCD: mov      edx, dword ptr [eax + 4]
0x0053FCD0: mov      eax, dword ptr [edx + 0x14]
0x0053FCD3: lea      ecx, [ecx + ecx*8]
0x0053FCD6: push     ebp
0x0053FCD7: lea      eax, [eax + ecx*4]
0x0053FCDA: mov      ecx, 0x29
0x0053FCDF: push     esi
0x0053FCE0: push     edi
0x0053FCE1: cmp      byte ptr [eax + 0x14], cl
0x0053FCE4: jne      0x53fceb
0x0053FCE6: mov      ebp, dword ptr [eax + 4]
0x0053FCE9: jmp      0x53fd1d
0x0053FCEB: cmp      byte ptr [eax + 0x15], cl
0x0053FCEE: jne      0x53fcf5
0x0053FCF0: mov      ebp, dword ptr [eax + 8]
0x0053FCF3: jmp      0x53fd1d
0x0053FCF5: cmp      byte ptr [eax + 0x16], cl
0x0053FCF8: jne      0x53fcff
0x0053FCFA: mov      ebp, dword ptr [eax + 0xc]
0x0053FCFD: jmp      0x53fd1d
0x0053FCFF: cmp      byte ptr [eax + 0x17], cl
0x0053FD02: jne      0x53fd09
0x0053FD04: mov      ebp, dword ptr [eax + 0x10]
0x0053FD07: jmp      0x53fd1d
0x0053FD09: mov      eax, dword ptr [eax]
0x0053FD0B: test     eax, eax
0x0053FD0D: je       0x53fd1b
0x0053FD0F: push     ecx
0x0053FD10: mov      ecx, eax
0x0053FD12: call     0x461400
0x0053FD17: mov      ebp, eax
0x0053FD19: jmp      0x53fd1d
0x0053FD1B: xor      ebp, ebp
0x0053FD1D: mov      eax, dword ptr [ebx + 8]
0x0053FD20: movzx    ecx, byte ptr [eax + 1]
0x0053FD24: mov      edx, dword ptr [eax + 4]
0x0053FD27: mov      eax, dword ptr [edx + 0x38]
0x0053FD2A: mov      esi, dword ptr [eax + ecx*4]
0x0053FD2D: add      esi, 0x38
0x0053FD30: lea      edi, [esi + 8]
0x0053FD33: mov      ecx, edi
0x0053FD35: call     0x7bfe00
0x0053FD3A: test     eax, eax
0x0053FD3C: je       0x53fd65
0x0053FD3E: mov      ecx, edi
0x0053FD40: call     0x7bfe00
0x0053FD45: test     eax, eax
0x0053FD47: je       0x53fd81
0x0053FD49: movzx    eax, byte ptr [edi]
0x0053FD4C: mov      edx, dword ptr [0xb78a28]
0x0053FD52: lea      ecx, [eax + eax*2]
0x0053FD55: mov      eax, dword ptr [edx + ecx*4 + 8]
0x0053FD59: movzx    ecx, byte ptr [edi + 1]
0x0053FD5D: mov      edx, dword ptr [eax + 0x78]
0x0053FD60: mov      eax, dword ptr [edx + ecx*4]
0x0053FD63: jmp      0x53fd83
0x0053FD65: mov      ecx, dword ptr [0xb79350]
0x0053FD6B: test     ecx, ecx
0x0053FD6D: je       0x53fd81
0x0053FD6F: mov      eax, dword ptr [esi + 4]
0x0053FD72: mov      edx, dword ptr [esi]
0x0053FD74: push     eax
0x0053FD75: push     0
0x0053FD77: push     0
0x0053FD79: push     edx
0x0053FD7A: call     0x7cd120
0x0053FD7F: jmp      0x53fd83
0x0053FD81: xor      eax, eax
0x0053FD83: fldz     
0x0053FD85: push     1
0x0053FD87: fst      dword ptr [esp + 0x14]
0x0053FD8B: push     0
0x0053FD8D: fst      dword ptr [esp + 0x1c]
0x0053FD91: push     0
0x0053FD93: fstp     dword ptr [esp + 0x24]
0x0053FD97: push     0
0x0053FD99: fld1     
0x0053FD9B: push     0x4200001
0x0053FDA0: fstp     dword ptr [esp + 0x30]
0x0053FDA4: movzx    ecx, byte ptr [eax + 1]
0x0053FDA8: mov      edx, dword ptr [eax + 4]
0x0053FDAB: mov      eax, dword ptr [edx + 0x1c]
0x0053FDAE: mov      eax, dword ptr [eax + ecx*4]
0x0053FDB1: mov      edx, dword ptr [ebp + 0x98]
0x0053FDB7: lea      ecx, [esp + 0x24]
0x0053FDBB: push     ecx
0x0053FDBC: add      eax, 0xc
0x0053FDBF: push     eax
0x0053FDC0: push     edx
0x0053FDC1: push     0
0x0053FDC3: push     0
0x0053FDC5: call     0x607ca0
0x0053FDCA: add      esp, 0x10
0x0053FDCD: fld1     
0x0053FDCF: mov      dword ptr [ebx + 0x64], eax
0x0053FDD2: fst      dword ptr [esp + 0x14]
0x0053FDD6: fld      dword ptr [0x98b2fc] ; [f32=10000, u32=0x461C4000]
0x0053FDDC: fst      dword ptr [esp + 0x10]
0x0053FDE0: fxch     st(1)
0x0053FDE2: fst      dword ptr [esp + 0xc]
0x0053FDE6: fxch     st(1)
0x0053FDE8: fst      dword ptr [esp + 8]
0x0053FDEC: fxch     st(1)
0x0053FDEE: fstp     dword ptr [esp + 4]
0x0053FDF2: fstp     dword ptr [esp]
0x0053FDF5: push     eax
0x0053FDF6: call     0x60f780
0x0053FDFB: mov      eax, dword ptr [ebx + 0x64]
0x0053FDFE: mov      ecx, dword ptr [ebx + 0x60]
0x0053FE01: push     0
0x0053FE03: push     eax
0x0053FE04: push     ecx
0x0053FE05: call     0x624670
0x0053FE0A: add      esp, 0x28
0x0053FE0D: pop      edi
0x0053FE0E: pop      esi
0x0053FE0F: pop      ebp
0x0053FE10: pop      ebx
0x0053FE11: add      esp, 0x10
0x0053FE14: ret      
0x0053FE15: int3     
0x0053FE16: int3     
0x0053FE17: int3     
0x0053FE18: int3     
0x0053FE19: int3     
0x0053FE1A: int3     
0x0053FE1B: int3     
0x0053FE1C: int3     
0x0053FE1D: int3     
0x0053FE1E: int3     
0x0053FE1F: int3     

--- CRotasticPhysicPlayer::vfunc_43 @ 0x0053FE20 ---
0x0053FE20: push     esi
0x0053FE21: mov      esi, ecx
0x0053FE23: mov      ecx, dword ptr [esi + 0x6c]
0x0053FE26: mov      eax, dword ptr [ecx]
0x0053FE28: mov      edx, dword ptr [eax + 0x10]
0x0053FE2B: push     0
0x0053FE2D: push     0xa
0x0053FE2F: call     edx
0x0053FE31: test     eax, eax
0x0053FE33: je       0x53fe43
0x0053FE35: cmp      dword ptr [esi + 0x64], 0
0x0053FE39: jne      0x53fe43
0x0053FE3B: mov      ecx, esi
0x0053FE3D: pop      esi
0x0053FE3E: jmp      0x53fcc0
0x0053FE43: mov      ecx, dword ptr [esi + 0x6c]
0x0053FE46: mov      eax, dword ptr [ecx]
0x0053FE48: mov      edx, dword ptr [eax + 0x20]
0x0053FE4B: push     0
0x0053FE4D: push     0xa
0x0053FE4F: call     edx
0x0053FE51: test     eax, eax
0x0053FE53: je       0x53fe79
0x0053FE55: mov      eax, dword ptr [esi + 0x64]
0x0053FE58: test     eax, eax
0x0053FE5A: je       0x53fe79
0x0053FE5C: push     eax
0x0053FE5D: mov      eax, dword ptr [esi + 0x60]
0x0053FE60: push     eax
0x0053FE61: call     0x624d60
0x0053FE66: mov      ecx, dword ptr [esi + 0x64]
0x0053FE69: push     ecx
0x0053FE6A: call     0x60f0f0
0x0053FE6F: add      esp, 0xc
0x0053FE72: mov      dword ptr [esi + 0x64], 0
0x0053FE79: pop      esi
0x0053FE7A: ret      
0x0053FE7B: int3     
0x0053FE7C: int3     
0x0053FE7D: int3     
0x0053FE7E: int3     
0x0053FE7F: int3     

--- CRotasticPhysicPlayer::vfunc_0 @ 0x0053FE80 ---
0x0053FE80: push     esi
0x0053FE81: mov      esi, ecx
0x0053FE83: call     0x792eb0
0x0053FE88: test     byte ptr [esp + 8], 1
0x0053FE8D: je       0x53fe98
0x0053FE8F: push     esi
0x0053FE90: call     0x688fb0
0x0053FE95: add      esp, 4
0x0053FE98: mov      eax, esi
0x0053FE9A: pop      esi
0x0053FE9B: ret      4
0x0053FE9E: int3     
0x0053FE9F: int3     
0x0053FEA0: fld      dword ptr [esp + 4]
0x0053FEA4: mov      eax, dword ptr [ecx + 0xe24]
0x0053FEAA: fmul     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x0053FEB0: fstp     dword ptr [ecx + 0xe34]
0x0053FEB6: test     eax, eax
0x0053FEB8: je       0x53fed3
0x0053FEBA: lea      edx, [ecx + 0xe28]
0x0053FEC0: push     edx
0x0053FEC1: push     eax
0x0053FEC2: mov      eax, dword ptr [ecx + 0xe18]
0x0053FEC8: push     0
0x0053FECA: push     eax
0x0053FECB: call     0x64c750
0x0053FED0: add      esp, 0x10
0x0053FED3: ret      4
0x0053FED6: int3     
0x0053FED7: int3     
0x0053FED8: int3     
0x0053FED9: int3     
0x0053FEDA: int3     
0x0053FEDB: int3     
0x0053FEDC: int3     
0x0053FEDD: int3     
0x0053FEDE: int3     
0x0053FEDF: int3     
0x0053FEE0: fld      dword ptr [esp + 4]
0x0053FEE4: mov      edx, dword ptr [ecx + 0xe24]
0x0053FEEA: fmul     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x0053FEF0: lea      eax, [ecx + 0xe28]
0x0053FEF6: fstp     dword ptr [esp + 4]
0x0053FEFA: fld      dword ptr [esp + 4]
0x0053FEFE: fst      dword ptr [ecx + 0xe30]
0x0053FF04: fst      dword ptr [ecx + 0xe2c]
0x0053FF0A: fstp     dword ptr [eax]
0x0053FF0C: test     edx, edx
0x0053FF0E: je       0x53ff23
0x0053FF10: push     eax
0x0053FF11: mov      eax, dword ptr [ecx + 0xe18]
0x0053FF17: push     edx
0x0053FF18: push     0
0x0053FF1A: push     eax
0x0053FF1B: call     0x64c750