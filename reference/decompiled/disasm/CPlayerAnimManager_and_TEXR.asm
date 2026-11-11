; Disassembly of CPlayerAnimManager, CPlayerAnimResource, and native TEXR parser/uploader
; Extracted verbatim from reference/game-files/Rotastic.exe (ImageBase 0x00400000)
; Key TEXR Header Offsets (0x00672B80):
;   +0x0C (uint32) : pixelDataOffset = 0x7C + frameCount * 8
;   +0x38 (uint32) : pointer to IDirect3DTexture9* framePtrs[frameCount] at +0x7C
;   +0x3C (uint16) : fmtCode (0x01/0x07/0x0A=A8R8G8B8, 0x12=DXT1, 0x13=DXT2, 0x14=DXT3, 0x15=DXT4, 0x16=DXT5)
;   +0x3E (uint16) : width
;   +0x40 (uint16) : height
;   +0x42 (uint16) : flags (&0x02 cubemap, &0x100 lockless)
;   +0x4D (uint8)  : mipCount
;   +0x4E (uint8)  : frameCount
;   +0x50 (uint32) : pointer to uint32 frameDurationsMs[frameCount] at +0x7C + frameCount * 4
;   +0x54 (uint32) : totalDurationMs

=== CPlayerAnimManager::Ctor (0x00548720 .. 0x005487C6) ===
0x00548720: mov      eax, dword ptr [esp + 4]
0x00548724: push     esi
0x00548725: push     eax
0x00548726: mov      esi, ecx
0x00548728: call     0x50de10
0x0054872D: fldz     
0x0054872F: mov      dword ptr [esi], 0x98c2f0
0x00548735: fst      dword ptr [esi + 0x178]
0x0054873B: xor      eax, eax
0x0054873D: fst      dword ptr [esi + 0x17c]
0x00548743: mov      dword ptr [esi + 0x164], eax
0x00548749: mov      dword ptr [esi + 0x168], eax
0x0054874F: mov      dword ptr [esi + 0x16c], eax
0x00548755: mov      dword ptr [esi + 0x170], eax
0x0054875B: mov      dword ptr [esi + 0x174], eax
0x00548761: mov      byte ptr [esi + 0x180], al
0x00548767: mov      byte ptr [esi + 0x181], al
0x0054876D: fst      dword ptr [esi + 0x1a0]
0x00548773: mov      dword ptr [esi + 0x18c], eax
0x00548779: fstp     dword ptr [esi + 0x1a4]
0x0054877F: mov      dword ptr [esi + 0x190], eax
0x00548785: mov      dword ptr [esi + 0x194], eax
0x0054878B: mov      dword ptr [esi + 0x198], eax
0x00548791: mov      dword ptr [esi + 0x19c], eax
0x00548797: mov      byte ptr [esi + 0x1a8], al
0x0054879D: mov      byte ptr [esi + 0x1a9], al
0x005487A3: mov      dword ptr [esi + 0x1b8], eax
0x005487A9: mov      dword ptr [esi + 0x15c], eax
0x005487AF: mov      dword ptr [esi + 0x1bc], eax
0x005487B5: mov      dword ptr [esi + 0x160], eax
0x005487BB: mov      dword ptr [esi + 0x1b4], eax
0x005487C1: mov      eax, esi
0x005487C3: pop      esi

=== CPlayerAnimManager::Dtor (0x005487D0 .. 0x00548874) ===
0x005487D0: push     -1
0x005487D2: push     0x946486
0x005487D7: mov      eax, dword ptr fs:[0]
0x005487DD: push     eax
0x005487DE: push     ecx
0x005487DF: push     esi
0x005487E0: mov      eax, dword ptr [0xb089c8]
0x005487E5: xor      eax, esp
0x005487E7: push     eax
0x005487E8: lea      eax, [esp + 0xc]
0x005487EC: mov      dword ptr fs:[0], eax
0x005487F2: mov      esi, ecx
0x005487F4: mov      dword ptr [esp + 8], esi
0x005487F8: mov      dword ptr [esi], 0x98c2f0
0x005487FE: mov      eax, dword ptr [esi + 0x15c]
0x00548804: mov      ecx, dword ptr [eax + 0x1b4]
0x0054880A: mov      dword ptr [esp + 0x14], 1
0x00548812: test     ecx, ecx
0x00548814: je       0x548824
0x00548816: mov      edx, dword ptr [ecx]
0x00548818: mov      eax, dword ptr [esi + 0x1bc]
0x0054881E: mov      edx, dword ptr [edx + 0x10]
0x00548821: push     eax
0x00548822: call     edx
0x00548824: mov      ecx, dword ptr [esi + 0x1bc]
0x0054882A: test     ecx, ecx
0x0054882C: je       0x548836
0x0054882E: mov      eax, dword ptr [ecx]
0x00548830: mov      edx, dword ptr [eax]
0x00548832: push     1
0x00548834: call     edx
0x00548836: mov      eax, dword ptr [esi + 0x1b8]
0x0054883C: push     eax
0x0054883D: mov      byte ptr [esp + 0x18], 0
0x00548842: call     0x52d1b0
0x00548847: add      esp, 4
0x0054884A: mov      ecx, esi
0x0054884C: mov      dword ptr [esi + 0x1b8], 0
0x00548856: mov      dword ptr [esp + 0x14], 0xffffffff
0x0054885E: call     0x50dea0
0x00548863: mov      ecx, dword ptr [esp + 0xc]
0x00548867: mov      dword ptr fs:[0], ecx
0x0054886E: pop      ecx
0x0054886F: pop      esi
0x00548870: add      esp, 0x10
0x00548873: ret      

=== CPlayerAnimManager::Update (0x00548880 .. 0x00548BC2) ===
0x00548880: sub      esp, 0x18
0x00548883: push     esi
0x00548884: mov      esi, ecx
0x00548886: mov      eax, dword ptr [esi + 0x1b4]
0x0054888C: test     eax, eax
0x0054888E: je       0x548aa2
0x00548894: mov      eax, dword ptr [eax + 4]
0x00548897: fldz     
0x00548899: cmp      eax, 1
0x0054889C: jne      0x548906
0x0054889E: mov      eax, dword ptr [esi + 0x15c]
0x005488A4: fst      dword ptr [esp + 0xc]
0x005488A8: fst      dword ptr [esp + 0x10]
0x005488AC: add      eax, 0x28c
0x005488B1: fstp     dword ptr [esp + 0x14]
0x005488B5: push     eax
0x005488B6: fld1     
0x005488B8: lea      ecx, [esp + 0x10]
0x005488BC: push     ecx
0x005488BD: fstp     dword ptr [esp + 0x20]
0x005488C1: call     0x6b2160
0x005488C6: fstp     st(0)
0x005488C8: fld      dword ptr [esp + 0x18]
0x005488CC: mov      ecx, dword ptr [esi + 0x15c]
0x005488D2: fldz     
0x005488D4: add      esp, 8
0x005488D7: fmul     st(1), st(0)
0x005488D9: push     0
0x005488DB: fld      dword ptr [esp + 0x10]
0x005488DF: fmul     qword ptr [0x9795c8]
0x005488E5: fsubp    st(2)
0x005488E7: fmul     dword ptr [esp + 0x18]
0x005488EB: faddp    st(1)
0x005488ED: fstp     dword ptr [esp + 8]
0x005488F1: fld      dword ptr [esp + 8]
0x005488F5: fcomp    dword ptr [0x96665c]
0x005488FB: fnstsw   ax
0x005488FD: test     ah, 0x41
0x00548900: jne      0x54892d
0x00548902: push     0
0x00548904: jmp      0x54892f
0x00548906: fstp     st(0)
0x00548908: cmp      eax, 2
0x0054890B: jne      0x548934
0x0054890D: mov      edx, dword ptr [esi + 0x15c]
0x00548913: push     edx
0x00548914: call     0x522370
0x00548919: mov      ecx, dword ptr [esi + 0x15c]
0x0054891F: add      esp, 4
0x00548922: push     0
0x00548924: cmp      eax, 1
0x00548927: jne      0x54892d
0x00548929: push     0
0x0054892B: jmp      0x54892f
0x0054892D: push     1
0x0054892F: call     0x540160
0x00548934: mov      eax, dword ptr [esi + 0x1b4]
0x0054893A: cmp      dword ptr [eax + 8], 2
0x0054893E: jne      0x548aa2
0x00548944: mov      eax, dword ptr [eax]
0x00548946: cmp      eax, 1
0x00548949: jne      0x548981
0x0054894B: mov      eax, dword ptr [esi + 0x1b4]
0x00548951: fld      dword ptr [0xb76120]
0x00548957: fadd     dword ptr [eax + 0x14]
0x0054895A: fstp     dword ptr [eax + 0x14]
0x0054895D: mov      eax, dword ptr [esi + 0x1b4]
0x00548963: fld      dword ptr [eax + 0x14]
0x00548966: fld      dword ptr [eax + 0x18]
0x00548969: fcompp   
0x0054896B: fnstsw   ax
0x0054896D: test     ah, 0x41
0x00548970: jp       0x548aa2
0x00548976: mov      ecx, esi
0x00548978: pop      esi
0x00548979: add      esp, 0x18
0x0054897C: jmp      0x548680
0x00548981: cmp      eax, 4
0x00548984: jne      0x5489a4
0x00548986: mov      eax, dword ptr [esi + 0x15c]
0x0054898C: cmp      dword ptr [eax + 0x23c], 0
0x00548993: je       0x548aa2
0x00548999: mov      ecx, esi
0x0054899B: pop      esi
0x0054899C: add      esp, 0x18
0x0054899F: jmp      0x548680
0x005489A4: cmp      eax, 5
0x005489A7: jne      0x5489cd
0x005489A9: fldz     
0x005489AB: mov      ecx, dword ptr [esi + 0x15c]
0x005489B1: fcomp    dword ptr [ecx + 0xd50]
0x005489B7: fnstsw   ax
0x005489B9: test     ah, 1
0x005489BC: jne      0x548aa2
0x005489C2: mov      ecx, esi
0x005489C4: pop      esi
0x005489C5: add      esp, 0x18
0x005489C8: jmp      0x548680
0x005489CD: cmp      eax, 2
0x005489D0: jne      0x548aa2
0x005489D6: mov      eax, dword ptr [esi + 0x1b4]
0x005489DC: fld      dword ptr [0xb76120]
0x005489E2: fadd     dword ptr [eax + 0x14]
0x005489E5: push     edi
0x005489E6: fstp     dword ptr [eax + 0x14]
0x005489E9: mov      edi, dword ptr [esi + 0x1b4]
0x005489EF: movzx    edx, byte ptr [edi + 0x1d]
0x005489F3: mov      dword ptr [esp + 8], edx
0x005489F7: fild     dword ptr [esp + 8]
0x005489FB: fmul     dword ptr [edi + 0x14]
0x005489FE: call     0x8ebdc0
0x00548A03: movzx    ecx, byte ptr [edi + 0x1c]
0x00548A07: cmp      eax, ecx
0x00548A09: jge      0x548aa7
0x00548A0F: mov      edx, dword ptr [esi + 0x15c]
0x00548A15: mov      ecx, dword ptr [edx + 0x34]
0x00548A18: mov      word ptr [ecx + 0x106], ax
0x00548A1F: mov      ecx, dword ptr [esi + 0x1b4]
0x00548A25: cmp      byte ptr [ecx + 0x24], 0
0x00548A29: jbe      0x548aa1
0x00548A2B: cmp      byte ptr [ecx + 0x1d], 0
0x00548A2F: jbe      0x548aa1
0x00548A31: movzx    edx, byte ptr [ecx + 0x24]
0x00548A35: movzx    ecx, byte ptr [ecx + 0x1c]
0x00548A39: sub      ecx, edx
0x00548A3B: sub      ecx, 1
0x00548A3E: mov      dword ptr [esp + 8], ecx
0x00548A42: jns      0x548a4a
0x00548A44: xor      ecx, ecx
0x00548A46: mov      dword ptr [esp + 8], ecx
0x00548A4A: cmp      ecx, eax
0x00548A4C: jg       0x548aa1
0x00548A4E: mov      eax, dword ptr [esi + 0x1b4]
0x00548A54: movzx    ecx, byte ptr [eax + 0x1d]
0x00548A58: mov      dword ptr [esp + 0xc], ecx
0x00548A5C: push     ecx
0x00548A5D: mov      ecx, dword ptr [esi + 0x15c]
0x00548A63: fild     dword ptr [esp + 0x10]
0x00548A67: fld1     
0x00548A69: fld      st(0)
0x00548A6B: fdivrp   st(2)
0x00548A6D: fxch     st(1)
0x00548A6F: fstp     dword ptr [esp + 0x10]
0x00548A73: fld      dword ptr [esp + 0x10]
0x00548A77: fimul    dword ptr [esp + 0xc]
0x00548A7B: fstp     dword ptr [esp + 0x10]
0x00548A7F: fld      dword ptr [eax + 0x14]
0x00548A82: fld      dword ptr [esp + 0x10]
0x00548A86: fld      st(0)
0x00548A88: fsubp    st(2)
0x00548A8A: fsubr    dword ptr [eax + 0x18]
0x00548A8D: fdivp    st(1)
0x00548A8F: fsubp    st(1)
0x00548A91: fstp     dword ptr [esp + 0x10]
0x00548A95: fld      dword ptr [esp + 0x10]
0x00548A99: fstp     dword ptr [esp]
0x00548A9C: call     0x53fea0
0x00548AA1: pop      edi
0x00548AA2: pop      esi
0x00548AA3: add      esp, 0x18
0x00548AA6: ret      
0x00548AA7: mov      ecx, dword ptr [esi + 0x15c]
0x00548AAD: mov      edx, edi
0x00548AAF: movzx    ax, byte ptr [edx + 0x1c]
0x00548AB4: mov      edx, dword ptr [ecx + 0x34]
0x00548AB7: dec      ax
0x00548AB9: mov      word ptr [edx + 0x106], ax
0x00548AC0: mov      eax, dword ptr [esi + 0x1b4]
0x00548AC6: cmp      byte ptr [eax + 0x24], 0
0x00548ACA: jbe      0x548add
0x00548ACC: fldz     
0x00548ACE: push     ecx
0x00548ACF: mov      ecx, dword ptr [esi + 0x15c]
0x00548AD5: fstp     dword ptr [esp]
0x00548AD8: call     0x53fea0
0x00548ADD: mov      ecx, dword ptr [esi + 0x1b4]
0x00548AE3: mov      eax, dword ptr [ecx + 0x20]
0x00548AE6: sub      eax, 1
0x00548AE9: je       0x548aa1
0x00548AEB: sub      eax, 1
0x00548AEE: jne      0x548bb7
0x00548AF4: mov      edx, dword ptr [esi + 0x15c]
0x00548AFA: mov      eax, dword ptr [edx + 8]
0x00548AFD: movzx    ecx, byte ptr [eax + 1]
0x00548B01: mov      edx, dword ptr [eax + 4]
0x00548B04: mov      eax, dword ptr [edx + 0x28]
0x00548B07: mov      eax, dword ptr [eax + ecx*4]
0x00548B0A: mov      ecx, dword ptr [0x95fc5c]
0x00548B10: xor      edi, edi
0x00548B12: push     edi
0x00548B13: push     edi
0x00548B14: push     ecx
0x00548B15: mov      ecx, dword ptr [eax + 0x114]
0x00548B1B: call     0x7cd3c0
0x00548B20: test     eax, eax
0x00548B22: je       0x548b79
0x00548B24: movzx    ecx, byte ptr [eax + 1]
0x00548B28: mov      eax, dword ptr [eax + 4]
0x00548B2B: lea      edx, [ecx + ecx*8]
0x00548B2E: mov      ecx, dword ptr [eax + 0x14]
0x00548B31: lea      eax, [ecx + edx*4]
0x00548B34: mov      ecx, 0x2f
0x00548B39: cmp      byte ptr [eax + 0x14], cl
0x00548B3C: jne      0x548b43
0x00548B3E: mov      eax, dword ptr [eax + 4]
0x00548B41: jmp      0x548b73
0x00548B43: cmp      byte ptr [eax + 0x15], cl
0x00548B46: jne      0x548b4d
0x00548B48: mov      eax, dword ptr [eax + 8]
0x00548B4B: jmp      0x548b73
0x00548B4D: cmp      byte ptr [eax + 0x16], cl
0x00548B50: jne      0x548b57
0x00548B52: mov      eax, dword ptr [eax + 0xc]
0x00548B55: jmp      0x548b73
0x00548B57: cmp      byte ptr [eax + 0x17], cl
0x00548B5A: jne      0x548b61
0x00548B5C: mov      eax, dword ptr [eax + 0x10]
0x00548B5F: jmp      0x548b73
0x00548B61: mov      eax, dword ptr [eax]
0x00548B63: test     eax, eax
0x00548B65: je       0x548b71
0x00548B67: push     ecx
0x00548B68: mov      ecx, eax
0x00548B6A: call     0x461400
0x00548B6F: jmp      0x548b73
0x00548B71: xor      eax, eax
0x00548B73: mov      edi, eax
0x00548B75: test     eax, eax
0x00548B77: jne      0x548b80
0x00548B79: mov      ecx, esi
0x00548B7B: call     0x548680
0x00548B80: mov      edx, dword ptr [esi + 0x15c]
0x00548B86: mov      eax, dword ptr [edx + 8]
0x00548B89: movzx    ecx, byte ptr [eax + 1]
0x00548B8D: mov      edx, dword ptr [eax + 4]
0x00548B90: mov      eax, dword ptr [edx + 0x1c]
0x00548B93: mov      eax, dword ptr [eax + ecx*4]
0x00548B96: push     0
0x00548B98: add      eax, 0xc
0x00548B9B: push     eax
0x00548B9C: mov      ecx, edi
0x00548B9E: call     0x7b9400
0x00548BA3: fcomp    qword ptr [0x980de0]
0x00548BA9: fnstsw   ax
0x00548BAB: test     ah, 5
0x00548BAE: jp       0x548bb7
0x00548BB0: mov      ecx, esi
0x00548BB2: call     0x548680
0x00548BB7: pop      edi
0x00548BB8: mov      ecx, esi
0x00548BBA: pop      esi
0x00548BBB: add      esp, 0x18

=== CPlayerAnimManager::PlayAnim (0x00548BD0 .. 0x005490F0) ===
0x00548BD0: push     ebx
0x00548BD1: mov      ebx, dword ptr [esp + 8]
0x00548BD5: mov      edx, ecx
0x00548BD7: push     esi
0x00548BD8: push     edi
0x00548BD9: lea      eax, [edx + 0x164]
0x00548BDF: mov      ecx, 0xa
0x00548BE4: mov      esi, ebx
0x00548BE6: mov      edi, eax
0x00548BE8: rep movsd dword ptr es:[edi], dword ptr [esi]
0x00548BEA: mov      ecx, dword ptr [edx + 0x1b4]
0x00548BF0: test     ecx, ecx
0x00548BF2: je       0x548c11
0x00548BF4: cmp      dword ptr [ecx + 8], 2
0x00548BF8: jne      0x548c11
0x00548BFA: cmp      dword ptr [ecx], 3
0x00548BFD: je       0x548c04
0x00548BFF: cmp      dword ptr [ebx], 2
0x00548C02: jne      0x548c2a
0x00548C04: mov      ecx, edx
0x00548C06: call     0x548680
0x00548C0B: pop      edi
0x00548C0C: pop      esi
0x00548C0D: pop      ebx
0x00548C0E: ret      4
0x00548C11: mov      dword ptr [edx + 0x1b4], eax
0x00548C17: mov      ecx, dword ptr [eax + 0x10]
0x00548C1A: mov      eax, dword ptr [eax + 0xc]
0x00548C1D: push     ecx
0x00548C1E: mov      ecx, dword ptr [edx + 0x15c]
0x00548C24: push     eax
0x00548C25: call     0x53ff40
0x00548C2A: pop      edi
0x00548C2B: pop      esi
0x00548C2C: pop      ebx
0x00548C2D: ret      4
0x00548C30: mov      eax, dword ptr [esp + 4]
0x00548C34: sub      esp, 0x2c
0x00548C37: push     ebx
0x00548C38: push     edi
0x00548C39: mov      edi, ecx
0x00548C3B: mov      ecx, dword ptr [eax + 0x34]
0x00548C3E: mov      edx, 1
0x00548C43: cmp      ecx, edx
0x00548C45: jne      0x548c8f
0x00548C47: mov      ecx, dword ptr [eax + 0x38]
0x00548C4A: fldz     
0x00548C4C: mov      dword ptr [esp + 0xc], ecx
0x00548C50: fst      dword ptr [esp + 0x20]
0x00548C54: mov      ecx, dword ptr [eax + 0x4c]
0x00548C57: fstp     dword ptr [esp + 0x24]
0x00548C5B: mov      dword ptr [esp + 0x10], ecx
0x00548C5F: mov      dword ptr [esp + 0x14], edx
0x00548C63: mov      edx, dword ptr [eax + 4]
0x00548C66: mov      eax, dword ptr [eax + 0x30]
0x00548C69: lea      ecx, [esp + 0xc]
0x00548C6D: xor      ebx, ebx
0x00548C6F: push     ecx
0x00548C70: mov      ecx, edi
0x00548C72: mov      dword ptr [esp + 0x1c], edx
0x00548C76: mov      dword ptr [esp + 0x20], eax
0x00548C7A: mov      byte ptr [esp + 0x2c], bl
0x00548C7E: mov      byte ptr [esp + 0x2d], bl
0x00548C82: call     0x548bd0
0x00548C87: pop      edi
0x00548C88: pop      ebx
0x00548C89: add      esp, 0x2c
0x00548C8C: ret      4
0x00548C8F: push     esi
0x00548C90: mov      esi, 2
0x00548C95: cmp      ecx, esi
0x00548C97: jne      0x548e04
0x00548C9D: mov      ebx, dword ptr [eax + 0x4c]
0x00548CA0: fldz     
0x00548CA2: mov      ecx, dword ptr [eax + 0x3c]
0x00548CA5: fst      dword ptr [esp + 0x24]
0x00548CA9: mov      dword ptr [esp + 0x14], ebx
0x00548CAD: fstp     dword ptr [esp + 0x28]
0x00548CB1: mov      ebx, dword ptr [eax + 4]
0x00548CB4: mov      dword ptr [esp + 0x1c], ebx
0x00548CB8: mov      ebx, dword ptr [eax + 0x30]
0x00548CBB: mov      dword ptr [esp + 0x20], ebx
0x00548CBF: xor      ebx, ebx
0x00548CC1: mov      dword ptr [esp + 0x10], ecx
0x00548CC5: mov      dword ptr [esp + 0x18], esi
0x00548CC9: mov      byte ptr [esp + 0x2c], bl
0x00548CCD: mov      byte ptr [esp + 0x2d], bl
0x00548CD1: cmp      ecx, edx
0x00548CD3: jne      0x548cf1
0x00548CD5: fld      dword ptr [eax + 0x40]
0x00548CD8: lea      edx, [esp + 0x10]
0x00548CDC: push     edx
0x00548CDD: fstp     dword ptr [esp + 0x2c]
0x00548CE1: mov      ecx, edi
0x00548CE3: call     0x5485f0
0x00548CE8: pop      esi
0x00548CE9: pop      edi
0x00548CEA: pop      ebx
0x00548CEB: add      esp, 0x2c
0x00548CEE: ret      4
0x00548CF1: cmp      ecx, esi
0x00548CF3: jne      0x548df8
0x00548CF9: mov      ecx, dword ptr [eax + 0x44]
0x00548CFC: mov      al, byte ptr [eax + 0x48]
0x00548CFF: mov      dword ptr [esp + 0x30], ecx
0x00548D03: mov      ecx, dword ptr [edi + 0x15c]
0x00548D09: mov      byte ptr [esp + 0x34], al
0x00548D0D: mov      byte ptr [esp + 0x2c], dl
0x00548D11: mov      ecx, dword ptr [ecx + 0x34]
0x00548D14: call     0x6f6e30
0x00548D19: cmp      eax, ebx
0x00548D1B: je       0x548df8
0x00548D21: cmp      dword ptr [eax + 0x90], ebx
0x00548D27: je       0x548df8
0x00548D2D: mov      edx, dword ptr [esp + 0x1c]
0x00548D31: push     ebx
0x00548D32: push     edx
0x00548D33: call     0x549510
0x00548D38: add      esp, 8
0x00548D3B: cmp      eax, ebx
0x00548D3D: je       0x548df8
0x00548D43: mov      eax, dword ptr [eax + 0x38]
0x00548D46: push     eax
0x00548D47: call     0x549560
0x00548D4C: mov      ecx, dword ptr [eax + 0xc]
0x00548D4F: mov      edx, dword ptr [ecx + 0x10]
0x00548D52: mov      esi, dword ptr [edx]
0x00548D54: push     esi
0x00548D55: call     0x549540
0x00548D5A: add      esp, 8
0x00548D5D: test     eax, eax
0x00548D5F: je       0x548df8
0x00548D65: mov      cl, byte ptr [esi + 0x4e]
0x00548D68: mov      byte ptr [esp + 0x2c], cl
0x00548D6C: fild     dword ptr [esi + 0x54]
0x00548D6F: fmul     qword ptr [0x97c068]
0x00548D75: fstp     dword ptr [esp + 0x28]
0x00548D79: fldz     
0x00548D7B: fld      dword ptr [esp + 0x28]
0x00548D7F: fcom     st(1)
0x00548D81: fnstsw   ax
0x00548D83: fstp     st(1)
0x00548D85: test     ah, 0x41
0x00548D88: jne      0x548df6
0x00548D8A: movzx    eax, cl
0x00548D8D: mov      dword ptr [esp + 0x3c], eax
0x00548D91: sub      esp, 8
0x00548D94: fild     dword ptr [esp + 0x44]
0x00548D98: fdivrp   st(1)
0x00548D9A: fstp     dword ptr [esp + 0x44]
0x00548D9E: fld      dword ptr [esp + 0x44]
0x00548DA2: fadd     qword ptr [0x97bc30]
0x00548DA8: fstp     dword ptr [esp + 0x44]
0x00548DAC: fld      dword ptr [esp + 0x44]
0x00548DB0: fstp     qword ptr [esp]
0x00548DB3: call     0x8ebb20
0x00548DB8: fnstcw   word ptr [esp + 0x44]
0x00548DBC: add      esp, 8
0x00548DBF: movzx    eax, word ptr [esp + 0x3c]
0x00548DC4: or       eax, 0xc00
0x00548DC9: mov      dword ptr [esp + 0xc], eax
0x00548DCD: lea      edx, [esp + 0x10]
0x00548DD1: push     edx
0x00548DD2: fldcw    word ptr [esp + 0x10]
0x00548DD6: fistp    dword ptr [esp + 0x10]
0x00548DDA: mov      cl, byte ptr [esp + 0x10]
0x00548DDE: mov      byte ptr [esp + 0x31], cl
0x00548DE2: mov      ecx, edi
0x00548DE4: fldcw    word ptr [esp + 0x40]
0x00548DE8: call     0x5485f0
0x00548DED: pop      esi
0x00548DEE: pop      edi
0x00548DEF: pop      ebx
0x00548DF0: add      esp, 0x2c
0x00548DF3: ret      4
0x00548DF6: fstp     st(0)
0x00548DF8: lea      edx, [esp + 0x10]
0x00548DFC: push     edx
0x00548DFD: mov      ecx, edi
0x00548DFF: call     0x5485f0
0x00548E04: pop      esi
0x00548E05: pop      edi
0x00548E06: pop      ebx
0x00548E07: add      esp, 0x2c
0x00548E0A: ret      4
0x00548E0D: int3     
0x00548E0E: int3     
0x00548E0F: int3     
0x00548E10: push     esi
0x00548E11: mov      esi, dword ptr [esp + 0xc]
0x00548E15: mov      ecx, dword ptr [esi + 0x160]
0x00548E1B: push     0
0x00548E1D: call     0x5495b0
0x00548E22: test     eax, eax
0x00548E24: je       0x548e2e
0x00548E26: push     eax
0x00548E27: mov      ecx, esi
0x00548E29: call     0x548c30
0x00548E2E: pop      esi
0x00548E2F: ret      
0x00548E30: push     esi
0x00548E31: mov      esi, dword ptr [esp + 0xc]
0x00548E35: mov      ecx, dword ptr [esi + 0x160]
0x00548E3B: push     3
0x00548E3D: call     0x5495b0
0x00548E42: test     eax, eax
0x00548E44: je       0x548e4e
0x00548E46: push     eax
0x00548E47: mov      ecx, esi
0x00548E49: call     0x548c30
0x00548E4E: pop      esi
0x00548E4F: ret      
0x00548E50: push     esi
0x00548E51: mov      esi, dword ptr [esp + 0xc]
0x00548E55: mov      ecx, dword ptr [esi + 0x160]
0x00548E5B: push     1
0x00548E5D: call     0x5495b0
0x00548E62: test     eax, eax
0x00548E64: je       0x548e6e
0x00548E66: push     eax
0x00548E67: mov      ecx, esi
0x00548E69: call     0x548c30
0x00548E6E: pop      esi
0x00548E6F: ret      
0x00548E70: push     esi
0x00548E71: mov      esi, dword ptr [esp + 0xc]
0x00548E75: mov      ecx, dword ptr [esi + 0x160]
0x00548E7B: push     7
0x00548E7D: call     0x5495b0
0x00548E82: test     eax, eax
0x00548E84: je       0x548e8e
0x00548E86: push     eax
0x00548E87: mov      ecx, esi
0x00548E89: call     0x548c30
0x00548E8E: mov      ecx, dword ptr [esi + 0x15c]
0x00548E94: fldz     
0x00548E96: fcomp    dword ptr [ecx + 0x210]
0x00548E9C: pop      esi
0x00548E9D: push     0
0x00548E9F: fnstsw   ax
0x00548EA1: test     ah, 0x41
0x00548EA4: jp       0x548eae
0x00548EA6: push     0
0x00548EA8: call     0x540160
0x00548EAD: ret      
0x00548EAE: push     1
0x00548EB0: call     0x540160
0x00548EB5: ret      
0x00548EB6: int3     
0x00548EB7: int3     
0x00548EB8: int3     
0x00548EB9: int3     
0x00548EBA: int3     
0x00548EBB: int3     
0x00548EBC: int3     
0x00548EBD: int3     
0x00548EBE: int3     
0x00548EBF: int3     
0x00548EC0: push     esi
0x00548EC1: mov      esi, dword ptr [esp + 0xc]
0x00548EC5: mov      ecx, dword ptr [esi + 0x160]
0x00548ECB: push     0x10
0x00548ECD: call     0x5495b0
0x00548ED2: test     eax, eax
0x00548ED4: je       0x548ede
0x00548ED6: push     eax
0x00548ED7: mov      ecx, esi
0x00548ED9: call     0x548c30
0x00548EDE: mov      ecx, dword ptr [esi + 0x15c]
0x00548EE4: push     0
0x00548EE6: push     0
0x00548EE8: call     0x540160
0x00548EED: mov      ecx, dword ptr [esi + 0x15c]
0x00548EF3: lea      eax, [ecx + 0x210]
0x00548EF9: push     eax
0x00548EFA: call     0x5401f0
0x00548EFF: pop      esi
0x00548F00: ret      
0x00548F01: int3     
0x00548F02: int3     
0x00548F03: int3     
0x00548F04: int3     
0x00548F05: int3     
0x00548F06: int3     
0x00548F07: int3     
0x00548F08: int3     
0x00548F09: int3     
0x00548F0A: int3     
0x00548F0B: int3     
0x00548F0C: int3     
0x00548F0D: int3     
0x00548F0E: int3     
0x00548F0F: int3     
0x00548F10: push     esi
0x00548F11: mov      esi, dword ptr [esp + 0xc]
0x00548F15: mov      ecx, dword ptr [esi + 0x160]
0x00548F1B: push     6
0x00548F1D: call     0x5495b0
0x00548F22: test     eax, eax
0x00548F24: je       0x548f2e
0x00548F26: push     eax
0x00548F27: mov      ecx, esi
0x00548F29: call     0x548c30
0x00548F2E: pop      esi
0x00548F2F: ret      
0x00548F30: push     esi
0x00548F31: mov      esi, dword ptr [esp + 0xc]
0x00548F35: mov      ecx, dword ptr [esi + 0x160]
0x00548F3B: push     0xb
0x00548F3D: call     0x5495b0
0x00548F42: test     eax, eax
0x00548F44: je       0x548f4e
0x00548F46: push     eax
0x00548F47: mov      ecx, esi
0x00548F49: call     0x548c30
0x00548F4E: pop      esi
0x00548F4F: ret      
0x00548F50: push     esi
0x00548F51: mov      esi, dword ptr [esp + 0xc]
0x00548F55: mov      ecx, dword ptr [esi + 0x160]
0x00548F5B: push     0xa
0x00548F5D: call     0x5495b0
0x00548F62: test     eax, eax
0x00548F64: je       0x548f6e
0x00548F66: push     eax
0x00548F67: mov      ecx, esi
0x00548F69: call     0x548c30
0x00548F6E: pop      esi
0x00548F6F: ret      
0x00548F70: push     esi
0x00548F71: mov      esi, dword ptr [esp + 0xc]
0x00548F75: mov      ecx, dword ptr [esi + 0x160]
0x00548F7B: push     2
0x00548F7D: call     0x5495b0
0x00548F82: test     eax, eax
0x00548F84: je       0x548f8e
0x00548F86: push     eax
0x00548F87: mov      ecx, esi
0x00548F89: call     0x548c30
0x00548F8E: pop      esi
0x00548F8F: ret      
0x00548F90: push     esi
0x00548F91: push     edi
0x00548F92: mov      edi, dword ptr [esp + 0x10]
0x00548F96: mov      ecx, dword ptr [edi + 0x160]
0x00548F9C: push     4
0x00548F9E: call     0x5495b0
0x00548FA3: mov      esi, eax
0x00548FA5: test     esi, esi
0x00548FA7: je       0x548fd8
0x00548FA9: mov      eax, dword ptr [0xb01b28]
0x00548FAE: push     0x98c2cc
0x00548FB3: push     0
0x00548FB5: push     eax
0x00548FB6: push     0x80000
0x00548FBB: push     0
0x00548FBD: push     7
0x00548FBF: push     0
0x00548FC1: push     1
0x00548FC3: push     0xff
0x00548FC8: call     0x681de0
0x00548FCD: add      esp, 0x24
0x00548FD0: push     esi
0x00548FD1: mov      ecx, edi
0x00548FD3: call     0x548c30
0x00548FD8: pop      edi
0x00548FD9: pop      esi
0x00548FDA: ret      
0x00548FDB: int3     
0x00548FDC: int3     
0x00548FDD: int3     
0x00548FDE: int3     
0x00548FDF: int3     
0x00548FE0: push     esi
0x00548FE1: mov      esi, dword ptr [esp + 0xc]
0x00548FE5: mov      ecx, dword ptr [esi + 0x160]
0x00548FEB: push     5
0x00548FED: call     0x5495b0
0x00548FF2: test     eax, eax
0x00548FF4: je       0x548ffe
0x00548FF6: push     eax
0x00548FF7: mov      ecx, esi
0x00548FF9: call     0x548c30
0x00548FFE: pop      esi
0x00548FFF: ret      
0x00549000: push     esi
0x00549001: push     edi
0x00549002: mov      edi, dword ptr [esp + 0x10]
0x00549006: mov      ecx, dword ptr [edi + 0x160]
0x0054900C: push     8
0x0054900E: call     0x5495b0
0x00549013: mov      esi, eax
0x00549015: test     esi, esi
0x00549017: je       0x549048
0x00549019: mov      eax, dword ptr [0xb01b28]
0x0054901E: push     0x98c2dc
0x00549023: push     0
0x00549025: push     eax
0x00549026: push     0x80000
0x0054902B: push     0
0x0054902D: push     7
0x0054902F: push     0
0x00549031: push     1
0x00549033: push     0xff
0x00549038: call     0x681de0
0x0054903D: add      esp, 0x24
0x00549040: push     esi
0x00549041: mov      ecx, edi
0x00549043: call     0x548c30
0x00549048: pop      edi
0x00549049: pop      esi
0x0054904A: ret      
0x0054904B: int3     
0x0054904C: int3     
0x0054904D: int3     
0x0054904E: int3     
0x0054904F: int3     
0x00549050: push     esi
0x00549051: mov      esi, dword ptr [esp + 0xc]
0x00549055: mov      ecx, dword ptr [esi + 0x160]
0x0054905B: push     9
0x0054905D: call     0x5495b0
0x00549062: test     eax, eax
0x00549064: je       0x54906e
0x00549066: push     eax
0x00549067: mov      ecx, esi
0x00549069: call     0x548c30
0x0054906E: pop      esi
0x0054906F: ret      
0x00549070: push     esi
0x00549071: mov      esi, dword ptr [esp + 0xc]
0x00549075: mov      ecx, dword ptr [esi + 0x160]
0x0054907B: push     0xd
0x0054907D: call     0x5495b0
0x00549082: test     eax, eax
0x00549084: je       0x54908e
0x00549086: push     eax
0x00549087: mov      ecx, esi
0x00549089: call     0x548c30
0x0054908E: pop      esi
0x0054908F: ret      
0x00549090: push     esi
0x00549091: mov      esi, dword ptr [esp + 0xc]
0x00549095: mov      ecx, dword ptr [esi + 0x160]
0x0054909B: push     0xe
0x0054909D: call     0x5495b0
0x005490A2: test     eax, eax
0x005490A4: je       0x5490ae
0x005490A6: push     eax
0x005490A7: mov      ecx, esi
0x005490A9: call     0x548c30
0x005490AE: pop      esi
0x005490AF: ret      
0x005490B0: push     esi
0x005490B1: mov      esi, dword ptr [esp + 0xc]
0x005490B5: mov      ecx, dword ptr [esi + 0x160]
0x005490BB: push     0xc
0x005490BD: call     0x5495b0
0x005490C2: test     eax, eax
0x005490C4: je       0x5490ce
0x005490C6: push     eax
0x005490C7: mov      ecx, esi
0x005490C9: call     0x548c30
0x005490CE: pop      esi
0x005490CF: ret      
0x005490D0: push     esi
0x005490D1: mov      esi, dword ptr [esp + 0xc]
0x005490D5: mov      ecx, dword ptr [esi + 0x160]
0x005490DB: push     0xf
0x005490DD: call     0x5495b0
0x005490E2: test     eax, eax
0x005490E4: je       0x5490ee
0x005490E6: push     eax
0x005490E7: mov      ecx, esi
0x005490E9: call     0x548c30
0x005490EE: pop      esi
0x005490EF: ret      

=== CPlayerAnimManager::InitAndRegisterEvents (0x005491F0 .. 0x0054950C) ===
0x005491F0: push     -1
0x005491F2: push     0x9464be
0x005491F7: mov      eax, dword ptr fs:[0]
0x005491FD: push     eax
0x005491FE: push     esi
0x005491FF: push     edi
0x00549200: mov      eax, dword ptr [0xb089c8]
0x00549205: xor      eax, esp
0x00549207: push     eax
0x00549208: lea      eax, [esp + 0xc]
0x0054920C: mov      dword ptr fs:[0], eax
0x00549212: mov      esi, ecx
0x00549214: mov      eax, dword ptr [esi + 8]
0x00549217: lea      ecx, [esi + 0x14]
0x0054921A: push     ecx
0x0054921B: push     eax
0x0054921C: call     0x5687c0
0x00549221: mov      edi, dword ptr [esp + 0x28]
0x00549225: mov      edx, dword ptr [esp + 0x24]
0x00549229: add      esp, 8
0x0054922C: push     edi
0x0054922D: push     edx
0x0054922E: mov      ecx, esi
0x00549230: call     0x79ac30
0x00549235: mov      eax, edi
0x00549237: sub      eax, 2
0x0054923A: jne      0x5494f8
0x00549240: mov      eax, dword ptr [esi + 8]
0x00549243: movzx    ecx, byte ptr [eax + 1]
0x00549247: mov      edx, dword ptr [eax + 4]
0x0054924A: mov      eax, dword ptr [edx + 0x64]
0x0054924D: lea      eax, [eax + ecx*2]
0x00549250: mov      cl, byte ptr [eax]
0x00549252: cmp      cl, 0xff
0x00549255: jne      0x54925b
0x00549257: xor      ecx, ecx
0x00549259: jmp      0x549275
0x0054925B: mov      edx, dword ptr [0xb78a28]
0x00549261: movzx    ecx, cl
0x00549264: lea      ecx, [ecx + ecx*2]
0x00549267: mov      ecx, dword ptr [edx + ecx*4 + 8]
0x0054926B: movzx    edx, byte ptr [eax + 1]
0x0054926F: mov      eax, dword ptr [ecx + 0x78]
0x00549272: mov      ecx, dword ptr [eax + edx*4]
0x00549275: movzx    eax, byte ptr [ecx + 1]
0x00549279: mov      ecx, dword ptr [ecx + 4]
0x0054927C: mov      edx, dword ptr [ecx + 8]
0x0054927F: test     dword ptr [edx + eax*4], 0x40000
0x00549286: je       0x5492ce
0x00549288: mov      ecx, dword ptr [ecx + 0x14]
0x0054928B: lea      eax, [eax + eax*8]
0x0054928E: lea      eax, [ecx + eax*4]
0x00549291: mov      ecx, 0x1c
0x00549296: cmp      byte ptr [eax + 0x14], cl
0x00549299: jne      0x5492a0
0x0054929B: mov      eax, dword ptr [eax + 4]
0x0054929E: jmp      0x5492d0
0x005492A0: cmp      byte ptr [eax + 0x15], cl
0x005492A3: jne      0x5492aa
0x005492A5: mov      eax, dword ptr [eax + 8]
0x005492A8: jmp      0x5492d0
0x005492AA: cmp      byte ptr [eax + 0x16], cl
0x005492AD: jne      0x5492b4
0x005492AF: mov      eax, dword ptr [eax + 0xc]
0x005492B2: jmp      0x5492d0
0x005492B4: cmp      byte ptr [eax + 0x17], cl
0x005492B7: jne      0x5492be
0x005492B9: mov      eax, dword ptr [eax + 0x10]
0x005492BC: jmp      0x5492d0
0x005492BE: mov      eax, dword ptr [eax]
0x005492C0: test     eax, eax
0x005492C2: je       0x5492ce
0x005492C4: push     ecx
0x005492C5: mov      ecx, eax
0x005492C7: call     0x461400
0x005492CC: jmp      0x5492d0
0x005492CE: xor      eax, eax
0x005492D0: push     esi
0x005492D1: push     0x5490f0
0x005492D6: lea      edx, [esi + 0x1b8]
0x005492DC: mov      dword ptr [esi + 0x15c], eax
0x005492E2: mov      eax, dword ptr [0xb1bab0]
0x005492E7: push     edx
0x005492E8: push     eax
0x005492E9: call     0x52d1d0
0x005492EE: mov      ecx, dword ptr [0xb01b28]
0x005492F4: push     0
0x005492F6: push     1
0x005492F8: push     0
0x005492FA: push     1
0x005492FC: push     0
0x005492FE: push     ecx
0x005492FF: push     0x30
0x00549301: call     0x688fe0
0x00549306: add      esp, 0x2c
0x00549309: mov      dword ptr [esp + 0x20], eax
0x0054930D: mov      dword ptr [esp + 0x14], 0
0x00549315: test     eax, eax
0x00549317: je       0x549322
0x00549319: mov      ecx, eax
0x0054931B: call     0x50e290
0x00549320: jmp      0x549324
0x00549322: xor      eax, eax
0x00549324: mov      edx, dword ptr [esi + 0x15c]
0x0054932A: mov      dword ptr [esi + 0x1bc], eax
0x00549330: mov      ecx, dword ptr [edx + 0x1b4]
0x00549336: mov      edx, dword ptr [ecx]
0x00549338: push     0
0x0054933A: push     eax
0x0054933B: mov      eax, dword ptr [edx + 0xc]
0x0054933E: mov      dword ptr [esp + 0x1c], 0xffffffff
0x00549346: call     eax
0x00549348: mov      ecx, dword ptr [esi + 0x1bc]
0x0054934E: mov      edx, dword ptr [ecx]
0x00549350: mov      eax, dword ptr [edx + 0x18]
0x00549353: push     esi
0x00549354: push     0x5486d0
0x00549359: push     0xb1bc04
0x0054935E: call     eax
0x00549360: mov      ecx, dword ptr [esi + 0x1bc]
0x00549366: mov      edx, dword ptr [ecx]
0x00549368: mov      eax, dword ptr [edx + 0x18]
0x0054936B: push     esi
0x0054936C: push     0x548e10
0x00549371: push     0xb26550
0x00549376: call     eax
0x00549378: mov      ecx, dword ptr [esi + 0x1bc]
0x0054937E: mov      edx, dword ptr [ecx]
0x00549380: mov      eax, dword ptr [edx + 0x18]
0x00549383: push     esi
0x00549384: push     0x548e30
0x00549389: push     0xb1bc54
0x0054938E: call     eax
0x00549390: mov      ecx, dword ptr [esi + 0x1bc]
0x00549396: mov      edx, dword ptr [ecx]
0x00549398: mov      eax, dword ptr [edx + 0x18]
0x0054939B: push     esi
0x0054939C: push     0x548e50
0x005493A1: push     0xb26554
0x005493A6: call     eax
0x005493A8: mov      ecx, dword ptr [esi + 0x1bc]
0x005493AE: mov      edx, dword ptr [ecx]
0x005493B0: mov      eax, dword ptr [edx + 0x18]
0x005493B3: push     esi
0x005493B4: push     0x548f10
0x005493B9: push     0xb1bc58
0x005493BE: call     eax
0x005493C0: mov      ecx, dword ptr [esi + 0x1bc]
0x005493C6: mov      edx, dword ptr [ecx]
0x005493C8: mov      eax, dword ptr [edx + 0x18]
0x005493CB: push     esi
0x005493CC: push     0x548e70
0x005493D1: push     0xb26558
0x005493D6: call     eax
0x005493D8: mov      ecx, dword ptr [esi + 0x1bc]
0x005493DE: mov      edx, dword ptr [ecx]
0x005493E0: mov      eax, dword ptr [edx + 0x18]
0x005493E3: push     esi
0x005493E4: push     0x548ec0
0x005493E9: push     0xb2655c
0x005493EE: call     eax
0x005493F0: mov      ecx, dword ptr [esi + 0x1bc]
0x005493F6: mov      edx, dword ptr [ecx]
0x005493F8: mov      eax, dword ptr [edx + 0x18]
0x005493FB: push     esi
0x005493FC: push     0x548f30
0x00549401: push     0xb26560
0x00549406: call     eax
0x00549408: mov      ecx, dword ptr [esi + 0x1bc]
0x0054940E: mov      edx, dword ptr [ecx]
0x00549410: mov      eax, dword ptr [edx + 0x18]
0x00549413: push     esi
0x00549414: push     0x548f50
0x00549419: push     0xb26568
0x0054941E: call     eax
0x00549420: mov      ecx, dword ptr [esi + 0x1bc]
0x00549426: mov      edx, dword ptr [ecx]
0x00549428: mov      eax, dword ptr [edx + 0x18]
0x0054942B: push     esi
0x0054942C: push     0x548f70
0x00549431: push     0xb26564
0x00549436: call     eax
0x00549438: mov      ecx, dword ptr [esi + 0x1bc]
0x0054943E: mov      edx, dword ptr [ecx]
0x00549440: mov      eax, dword ptr [edx + 0x18]
0x00549443: push     esi
0x00549444: push     0x548f90
0x00549449: push     0xb2656c
0x0054944E: call     eax
0x00549450: mov      ecx, dword ptr [esi + 0x1bc]
0x00549456: mov      edx, dword ptr [ecx]
0x00549458: mov      eax, dword ptr [edx + 0x18]
0x0054945B: push     esi
0x0054945C: push     0x548fe0
0x00549461: push     0xb26570
0x00549466: call     eax
0x00549468: mov      ecx, dword ptr [esi + 0x1bc]
0x0054946E: mov      edx, dword ptr [ecx]
0x00549470: mov      eax, dword ptr [edx + 0x18]
0x00549473: push     esi
0x00549474: push     0x549000
0x00549479: push     0xb26574
0x0054947E: call     eax
0x00549480: mov      ecx, dword ptr [esi + 0x1bc]
0x00549486: mov      edx, dword ptr [ecx]
0x00549488: mov      eax, dword ptr [edx + 0x18]
0x0054948B: push     esi
0x0054948C: push     0x549050
0x00549491: push     0xb26578
0x00549496: call     eax
0x00549498: mov      ecx, dword ptr [esi + 0x1bc]
0x0054949E: mov      edx, dword ptr [ecx]
0x005494A0: mov      eax, dword ptr [edx + 0x18]
0x005494A3: push     esi
0x005494A4: push     0x549070
0x005494A9: push     0xb1b9b8
0x005494AE: call     eax
0x005494B0: mov      ecx, dword ptr [esi + 0x1bc]
0x005494B6: mov      edx, dword ptr [ecx]
0x005494B8: mov      eax, dword ptr [edx + 0x18]
0x005494BB: push     esi
0x005494BC: push     0x549090
0x005494C1: push     0xb1b9bc
0x005494C6: call     eax
0x005494C8: mov      ecx, dword ptr [esi + 0x1bc]
0x005494CE: mov      edx, dword ptr [ecx]
0x005494D0: mov      eax, dword ptr [edx + 0x18]
0x005494D3: push     esi
0x005494D4: push     0x5490b0
0x005494D9: push     0xb2657c
0x005494DE: call     eax
0x005494E0: mov      ecx, dword ptr [esi + 0x1bc]
0x005494E6: mov      edx, dword ptr [ecx]
0x005494E8: mov      eax, dword ptr [edx + 0x18]
0x005494EB: push     esi
0x005494EC: push     0x5490d0
0x005494F1: push     0xb1bc5c
0x005494F6: call     eax
0x005494F8: mov      ecx, dword ptr [esp + 0xc]
0x005494FC: mov      dword ptr fs:[0], ecx
0x00549503: pop      ecx
0x00549504: pop      edi
0x00549505: pop      esi
0x00549506: add      esp, 0xc
0x00549509: ret      8

=== CPlayerAnimResource (0x005495C0 .. 0x00549717) ===
0x005495C0: mov      eax, dword ptr [esp + 4]
0x005495C4: push     esi
0x005495C5: push     eax
0x005495C6: mov      esi, ecx
0x005495C8: call     0x51cb60
0x005495CD: xor      eax, eax
0x005495CF: mov      dword ptr [esi], 0x98c3d0
0x005495D5: mov      dword ptr [esi + 0x170], eax
0x005495DB: mov      dword ptr [esi + 0x178], eax
0x005495E1: mov      dword ptr [esi + 0x174], eax
0x005495E7: mov      eax, esi
0x005495E9: pop      esi
0x005495EA: ret      4
0x005495ED: int3     
0x005495EE: int3     
0x005495EF: int3     
0x005495F0: push     -1
0x005495F2: push     0x9464e8
0x005495F7: mov      eax, dword ptr fs:[0]
0x005495FD: push     eax
0x005495FE: push     ecx
0x005495FF: push     esi
0x00549600: mov      eax, dword ptr [0xb089c8]
0x00549605: xor      eax, esp
0x00549607: push     eax
0x00549608: lea      eax, [esp + 0xc]
0x0054960C: mov      dword ptr fs:[0], eax
0x00549612: mov      esi, ecx
0x00549614: mov      dword ptr [esp + 8], esi
0x00549618: mov      dword ptr [esi], 0x98c3d0
0x0054961E: cmp      dword ptr [esi + 0x178], 0
0x00549625: mov      eax, dword ptr [esi + 0x170]
0x0054962B: lea      ecx, [esi + 0x16c]
0x00549631: mov      dword ptr [esp + 0x14], 0
0x00549639: je       0x54963e
0x0054963B: mov      dword ptr [ecx + 8], eax
0x0054963E: push     0
0x00549640: call     0x552660
0x00549645: mov      ecx, esi
0x00549647: mov      dword ptr [esp + 0x14], 0xffffffff
0x0054964F: call     0x51cbf0
0x00549654: mov      ecx, dword ptr [esp + 0xc]
0x00549658: mov      dword ptr fs:[0], ecx
0x0054965F: pop      ecx
0x00549660: pop      esi
0x00549661: add      esp, 0x10
0x00549664: ret      
0x00549665: int3     
0x00549666: int3     
0x00549667: int3     
0x00549668: int3     
0x00549669: int3     
0x0054966A: int3     
0x0054966B: int3     
0x0054966C: int3     
0x0054966D: int3     
0x0054966E: int3     
0x0054966F: int3     
0x00549670: push     ebx
0x00549671: mov      ebx, ecx
0x00549673: mov      ecx, dword ptr [ebx + 8]
0x00549676: push     esi
0x00549677: lea      eax, [ebx + 0x24]
0x0054967A: push     eax
0x0054967B: push     ecx
0x0054967C: call     0x5687c0
0x00549681: mov      esi, dword ptr [esp + 0x18]
0x00549685: mov      edx, dword ptr [esp + 0x14]
0x00549689: add      esp, 8
0x0054968C: push     esi
0x0054968D: push     edx
0x0054968E: mov      ecx, ebx
0x00549690: call     0x775670
0x00549695: mov      eax, esi
0x00549697: sub      eax, 2
0x0054969A: jne      0x549712
0x0054969C: lea      eax, [esp + 0x10]
0x005496A0: push     eax
0x005496A1: xor      esi, esi
0x005496A3: push     0x11
0x005496A5: lea      ecx, [ebx + 0x16c]
0x005496AB: mov      dword ptr [esp + 0x18], esi
0x005496AF: call     0x5497c0
0x005496B4: push     ebp
0x005496B5: push     edi
0x005496B6: jmp      0x5496c0
0x005496B8: lea      esp, [esp]
0x005496BF: nop      
0x005496C0: mov      ecx, dword ptr [ebx + 0x170]
0x005496C6: mov      dword ptr [ecx + esi*4], 0
0x005496CD: mov      edi, dword ptr [ebx + 0x1c]
0x005496D0: xor      ecx, ecx
0x005496D2: test     edi, edi
0x005496D4: jle      0x54970a
0x005496D6: mov      edx, dword ptr [ebx + 0x20]
0x005496D9: lea      esp, [esp]
0x005496E0: mov      eax, dword ptr [edx]
0x005496E2: movzx    ebp, byte ptr [eax + 1]
0x005496E6: mov      eax, dword ptr [eax + 4]
0x005496E9: mov      eax, dword ptr [eax + 0x38]
0x005496EC: mov      eax, dword ptr [eax + ebp*4]
0x005496EF: cmp      dword ptr [eax + 0x38], esi
0x005496F2: je       0x5496fe
0x005496F4: inc      ecx
0x005496F5: add      edx, 4
0x005496F8: cmp      ecx, edi
0x005496FA: jl       0x5496e0
0x005496FC: jmp      0x54970a
0x005496FE: mov      ecx, dword ptr [ebx + 0x170]
0x00549704: add      eax, 0x38
0x00549707: mov      dword ptr [ecx + esi*4], eax
0x0054970A: inc      esi
0x0054970B: cmp      esi, 0x11
0x0054970E: jl       0x5496c0
0x00549710: pop      edi
0x00549711: pop      ebp
0x00549712: pop      esi
0x00549713: pop      ebx
0x00549714: ret      8

=== CTexture::FormatToD3D (0x006725C0 .. 0x006726B3) ===
0x006725C0: push     ebp
0x006725C1: mov      ebp, esp
0x006725C3: sub      esp, 8
0x006725C6: mov      eax, dword ptr [ebp + 8]
0x006725C9: mov      dword ptr [ebp - 8], eax
0x006725CC: mov      ecx, dword ptr [ebp - 8]
0x006725CF: sub      ecx, 1
0x006725D2: mov      dword ptr [ebp - 8], ecx
0x006725D5: cmp      dword ptr [ebp - 8], 0x54
0x006725D9: ja       0x6726a1
0x006725DF: mov      edx, dword ptr [ebp - 8]
0x006725E2: movzx    eax, byte ptr [edx + 0x672700]
0x006725E9: jmp      dword ptr [eax*4 + 0x6726b4]
0x006725F0: mov      dword ptr [ebp - 4], 0x6f
0x006725F7: jmp      0x6726ac
0x006725FC: mov      dword ptr [ebp - 4], 0x19
0x00672603: jmp      0x6726ac
0x00672608: mov      dword ptr [ebp - 4], 0x15
0x0067260F: jmp      0x6726ac
0x00672614: mov      dword ptr [ebp - 4], 0x72
0x0067261B: jmp      0x6726ac
0x00672620: mov      dword ptr [ebp - 4], 0x70
0x00672627: jmp      0x6726ac
0x0067262C: mov      dword ptr [ebp - 4], 0x73
0x00672633: jmp      0x6726ac
0x00672635: mov      dword ptr [ebp - 4], 0x71
0x0067263C: jmp      0x6726ac
0x0067263E: mov      dword ptr [ebp - 4], 0x71
0x00672645: jmp      0x6726ac
0x00672647: mov      dword ptr [ebp - 4], 0x74
0x0067264E: jmp      0x6726ac
0x00672650: mov      dword ptr [ebp - 4], 0x1a
0x00672657: jmp      0x6726ac
0x00672659: mov      dword ptr [ebp - 4], 0x31545844
0x00672660: jmp      0x6726ac
0x00672662: mov      dword ptr [ebp - 4], 0x32545844
0x00672669: jmp      0x6726ac
0x0067266B: mov      dword ptr [ebp - 4], 0x33545844
0x00672672: jmp      0x6726ac
0x00672674: mov      dword ptr [ebp - 4], 0x34545844
0x0067267B: jmp      0x6726ac
0x0067267D: mov      dword ptr [ebp - 4], 0x35545844
0x00672684: jmp      0x6726ac
0x00672686: mov      dword ptr [ebp - 4], 0x15
0x0067268D: jmp      0x6726ac
0x0067268F: mov      dword ptr [ebp - 4], 0x4b
0x00672696: jmp      0x6726ac
0x00672698: mov      dword ptr [ebp - 4], 0x32
0x0067269F: jmp      0x6726ac
0x006726A1: xor      ecx, ecx
0x006726A3: jne      0x6726a1
0x006726A5: mov      dword ptr [ebp - 4], 0
0x006726AC: mov      eax, dword ptr [ebp - 4]
0x006726AF: mov      esp, ebp
0x006726B1: pop      ebp
0x006726B2: ret      

=== CTexture::CreateAndUploadMultiFrame (0x00672760 .. 0x00672C57) ===
0x00672760: push     ebp
0x00672761: mov      ebp, esp
0x00672763: sub      esp, 0x58
0x00672766: mov      eax, dword ptr [ebp + 8]
0x00672769: mov      cx, word ptr [eax + 0x3e]
0x0067276D: mov      word ptr [ebp - 0x18], cx
0x00672771: mov      edx, dword ptr [ebp + 8]
0x00672774: mov      ax, word ptr [edx + 0x40]
0x00672778: mov      word ptr [ebp - 0x14], ax
0x0067277C: mov      ecx, dword ptr [ebp + 8]
0x0067277F: mov      dx, word ptr [ecx + 0x5a]
0x00672783: mov      word ptr [ebp - 0x30], dx
0x00672787: mov      eax, dword ptr [ebp + 8]
0x0067278A: movzx    ecx, word ptr [eax + 0x42]
0x0067278E: and      ecx, 0x100
0x00672794: jne      0x67284e
0x0067279A: mov      edx, dword ptr [0xb5c4b8]
0x006727A0: and      edx, 0x80000
0x006727A6: je       0x67284e
0x006727AC: mov      ax, word ptr [ebp - 0x18]
0x006727B0: shr      ax, 1
0x006727B3: mov      word ptr [ebp - 0x18], ax
0x006727B7: mov      cx, word ptr [ebp - 0x14]
0x006727BB: shr      cx, 1
0x006727BE: mov      word ptr [ebp - 0x14], cx
0x006727C2: mov      dx, word ptr [ebp - 0x30]
0x006727C6: shr      dx, 1
0x006727C9: mov      word ptr [ebp - 0x30], dx
0x006727CD: mov      eax, 1
0x006727D2: movzx    ecx, ax
0x006727D5: movzx    edx, word ptr [ebp - 0x18]
0x006727D9: cmp      ecx, edx
0x006727DB: jle      0x6727e8
0x006727DD: mov      eax, 1
0x006727E2: mov      word ptr [ebp - 0x4e], ax
0x006727E6: jmp      0x6727f0
0x006727E8: mov      cx, word ptr [ebp - 0x18]
0x006727EC: mov      word ptr [ebp - 0x4e], cx
0x006727F0: mov      dx, word ptr [ebp - 0x4e]
0x006727F4: mov      word ptr [ebp - 0x18], dx
0x006727F8: mov      eax, 1
0x006727FD: movzx    ecx, ax
0x00672800: movzx    edx, word ptr [ebp - 0x14]
0x00672804: cmp      ecx, edx
0x00672806: jle      0x672813
0x00672808: mov      eax, 1
0x0067280D: mov      word ptr [ebp - 0x50], ax
0x00672811: jmp      0x67281b
0x00672813: mov      cx, word ptr [ebp - 0x14]
0x00672817: mov      word ptr [ebp - 0x50], cx
0x0067281B: mov      dx, word ptr [ebp - 0x50]
0x0067281F: mov      word ptr [ebp - 0x14], dx
0x00672823: mov      eax, 1
0x00672828: movzx    ecx, ax
0x0067282B: movzx    edx, word ptr [ebp - 0x30]
0x0067282F: cmp      ecx, edx
0x00672831: jle      0x67283e
0x00672833: mov      eax, 1
0x00672838: mov      word ptr [ebp - 0x52], ax
0x0067283C: jmp      0x672846
0x0067283E: mov      cx, word ptr [ebp - 0x30]
0x00672842: mov      word ptr [ebp - 0x52], cx
0x00672846: mov      dx, word ptr [ebp - 0x52]
0x0067284A: mov      word ptr [ebp - 0x30], dx
0x0067284E: mov      eax, dword ptr [ebp + 8]
0x00672851: movzx    ecx, byte ptr [eax + 0x4e]
0x00672855: push     ecx
0x00672856: mov      edx, dword ptr [ebp + 8]
0x00672859: movzx    eax, byte ptr [edx + 0x4d]
0x0067285D: push     eax
0x0067285E: mov      ecx, dword ptr [ebp + 8]
0x00672861: movzx    edx, byte ptr [ecx + 0x3c]
0x00672865: push     edx
0x00672866: movzx    eax, word ptr [ebp - 0x30]
0x0067286A: push     eax
0x0067286B: movzx    ecx, word ptr [ebp - 0x14]
0x0067286F: push     ecx
0x00672870: movzx    edx, word ptr [ebp - 0x18]
0x00672874: push     edx
0x00672875: mov      eax, dword ptr [ebp + 8]
0x00672878: push     eax
0x00672879: call     0x672230
0x0067287E: add      esp, 0x1c
0x00672881: test     eax, eax
0x00672883: jne      0x67288c
0x00672885: xor      eax, eax
0x00672887: jmp      0x672b03
0x0067288C: mov      ecx, dword ptr [ebp + 8]
0x0067288F: mov      edx, dword ptr [ecx + 0x38]
0x00672892: mov      eax, dword ptr [ebp + 8]
0x00672895: mov      ecx, dword ptr [edx]
0x00672897: mov      dword ptr [eax + 0x34], ecx
0x0067289A: mov      edx, dword ptr [ebp + 8]
0x0067289D: mov      byte ptr [edx + 0x4c], 0
0x006728A1: mov      eax, dword ptr [ebp + 8]
0x006728A4: movzx    ecx, byte ptr [eax + 0x3c]
0x006728A8: push     ecx
0x006728A9: call     0x6725c0
0x006728AE: add      esp, 4
0x006728B1: mov      dword ptr [ebp - 0x20], eax
0x006728B4: push     0
0x006728B6: push     0
0x006728B8: push     0
0x006728BA: lea      edx, [ebp - 1]
0x006728BD: push     edx
0x006728BE: mov      eax, dword ptr [ebp + 8]
0x006728C1: movzx    ecx, byte ptr [eax + 0x3c]
0x006728C5: push     ecx
0x006728C6: call     0x65a410
0x006728CB: add      esp, 0x14
0x006728CE: mov      edx, dword ptr [ebp + 8]
0x006728D1: movzx    eax, byte ptr [edx + 0x3c]
0x006728D5: mov      dword ptr [ebp - 0x58], eax
0x006728D8: mov      ecx, dword ptr [ebp - 0x58]
0x006728DB: sub      ecx, 1
0x006728DE: mov      dword ptr [ebp - 0x58], ecx
0x006728E1: cmp      dword ptr [ebp - 0x58], 0x15
0x006728E5: ja       0x672907
0x006728E7: mov      edx, dword ptr [ebp - 0x58]
0x006728EA: movzx    eax, byte ptr [edx + 0x672b18]
0x006728F1: jmp      dword ptr [eax*4 + 0x672b08]
0x006728F8: jmp      0x672912
0x006728FA: xor      ecx, ecx
0x006728FC: jne      0x6728fa
0x006728FE: xor      eax, eax
0x00672900: jmp      0x672b03
0x00672905: jmp      0x672912
0x00672907: xor      edx, edx
0x00672909: jne      0x672907
0x0067290B: xor      eax, eax
0x0067290D: jmp      0x672b03
0x00672912: mov      eax, dword ptr [ebp + 8]
0x00672915: movzx    ecx, byte ptr [eax + 0x4e]
0x00672919: mov      edx, dword ptr [ebp + 8]
0x0067291C: lea      eax, [edx + ecx*8 + 0x7c]
0x00672920: mov      dword ptr [ebp - 8], eax
0x00672923: mov      byte ptr [ebp - 0x29], 0
0x00672927: jmp      0x672932
0x00672929: mov      cl, byte ptr [ebp - 0x29]
0x0067292C: add      cl, 1
0x0067292F: mov      byte ptr [ebp - 0x29], cl
0x00672932: movzx    edx, byte ptr [ebp - 0x29]
0x00672936: mov      eax, dword ptr [ebp + 8]
0x00672939: movzx    ecx, byte ptr [eax + 0x4e]
0x0067293D: cmp      edx, ecx
0x0067293F: jge      0x672afe
0x00672945: mov      dword ptr [ebp - 0x28], 0
0x0067294C: jmp      0x672957
0x0067294E: mov      edx, dword ptr [ebp - 0x28]
0x00672951: add      edx, 1
0x00672954: mov      dword ptr [ebp - 0x28], edx
0x00672957: mov      eax, dword ptr [ebp + 8]
0x0067295A: movzx    ecx, byte ptr [eax + 0x4d]
0x0067295E: cmp      dword ptr [ebp - 0x28], ecx
0x00672961: jge      0x672af9
0x00672967: lea      edx, [ebp - 0xc]
0x0067296A: push     edx
0x0067296B: lea      eax, [ebp - 0x1c]
0x0067296E: push     eax
0x0067296F: lea      ecx, [ebp - 0x30]
0x00672972: push     ecx
0x00672973: lea      edx, [ebp - 0x14]
0x00672976: push     edx
0x00672977: lea      eax, [ebp - 0x18]
0x0067297A: push     eax
0x0067297B: lea      ecx, [ebp - 0x10]
0x0067297E: push     ecx
0x0067297F: lea      edx, [ebp - 0x24]
0x00672982: push     edx
0x00672983: movzx    eax, byte ptr [ebp - 0x28]
0x00672987: push     eax
0x00672988: mov      ecx, dword ptr [ebp + 8]
0x0067298B: push     ecx
0x0067298C: call     0x659840
0x00672991: add      esp, 0x24
0x00672994: mov      edx, dword ptr [ebp + 8]
0x00672997: movzx    eax, byte ptr [edx + 0x3c]
0x0067299B: cmp      eax, 0x12
0x0067299E: jne      0x6729be
0x006729A0: movzx    ecx, word ptr [ebp - 0x18]
0x006729A4: shl      ecx, 1
0x006729A6: mov      dword ptr [ebp - 0x1c], ecx
0x006729A9: mov      edx, dword ptr [ebp - 0x1c]
0x006729AC: push     edx
0x006729AD: mov      eax, dword ptr [ebp + 8]
0x006729B0: push     eax
0x006729B1: call     0x672e50
0x006729B6: add      esp, 8
0x006729B9: mov      dword ptr [ebp - 0xc], eax
0x006729BC: jmp      0x6729f3
0x006729BE: mov      ecx, dword ptr [ebp + 8]
0x006729C1: movzx    edx, byte ptr [ecx + 0x3c]
0x006729C5: cmp      edx, 0x13
0x006729C8: jl       0x6729f3
0x006729CA: mov      eax, dword ptr [ebp + 8]
0x006729CD: movzx    ecx, byte ptr [eax + 0x3c]
0x006729D1: cmp      ecx, 0x16
0x006729D4: jg       0x6729f3
0x006729D6: movzx    edx, word ptr [ebp - 0x18]
0x006729DA: shl      edx, 2
0x006729DD: mov      dword ptr [ebp - 0x1c], edx
0x006729E0: mov      eax, dword ptr [ebp - 0x1c]
0x006729E3: push     eax
0x006729E4: mov      ecx, dword ptr [ebp + 8]
0x006729E7: push     ecx
0x006729E8: call     0x672e50
0x006729ED: add      esp, 8
0x006729F0: mov      dword ptr [ebp - 0xc], eax
0x006729F3: mov      edx, dword ptr [ebp + 8]
0x006729F6: movzx    eax, word ptr [edx + 0x42]
0x006729FA: and      eax, 0x100
0x006729FF: je       0x672a61
0x00672A01: push     0
0x00672A03: movzx    ecx, byte ptr [ebp - 0x28]
0x00672A07: push     ecx
0x00672A08: push     0
0x00672A0A: push     0
0x00672A0C: push     0
0x00672A0E: push     0
0x00672A10: push     0
0x00672A12: push     0
0x00672A14: push     0
0x00672A16: push     0
0x00672A18: push     0
0x00672A1A: mov      edx, dword ptr [ebp + 8]
0x00672A1D: push     edx
0x00672A1E: call     0x659bc0
0x00672A23: add      esp, 0x30
0x00672A26: mov      dword ptr [ebp - 0x34], eax
0x00672A29: mov      eax, dword ptr [ebp - 0x24]
0x00672A2C: mov      dword ptr [ebp - 0x4c], eax
0x00672A2F: xor      ecx, ecx
0x00672A31: jne      0x672a2f
0x00672A33: mov      edx, dword ptr [ebp - 0x4c]
0x00672A36: push     edx
0x00672A37: mov      eax, dword ptr [ebp - 8]
0x00672A3A: push     eax
0x00672A3B: mov      ecx, dword ptr [ebp - 0x34]
0x00672A3E: push     ecx
0x00672A3F: call     0x8eb4a0
0x00672A44: add      esp, 0xc
0x00672A47: movzx    edx, byte ptr [ebp - 0x28]
0x00672A4B: push     edx
0x00672A4C: push     0
0x00672A4E: push     0
0x00672A50: mov      eax, dword ptr [ebp + 8]
0x00672A53: push     eax
0x00672A54: call     0x659c80
0x00672A59: add      esp, 0x10
0x00672A5C: jmp      0x672aeb
0x00672A61: lea      ecx, [ebp - 0x48]
0x00672A64: push     ecx
0x00672A65: mov      edx, dword ptr [ebp - 0x28]
0x00672A68: push     edx
0x00672A69: movzx    eax, byte ptr [ebp - 0x29]
0x00672A6D: mov      ecx, dword ptr [ebp + 8]
0x00672A70: mov      edx, dword ptr [ecx + 0x38]
0x00672A73: mov      eax, dword ptr [edx + eax*4]
0x00672A76: movzx    ecx, byte ptr [ebp - 0x29]
0x00672A7A: mov      edx, dword ptr [ebp + 8]
0x00672A7D: mov      edx, dword ptr [edx + 0x38]
0x00672A80: mov      ecx, dword ptr [edx + ecx*4]
0x00672A83: mov      edx, dword ptr [eax]
0x00672A85: push     ecx
0x00672A86: mov      eax, dword ptr [edx + 0x48]
0x00672A89: call     eax
0x00672A8B: mov      dword ptr [ebp - 0x40], 0
0x00672A92: mov      ecx, dword ptr [ebp - 0x40]
0x00672A95: mov      dword ptr [ebp - 0x44], ecx
0x00672A98: movzx    edx, word ptr [ebp - 0x18]
0x00672A9C: mov      dword ptr [ebp - 0x3c], edx
0x00672A9F: movzx    eax, word ptr [ebp - 0x14]
0x00672AA3: mov      dword ptr [ebp - 0x38], eax
0x00672AA6: mov      dword ptr [0xb74d40], 0x9943f8
0x00672AB0: push     0
0x00672AB2: push     -1
0x00672AB4: lea      ecx, [ebp - 0x44]
0x00672AB7: push     ecx
0x00672AB8: push     0
0x00672ABA: mov      edx, dword ptr [ebp - 0x1c]
0x00672ABD: push     edx
0x00672ABE: mov      eax, dword ptr [ebp - 0x20]
0x00672AC1: push     eax
0x00672AC2: mov      ecx, dword ptr [ebp - 8]
0x00672AC5: push     ecx
0x00672AC6: push     0
0x00672AC8: push     0
0x00672ACA: mov      edx, dword ptr [ebp - 0x48]
0x00672ACD: push     edx
0x00672ACE: call     0x9160e8
0x00672AD3: mov      dword ptr [0xb74d40], 0
0x00672ADD: mov      eax, dword ptr [ebp - 0x48]
0x00672AE0: mov      ecx, dword ptr [eax]
0x00672AE2: mov      edx, dword ptr [ebp - 0x48]
0x00672AE5: push     edx
0x00672AE6: mov      eax, dword ptr [ecx + 8]
0x00672AE9: call     eax
0x00672AEB: mov      ecx, dword ptr [ebp - 8]
0x00672AEE: add      ecx, dword ptr [ebp - 0x24]
0x00672AF1: mov      dword ptr [ebp - 8], ecx
0x00672AF4: jmp      0x67294e
0x00672AF9: jmp      0x672929
0x00672AFE: mov      eax, 1
0x00672B03: mov      esp, ebp
0x00672B05: pop      ebp
0x00672B06: ret      
0x00672B07: nop      
0x00672B08: clc      
0x00672B09: sub      byte ptr [edi], ah
0x00672B0C: cli      
0x00672B0D: sub      byte ptr [edi], ah
0x00672B10: add      eax, 0x7006729
0x00672B15: sub      dword ptr [edi], esp
0x00672B18: add      byte ptr [ebx], al
0x00672B1A: add      eax, dword ptr [eax]
0x00672B1C: add      eax, dword ptr [ebx]
0x00672B1E: add      dword ptr [ebx], eax
0x00672B20: add      eax, dword ptr [ebx]
0x00672B22: add      eax, dword ptr [ebx]
0x00672B24: add      eax, dword ptr [edx]
0x00672B26: add      eax, dword ptr [ebx]
0x00672B28: add      eax, dword ptr [edx]
0x00672B2A: add      al, byte ptr [edx]
0x00672B2C: add      al, byte ptr [edx]
0x00672B2E: int3     
0x00672B2F: int3     
0x00672B30: push     ebp
0x00672B31: mov      ebp, esp
0x00672B33: sub      esp, 0x28
0x00672B36: xor      eax, eax
0x00672B38: jne      0x672b36
0x00672B3A: mov      ecx, 0xc
0x00672B3F: imul     ecx, ecx, 0x18
0x00672B42: add      ecx, 0xb00530
0x00672B48: mov      dword ptr [ebp - 0x28], ecx
0x00672B4B: mov      edx, dword ptr [ebp - 0x28]
0x00672B4E: mov      eax, dword ptr [edx]
0x00672B50: mov      dword ptr [ebp - 0x1c], eax
0x00672B53: mov      ecx, dword ptr [ebp - 0x28]
0x00672B56: mov      edx, dword ptr [ecx + 4]
0x00672B59: mov      dword ptr [ebp - 0x18], edx
0x00672B5C: mov      eax, dword ptr [ebp - 0x28]
0x00672B5F: mov      ecx, dword ptr [eax + 8]
0x00672B62: mov      dword ptr [ebp - 0x14], ecx
0x00672B65: mov      edx, dword ptr [ebp - 0x28]
0x00672B68: mov      al, byte ptr [edx + 0xc]
0x00672B6B: mov      byte ptr [ebp - 0x10], al
0x00672B6E: mov      ecx, dword ptr [ebp - 0x28]
0x00672B71: mov      edx, dword ptr [ecx + 0x10]
0x00672B74: mov      dword ptr [ebp - 0xc], edx
0x00672B77: mov      eax, dword ptr [ebp - 0x28]
0x00672B7A: mov      ecx, dword ptr [eax + 0x14]
0x00672B7D: mov      dword ptr [ebp - 8], ecx
0x00672B80: mov      edx, dword ptr [ebp + 0x10]
0x00672B83: movzx    eax, byte ptr [edx + 0x4e]
0x00672B87: shl      eax, 2
0x00672B8A: mov      dword ptr [ebp - 0x24], eax
0x00672B8D: mov      ecx, dword ptr [ebp + 0x10]
0x00672B90: movzx    edx, byte ptr [ecx + 0x4e]
0x00672B94: shl      edx, 2
0x00672B97: mov      dword ptr [ebp - 4], edx
0x00672B9A: mov      eax, dword ptr [ebp - 4]
0x00672B9D: mov      ecx, dword ptr [ebp - 0x24]
0x00672BA0: lea      edx, [ecx + eax + 0x7c]
0x00672BA4: mov      dword ptr [ebp - 0x20], edx
0x00672BA7: mov      eax, dword ptr [ebp + 0x10]
0x00672BAA: add      eax, 0x7c
0x00672BAD: mov      ecx, dword ptr [ebp + 0x10]
0x00672BB0: mov      dword ptr [ecx + 0x38], eax
0x00672BB3: mov      edx, dword ptr [ebp + 0x10]
0x00672BB6: mov      eax, dword ptr [ebp - 0x20]
0x00672BB9: mov      dword ptr [edx + 0xc], eax
0x00672BBC: mov      ecx, dword ptr [ebp - 0x24]
0x00672BBF: mov      edx, dword ptr [ebp + 0x10]
0x00672BC2: lea      eax, [edx + ecx + 0x7c]
0x00672BC6: mov      ecx, dword ptr [ebp + 0x10]
0x00672BC9: mov      dword ptr [ecx + 0x50], eax
0x00672BCC: push     0
0x00672BCE: mov      edx, dword ptr [ebp + 0x10]
0x00672BD1: push     edx
0x00672BD2: call     0x65a230
0x00672BD7: add      esp, 8
0x00672BDA: mov      eax, dword ptr [ebp + 0x10]
0x00672BDD: movzx    ecx, word ptr [eax + 0x42]
0x00672BE1: and      ecx, 2
0x00672BE4: je       0x672c07
0x00672BE6: xor      edx, edx
0x00672BE8: jne      0x672be6
0x00672BEA: mov      eax, dword ptr [ebp + 0x10]
0x00672BED: mov      byte ptr [eax + 0x4e], 1
0x00672BF1: mov      ecx, dword ptr [ebp + 0x10]
0x00672BF4: push     ecx
0x00672BF5: call     0x673a40
0x00672BFA: add      esp, 4
0x00672BFD: test     eax, eax
0x00672BFF: jne      0x672c05
0x00672C01: xor      eax, eax
0x00672C03: jmp      0x672c1e
0x00672C05: jmp      0x672c1b
0x00672C07: mov      edx, dword ptr [ebp + 0x10]
0x00672C0A: push     edx
0x00672C0B: call     0x672760
0x00672C10: add      esp, 4
0x00672C13: test     eax, eax
0x00672C15: jne      0x672c1b
0x00672C17: xor      eax, eax
0x00672C19: jmp      0x672c1e
0x00672C1B: mov      eax, dword ptr [ebp + 0x10]
0x00672C1E: mov      esp, ebp
0x00672C20: pop      ebp
0x00672C21: ret      
0x00672C22: int3     
0x00672C23: int3     
0x00672C24: int3     
0x00672C25: int3     
0x00672C26: int3     
0x00672C27: int3     
0x00672C28: int3     
0x00672C29: int3     
0x00672C2A: int3     
0x00672C2B: int3     
0x00672C2C: int3     
0x00672C2D: int3     
0x00672C2E: int3     
0x00672C2F: int3     
0x00672C30: push     ebp
0x00672C31: mov      ebp, esp
0x00672C33: push     ecx
0x00672C34: mov      eax, dword ptr [ebp + 0x18]
0x00672C37: mov      dword ptr [ebp - 4], eax
0x00672C3A: mov      ecx, dword ptr [ebp - 4]
0x00672C3D: push     ecx
0x00672C3E: mov      edx, dword ptr [ebp + 0xc]
0x00672C41: push     edx
0x00672C42: mov      eax, dword ptr [ebp + 8]
0x00672C45: push     eax
0x00672C46: call     0x672b30
0x00672C4B: add      esp, 0xc
0x00672C4E: mov      dword ptr [ebp - 4], eax
0x00672C51: mov      eax, dword ptr [ebp - 4]
0x00672C54: mov      esp, ebp
0x00672C56: pop      ebp
