=== CAttachPoint (0x00520900 .. 0x00522600) ===
0x00520900: push     ebx
0x00520901: mov      ebx, ecx
0x00520903: test     bl, 0x7f
0x00520906: je       0x520917
0x00520908: push     8
0x0052090A: push     ebx
0x0052090B: call     0x6a9700
0x00520910: add      esp, 8
0x00520913: mov      eax, ebx
0x00520915: pop      ebx
0x00520916: ret      
0x00520917: xor      eax, eax
0x00520919: mov      dword ptr [ebx], eax
0x0052091B: mov      dword ptr [ebx + 4], eax
0x0052091E: mov      eax, ebx
0x00520920: pop      ebx
0x00520921: ret      
0x00520922: int3     
0x00520923: int3     
0x00520924: int3     
0x00520925: int3     
0x00520926: int3     
0x00520927: int3     
0x00520928: int3     
0x00520929: int3     
0x0052092A: int3     
0x0052092B: int3     
0x0052092C: int3     
0x0052092D: int3     
0x0052092E: int3     
0x0052092F: int3     
0x00520930: push     esi
0x00520931: mov      esi, ecx
0x00520933: mov      dword ptr [esi], 0x984538
0x00520939: call     0x4dba80
0x0052093E: test     byte ptr [esp + 8], 1
0x00520943: je       0x52094e
0x00520945: push     esi
0x00520946: call     0x688fb0
0x0052094B: add      esp, 4
0x0052094E: mov      eax, esi
0x00520950: pop      esi
0x00520951: ret      4
0x00520954: int3     
0x00520955: int3     
0x00520956: int3     
0x00520957: int3     
0x00520958: int3     
0x00520959: int3     
0x0052095A: int3     
0x0052095B: int3     
0x0052095C: int3     
0x0052095D: int3     
0x0052095E: int3     
0x0052095F: int3     
0x00520960: mov      eax, dword ptr [esp + 4]
0x00520964: push     0
0x00520966: push     eax
0x00520967: push     4
0x00520969: call     0x689060
0x0052096E: add      esp, 0xc
0x00520971: test     eax, eax
0x00520973: je       0x52097e
0x00520975: mov      ecx, dword ptr [esp + 8]
0x00520979: mov      edx, dword ptr [ecx]
0x0052097B: mov      dword ptr [eax], edx
0x0052097D: ret      
0x0052097E: xor      eax, eax
0x00520980: ret      
0x00520981: int3     
0x00520982: int3     
0x00520983: int3     
0x00520984: int3     
0x00520985: int3     
0x00520986: int3     
0x00520987: int3     
0x00520988: int3     
0x00520989: int3     
0x0052098A: int3     
0x0052098B: int3     
0x0052098C: int3     
0x0052098D: int3     
0x0052098E: int3     
0x0052098F: int3     
0x00520990: mov      eax, dword ptr [esp + 4]
0x00520994: push     esi
0x00520995: mov      esi, ecx
0x00520997: push     edi
0x00520998: mov      edi, dword ptr [eax]
0x0052099A: mov      eax, dword ptr [esi + 4]
0x0052099D: cmp      eax, dword ptr [esi + 8]
0x005209A0: je       0x5209b9
0x005209A2: cmp      dword ptr [eax], edi
0x005209A4: jne      0x5209b1
0x005209A6: push     eax
0x005209A7: push     eax
0x005209A8: mov      ecx, esi
0x005209AA: call     0x549720
0x005209AF: jmp      0x5209b4
0x005209B1: add      eax, 4
0x005209B4: cmp      eax, dword ptr [esi + 8]
0x005209B7: jne      0x5209a2
0x005209B9: pop      edi
0x005209BA: pop      esi
0x005209BB: ret      4
0x005209BE: int3     
0x005209BF: int3     

--- CAttachPoint::vfunc_43 @ 0x005209C0 ---
0x005209C0: ret      
0x005209C1: int3     
0x005209C2: int3     
0x005209C3: int3     
0x005209C4: int3     
0x005209C5: int3     
0x005209C6: int3     
0x005209C7: int3     
0x005209C8: int3     
0x005209C9: int3     
0x005209CA: int3     
0x005209CB: int3     
0x005209CC: int3     
0x005209CD: int3     
0x005209CE: int3     
0x005209CF: int3     
0x005209D0: push     ebx
0x005209D1: push     ebp
0x005209D2: push     esi
0x005209D3: push     edi
0x005209D4: mov      edi, dword ptr [esp + 0x14]
0x005209D8: mov      eax, dword ptr [edi + 0x1dc]
0x005209DE: movsx    esi, byte ptr [eax]
0x005209E1: mov      ebp, ecx
0x005209E3: lea      ecx, [esi + esi*2]
0x005209E6: push     edi
0x005209E7: mov      dword ptr [ebp + esi*4 + 0x1b0], edi
0x005209EE: lea      ebx, [ebp + ecx*8]
0x005209F2: call     0x522160
0x005209F7: push     edi
0x005209F8: fstp     dword ptr [ebx + 0x1c0]
0x005209FE: call     0x522160
0x00520A03: push     edi
0x00520A04: fstp     dword ptr [ebx + 0x1d4]
0x00520A0A: mov      dword ptr [ebx + 0x1c4], 0
0x00520A14: call     0x522370
0x00520A19: fldz     
0x00520A1B: add      esp, 0xc
0x00520A1E: fstp     dword ptr [ebx + 0x1d0]
0x00520A24: pop      edi
0x00520A25: lea      edx, [esi + esi*2 + 0x39]
0x00520A29: pop      esi
0x00520A2A: mov      dword ptr [ebp + edx*8], eax
0x00520A2E: pop      ebp
0x00520A2F: pop      ebx
0x00520A30: ret      4
0x00520A33: int3     
0x00520A34: int3     
0x00520A35: int3     
0x00520A36: int3     
0x00520A37: int3     
0x00520A38: int3     
0x00520A39: int3     
0x00520A3A: int3     
0x00520A3B: int3     
0x00520A3C: int3     
0x00520A3D: int3     
0x00520A3E: int3     
0x00520A3F: int3     
0x00520A40: mov      eax, dword ptr [esp + 4]
0x00520A44: mov      edx, dword ptr [eax + 0x1dc]
0x00520A4A: movsx    eax, byte ptr [edx]
0x00520A4D: xor      edx, edx
0x00520A4F: mov      dword ptr [ecx + eax*4 + 0x1b0], edx
0x00520A56: lea      eax, [eax + eax*2]
0x00520A59: mov      dword ptr [ecx + eax*8 + 0x1cc], edx
0x00520A60: ret      4
0x00520A63: int3     
0x00520A64: int3     
0x00520A65: int3     
0x00520A66: int3     
0x00520A67: int3     
0x00520A68: int3     
0x00520A69: int3     
0x00520A6A: int3     
0x00520A6B: int3     
0x00520A6C: int3     
0x00520A6D: int3     
0x00520A6E: int3     
0x00520A6F: int3     
0x00520A70: push     -1
0x00520A72: push     0x944378
0x00520A77: mov      eax, dword ptr fs:[0]
0x00520A7D: push     eax
0x00520A7E: push     ecx
0x00520A7F: push     esi
0x00520A80: mov      eax, dword ptr [0xb089c8]
0x00520A85: xor      eax, esp
0x00520A87: push     eax
0x00520A88: lea      eax, [esp + 0xc]
0x00520A8C: mov      dword ptr fs:[0], eax
0x00520A92: mov      esi, ecx
0x00520A94: mov      dword ptr [esp + 8], esi
0x00520A98: mov      dword ptr [esi], 0x984678
0x00520A9E: mov      ecx, dword ptr [esi + 0x1ac]
0x00520AA4: mov      dword ptr [esp + 0x14], 0
0x00520AAC: test     ecx, ecx
0x00520AAE: je       0x520ab8
0x00520AB0: mov      eax, dword ptr [ecx]
0x00520AB2: mov      edx, dword ptr [eax]
0x00520AB4: push     1
0x00520AB6: call     edx
0x00520AB8: mov      ecx, esi
0x00520ABA: mov      dword ptr [esi + 0x1ac], 0
0x00520AC4: mov      dword ptr [esp + 0x14], 0xffffffff
0x00520ACC: call     0x506b40
0x00520AD1: mov      ecx, dword ptr [esp + 0xc]
0x00520AD5: mov      dword ptr fs:[0], ecx
0x00520ADC: pop      ecx
0x00520ADD: pop      esi
0x00520ADE: add      esp, 0x10
0x00520AE1: ret      
0x00520AE2: int3     
0x00520AE3: int3     
0x00520AE4: int3     
0x00520AE5: int3     
0x00520AE6: int3     
0x00520AE7: int3     
0x00520AE8: int3     
0x00520AE9: int3     
0x00520AEA: int3     
0x00520AEB: int3     
0x00520AEC: int3     
0x00520AED: int3     
0x00520AEE: int3     
0x00520AEF: int3     

--- CAttachPoint::vfunc_44 @ 0x00520AF0 ---
0x00520AF0: sub      esp, 8
0x00520AF3: push     ebx
0x00520AF4: push     ebp
0x00520AF5: push     esi
0x00520AF6: push     edi
0x00520AF7: lea      edi, [ecx + 0x1b0]
0x00520AFD: lea      esi, [ecx + 0x1c0]
0x00520B03: mov      dword ptr [esp + 0x14], 4
0x00520B0B: jmp      0x520b10
0x00520B0D: lea      ecx, [ecx]
0x00520B10: mov      eax, dword ptr [edi]
0x00520B12: test     eax, eax
0x00520B14: je       0x520c28
0x00520B1A: push     eax
0x00520B1B: call     0x522370
0x00520B20: mov      ebx, eax
0x00520B22: add      esp, 4
0x00520B25: xor      ebp, ebp
0x00520B27: cmp      ebx, dword ptr [esi + 8]
0x00520B2A: je       0x520b41
0x00520B2C: mov      dword ptr [esi + 8], ebx
0x00520B2F: mov      eax, dword ptr [edi]
0x00520B31: push     eax
0x00520B32: call     0x522160
0x00520B37: fstp     dword ptr [esi]
0x00520B39: add      esp, 4
0x00520B3C: mov      ebp, 1
0x00520B41: mov      ecx, dword ptr [edi]
0x00520B43: push     ecx
0x00520B44: call     0x522160
0x00520B49: fstp     dword ptr [esp]
0x00520B4C: fld      dword ptr [esi]
0x00520B4E: push     ecx
0x00520B4F: fstp     dword ptr [esp]
0x00520B52: call     0x521d80
0x00520B57: add      esp, 8
0x00520B5A: fstp     dword ptr [esp + 0x10]
0x00520B5E: test     ebp, ebp
0x00520B60: jne      0x520bda
0x00520B62: fld      dword ptr [esp + 0x10]
0x00520B66: fld      st(0)
0x00520B68: fabs     
0x00520B6A: fstp     dword ptr [esp + 0x10]
0x00520B6E: fld      dword ptr [esp + 0x10]
0x00520B72: fcomp    dword ptr [0x984780] ; [f32=0.002, u32=0x3B03126F]
0x00520B78: fnstsw   ax
0x00520B7A: test     ah, 1
0x00520B7D: jne      0x520bd8
0x00520B7F: fldz     
0x00520B81: fcomp    st(1)
0x00520B83: fnstsw   ax
0x00520B85: test     ah, 0x41
0x00520B88: jne      0x520b9c
0x00520B8A: fld      qword ptr [0x984050] ; [f64=3.14159, u32=0x60000000]
0x00520B90: fadd     st(1), st(0)
0x00520B92: faddp    st(1)
0x00520B94: fstp     dword ptr [esp + 0x10]
0x00520B98: fld      dword ptr [esp + 0x10]
0x00520B9C: fld      dword ptr [0x98477c] ; [f32=6.1, u32=0x40C33333]
0x00520BA2: fcomp    st(1)
0x00520BA4: fnstsw   ax
0x00520BA6: test     ah, 0x41
0x00520BA9: jp       0x520bb0
0x00520BAB: cmp      ebx, 2
0x00520BAE: je       0x520bc4
0x00520BB0: fcomp    qword ptr [0x9836b0] ; [f64=0.2, u32=0xA0000000]
0x00520BB6: fnstsw   ax
0x00520BB8: test     ah, 0x41
0x00520BBB: jp       0x520bda
0x00520BBD: cmp      ebx, 1
0x00520BC0: jne      0x520bda
0x00520BC2: jmp      0x520bc6
0x00520BC4: fstp     st(0)
0x00520BC6: cmp      dword ptr [esi + 4], 0
0x00520BCA: jne      0x520bda
0x00520BCC: inc      dword ptr [esi + 0xc]
0x00520BCF: mov      dword ptr [esi + 4], 5
0x00520BD6: jmp      0x520bda
0x00520BD8: fstp     st(0)
0x00520BDA: mov      eax, dword ptr [esi + 4]
0x00520BDD: fld      dword ptr [esi + 0x14]
0x00520BE0: dec      eax
0x00520BE1: xor      edx, edx
0x00520BE3: test     eax, eax
0x00520BE5: setle    dl
0x00520BE8: push     ecx
0x00520BE9: fstp     dword ptr [esp]
0x00520BEC: dec      edx
0x00520BED: and      eax, edx
0x00520BEF: mov      dword ptr [esi + 4], eax
0x00520BF2: mov      eax, dword ptr [edi]
0x00520BF4: push     eax
0x00520BF5: call     0x522160
0x00520BFA: fstp     dword ptr [esp]
0x00520BFD: call     0x521d80
0x00520C02: fabs     
0x00520C04: fstp     dword ptr [esp + 0x18]
0x00520C08: fld      dword ptr [esp + 0x18]
0x00520C0C: fstp     dword ptr [esp + 0x18]
0x00520C10: fld      dword ptr [esp + 0x18]
0x00520C14: fadd     dword ptr [esi + 0x10]
0x00520C17: fstp     dword ptr [esi + 0x10]
0x00520C1A: mov      ecx, dword ptr [edi]
0x00520C1C: push     ecx
0x00520C1D: call     0x522160
0x00520C22: fstp     dword ptr [esi + 0x14]
0x00520C25: add      esp, 0xc
0x00520C28: add      edi, 4
0x00520C2B: add      esi, 0x18
0x00520C2E: sub      dword ptr [esp + 0x14], 1
0x00520C33: jne      0x520b10
0x00520C39: pop      edi
0x00520C3A: pop      esi
0x00520C3B: pop      ebp
0x00520C3C: pop      ebx
0x00520C3D: add      esp, 8
0x00520C40: ret      
0x00520C41: int3     
0x00520C42: int3     
0x00520C43: int3     
0x00520C44: int3     
0x00520C45: int3     
0x00520C46: int3     
0x00520C47: int3     
0x00520C48: int3     
0x00520C49: int3     
0x00520C4A: int3     
0x00520C4B: int3     
0x00520C4C: int3     
0x00520C4D: int3     
0x00520C4E: int3     
0x00520C4F: int3     
0x00520C50: fld      dword ptr [edx]
0x00520C52: fsub     dword ptr [ecx]
0x00520C54: fstp     dword ptr [eax]
0x00520C56: fld      dword ptr [edx + 4]
0x00520C59: fsub     dword ptr [ecx + 4]
0x00520C5C: fstp     dword ptr [eax + 4]
0x00520C5F: fld      dword ptr [edx + 8]
0x00520C62: fsub     dword ptr [ecx + 8]
0x00520C65: fstp     dword ptr [eax + 8]
0x00520C68: fld      dword ptr [edx + 0xc]
0x00520C6B: fsub     dword ptr [ecx + 0xc]
0x00520C6E: fstp     dword ptr [eax + 0xc]
0x00520C71: ret      
0x00520C72: int3     
0x00520C73: int3     
0x00520C74: int3     
0x00520C75: int3     
0x00520C76: int3     
0x00520C77: int3     
0x00520C78: int3     
0x00520C79: int3     
0x00520C7A: int3     
0x00520C7B: int3     
0x00520C7C: int3     
0x00520C7D: int3     
0x00520C7E: int3     
0x00520C7F: int3     

--- CAttachPoint::vfunc_4 @ 0x00520C80 ---
0x00520C80: push     esi
0x00520C81: mov      esi, ecx
0x00520C83: mov      ecx, dword ptr [esi + 8]
0x00520C86: push     edi
0x00520C87: lea      eax, [esi + 0x60]
0x00520C8A: push     eax
0x00520C8B: push     ecx
0x00520C8C: call     0x5687c0
0x00520C91: mov      ecx, dword ptr [esi + 0xc]
0x00520C94: mov      edi, dword ptr [esp + 0x18]
0x00520C98: add      esp, 8
0x00520C9B: test     ecx, ecx
0x00520C9D: je       0x520cc1
0x00520C9F: mov      eax, dword ptr [esi + 8]
0x00520CA2: movzx    edx, byte ptr [eax + 1]
0x00520CA6: push     ebx
0x00520CA7: mov      ebx, dword ptr [eax + 4]
0x00520CAA: mov      ebx, dword ptr [ebx + 0x38]
0x00520CAD: cmp      ecx, dword ptr [ebx + edx*4]
0x00520CB0: pop      ebx
0x00520CB1: je       0x520cc1
0x00520CB3: mov      edx, dword ptr [ecx]
0x00520CB5: mov      edx, dword ptr [edx + 0x24]
0x00520CB8: push     edi
0x00520CB9: push     eax
0x00520CBA: mov      eax, dword ptr [esp + 0x14]
0x00520CBE: push     eax
0x00520CBF: call     edx
0x00520CC1: mov      eax, edi
0x00520CC3: sub      eax, 2
0x00520CC6: jne      0x520ce1
0x00520CC8: mov      eax, dword ptr [esi + 8]
0x00520CCB: movzx    ecx, byte ptr [eax + 1]
0x00520CCF: mov      edx, dword ptr [eax + 4]
0x00520CD2: mov      eax, dword ptr [edx + 0x38]
0x00520CD5: mov      ecx, dword ptr [eax + ecx*4]
0x00520CD8: add      ecx, 0x38
0x00520CDB: mov      dword ptr [esi + 0x1a8], ecx
0x00520CE1: pop      edi
0x00520CE2: pop      esi
0x00520CE3: ret      8
0x00520CE6: int3     
0x00520CE7: int3     
0x00520CE8: int3     
0x00520CE9: int3     
0x00520CEA: int3     
0x00520CEB: int3     
0x00520CEC: int3     
0x00520CED: int3     
0x00520CEE: int3     
0x00520CEF: int3     
0x00520CF0: push     -1
0x00520CF2: push     0x94439b
0x00520CF7: mov      eax, dword ptr fs:[0]
0x00520CFD: push     eax
0x00520CFE: sub      esp, 0xc
0x00520D01: mov      eax, dword ptr [0xb089c8]
0x00520D06: xor      eax, esp
0x00520D08: push     eax
0x00520D09: lea      eax, [esp + 0x10]
0x00520D0D: mov      dword ptr fs:[0], eax
0x00520D13: mov      eax, dword ptr [esp + 0x20]
0x00520D17: mov      edx, dword ptr [esp + 0x24]
0x00520D1B: mov      dword ptr [esp + 4], 0x984784
0x00520D23: mov      dword ptr [esp + 8], eax
0x00520D27: mov      dword ptr [esp + 0xc], edx
0x00520D2B: mov      ecx, dword ptr [ecx + 0x1ac]
0x00520D31: mov      eax, dword ptr [ecx]
0x00520D33: mov      eax, dword ptr [eax + 8]
0x00520D36: push     1
0x00520D38: lea      edx, [esp + 8]
0x00520D3C: push     edx
0x00520D3D: mov      dword ptr [esp + 0x20], 0
0x00520D45: call     eax
0x00520D47: mov      ecx, dword ptr [esp + 0x10]
0x00520D4B: mov      dword ptr fs:[0], ecx
0x00520D52: pop      ecx
0x00520D53: add      esp, 0x18
0x00520D56: ret      8
0x00520D59: int3     
0x00520D5A: int3     
0x00520D5B: int3     
0x00520D5C: int3     
0x00520D5D: int3     
0x00520D5E: int3     
0x00520D5F: int3     
0x00520D60: push     -1
0x00520D62: push     0x9443be
0x00520D67: mov      eax, dword ptr fs:[0]
0x00520D6D: push     eax
0x00520D6E: sub      esp, 0xc
0x00520D71: mov      eax, dword ptr [0xb089c8]
0x00520D76: xor      eax, esp
0x00520D78: push     eax
0x00520D79: lea      eax, [esp + 0x10]
0x00520D7D: mov      dword ptr fs:[0], eax
0x00520D83: mov      eax, dword ptr [esp + 0x20]
0x00520D87: mov      dword ptr [esp + 4], 0x984798
0x00520D8F: mov      dword ptr [esp + 8], eax
0x00520D93: mov      dword ptr [esp + 0xc], 1
0x00520D9B: mov      ecx, dword ptr [ecx + 0x1ac]
0x00520DA1: mov      edx, dword ptr [ecx]
0x00520DA3: mov      edx, dword ptr [edx + 8]
0x00520DA6: push     1
0x00520DA8: lea      eax, [esp + 8]
0x00520DAC: push     eax
0x00520DAD: mov      dword ptr [esp + 0x20], 0
0x00520DB5: call     edx
0x00520DB7: mov      ecx, dword ptr [esp + 0x10]
0x00520DBB: mov      dword ptr fs:[0], ecx
0x00520DC2: pop      ecx
0x00520DC3: add      esp, 0x18
0x00520DC6: ret      4
0x00520DC9: int3     
0x00520DCA: int3     
0x00520DCB: int3     
0x00520DCC: int3     
0x00520DCD: int3     
0x00520DCE: int3     
0x00520DCF: int3     
0x00520DD0: push     -1
0x00520DD2: push     0x9443e1
0x00520DD7: mov      eax, dword ptr fs:[0]
0x00520DDD: push     eax
0x00520DDE: sub      esp, 0xc
0x00520DE1: mov      eax, dword ptr [0xb089c8]
0x00520DE6: xor      eax, esp
0x00520DE8: push     eax
0x00520DE9: lea      eax, [esp + 0x10]
0x00520DED: mov      dword ptr fs:[0], eax
0x00520DF3: mov      eax, dword ptr [esp + 0x20]
0x00520DF7: mov      dword ptr [esp + 8], eax
0x00520DFB: xor      eax, eax
0x00520DFD: mov      dword ptr [esp + 4], 0x984798
0x00520E05: mov      dword ptr [esp + 0xc], eax
0x00520E09: mov      ecx, dword ptr [ecx + 0x1ac]
0x00520E0F: mov      edx, dword ptr [ecx]
0x00520E11: mov      edx, dword ptr [edx + 8]
0x00520E14: mov      dword ptr [esp + 0x18], eax
0x00520E18: push     1
0x00520E1A: lea      eax, [esp + 8]
0x00520E1E: push     eax
0x00520E1F: call     edx
0x00520E21: mov      ecx, dword ptr [esp + 0x10]
0x00520E25: mov      dword ptr fs:[0], ecx
0x00520E2C: pop      ecx
0x00520E2D: add      esp, 0x18
0x00520E30: ret      4
0x00520E33: int3     
0x00520E34: int3     
0x00520E35: int3     
0x00520E36: int3     
0x00520E37: int3     
0x00520E38: int3     
0x00520E39: int3     
0x00520E3A: int3     
0x00520E3B: int3     
0x00520E3C: int3     
0x00520E3D: int3     
0x00520E3E: int3     
0x00520E3F: int3     

--- faAttachPointActive::execute @ 0x00520E40 ---
0x00520E40: push     esi
0x00520E41: mov      esi, dword ptr [esp + 8]
0x00520E45: push     0
0x00520E47: push     0x1c
0x00520E49: lea      ecx, [esi + 0x4c]
0x00520E4C: call     0x507ed0
0x00520E51: mov      cl, byte ptr [esi + 0x58]
0x00520E54: mov      eax, dword ptr [eax + 0x1a8]
0x00520E5A: mov      byte ptr [eax], cl
0x00520E5C: pop      esi
0x00520E5D: ret      
0x00520E5E: int3     
0x00520E5F: int3     

--- ffAttachPointTestAnyPlayerIsAttach::execute @ 0x00520E60 ---
0x00520E60: mov      ecx, dword ptr [esp + 4]
0x00520E64: push     0
0x00520E66: push     0x1c
0x00520E68: add      ecx, 0x14
0x00520E6B: call     0x507ed0
0x00520E70: xor      ecx, ecx
0x00520E72: add      eax, 0x1b0
0x00520E77: cmp      dword ptr [eax], 0
0x00520E7A: jne      0x520e88
0x00520E7C: inc      ecx
0x00520E7D: add      eax, 4
0x00520E80: cmp      ecx, 4
0x00520E83: jl       0x520e77
0x00520E85: xor      eax, eax
0x00520E87: ret      
0x00520E88: mov      eax, 1
0x00520E8D: ret      
0x00520E8E: int3     
0x00520E8F: int3     

--- ffAttachPointTestAnyPlayerTurnCount::execute @ 0x00520E90 ---
0x00520E90: sub      esp, 8
0x00520E93: push     ebx
0x00520E94: mov      ebx, dword ptr [esp + 0x10]
0x00520E98: push     esi
0x00520E99: push     edi
0x00520E9A: push     0
0x00520E9C: push     0x1c
0x00520E9E: lea      ecx, [ebx + 0x14]
0x00520EA1: call     0x507ed0
0x00520EA6: fld      qword ptr [0x984338] ; [f64=6.28319, u32=0x60000000]
0x00520EAC: xor      edx, edx
0x00520EAE: lea      ecx, [eax + 0x1d0]
0x00520EB4: lea      esi, [eax + 0x1b0]
0x00520EBA: lea      edi, [edx + 4]
0x00520EBD: cmp      dword ptr [esi], 0
0x00520EC0: je       0x520eee
0x00520EC2: fld      dword ptr [ecx]
0x00520EC4: fdiv     st(1)
0x00520EC6: fnstcw   word ptr [esp + 0x18]
0x00520ECA: movzx    eax, word ptr [esp + 0x18]
0x00520ECF: or       eax, 0xc00
0x00520ED4: mov      dword ptr [esp + 0xc], eax
0x00520ED8: fldcw    word ptr [esp + 0xc]
0x00520EDC: fistp    qword ptr [esp + 0xc]
0x00520EE0: mov      eax, dword ptr [esp + 0xc]
0x00520EE4: fldcw    word ptr [esp + 0x18]
0x00520EE8: cmp      eax, edx
0x00520EEA: jbe      0x520eee
0x00520EEC: mov      edx, eax
0x00520EEE: add      esi, 4
0x00520EF1: add      ecx, 0x18
0x00520EF4: sub      edi, 1
0x00520EF7: jne      0x520ebd
0x00520EF9: mov      ecx, dword ptr [ebx + 0x24]
0x00520EFC: fstp     st(0)
0x00520EFE: mov      eax, dword ptr [ebx + 0x20]
0x00520F01: pop      edi
0x00520F02: pop      esi
0x00520F03: pop      ebx
0x00520F04: cmp      ecx, 5
0x00520F07: ja       0x520f50
0x00520F09: jmp      dword ptr [ecx*4 + 0x520f58]
0x00520F10: xor      ecx, ecx
0x00520F12: cmp      edx, eax
0x00520F14: sete     cl
0x00520F17: mov      eax, ecx
0x00520F19: add      esp, 8
0x00520F1C: ret      
0x00520F1D: xor      ecx, ecx
0x00520F1F: cmp      edx, eax
0x00520F21: setne    cl
0x00520F24: mov      eax, ecx
0x00520F26: add      esp, 8
0x00520F29: ret      
0x00520F2A: cmp      eax, edx
0x00520F2C: sbb      eax, eax
0x00520F2E: neg      eax
0x00520F30: add      esp, 8
0x00520F33: ret      
0x00520F34: cmp      edx, eax
0x00520F36: sbb      eax, eax
0x00520F38: inc      eax
0x00520F39: add      esp, 8
0x00520F3C: ret      
0x00520F3D: cmp      edx, eax
0x00520F3F: sbb      eax, eax
0x00520F41: neg      eax
0x00520F43: add      esp, 8
0x00520F46: ret      
0x00520F47: cmp      eax, edx
0x00520F49: sbb      eax, eax
0x00520F4B: inc      eax
0x00520F4C: add      esp, 8
0x00520F4F: ret      
0x00520F50: xor      eax, eax
0x00520F52: add      esp, 8
0x00520F55: ret      
0x00520F56: mov      edi, edi
0x00520F58: inc      edi
0x00520F59: rsqrtps  xmm0, xmmword ptr [eax]
0x00520F5C: cmp      eax, 0x3400520f
0x00520F61: rsqrtps  xmm0, xmmword ptr [eax]
0x00520F64: sub      cl, byte ptr [edi]
0x00520F66: push     edx
0x00520F67: add      byte ptr [eax], dl
0x00520F69: rsqrtps  xmm0, xmmword ptr [eax]
0x00520F6C: sbb      eax, 0x8300520f
0x00520F71: in       al, dx
0x00520F72: xor      al, 0x56
0x00520F74: push     edi
0x00520F75: mov      edi, dword ptr [esp + 0x40]
0x00520F79: push     0
0x00520F7B: push     0x1c
0x00520F7D: lea      ecx, [edi + 0x14]
0x00520F80: call     0x507ed0
0x00520F85: push     0
0x00520F87: push     0x1c
0x00520F89: lea      ecx, [edi + 0x20]
0x00520F8C: mov      esi, eax
0x00520F8E: call     0x507ed0
0x00520F93: mov      ecx, dword ptr [eax + 8]
0x00520F96: movzx    eax, byte ptr [ecx + 1]
0x00520F9A: mov      ecx, dword ptr [ecx + 4]
0x00520F9D: mov      edx, dword ptr [ecx + 0x1c]
0x00520FA0: add      eax, eax
0x00520FA2: add      eax, eax
0x00520FA4: mov      edx, dword ptr [eax + edx]
0x00520FA7: test     edx, edx
0x00520FA9: je       0x520fcd
0x00520FAB: push     ebx
0x00520FAC: mov      ebx, dword ptr [ecx + 0xc]
0x00520FAF: test     dword ptr [eax + ebx], 0x200
0x00520FB6: pop      ebx
0x00520FB7: je       0x520fcd
0x00520FB9: test     byte ptr [edx + 8], 8
0x00520FBD: je       0x520fcd
0x00520FBF: mov      ecx, dword ptr [ecx + 0x20]
0x00520FC2: add      eax, ecx
0x00520FC4: cmp      dword ptr [eax], 0
0x00520FC7: je       0x520fcd
0x00520FC9: mov      eax, dword ptr [eax]
0x00520FCB: jmp      0x520fcf
0x00520FCD: mov      eax, edx
0x00520FCF: fld      dword ptr [eax + 0xc]
0x00520FD2: mov      ecx, dword ptr [esi + 8]
0x00520FD5: fstp     dword ptr [esp + 0x1c]
0x00520FD9: fld      dword ptr [eax + 0x10]
0x00520FDC: fstp     dword ptr [esp + 0x20]
0x00520FE0: fld      dword ptr [eax + 0x14]
0x00520FE3: movzx    eax, byte ptr [ecx + 1]
0x00520FE7: mov      ecx, dword ptr [ecx + 4]
0x00520FEA: fstp     dword ptr [esp + 0x24]
0x00520FEE: mov      edx, dword ptr [ecx + 0x1c]
0x00520FF1: add      eax, eax
0x00520FF3: add      eax, eax
0x00520FF5: mov      edx, dword ptr [eax + edx]
0x00520FF8: test     edx, edx
0x00520FFA: je       0x52101a
0x00520FFC: mov      esi, dword ptr [ecx + 0xc]
0x00520FFF: test     dword ptr [eax + esi], 0x200
0x00521006: je       0x52101a
0x00521008: test     byte ptr [edx + 8], 8
0x0052100C: je       0x52101a
0x0052100E: mov      ecx, dword ptr [ecx + 0x20]
0x00521011: add      eax, ecx
0x00521013: cmp      dword ptr [eax], 0
0x00521016: je       0x52101a
0x00521018: mov      edx, dword ptr [eax]
0x0052101A: fld      dword ptr [edx + 0xc]
0x0052101D: fstp     dword ptr [esp + 0xc]
0x00521021: fld      dword ptr [edx + 0x10]
0x00521024: fstp     dword ptr [esp + 0x10]
0x00521028: fld      dword ptr [edx + 0x14]
0x0052102B: fstp     dword ptr [esp + 0x14]
0x0052102F: fld      dword ptr [esp + 0xc]
0x00521033: fsub     dword ptr [esp + 0x1c]
0x00521037: fstp     dword ptr [esp + 0x2c]
0x0052103B: fld      dword ptr [esp + 0x10]
0x0052103F: fsub     dword ptr [esp + 0x20]
0x00521043: fstp     dword ptr [esp + 0x30]
0x00521047: fld      dword ptr [esp + 0x14]
0x0052104B: fsub     dword ptr [esp + 0x24]
0x0052104F: fstp     dword ptr [esp + 0x34]
0x00521053: fld      dword ptr [esp + 0x30]
0x00521057: fld      dword ptr [esp + 0x2c]
0x0052105B: fld      dword ptr [esp + 0x34]
0x0052105F: fld      st(1)
0x00521061: fmulp    st(2)
0x00521063: fld      st(2)
0x00521065: fmulp    st(3)
0x00521067: fxch     st(1)
0x00521069: faddp    st(2)
0x0052106B: fmul     st(0), st(0)
0x0052106D: faddp    st(1)
0x0052106F: fstp     dword ptr [esp + 0x40]
0x00521073: fld      dword ptr [esp + 0x40]
0x00521077: call     0x8eb930
0x0052107C: fstp     dword ptr [esp + 0x40]
0x00521080: fld      dword ptr [esp + 0x40]
0x00521084: fstp     dword ptr [esp + 0x40]
0x00521088: fld      dword ptr [edi + 0x2c]
0x0052108B: mov      edi, dword ptr [edi + 0x30]
0x0052108E: fstp     dword ptr [esp + 8]
0x00521092: cmp      edi, 5
0x00521095: ja       0x521147
0x0052109B: jmp      dword ptr [edi*4 + 0x521150]
0x005210A2: fld      dword ptr [esp + 0x40]
0x005210A6: fld      dword ptr [esp + 8]
0x005210AA: fucompp  
0x005210AC: fnstsw   ax
0x005210AE: test     ah, 0x44
0x005210B1: jp       0x521147
0x005210B7: pop      edi
0x005210B8: mov      eax, 1
0x005210BD: pop      esi
0x005210BE: add      esp, 0x34
0x005210C1: ret      
0x005210C2: fld      dword ptr [esp + 0x40]
0x005210C6: fld      dword ptr [esp + 8]
0x005210CA: fucompp  
0x005210CC: fnstsw   ax
0x005210CE: test     ah, 0x44
0x005210D1: jnp      0x521147
0x005210D3: pop      edi
0x005210D4: mov      eax, 1
0x005210D9: pop      esi
0x005210DA: add      esp, 0x34
0x005210DD: ret      
0x005210DE: fld      dword ptr [esp + 0x40]
0x005210E2: fld      dword ptr [esp + 8]
0x005210E6: fcompp   
0x005210E8: fnstsw   ax
0x005210EA: test     ah, 5
0x005210ED: jp       0x521147
0x005210EF: pop      edi
0x005210F0: mov      eax, 1
0x005210F5: pop      esi
0x005210F6: add      esp, 0x34
0x005210F9: ret      
0x005210FA: fld      dword ptr [esp + 0x40]
0x005210FE: fld      dword ptr [esp + 8]
0x00521102: fcompp   
0x00521104: fnstsw   ax
0x00521106: test     ah, 0x41
0x00521109: jp       0x521147
0x0052110B: pop      edi
0x0052110C: mov      eax, 1
0x00521111: pop      esi
0x00521112: add      esp, 0x34
0x00521115: ret      
0x00521116: fld      dword ptr [esp + 0x40]
0x0052111A: fld      dword ptr [esp + 8]
0x0052111E: fcompp   
0x00521120: fnstsw   ax
0x00521122: test     ah, 0x41
0x00521125: jne      0x521147
0x00521127: pop      edi
0x00521128: mov      eax, 1
0x0052112D: pop      esi
0x0052112E: add      esp, 0x34
0x00521131: ret      
0x00521132: fld      dword ptr [esp + 0x40]
0x00521136: fld      dword ptr [esp + 8]
0x0052113A: fcompp   
0x0052113C: fnstsw   ax
0x0052113E: test     ah, 1
0x00521141: je       0x5210b7
0x00521147: pop      edi
0x00521148: xor      eax, eax
0x0052114A: pop      esi
0x0052114B: add      esp, 0x34
0x0052114E: ret      
0x0052114F: nop      
0x00521150: xor      dl, byte ptr [ecx]
0x00521152: push     edx
0x00521153: add      byte ptr [esi], dl
0x00521155: adc      dword ptr [edx], edx
0x00521158: cli      
0x00521159: adc      byte ptr [edx], dl
0x0052115C: ficom    word ptr [eax]
0x0052115E: push     edx
0x0052115F: add      byte ptr [edx - 0x3dffadf0], ah
0x00521165: adc      byte ptr [edx], dl
0x00521168: int3     
0x00521169: int3     
0x0052116A: int3     
0x0052116B: int3     
0x0052116C: int3     
0x0052116D: int3     
0x0052116E: int3     
0x0052116F: int3     

--- ffAttachPointTestPlayerIsAttach::execute @ 0x00521170 ---
0x00521170: push     esi
0x00521171: mov      esi, dword ptr [esp + 8]
0x00521175: push     edi
0x00521176: push     0
0x00521178: push     0x1c
0x0052117A: lea      ecx, [esi + 0x14]
0x0052117D: call     0x507ed0
0x00521182: push     0
0x00521184: push     0x1c
0x00521186: lea      ecx, [esi + 0x20]
0x00521189: mov      edi, eax
0x0052118B: call     0x507ed0
0x00521190: mov      eax, dword ptr [eax + 0x1dc]
0x00521196: movsx    ecx, byte ptr [eax]
0x00521199: xor      eax, eax
0x0052119B: cmp      dword ptr [edi + ecx*4 + 0x1b0], eax
0x005211A2: pop      edi
0x005211A3: setne    al
0x005211A6: pop      esi
0x005211A7: ret      
0x005211A8: int3     
0x005211A9: int3     
0x005211AA: int3     
0x005211AB: int3     
0x005211AC: int3     
0x005211AD: int3     
0x005211AE: int3     
0x005211AF: int3     

--- ffAttachPointTestPlayerTurnCount::execute @ 0x005211B0 ---
0x005211B0: sub      esp, 8
0x005211B3: push     esi
0x005211B4: mov      esi, dword ptr [esp + 0x10]
0x005211B8: push     edi
0x005211B9: push     0
0x005211BB: push     0x1c
0x005211BD: lea      ecx, [esi + 0x14]
0x005211C0: call     0x507ed0
0x005211C5: push     0
0x005211C7: push     0x1c
0x005211C9: lea      ecx, [esi + 0x20]
0x005211CC: mov      edi, eax
0x005211CE: call     0x507ed0
0x005211D3: fnstcw   word ptr [esp + 0x14]
0x005211D7: mov      eax, dword ptr [eax + 0x1dc]
0x005211DD: movsx    eax, byte ptr [eax]
0x005211E0: lea      ecx, [eax + eax*2]
0x005211E3: movzx    eax, word ptr [esp + 0x14]
0x005211E8: fld      dword ptr [edi + ecx*8 + 0x1d0]
0x005211EF: fdiv     qword ptr [0x984338] ; [f64=6.28319, u32=0x60000000]
0x005211F5: mov      ecx, dword ptr [esi + 0x2c]
0x005211F8: mov      esi, dword ptr [esi + 0x30]
0x005211FB: or       eax, 0xc00
0x00521200: mov      dword ptr [esp + 8], eax
0x00521204: fldcw    word ptr [esp + 8]
0x00521208: fistp    qword ptr [esp + 8]
0x0052120C: mov      eax, dword ptr [esp + 8]
0x00521210: fldcw    word ptr [esp + 0x14]
0x00521214: cmp      esi, 5
0x00521217: ja       0x52126c
0x00521219: jmp      dword ptr [esi*4 + 0x521274]
0x00521220: xor      edx, edx
0x00521222: cmp      eax, ecx
0x00521224: sete     dl
0x00521227: pop      edi
0x00521228: pop      esi
0x00521229: mov      eax, edx
0x0052122B: add      esp, 8
0x0052122E: ret      
0x0052122F: xor      edx, edx
0x00521231: cmp      eax, ecx
0x00521233: setne    dl
0x00521236: pop      edi
0x00521237: pop      esi
0x00521238: mov      eax, edx
0x0052123A: add      esp, 8
0x0052123D: ret      
0x0052123E: cmp      ecx, eax
0x00521240: sbb      eax, eax
0x00521242: pop      edi
0x00521243: neg      eax
0x00521245: pop      esi
0x00521246: add      esp, 8
0x00521249: ret      
0x0052124A: cmp      eax, ecx
0x0052124C: sbb      eax, eax
0x0052124E: pop      edi
0x0052124F: inc      eax
0x00521250: pop      esi
0x00521251: add      esp, 8
0x00521254: ret      
0x00521255: cmp      eax, ecx
0x00521257: sbb      eax, eax
0x00521259: pop      edi
0x0052125A: neg      eax
0x0052125C: pop      esi
0x0052125D: add      esp, 8
0x00521260: ret      
0x00521261: cmp      ecx, eax
0x00521263: sbb      eax, eax
0x00521265: pop      edi
0x00521266: inc      eax
0x00521267: pop      esi
0x00521268: add      esp, 8
0x0052126B: ret      
0x0052126C: pop      edi
0x0052126D: xor      eax, eax
0x0052126F: pop      esi
0x00521270: add      esp, 8
0x00521273: ret      
0x00521274: popal    
0x00521275: adc      dl, byte ptr [edx]
0x00521278: push     ebp
0x00521279: adc      dl, byte ptr [edx]
0x0052127C: dec      edx
0x0052127D: adc      dl, byte ptr [edx]
0x00521280: adc      dl, byte ptr ds:[edx]
0x00521284: and      byte ptr [edx], dl
0x00521286: push     edx
0x00521287: add      byte ptr [edi], ch
0x00521289: adc      dl, byte ptr [edx]
0x0052128C: int3     
0x0052128D: int3     
0x0052128E: int3     
0x0052128F: int3     

--- CAttachPoint::ctor @ 0x00521290 ---
0x00521290: push     -1
0x00521292: push     0x944421
0x00521297: mov      eax, dword ptr fs:[0]
0x0052129D: push     eax
0x0052129E: push     ecx
0x0052129F: push     esi
0x005212A0: mov      eax, dword ptr [0xb089c8]
0x005212A5: xor      eax, esp
0x005212A7: push     eax
0x005212A8: lea      eax, [esp + 0xc]
0x005212AC: mov      dword ptr fs:[0], eax
0x005212B2: mov      esi, ecx
0x005212B4: mov      dword ptr [esp + 8], esi
0x005212B8: mov      eax, dword ptr [esp + 0x1c]
0x005212BC: push     eax
0x005212BD: call     0x506ab0
0x005212C2: push     0
0x005212C4: push     1
0x005212C6: push     0
0x005212C8: push     1
0x005212CA: mov      dword ptr [esi], 0x984678
0x005212D0: mov      ecx, dword ptr [0xb01b28]
0x005212D6: push     0
0x005212D8: push     ecx
0x005212D9: push     0x28
0x005212DB: mov      dword ptr [esp + 0x30], 0
0x005212E3: call     0x688fe0
0x005212E8: add      esp, 0x1c
0x005212EB: mov      dword ptr [esp + 0x1c], eax
0x005212EF: mov      byte ptr [esp + 0x14], 1
0x005212F4: test     eax, eax
0x005212F6: je       0x521301
0x005212F8: mov      ecx, eax
0x005212FA: call     0x509c70
0x005212FF: jmp      0x521303
0x00521301: xor      eax, eax
0x00521303: mov      dword ptr [esi + 0x1ac], eax
0x00521309: lea      eax, [esi + 0x1b0]
0x0052130F: mov      byte ptr [esp + 0x14], 0
0x00521314: test     al, 0x7f
0x00521316: je       0x521325
0x00521318: push     0x10
0x0052131A: push     eax
0x0052131B: call     0x6a9700
0x00521320: add      esp, 8
0x00521323: jmp      0x521332
0x00521325: xor      ecx, ecx
0x00521327: mov      dword ptr [eax], ecx
0x00521329: mov      dword ptr [eax + 4], ecx
0x0052132C: mov      dword ptr [eax + 8], ecx
0x0052132F: mov      dword ptr [eax + 0xc], ecx
0x00521332: lea      eax, [esi + 0x1c0]
0x00521338: push     0x60
0x0052133A: test     al, 0x7f
0x0052133C: je       0x52135c
0x0052133E: push     eax
0x0052133F: call     0x6a9700
0x00521344: add      esp, 8
0x00521347: mov      eax, esi
0x00521349: mov      ecx, dword ptr [esp + 0xc]
0x0052134D: mov      dword ptr fs:[0], ecx
0x00521354: pop      ecx
0x00521355: pop      esi
0x00521356: add      esp, 0x10
0x00521359: ret      4
0x0052135C: push     0
0x0052135E: push     eax
0x0052135F: call     0x8eb080
0x00521364: add      esp, 0xc
0x00521367: mov      eax, esi
0x00521369: mov      ecx, dword ptr [esp + 0xc]
0x0052136D: mov      dword ptr fs:[0], ecx
0x00521374: pop      ecx
0x00521375: pop      esi
0x00521376: add      esp, 0x10
0x00521379: ret      4
0x0052137C: int3     
0x0052137D: int3     
0x0052137E: int3     
0x0052137F: int3     
0x00521380: mov      eax, dword ptr [esp + 4]
0x00521384: fld      dword ptr [eax + 4]
0x00521387: fld      dword ptr [eax]
0x00521389: fld      dword ptr [eax + 8]
0x0052138C: fld      st(1)
0x0052138E: fmulp    st(2)
0x00521390: fld      st(2)
0x00521392: fmulp    st(3)
0x00521394: fxch     st(1)
0x00521396: faddp    st(2)
0x00521398: fmul     st(0), st(0)
0x0052139A: faddp    st(1)
0x0052139C: fstp     dword ptr [esp + 4]
0x005213A0: fld      dword ptr [esp + 4]
0x005213A4: call     0x8eb930
0x005213A9: fstp     dword ptr [esp + 4]
0x005213AD: fld      dword ptr [esp + 4]
0x005213B1: ret      
0x005213B2: int3     
0x005213B3: int3     
0x005213B4: int3     
0x005213B5: int3     
0x005213B6: int3     
0x005213B7: int3     
0x005213B8: int3     
0x005213B9: int3     
0x005213BA: int3     
0x005213BB: int3     
0x005213BC: int3     
0x005213BD: int3     
0x005213BE: int3     
0x005213BF: int3     
0x005213C0: mov      eax, 0xc
0x005213C5: ret      
0x005213C6: int3     
0x005213C7: int3     
0x005213C8: int3     
0x005213C9: int3     
0x005213CA: int3     
0x005213CB: int3     
0x005213CC: int3     
0x005213CD: int3     
0x005213CE: int3     
0x005213CF: int3     
0x005213D0: xor      eax, eax
0x005213D2: cmp      dword ptr [esp + 4], 0xb1ba00
0x005213DA: sete     al
0x005213DD: ret      4
0x005213E0: mov      eax, 0xb1ba00
0x005213E5: ret      
0x005213E6: int3     
0x005213E7: int3     
0x005213E8: int3     
0x005213E9: int3     
0x005213EA: int3     
0x005213EB: int3     
0x005213EC: int3     
0x005213ED: int3     
0x005213EE: int3     
0x005213EF: int3     
0x005213F0: xor      eax, eax
0x005213F2: cmp      dword ptr [esp + 4], 0xb1ba04
0x005213FA: sete     al
0x005213FD: ret      4
0x00521400: mov      eax, 0xb1ba04
0x00521405: ret      
0x00521406: int3     
0x00521407: int3     
0x00521408: int3     
0x00521409: int3     
0x0052140A: int3     
0x0052140B: int3     
0x0052140C: int3     
0x0052140D: int3     
0x0052140E: int3     
0x0052140F: int3     

--- CAttachPoint::vfunc_0 @ 0x00521410 ---
0x00521410: push     esi
0x00521411: mov      esi, ecx
0x00521413: call     0x520a70
0x00521418: test     byte ptr [esp + 8], 1
0x0052141D: je       0x521428
0x0052141F: push     esi
0x00521420: call     0x688fb0
0x00521425: add      esp, 4
0x00521428: mov      eax, esi
0x0052142A: pop      esi
0x0052142B: ret      4
0x0052142E: int3     
0x0052142F: int3     
0x00521430: mov      eax, dword ptr [esp + 4]
0x00521434: push     esi
0x00521435: push     0
0x00521437: push     eax
0x00521438: push     0xc
0x0052143A: mov      esi, ecx
0x0052143C: call     0x689060
0x00521441: add      esp, 0xc
0x00521444: test     eax, eax
0x00521446: je       0x52145e
0x00521448: mov      dword ptr [eax], 0x984784
0x0052144E: mov      ecx, dword ptr [esi + 4]
0x00521451: mov      dword ptr [eax + 4], ecx
0x00521454: mov      edx, dword ptr [esi + 8]
0x00521457: mov      dword ptr [eax + 8], edx
0x0052145A: pop      esi
0x0052145B: ret      4
0x0052145E: xor      eax, eax
0x00521460: pop      esi
0x00521461: ret      4
0x00521464: int3     
0x00521465: int3     
0x00521466: int3     
0x00521467: int3     
0x00521468: int3     
0x00521469: int3     
0x0052146A: int3     
0x0052146B: int3     
0x0052146C: int3     
0x0052146D: int3     
0x0052146E: int3     
0x0052146F: int3     
0x00521470: mov      eax, dword ptr [esp + 4]
0x00521474: push     esi
0x00521475: push     0
0x00521477: push     eax
0x00521478: push     0xc
0x0052147A: mov      esi, ecx
0x0052147C: call     0x689060
0x00521481: add      esp, 0xc
0x00521484: test     eax, eax
0x00521486: je       0x52149e
0x00521488: mov      dword ptr [eax], 0x984798
0x0052148E: mov      ecx, dword ptr [esi + 4]
0x00521491: mov      dword ptr [eax + 4], ecx
0x00521494: mov      edx, dword ptr [esi + 8]
0x00521497: mov      dword ptr [eax + 8], edx
0x0052149A: pop      esi
0x0052149B: ret      4
0x0052149E: xor      eax, eax
0x005214A0: pop      esi
0x005214A1: ret      4
0x005214A4: int3     
0x005214A5: int3     
0x005214A6: int3     
0x005214A7: int3     
0x005214A8: int3     
0x005214A9: int3     
0x005214AA: int3     
0x005214AB: int3     
0x005214AC: int3     
0x005214AD: int3     
0x005214AE: int3     
0x005214AF: int3     
0x005214B0: mov      eax, dword ptr [ecx + 8]
0x005214B3: movzx    ecx, byte ptr [eax + 1]
0x005214B7: mov      edx, dword ptr [eax + 4]
0x005214BA: mov      eax, dword ptr [edx + 0x38]
0x005214BD: mov      ecx, dword ptr [eax + ecx*4]
0x005214C0: mov      edx, dword ptr [esp + 4]
0x005214C4: mov      dword ptr [ecx + 0x44], edx
0x005214C7: ret      4
0x005214CA: int3     
0x005214CB: int3     
0x005214CC: int3     
0x005214CD: int3     
0x005214CE: int3     
0x005214CF: int3     

--- CRotasticPlayerIgnoreWallCollisionTrigger::ctor @ 0x005214D0 ---
0x005214D0: mov      eax, dword ptr [esp + 4]
0x005214D4: push     esi
0x005214D5: push     eax
0x005214D6: mov      esi, ecx
0x005214D8: call     0x521530
0x005214DD: mov      dword ptr [esi], 0x9847c8
0x005214E3: mov      byte ptr [esi + 0x180], 0
0x005214EA: mov      eax, esi
0x005214EC: pop      esi
0x005214ED: ret      4

--- faIgnoreWalllCollisionTriggerActive::execute @ 0x005214F0 ---
0x005214F0: mov      eax, dword ptr [esp + 4]
0x005214F4: cmp      byte ptr [eax + 0x58], 0
0x005214F8: push     0
0x005214FA: lea      ecx, [eax + 0x4c]
0x005214FD: push     0x2f
0x005214FF: je       0x52150e
0x00521501: call     0x507ed0
0x00521506: mov      byte ptr [eax + 0x180], 1
0x0052150D: ret      
0x0052150E: call     0x507ed0
0x00521513: mov      byte ptr [eax + 0x180], 0
0x0052151A: ret      
0x0052151B: int3     
0x0052151C: int3     
0x0052151D: int3     
0x0052151E: int3     
0x0052151F: int3     
0x00521520: jmp      0x7b9fb0
0x00521525: int3     
0x00521526: int3     
0x00521527: int3     
0x00521528: int3     
0x00521529: int3     
0x0052152A: int3     
0x0052152B: int3     
0x0052152C: int3     
0x0052152D: int3     
0x0052152E: int3     
0x0052152F: int3     
0x00521530: push     -1
0x00521532: push     0x944453
0x00521537: mov      eax, dword ptr fs:[0]
0x0052153D: push     eax
0x0052153E: push     ecx
0x0052153F: push     esi
0x00521540: mov      eax, dword ptr [0xb089c8]
0x00521545: xor      eax, esp
0x00521547: push     eax
0x00521548: lea      eax, [esp + 0xc]
0x0052154C: mov      dword ptr fs:[0], eax
0x00521552: mov      esi, ecx
0x00521554: mov      dword ptr [esp + 8], esi
0x00521558: mov      eax, dword ptr [esp + 0x1c]
0x0052155C: push     eax
0x0052155D: call     0x7b8ca0
0x00521562: lea      ecx, [esi + 0x38]
0x00521565: mov      dword ptr [esp + 0x14], 0
0x0052156D: mov      dword ptr [esi], 0x9847c8
0x00521573: call     0x568790
0x00521578: push     1
0x0052157A: push     0
0x0052157C: push     1
0x0052157E: push     3
0x00521580: push     3
0x00521582: mov      ecx, esi
0x00521584: mov      byte ptr [esp + 0x28], 1
0x00521589: call     0x7ba420
0x0052158E: push     1
0x00521590: push     0
0x00521592: push     1
0x00521594: push     0x3c
0x00521596: push     0x3c
0x00521598: mov      ecx, esi
0x0052159A: call     0x7ba420
0x0052159F: mov      eax, esi
0x005215A1: mov      ecx, dword ptr [esp + 0xc]
0x005215A5: mov      dword ptr fs:[0], ecx
0x005215AC: pop      ecx
0x005215AD: pop      esi
0x005215AE: add      esp, 0x10
0x005215B1: ret      4
0x005215B4: int3     
0x005215B5: int3     
0x005215B6: int3     
0x005215B7: int3     
0x005215B8: int3     
0x005215B9: int3     
0x005215BA: int3     
0x005215BB: int3     
0x005215BC: int3     
0x005215BD: int3     
0x005215BE: int3     
0x005215BF: int3     

--- CRotasticPlayerIgnoreWallCollisionTrigger::vfunc_3 @ 0x005215C0 ---
0x005215C0: jmp      0x7b8cd0
0x005215C5: int3     
0x005215C6: int3     
0x005215C7: int3     
0x005215C8: int3     
0x005215C9: int3     
0x005215CA: int3     
0x005215CB: int3     
0x005215CC: int3     
0x005215CD: int3     
0x005215CE: int3     
0x005215CF: int3     

--- CRotasticPlayerIgnoreWallCollisionTrigger::vfunc_4 @ 0x005215D0 ---
0x005215D0: push     esi
0x005215D1: mov      esi, ecx
0x005215D3: mov      ecx, dword ptr [esi + 8]
0x005215D6: lea      eax, [esi + 0x38]
0x005215D9: push     eax
0x005215DA: push     ecx
0x005215DB: call     0x5687c0
0x005215E0: mov      ecx, dword ptr [esi + 0xc]
0x005215E3: add      esp, 8
0x005215E6: test     ecx, ecx
0x005215E8: je       0x521610
0x005215EA: mov      eax, dword ptr [esi + 8]
0x005215ED: movzx    edx, byte ptr [eax + 1]
0x005215F1: push     edi
0x005215F2: mov      edi, dword ptr [eax + 4]
0x005215F5: mov      edi, dword ptr [edi + 0x38]
0x005215F8: cmp      ecx, dword ptr [edi + edx*4]
0x005215FB: pop      edi
0x005215FC: je       0x521610
0x005215FE: mov      esi, dword ptr [esp + 0xc]
0x00521602: mov      edx, dword ptr [ecx]
0x00521604: mov      edx, dword ptr [edx + 0x24]
0x00521607: push     esi
0x00521608: push     eax
0x00521609: mov      eax, dword ptr [esp + 0x10]
0x0052160D: push     eax
0x0052160E: call     edx
0x00521610: pop      esi
0x00521611: ret      8
0x00521614: int3     
0x00521615: int3     
0x00521616: int3     
0x00521617: int3     
0x00521618: int3     
0x00521619: int3     
0x0052161A: int3     
0x0052161B: int3     
0x0052161C: int3     
0x0052161D: int3     
0x0052161E: int3     
0x0052161F: int3     
0x00521620: push     -1
0x00521622: push     0x946578
0x00521627: mov      eax, dword ptr fs:[0]
0x0052162D: push     eax
0x0052162E: push     ecx
0x0052162F: push     esi
0x00521630: mov      eax, dword ptr [0xb089c8]
0x00521635: xor      eax, esp
0x00521637: push     eax
0x00521638: lea      eax, [esp + 0xc]
0x0052163C: mov      dword ptr fs:[0], eax
0x00521642: mov      esi, ecx
0x00521644: mov      dword ptr [esp + 8], esi
0x00521648: mov      dword ptr [esi], 0x9847c8
0x0052164E: lea      ecx, [esi + 0x38]
0x00521651: mov      dword ptr [esp + 0x14], 0
0x00521659: call     0x5687b0
0x0052165E: mov      ecx, esi
0x00521660: mov      dword ptr [esp + 0x14], 0xffffffff
0x00521668: call     0x7b9fb0
0x0052166D: mov      ecx, dword ptr [esp + 0xc]
0x00521671: mov      dword ptr fs:[0], ecx
0x00521678: pop      ecx
0x00521679: pop      esi
0x0052167A: add      esp, 0x10
0x0052167D: ret      
0x0052167E: int3     
0x0052167F: int3     

--- CRotasticPlayerIgnoreWallCollisionTrigger::vfunc_0 @ 0x00521680 ---
0x00521680: push     esi
0x00521681: mov      esi, ecx
0x00521683: call     0x521620
0x00521688: test     byte ptr [esp + 8], 1
0x0052168D: je       0x521698
0x0052168F: push     esi
0x00521690: call     0x688fb0
0x00521695: add      esp, 4
0x00521698: mov      eax, esi
0x0052169A: pop      esi
0x0052169B: ret      4
0x0052169E: int3     
0x0052169F: int3     
0x005216A0: push     -1
0x005216A2: push     0x94447e
0x005216A7: mov      eax, dword ptr fs:[0]
0x005216AD: push     eax
0x005216AE: mov      eax, dword ptr [0xb089c8]
0x005216B3: xor      eax, esp
0x005216B5: push     eax
0x005216B6: lea      eax, [esp + 4]
0x005216BA: mov      dword ptr fs:[0], eax
0x005216C0: mov      eax, 1
0x005216C5: test     byte ptr [0xb1ba0c], al
0x005216CB: jne      0x521701
0x005216CD: or       dword ptr [0xb1ba0c], eax
0x005216D3: push     -1
0x005216D5: push     0
0x005216D7: push     0x9847b0
0x005216DC: mov      dword ptr [esp + 0x18], 0
0x005216E4: call     0x691560
0x005216E9: add      esp, 0xc
0x005216EC: mov      dword ptr [0xb1ba08], eax
0x005216F1: mov      ecx, dword ptr [esp + 4]
0x005216F5: mov      dword ptr fs:[0], ecx
0x005216FC: pop      ecx
0x005216FD: add      esp, 0xc
0x00521700: ret      
0x00521701: mov      eax, dword ptr [0xb1ba08]
0x00521706: mov      ecx, dword ptr [esp + 4]
0x0052170A: mov      dword ptr fs:[0], ecx
0x00521711: pop      ecx
0x00521712: add      esp, 0xc
0x00521715: ret      
0x00521716: int3     
0x00521717: int3     
0x00521718: int3     
0x00521719: int3     
0x0052171A: int3     
0x0052171B: int3     
0x0052171C: int3     
0x0052171D: int3     
0x0052171E: int3     
0x0052171F: int3     
0x00521720: push     esi
0x00521721: call     0x5216a0
0x00521726: mov      esi, dword ptr [esp + 8]
0x0052172A: cmp      eax, esi
0x0052172C: je       0x52173d
0x0052172E: call     0x433c20
0x00521733: cmp      eax, esi
0x00521735: je       0x52173d
0x00521737: xor      eax, eax
0x00521739: pop      esi
0x0052173A: ret      4
0x0052173D: mov      eax, 1
0x00521742: pop      esi
0x00521743: ret      4
0x00521746: int3     
0x00521747: int3     
0x00521748: int3     
0x00521749: int3     
0x0052174A: int3     
0x0052174B: int3     
0x0052174C: int3     
0x0052174D: int3     
0x0052174E: int3     
0x0052174F: int3     
0x00521750: push     -1
0x00521752: push     0x9444ae
0x00521757: mov      eax, dword ptr fs:[0]
0x0052175D: push     eax
0x0052175E: mov      eax, dword ptr [0xb089c8]
0x00521763: xor      eax, esp
0x00521765: push     eax
0x00521766: lea      eax, [esp + 4]
0x0052176A: mov      dword ptr fs:[0], eax
0x00521770: mov      eax, 1
0x00521775: test     byte ptr [0xb1ba14], al
0x0052177B: jne      0x5217b1
0x0052177D: or       dword ptr [0xb1ba14], eax
0x00521783: push     -1
0x00521785: push     0
0x00521787: push     0x97894c
0x0052178C: mov      dword ptr [esp + 0x18], 0
0x00521794: call     0x691560
0x00521799: add      esp, 0xc
0x0052179C: mov      dword ptr [0xb1ba10], eax
0x005217A1: mov      ecx, dword ptr [esp + 4]
0x005217A5: mov      dword ptr fs:[0], ecx
0x005217AC: pop      ecx
0x005217AD: add      esp, 0xc
0x005217B0: ret      
0x005217B1: mov      eax, dword ptr [0xb1ba10]
0x005217B6: mov      ecx, dword ptr [esp + 4]
0x005217BA: mov      dword ptr fs:[0], ecx
0x005217C1: pop      ecx
0x005217C2: add      esp, 0xc
0x005217C5: ret      
0x005217C6: int3     
0x005217C7: int3     
0x005217C8: int3     
0x005217C9: int3     
0x005217CA: int3     
0x005217CB: int3     
0x005217CC: int3     
0x005217CD: int3     
0x005217CE: int3     
0x005217CF: int3     

--- CRotasticPlayerIgnoreWallCollisionTrigger::vfunc_2 @ 0x005217D0 ---
0x005217D0: push     esi
0x005217D1: call     0x521750
0x005217D6: mov      esi, dword ptr [esp + 8]
0x005217DA: cmp      eax, esi
0x005217DC: je       0x5217f6
0x005217DE: call     0x5216a0
0x005217E3: cmp      eax, esi
0x005217E5: je       0x5217f6
0x005217E7: call     0x433c20
0x005217EC: cmp      eax, esi
0x005217EE: je       0x5217f6
0x005217F0: xor      eax, eax
0x005217F2: pop      esi
0x005217F3: ret      4
0x005217F6: mov      eax, 1
0x005217FB: pop      esi
0x005217FC: ret      4
0x005217FF: int3     

--- ffIsPlayerAttached::execute @ 0x00521800 ---
0x00521800: mov      eax, dword ptr [esp + 4]
0x00521804: mov      ecx, dword ptr [eax + 0x10]
0x00521807: call     0x80a790
0x0052180C: movzx    ecx, byte ptr [eax + 1]
0x00521810: mov      eax, dword ptr [eax + 4]
0x00521813: mov      edx, dword ptr [eax + 8]
0x00521816: test     dword ptr [edx + ecx*4], 0x40000
0x0052181D: je       0x52187e
0x0052181F: mov      edx, dword ptr [eax + 0x14]
0x00521822: lea      ecx, [ecx + ecx*8]
0x00521825: lea      eax, [edx + ecx*4]
0x00521828: mov      ecx, 0x1c
0x0052182D: cmp      byte ptr [eax + 0x14], cl
0x00521830: jne      0x521837
0x00521832: mov      eax, dword ptr [eax + 4]
0x00521835: jmp      0x521863
0x00521837: cmp      byte ptr [eax + 0x15], cl
0x0052183A: jne      0x521841
0x0052183C: mov      eax, dword ptr [eax + 8]
0x0052183F: jmp      0x521863
0x00521841: cmp      byte ptr [eax + 0x16], cl
0x00521844: jne      0x52184b
0x00521846: mov      eax, dword ptr [eax + 0xc]
0x00521849: jmp      0x521863
0x0052184B: cmp      byte ptr [eax + 0x17], cl
0x0052184E: jne      0x521855
0x00521850: mov      eax, dword ptr [eax + 0x10]
0x00521853: jmp      0x521863
0x00521855: mov      eax, dword ptr [eax]
0x00521857: test     eax, eax
0x00521859: je       0x52187e
0x0052185B: push     ecx
0x0052185C: mov      ecx, eax
0x0052185E: call     0x461400
0x00521863: test     eax, eax
0x00521865: je       0x52187e
0x00521867: xor      ecx, ecx
0x00521869: add      eax, 0x1b0
0x0052186E: mov      edi, edi
0x00521870: cmp      dword ptr [eax], 0
0x00521873: jne      0x521881
0x00521875: inc      ecx
0x00521876: add      eax, 4
0x00521879: cmp      ecx, 4
0x0052187C: jl       0x521870
0x0052187E: xor      eax, eax
0x00521880: ret      
0x00521881: mov      eax, 1
0x00521886: ret      
0x00521887: int3     
0x00521888: int3     
0x00521889: int3     
0x0052188A: int3     
0x0052188B: int3     
0x0052188C: int3     
0x0052188D: int3     
0x0052188E: int3     
0x0052188F: int3     

--- ffPickUpPickedUp::execute @ 0x00521890 ---
0x00521890: mov      eax, dword ptr [esp + 4]
0x00521894: mov      ecx, dword ptr [eax + 0x10]
0x00521897: push     ebp
0x00521898: push     esi
0x00521899: push     edi
0x0052189A: call     0x80a790
0x0052189F: movzx    ecx, byte ptr [eax + 1]
0x005218A3: mov      edx, dword ptr [eax + 4]
0x005218A6: mov      eax, dword ptr [edx + 0x14]
0x005218A9: lea      ecx, [ecx + ecx*8]
0x005218AC: lea      eax, [eax + ecx*4]
0x005218AF: mov      ecx, 0xe
0x005218B4: cmp      byte ptr [eax + 0x14], cl
0x005218B7: jne      0x5218be
0x005218B9: mov      esi, dword ptr [eax + 4]
0x005218BC: jmp      0x5218f0
0x005218BE: cmp      byte ptr [eax + 0x15], cl
0x005218C1: jne      0x5218c8
0x005218C3: mov      esi, dword ptr [eax + 8]
0x005218C6: jmp      0x5218f0
0x005218C8: cmp      byte ptr [eax + 0x16], cl
0x005218CB: jne      0x5218d2
0x005218CD: mov      esi, dword ptr [eax + 0xc]
0x005218D0: jmp      0x5218f0
0x005218D2: cmp      byte ptr [eax + 0x17], cl
0x005218D5: jne      0x5218dc
0x005218D7: mov      esi, dword ptr [eax + 0x10]
0x005218DA: jmp      0x5218f0
0x005218DC: mov      eax, dword ptr [eax]
0x005218DE: test     eax, eax
0x005218E0: je       0x5218ee
0x005218E2: push     ecx
0x005218E3: mov      ecx, eax
0x005218E5: call     0x461400
0x005218EA: mov      esi, eax
0x005218EC: jmp      0x5218f0
0x005218EE: xor      esi, esi
0x005218F0: xor      edi, edi
0x005218F2: xor      ebp, ebp
0x005218F4: cmp      dword ptr [esi + 0x1c], edi
0x005218F7: mov      dword ptr [esp + 0x10], edi
0x005218FB: jle      0x5219a6
0x00521901: push     ebx
0x00521902: lea      ebx, [edi + 0x1c]
0x00521905: mov      ecx, dword ptr [esi + 0x20]
0x00521908: mov      ecx, dword ptr [ecx + edi*4]
0x0052190B: movzx    eax, byte ptr [ecx + 1]
0x0052190F: mov      ecx, dword ptr [ecx + 4]
0x00521912: mov      edx, dword ptr [ecx + 8]
0x00521915: test     dword ptr [edx + eax*4], 0x40000
0x0052191C: je       0x521970
0x0052191E: mov      ecx, dword ptr [ecx + 0x14]
0x00521921: lea      eax, [eax + eax*8]
0x00521924: cmp      byte ptr [ecx + eax*4 + 0x14], bl
0x00521928: lea      eax, [ecx + eax*4]
0x0052192B: jne      0x521934
0x0052192D: mov      eax, dword ptr [eax + 4]
0x00521930: mov      ecx, eax
0x00521932: jmp      0x521972
0x00521934: cmp      byte ptr [eax + 0x15], bl
0x00521937: jne      0x521940
0x00521939: mov      eax, dword ptr [eax + 8]
0x0052193C: mov      ecx, eax
0x0052193E: jmp      0x521972
0x00521940: cmp      byte ptr [eax + 0x16], bl
0x00521943: jne      0x52194c
0x00521945: mov      eax, dword ptr [eax + 0xc]
0x00521948: mov      ecx, eax
0x0052194A: jmp      0x521972
0x0052194C: cmp      byte ptr [eax + 0x17], bl
0x0052194F: jne      0x521958
0x00521951: mov      eax, dword ptr [eax + 0x10]
0x00521954: mov      ecx, eax
0x00521956: jmp      0x521972
0x00521958: mov      eax, dword ptr [eax]
0x0052195A: test     eax, eax
0x0052195C: je       0x52196a
0x0052195E: push     ebx
0x0052195F: mov      ecx, eax
0x00521961: call     0x461400
0x00521966: mov      ecx, eax
0x00521968: jmp      0x521972
0x0052196A: xor      eax, eax
0x0052196C: mov      ecx, eax
0x0052196E: jmp      0x521972
0x00521970: xor      ecx, ecx
0x00521972: mov      edx, dword ptr [esi + 0x20]
0x00521975: mov      eax, dword ptr [edx + edi*4]
0x00521978: movzx    edx, byte ptr [eax + 1]
0x0052197C: mov      eax, dword ptr [eax + 4]
0x0052197F: mov      eax, dword ptr [eax + 0xc]
0x00521982: test     dword ptr [eax + edx*4], 0x200
0x00521989: je       0x521991
0x0052198B: inc      dword ptr [esp + 0x14]
0x0052198F: jmp      0x52199b
0x00521991: cmp      dword ptr [ecx + 0x1e8], 0
0x00521998: je       0x52199b
0x0052199A: inc      ebp
0x0052199B: inc      edi
0x0052199C: cmp      edi, dword ptr [esi + 0x1c]
0x0052199F: jl       0x521905
0x005219A5: pop      ebx
0x005219A6: cmp      ebp, dword ptr [esi + 0x180]
0x005219AC: jle      0x5219c7
0x005219AE: mov      ecx, dword ptr [esp + 0x10]
0x005219B2: pop      edi
0x005219B3: mov      dword ptr [esi + 0x180], ebp
0x005219B9: mov      dword ptr [esi + 0x17c], ecx
0x005219BF: pop      esi
0x005219C0: mov      eax, 1
0x005219C5: pop      ebp
0x005219C6: ret      
0x005219C7: pop      edi
0x005219C8: pop      esi
0x005219C9: xor      eax, eax
0x005219CB: pop      ebp
0x005219CC: ret      
0x005219CD: int3     
0x005219CE: int3     
0x005219CF: int3     

--- ffPickUpWaveCleared::execute @ 0x005219D0 ---
0x005219D0: mov      ecx, dword ptr [esp + 4]
0x005219D4: push     esi
0x005219D5: push     0
0x005219D7: push     0xe
0x005219D9: add      ecx, 0x14
0x005219DC: call     0x499c00
0x005219E1: mov      ecx, dword ptr [eax + 0x1c]
0x005219E4: xor      esi, esi
0x005219E6: test     ecx, ecx
0x005219E8: jle      0x521a17
0x005219EA: mov      edx, dword ptr [eax + 0x20]
0x005219ED: push     edi
0x005219EE: mov      edi, edi
0x005219F0: mov      eax, dword ptr [edx]
0x005219F2: movzx    edi, byte ptr [eax + 1]
0x005219F6: mov      eax, dword ptr [eax + 4]
0x005219F9: mov      eax, dword ptr [eax + 0xc]
0x005219FC: test     dword ptr [eax + edi*4], 0x200
0x00521A03: je       0x521a06
0x00521A05: inc      esi
0x00521A06: add      edx, 4
0x00521A09: sub      ecx, 1
0x00521A0C: jne      0x5219f0
0x00521A0E: pop      edi
0x00521A0F: test     esi, esi
0x00521A11: je       0x521a17
0x00521A13: xor      eax, eax
0x00521A15: pop      esi
0x00521A16: ret      
0x00521A17: mov      eax, 1
0x00521A1C: pop      esi
0x00521A1D: ret      
0x00521A1E: int3     
0x00521A1F: int3     

--- ffIsPlayerFromTeamAttached::execute @ 0x00521A20 ---
0x00521A20: push     ebx
0x00521A21: push     esi
0x00521A22: mov      esi, dword ptr [esp + 0xc]
0x00521A26: push     edi
0x00521A27: push     0
0x00521A29: push     0x1c
0x00521A2B: lea      ecx, [esi + 0x24]
0x00521A2E: call     0x499c00
0x00521A33: push     0
0x00521A35: push     0x1c
0x00521A37: lea      ecx, [esi + 0x14]
0x00521A3A: mov      edi, eax
0x00521A3C: call     0x499c00
0x00521A41: movzx    ebx, byte ptr [esi + 0x20]
0x00521A45: test     edi, edi
0x00521A47: je       0x521a72
0x00521A49: xor      esi, esi
0x00521A4B: lea      edx, [edi + 0x1b0]
0x00521A51: mov      ecx, dword ptr [edx]
0x00521A53: test     ecx, ecx
0x00521A55: je       0x521a69
0x00521A57: mov      ecx, dword ptr [ecx + 0x1dc]
0x00521A5D: movsx    ecx, byte ptr [ecx]
0x00521A60: cmp      dword ptr [eax + ecx*4 + 0x1e8], ebx
0x00521A67: je       0x521a78
0x00521A69: inc      esi
0x00521A6A: add      edx, 4
0x00521A6D: cmp      esi, 4
0x00521A70: jl       0x521a51
0x00521A72: pop      edi
0x00521A73: pop      esi
0x00521A74: xor      eax, eax
0x00521A76: pop      ebx
0x00521A77: ret      
0x00521A78: pop      edi
0x00521A79: pop      esi
0x00521A7A: mov      eax, 1
0x00521A7F: pop      ebx
0x00521A80: ret      
0x00521A81: int3     
0x00521A82: int3     
0x00521A83: int3     
0x00521A84: int3     
0x00521A85: int3     
0x00521A86: int3     
0x00521A87: int3     
0x00521A88: int3     
0x00521A89: int3     
0x00521A8A: int3     
0x00521A8B: int3     
0x00521A8C: int3     
0x00521A8D: int3     
0x00521A8E: int3     
0x00521A8F: int3     

--- ffCanonFullyCharged::execute @ 0x00521A90 ---
0x00521A90: mov      ecx, dword ptr [esp + 4]
0x00521A94: push     0
0x00521A96: push     0x1c
0x00521A98: add      ecx, 0x14
0x00521A9B: call     0x499c00
0x00521AA0: fld      dword ptr [eax + 0x68]
0x00521AA3: mov      eax, dword ptr [eax + 0x60]
0x00521AA6: movzx    ecx, word ptr [eax]
0x00521AA9: mov      dword ptr [esp + 4], ecx
0x00521AAD: fild     dword ptr [esp + 4]
0x00521AB1: fcompp   
0x00521AB3: fnstsw   ax
0x00521AB5: test     ah, 0x41
0x00521AB8: jp       0x521ac0
0x00521ABA: mov      eax, 1
0x00521ABF: ret      
0x00521AC0: xor      eax, eax
0x00521AC2: ret      
0x00521AC3: int3     
0x00521AC4: int3     
0x00521AC5: int3     
0x00521AC6: int3     
0x00521AC7: int3     
0x00521AC8: int3     
0x00521AC9: int3     
0x00521ACA: int3     
0x00521ACB: int3     
0x00521ACC: int3     
0x00521ACD: int3     
0x00521ACE: int3     
0x00521ACF: int3     
0x00521AD0: mov      dword ptr [ecx], 0x9848bc
0x00521AD6: ret      
0x00521AD7: int3     
0x00521AD8: int3     
0x00521AD9: int3     
0x00521ADA: int3     
0x00521ADB: int3     
0x00521ADC: int3     
0x00521ADD: int3     
0x00521ADE: int3     
0x00521ADF: int3     
0x00521AE0: fldz     
0x00521AE2: lea      eax, [ecx + 4]
0x00521AE5: fstp     dword ptr [ecx + 0xd0]
0x00521AEB: mov      dword ptr [ecx + 0xcc], eax
0x00521AF1: mov      byte ptr [ecx + 0xe0], 0
0x00521AF8: ret      
0x00521AF9: int3     
0x00521AFA: int3     
0x00521AFB: int3     
0x00521AFC: int3     
0x00521AFD: int3     
0x00521AFE: int3     
0x00521AFF: int3     
0x00521B00: lea      edx, [ecx + 0xcc]
0x00521B06: push     edi
0x00521B07: mov      edi, dword ptr [edx]
0x00521B09: cmp      edi, edx
0x00521B0B: jae      0x521b7b
0x00521B0D: push     esi
0x00521B0E: mov      esi, dword ptr [ecx + 0xd4]
0x00521B14: lea      eax, [esi + 0x2bc]
0x00521B1A: cmp      dword ptr [esi + 0xc1c], eax
0x00521B20: jbe      0x521b7a
0x00521B22: cmp      dword ptr [esp + 0xc], 0
0x00521B27: je       0x521b37
0x00521B29: or       ecx, 0xffffffff
0x00521B2C: mov      word ptr [edi], cx
0x00521B2F: add      dword ptr [edx], 2
0x00521B32: pop      esi
0x00521B33: pop      edi
0x00521B34: ret      4
0x00521B37: fld      dword ptr [ecx + 0xd0]
0x00521B3D: fld      qword ptr [0xb75ff0]
0x00521B43: fld      st(0)
0x00521B45: fsubrp   st(2)
0x00521B47: fxch     st(1)
0x00521B49: fcomp    qword ptr [0x984040] ; [f64=0.1, u32=0xA0000000]
0x00521B4F: fnstsw   ax
0x00521B51: test     ah, 1
0x00521B54: jne      0x521b78
0x00521B56: fstp     dword ptr [ecx + 0xd0]
0x00521B5C: mov      eax, dword ptr [esi + 0xc1c]
0x00521B62: sub      eax, esi
0x00521B64: sub      eax, 0x2bc
0x00521B69: sar      eax, 2
0x00521B6C: dec      eax
0x00521B6D: mov      word ptr [edi], ax
0x00521B70: add      dword ptr [edx], 2
0x00521B73: pop      esi
0x00521B74: pop      edi
0x00521B75: ret      4
0x00521B78: fstp     st(0)
0x00521B7A: pop      esi
0x00521B7B: pop      edi
0x00521B7C: ret      4
0x00521B7F: int3     
0x00521B80: mov      dl, byte ptr [esp + 0x10]
0x00521B84: mov      eax, dword ptr [esp + 4]
0x00521B88: push     edi
0x00521B89: mov      edi, ecx
0x00521B8B: mov      ecx, dword ptr [esp + 0x10]
0x00521B8F: mov      dword ptr [edi + 0x18], ecx
0x00521B92: mov      ecx, dword ptr [esp + 0x18]
0x00521B96: mov      byte ptr [edi + 4], dl
0x00521B99: mov      dl, byte ptr [esp + 0x1c]
0x00521B9D: mov      dword ptr [edi], eax
0x00521B9F: mov      dword ptr [edi + 0x14], 0
0x00521BA6: mov      dword ptr [edi + 0x10], 0
0x00521BAD: mov      dword ptr [edi + 8], ecx
0x00521BB0: mov      byte ptr [edi + 0xc], dl
0x00521BB3: test     eax, eax
0x00521BB5: je       0x521c50
0x00521BBB: push     ebp
0x00521BBC: mov      ebp, dword ptr [esp + 0x10]
0x00521BC0: push     esi
0x00521BC1: xor      esi, esi
0x00521BC3: mov      eax, dword ptr [esi*4 + 0xb1ba18]
0x00521BCA: test     eax, eax
0x00521BCC: je       0x521bde
0x00521BCE: push     0
0x00521BD0: push     eax
0x00521BD1: push     ebp
0x00521BD2: call     0x6944f0
0x00521BD7: add      esp, 0xc
0x00521BDA: test     eax, eax
0x00521BDC: je       0x521be6
0x00521BDE: inc      esi
0x00521BDF: cmp      esi, 0x20
0x00521BE2: jl       0x521bc3
0x00521BE4: jmp      0x521beb
0x00521BE6: cmp      esi, 0x20
0x00521BE9: jl       0x521c3f
0x00521BEB: xor      esi, esi
0x00521BED: lea      ecx, [ecx]
0x00521BF0: cmp      dword ptr [esi*4 + 0xb1ba18], 0
0x00521BF8: je       0x521c33
0x00521BFA: cmp      dword ptr [esi*4 + 0xb1ba1c], 0
0x00521C02: je       0x521c28
0x00521C04: cmp      dword ptr [esi*4 + 0xb1ba20], 0
0x00521C0C: je       0x521c2b
0x00521C0E: cmp      dword ptr [esi*4 + 0xb1ba24], 0
0x00521C16: je       0x521c30
0x00521C18: add      esi, 4
0x00521C1B: cmp      esi, 0x20
0x00521C1E: jl       0x521bf0
0x00521C20: pop      esi
0x00521C21: pop      ebp
0x00521C22: mov      eax, edi
0x00521C24: pop      edi
0x00521C25: ret      0x18
0x00521C28: inc      esi
0x00521C29: jmp      0x521c33
0x00521C2B: add      esi, 2
0x00521C2E: jmp      0x521c33
0x00521C30: add      esi, 3
0x00521C33: cmp      esi, 0x20
0x00521C36: jge      0x521c4e
0x00521C38: mov      dword ptr [esi*4 + 0xb1ba18], ebp
0x00521C3F: mov      eax, 1
0x00521C44: mov      ecx, esi
0x00521C46: shl      eax, cl
0x00521C48: mov      dword ptr [edi + 0x10], esi
0x00521C4B: mov      dword ptr [edi + 0x14], eax
0x00521C4E: pop      esi
0x00521C4F: pop      ebp
0x00521C50: mov      eax, edi
0x00521C52: pop      edi
0x00521C53: ret      0x18
0x00521C56: int3     
0x00521C57: int3     
0x00521C58: int3     
0x00521C59: int3     
0x00521C5A: int3     
0x00521C5B: int3     
0x00521C5C: int3     
0x00521C5D: int3     
0x00521C5E: int3     
0x00521C5F: int3     
0x00521C60: push     ebx
0x00521C61: push     esi
0x00521C62: mov      esi, ecx
0x00521C64: lea      ebx, [esi + 0xd8]
0x00521C6A: mov      dword ptr [esi], 0x9848bc
0x00521C70: test     bl, 0x7f
0x00521C73: je       0x521c84
0x00521C75: push     8
0x00521C77: push     ebx
0x00521C78: call     0x6a9700
0x00521C7D: add      esp, 8
0x00521C80: xor      eax, eax
0x00521C82: jmp      0x521c8b
0x00521C84: xor      eax, eax
0x00521C86: mov      dword ptr [ebx], eax
0x00521C88: mov      dword ptr [ebx + 4], eax
0x00521C8B: mov      ecx, dword ptr [esp + 0xc]
0x00521C8F: fldz     
0x00521C91: mov      dword ptr [esi + 0xdc], eax
0x00521C97: mov      dword ptr [esi + 0xd4], ecx
0x00521C9D: mov      ecx, dword ptr [ecx + 8]
0x00521CA0: fst      dword ptr [esi + 0xd0]
0x00521CA6: lea      edx, [esi + 4]
0x00521CA9: fstp     dword ptr [esi + 0xe4]
0x00521CAF: mov      dword ptr [esi + 0xec], eax
0x00521CB5: mov      dword ptr [esi + 0xf0], eax
0x00521CBB: mov      dword ptr [esi + 0xf4], eax
0x00521CC1: mov      dword ptr [esi + 0xe8], eax
0x00521CC7: mov      dword ptr [esi + 0xcc], edx
0x00521CCD: mov      byte ptr [esi + 0xe0], 0
0x00521CD4: mov      eax, esi
0x00521CD6: pop      esi
0x00521CD7: mov      dword ptr [ebx], ecx
0x00521CD9: pop      ebx
0x00521CDA: ret      4
0x00521CDD: int3     
0x00521CDE: int3     
0x00521CDF: int3     
0x00521CE0: push     ecx
0x00521CE1: push     esi
0x00521CE2: mov      esi, ecx
0x00521CE4: mov      eax, dword ptr [esi]
0x00521CE6: mov      edx, dword ptr [eax]
0x00521CE8: push     edi
0x00521CE9: call     edx
0x00521CEB: cmp      byte ptr [eax + 4], 0
0x00521CEF: je       0x521d20
0x00521CF1: fld      dword ptr [esi + 0xe4]
0x00521CF7: mov      eax, dword ptr [esi + 0xd4]
0x00521CFD: fstp     dword ptr [esp + 8]
0x00521D01: push     ecx
0x00521D02: fld      dword ptr [esp + 0xc]
0x00521D06: lea      ecx, [eax + 0x1a8]
0x00521D0C: fstp     dword ptr [esp]
0x00521D0F: push     0x6cc6b9bb
0x00521D14: call     0x5691a0
0x00521D19: mov      ecx, eax
0x00521D1B: call     0x56aff0
0x00521D20: lea      edi, [esi + 0xd8]
0x00521D26: push     edi
0x00521D27: mov      dword ptr [esi + 0xdc], esi
0x00521D2D: mov      eax, dword ptr [0xb1badc]
0x00521D32: push     0
0x00521D34: push     eax
0x00521D35: call     0x52d190
0x00521D3A: mov      ecx, dword ptr [esi + 0xcc]
0x00521D40: sub      ecx, esi
0x00521D42: sub      ecx, 4
0x00521D45: add      esp, 0xc
0x00521D48: test     ecx, 0xfffffffe
0x00521D4E: jle      0x521d6e
0x00521D50: mov      edx, dword ptr [0xb1bbc8]
0x00521D56: push     edi
0x00521D57: push     0
0x00521D59: push     edx
0x00521D5A: call     0x52d190
0x00521D5F: mov      ecx, dword ptr [esi + 0xd4]
0x00521D65: add      esp, 0xc
0x00521D68: push     esi
0x00521D69: call     0x540980
0x00521D6E: pop      edi
0x00521D6F: mov      byte ptr [esi + 0xe0], 0
0x00521D76: pop      esi
0x00521D77: pop      ecx
0x00521D78: ret      
0x00521D79: int3     
0x00521D7A: int3     
0x00521D7B: int3     
0x00521D7C: int3     
0x00521D7D: int3     
0x00521D7E: int3     
0x00521D7F: int3     
0x00521D80: sub      esp, 0x24
0x00521D83: fld      dword ptr [esp + 0x28]
0x00521D87: call     0x8ebeb0
0x00521D8C: fstp     dword ptr [esp]
0x00521D8F: fld      dword ptr [esp]
0x00521D92: fstp     dword ptr [esp + 0x14]
0x00521D96: fld      dword ptr [esp + 0x28]
0x00521D9A: call     0x8eba30
0x00521D9F: fstp     dword ptr [esp + 0x28]
0x00521DA3: fld      dword ptr [esp + 0x28]
0x00521DA7: fstp     dword ptr [esp + 0x18]
0x00521DAB: fld      dword ptr [esp + 0x2c]
0x00521DAF: call     0x8ebeb0
0x00521DB4: fstp     dword ptr [esp + 0x28]
0x00521DB8: fld      dword ptr [esp + 0x28]
0x00521DBC: fstp     dword ptr [esp + 4]
0x00521DC0: fld      dword ptr [esp + 0x2c]
0x00521DC4: call     0x8eba30
0x00521DC9: fstp     dword ptr [esp + 0x28]
0x00521DCD: fld      dword ptr [esp + 0x28]
0x00521DD1: fstp     dword ptr [esp + 8]
0x00521DD5: fld      dword ptr [esp + 8]
0x00521DD9: fld      st(0)
0x00521DDB: fld      dword ptr [esp + 0x18]
0x00521DDF: fld      st(0)
0x00521DE1: fmulp    st(2)
0x00521DE3: fld      dword ptr [esp + 4]
0x00521DE7: fld      st(0)
0x00521DE9: fld      dword ptr [esp + 0x14]
0x00521DED: fld      st(0)
0x00521DEF: fmulp    st(2)
0x00521DF1: fxch     st(4)
0x00521DF3: faddp    st(1)
0x00521DF5: fstp     dword ptr [esp]
0x00521DF8: fxch     st(3)
0x00521DFA: fmulp    st(2)
0x00521DFC: fmulp    st(2)
0x00521DFE: fsubrp   st(1)
0x00521E00: fstp     dword ptr [esp + 0x28]
0x00521E04: fld      dword ptr [esp + 0x28]
0x00521E08: fcomp    dword ptr [0x96665c] ; [f32=0, u32=0x00000000]
0x00521E0E: fnstsw   ax
0x00521E10: test     ah, 1
0x00521E13: jne      0x521e19
0x00521E15: fld1     
0x00521E17: jmp      0x521e1f
0x00521E19: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00521E1F: fstp     dword ptr [esp + 0x2c]
0x00521E23: fld      dword ptr [esp]
0x00521E26: fcom     qword ptr [0x9848e8] ; [f32=-2, f64=1, u32=0xC0000000]
0x00521E2C: fnstsw   ax
0x00521E2E: test     ah, 0x41
0x00521E31: jne      0x521e3d
0x00521E33: fstp     st(0)
0x00521E35: fld      dword ptr [0x9848e0] ; [f32=1, u32=0x3F7FFFFE]
0x00521E3B: jmp      0x521e5a
0x00521E3D: fcom     qword ptr [0x9848d8] ; [f32=-2, f64=-1, u32=0xC0000000]
0x00521E43: fnstsw   ax
0x00521E45: test     ah, 0x41
0x00521E48: je       0x521e52
0x00521E4A: fstp     st(0)
0x00521E4C: fld      dword ptr [0x9848d4] ; [f32=-1, f64=-2, u32=0xBF7FFFFE]
0x00521E52: fstp     dword ptr [esp + 0x28]
0x00521E56: fld      dword ptr [esp + 0x28]
0x00521E5A: fstp     dword ptr [esp + 0x28]
0x00521E5E: fld      dword ptr [esp + 0x28]
0x00521E62: call     0x8ebfe0
0x00521E67: fstp     dword ptr [esp + 0x28]
0x00521E6B: fld      dword ptr [esp + 0x28]
0x00521E6F: fmul     dword ptr [esp + 0x2c]
0x00521E73: fstp     dword ptr [esp + 0x28]
0x00521E77: fld      dword ptr [esp + 0x28]
0x00521E7B: add      esp, 0x24
0x00521E7E: ret      
0x00521E7F: int3     
0x00521E80: push     ecx
0x00521E81: fld      dword ptr [esp + 0xc]
0x00521E85: sub      esp, 8
0x00521E88: fld      st(0)
0x00521E8A: fld      dword ptr [esp + 0x18]
0x00521E8E: fld      st(0)
0x00521E90: fsubp    st(2)
0x00521E92: fxch     st(1)
0x00521E94: fstp     dword ptr [esp + 0x14]
0x00521E98: faddp    st(1)
0x00521E9A: fstp     dword ptr [esp + 0x18]
0x00521E9E: fld      dword ptr [esp + 0x18]
0x00521EA2: fstp     dword ptr [esp + 4]
0x00521EA6: fld      dword ptr [esp + 0x14]
0x00521EAA: fstp     dword ptr [esp]
0x00521EAD: call     0x521d80
0x00521EB2: fabs     
0x00521EB4: fstp     dword ptr [esp + 8]
0x00521EB8: fld      dword ptr [esp + 8]
0x00521EBC: fstp     dword ptr [esp + 8]
0x00521EC0: fld      dword ptr [esp + 0x14]
0x00521EC4: fstp     dword ptr [esp + 4]
0x00521EC8: fld      dword ptr [esp + 0x10]
0x00521ECC: fstp     dword ptr [esp]
0x00521ECF: call     0x521d80
0x00521ED4: fabs     
0x00521ED6: add      esp, 8
0x00521ED9: fstp     dword ptr [esp + 0xc]
0x00521EDD: fld      dword ptr [esp + 0xc]
0x00521EE1: fld      dword ptr [esp]
0x00521EE4: fcompp   
0x00521EE6: fnstsw   ax
0x00521EE8: test     ah, 1
0x00521EEB: jne      0x521f24
0x00521EED: fld      dword ptr [esp + 0x10]
0x00521EF1: sub      esp, 8
0x00521EF4: fstp     dword ptr [esp + 4]
0x00521EF8: fld      dword ptr [esp + 0x10]
0x00521EFC: fstp     dword ptr [esp]
0x00521EFF: call     0x521d80
0x00521F04: fabs     
0x00521F06: add      esp, 8
0x00521F09: fstp     dword ptr [esp + 0xc]
0x00521F0D: fld      dword ptr [esp + 0xc]
0x00521F11: fld      dword ptr [esp]
0x00521F14: fcompp   
0x00521F16: fnstsw   ax
0x00521F18: test     ah, 1
0x00521F1B: jne      0x521f24
0x00521F1D: mov      eax, 1
0x00521F22: pop      ecx
0x00521F23: ret      
0x00521F24: xor      eax, eax
0x00521F26: pop      ecx
0x00521F27: ret      
0x00521F28: int3     
0x00521F29: int3     
0x00521F2A: int3     
0x00521F2B: int3     
0x00521F2C: int3     
0x00521F2D: int3     
0x00521F2E: int3     
0x00521F2F: int3     
0x00521F30: mov      ecx, dword ptr [esp + 4]
0x00521F34: mov      edx, dword ptr [esp + 8]
0x00521F38: fld      dword ptr [ecx + 0xd4c]
0x00521F3E: fld      dword ptr [edx + 0xd4c]
0x00521F44: sub      esp, 0x18
0x00521F47: fucompp  
0x00521F49: fnstsw   ax
0x00521F4B: test     ah, 0x44
0x00521F4E: jp       0x521fe9
0x00521F54: fld      dword ptr [ecx + 0x290]
0x00521F5A: fld      dword ptr [ecx + 0x28c]
0x00521F60: fld      dword ptr [ecx + 0x294]
0x00521F66: fld      dword ptr [edx + 0x290]
0x00521F6C: fstp     qword ptr [esp + 8]
0x00521F70: fld      dword ptr [edx + 0x28c]
0x00521F76: fstp     qword ptr [esp]
0x00521F79: fld      dword ptr [edx + 0x294]
0x00521F7F: fstp     qword ptr [esp + 0x10]
0x00521F83: fld      st(1)
0x00521F85: fmulp    st(2)
0x00521F87: fld      st(2)
0x00521F89: fmulp    st(3)
0x00521F8B: fxch     st(1)
0x00521F8D: faddp    st(2)
0x00521F8F: fmul     st(0), st(0)
0x00521F91: faddp    st(1)
0x00521F93: fstp     dword ptr [esp + 0x1c]
0x00521F97: fld      dword ptr [esp + 0x1c]
0x00521F9B: call     0x8eb930
0x00521FA0: fstp     dword ptr [esp + 0x1c]
0x00521FA4: fld      dword ptr [esp + 0x1c]
0x00521FA8: fstp     dword ptr [esp + 0x20]
0x00521FAC: fld      qword ptr [esp]
0x00521FAF: fmul     st(0), st(0)
0x00521FB1: fld      qword ptr [esp + 8]
0x00521FB5: fmul     st(0), st(0)
0x00521FB7: faddp    st(1)
0x00521FB9: fld      qword ptr [esp + 0x10]
0x00521FBD: fmul     st(0), st(0)
0x00521FBF: faddp    st(1)
0x00521FC1: fstp     dword ptr [esp + 0x1c]
0x00521FC5: fld      dword ptr [esp + 0x1c]
0x00521FC9: call     0x8eb930
0x00521FCE: fstp     dword ptr [esp + 0x1c]
0x00521FD2: fld      dword ptr [esp + 0x1c]
0x00521FD6: fld      dword ptr [esp + 0x20]
0x00521FDA: fcompp   
0x00521FDC: fnstsw   ax
0x00521FDE: test     ah, 1
0x00521FE1: je       0x521ffe
0x00521FE3: xor      eax, eax
0x00521FE5: add      esp, 0x18
0x00521FE8: ret      
0x00521FE9: fld      dword ptr [ecx + 0xd4c]
0x00521FEF: fld      dword ptr [edx + 0xd4c]
0x00521FF5: fcompp   
0x00521FF7: fnstsw   ax
0x00521FF9: test     ah, 5
0x00521FFC: jp       0x521fe3
0x00521FFE: mov      eax, 1
0x00522003: add      esp, 0x18
0x00522006: ret      
0x00522007: int3     
0x00522008: int3     
0x00522009: int3     
0x0052200A: int3     
0x0052200B: int3     
0x0052200C: int3     
0x0052200D: int3     
0x0052200E: int3     
0x0052200F: int3     
0x00522010: push     esi
0x00522011: push     edi
0x00522012: push     0
0x00522014: push     0
0x00522016: mov      edi, ecx
0x00522018: mov      ecx, dword ptr [0xb76118]
0x0052201E: push     0x9848b0
0x00522023: call     0x6eeaa0
0x00522028: mov      ecx, eax
0x0052202A: xor      eax, eax
0x0052202C: test     ecx, ecx
0x0052202E: je       0x522051
0x00522030: mov      ecx, dword ptr [ecx + 0xc4]
0x00522036: test     ecx, ecx
0x00522038: je       0x522051
0x0052203A: mov      ecx, dword ptr [ecx + 0x114]
0x00522040: test     ecx, ecx
0x00522042: je       0x522051
0x00522044: push     eax
0x00522045: push     eax
0x00522046: mov      eax, dword ptr [0x9602d8] ; [u32=0x779BED0C]
0x0052204B: push     eax
0x0052204C: call     0x7cd3c0
0x00522051: movzx    ecx, byte ptr [eax + 1]
0x00522055: mov      edx, dword ptr [eax + 4]
0x00522058: mov      eax, dword ptr [edx + 0x38]
0x0052205B: mov      ecx, dword ptr [eax + ecx*4]
0x0052205E: mov      edx, dword ptr [edi]
0x00522060: mov      esi, dword ptr [ecx + 0x38]
0x00522063: mov      eax, dword ptr [edx]
0x00522065: mov      ecx, edi
0x00522067: call     eax
0x00522069: mov      edx, dword ptr [eax + 0x18]
0x0052206C: xor      eax, eax
0x0052206E: cmp      dword ptr [esi + 4], eax
0x00522071: jle      0x522097
0x00522073: mov      ecx, dword ptr [esi + 8]
0x00522076: mov      ecx, dword ptr [ecx + eax*4]
0x00522079: cmp      edx, dword ptr [ecx + 0x38]
0x0052207C: jne      0x522091
0x0052207E: fld      dword ptr [ecx + 0x40]
0x00522081: fstp     dword ptr [edi + 0xe4]
0x00522087: movsx    ecx, word ptr [ecx + 0x3c]
0x0052208B: mov      dword ptr [edi + 0xe8], ecx
0x00522091: inc      eax
0x00522092: cmp      eax, dword ptr [esi + 4]
0x00522095: jl       0x522073
0x00522097: pop      edi
0x00522098: pop      esi
0x00522099: ret      
0x0052209A: int3     
0x0052209B: int3     
0x0052209C: int3     
0x0052209D: int3     
0x0052209E: int3     
0x0052209F: int3     
0x005220A0: fld      dword ptr [edx]
0x005220A2: fadd     dword ptr [ecx]
0x005220A4: fstp     dword ptr [eax]
0x005220A6: fld      dword ptr [edx + 4]
0x005220A9: fadd     dword ptr [ecx + 4]
0x005220AC: fstp     dword ptr [eax + 4]
0x005220AF: fld      dword ptr [edx + 8]
0x005220B2: fadd     dword ptr [ecx + 8]
0x005220B5: fstp     dword ptr [eax + 8]
0x005220B8: fld      dword ptr [edx + 0xc]
0x005220BB: fadd     dword ptr [ecx + 0xc]
0x005220BE: fstp     dword ptr [eax + 0xc]
0x005220C1: ret      
0x005220C2: int3     
0x005220C3: int3     
0x005220C4: int3     
0x005220C5: int3     
0x005220C6: int3     
0x005220C7: int3     
0x005220C8: int3     
0x005220C9: int3     
0x005220CA: int3     
0x005220CB: int3     
0x005220CC: int3     
0x005220CD: int3     
0x005220CE: int3     
0x005220CF: int3     
0x005220D0: fld      dword ptr [edx]
0x005220D2: fsub     dword ptr [ecx]
0x005220D4: fstp     dword ptr [eax]
0x005220D6: fld      dword ptr [edx + 4]
0x005220D9: fsub     dword ptr [ecx + 4]
0x005220DC: fstp     dword ptr [eax + 4]
0x005220DF: fld      dword ptr [edx + 8]
0x005220E2: fsub     dword ptr [ecx + 8]
0x005220E5: fstp     dword ptr [eax + 8]
0x005220E8: fld      dword ptr [edx + 0xc]
0x005220EB: fsub     dword ptr [ecx + 0xc]
0x005220EE: fstp     dword ptr [eax + 0xc]
0x005220F1: ret      
0x005220F2: int3     
0x005220F3: int3     
0x005220F4: int3     
0x005220F5: int3     
0x005220F6: int3     
0x005220F7: int3     
0x005220F8: int3     
0x005220F9: int3     
0x005220FA: int3     
0x005220FB: int3     
0x005220FC: int3     
0x005220FD: int3     
0x005220FE: int3     
0x005220FF: int3     
0x00522100: fld      dword ptr [ecx]
0x00522102: fld      dword ptr [esp + 4]
0x00522106: fld      st(0)
0x00522108: fmulp    st(2)
0x0052210A: fxch     st(1)
0x0052210C: fstp     dword ptr [eax]
0x0052210E: fld      dword ptr [ecx + 4]
0x00522111: fmul     st(1)
0x00522113: fstp     dword ptr [eax + 4]
0x00522116: fld      dword ptr [ecx + 8]
0x00522119: fmul     st(1)
0x0052211B: fstp     dword ptr [eax + 8]
0x0052211E: fmul     dword ptr [ecx + 0xc]
0x00522121: fstp     dword ptr [eax + 0xc]
0x00522124: ret      
0x00522125: int3     
0x00522126: int3     
0x00522127: int3     
0x00522128: int3     
0x00522129: int3     
0x0052212A: int3     
0x0052212B: int3     
0x0052212C: int3     
0x0052212D: int3     
0x0052212E: int3     
0x0052212F: int3     
0x00522130: fld      dword ptr [ecx]
0x00522132: fld      dword ptr [esp + 4]
0x00522136: fld      st(0)
0x00522138: fmulp    st(2)
0x0052213A: fxch     st(1)
0x0052213C: fstp     dword ptr [eax]
0x0052213E: fld      dword ptr [ecx + 4]
0x00522141: fmul     st(1)
0x00522143: fstp     dword ptr [eax + 4]
0x00522146: fld      dword ptr [ecx + 8]
0x00522149: fmul     st(1)
0x0052214B: fstp     dword ptr [eax + 8]
0x0052214E: fmul     dword ptr [ecx + 0xc]
0x00522151: fstp     dword ptr [eax + 0xc]
0x00522154: ret      
0x00522155: int3     
0x00522156: int3     
0x00522157: int3     
0x00522158: int3     
0x00522159: int3     
0x0052215A: int3     
0x0052215B: int3     
0x0052215C: int3     
0x0052215D: int3     
0x0052215E: int3     
0x0052215F: int3     
0x00522160: mov      ecx, dword ptr [esp + 4]
0x00522164: mov      eax, dword ptr [ecx + 0x23c]
0x0052216A: sub      esp, 0x30
0x0052216D: test     eax, eax
0x0052216F: jne      0x522177
0x00522171: fldz     
0x00522173: add      esp, 0x30
0x00522176: ret      
0x00522177: movzx    edx, byte ptr [eax + 1]
0x0052217B: mov      eax, dword ptr [eax + 4]
0x0052217E: mov      eax, dword ptr [eax + 0x1c]
0x00522181: mov      eax, dword ptr [eax + edx*4]
0x00522184: add      eax, 0xc
0x00522187: fld      dword ptr [eax]
0x00522189: fstp     dword ptr [esp + 0x20]
0x0052218D: fld      dword ptr [eax + 4]
0x00522190: fstp     dword ptr [esp + 0x24]
0x00522194: fld      dword ptr [eax + 0xc]
0x00522197: mov      eax, dword ptr [ecx + 8]
0x0052219A: movzx    ecx, byte ptr [eax + 1]
0x0052219E: fstp     dword ptr [esp + 0x2c]
0x005221A2: mov      edx, dword ptr [eax + 4]
0x005221A5: mov      eax, dword ptr [edx + 0x1c]
0x005221A8: mov      eax, dword ptr [eax + ecx*4]
0x005221AB: add      eax, 0xc
0x005221AE: lea      ecx, [esp]
0x005221B1: push     ecx
0x005221B2: fld      dword ptr [eax]
0x005221B4: mov      edx, ecx
0x005221B6: fstp     dword ptr [esp + 0x14]
0x005221BA: push     edx
0x005221BB: fld      dword ptr [eax + 4]
0x005221BE: fstp     dword ptr [esp + 0x1c]
0x005221C2: fld      dword ptr [eax + 0xc]
0x005221C5: fstp     dword ptr [esp + 0x24]
0x005221C9: fld      dword ptr [esp + 0x18]
0x005221CD: fsub     dword ptr [esp + 0x28]
0x005221D1: fstp     dword ptr [esp + 8]
0x005221D5: fld      dword ptr [esp + 0x1c]
0x005221D9: fsub     dword ptr [esp + 0x2c]
0x005221DD: fstp     dword ptr [esp + 0xc]
0x005221E1: fld      dword ptr [esp + 0x24]
0x005221E5: fsub     dword ptr [esp + 0x34]
0x005221E9: fstp     dword ptr [esp + 0x14]
0x005221ED: fldz     
0x005221EF: fstp     dword ptr [esp + 0x10]
0x005221F3: call     0x6b2160
0x005221F8: fstp     st(0)
0x005221FA: fld      dword ptr [esp + 0xc]
0x005221FE: add      esp, 8
0x00522201: fldz     
0x00522203: fmul     st(1), st(0)
0x00522205: fld      dword ptr [esp]
0x00522208: faddp    st(2)
0x0052220A: fmul     dword ptr [esp + 8]
0x0052220E: faddp    st(1)
0x00522210: fstp     dword ptr [esp + 0x34]
0x00522214: fld      dword ptr [esp + 0x34]
0x00522218: call     0x8ebfe0
0x0052221D: fstp     dword ptr [esp + 0x34]
0x00522221: fld      dword ptr [esp + 0x34]
0x00522225: fstp     dword ptr [esp + 0x34]
0x00522229: fldz     
0x0052222B: fcomp    dword ptr [esp + 4]
0x0052222F: fnstsw   ax
0x00522231: fld      qword ptr [0x984338] ; [f64=6.28319, u32=0x60000000]
0x00522237: test     ah, 0x41
0x0052223A: jne      0x522246
0x0052223C: fld      dword ptr [esp + 0x34]
0x00522240: fsubr    st(1)
0x00522242: fstp     dword ptr [esp + 0x34]
0x00522246: fld      dword ptr [esp + 0x34]
0x0052224A: fcom     st(1)
0x0052224C: fnstsw   ax
0x0052224E: test     ah, 1
0x00522251: jne      0x522261
0x00522253: fsubrp   st(1)
0x00522255: fstp     dword ptr [esp + 0x34]
0x00522259: fld      dword ptr [esp + 0x34]
0x0052225D: add      esp, 0x30
0x00522260: ret      
0x00522261: fstp     st(1)
0x00522263: add      esp, 0x30
0x00522266: ret      
0x00522267: int3     
0x00522268: int3     
0x00522269: int3     
0x0052226A: int3     
0x0052226B: int3     
0x0052226C: int3     
0x0052226D: int3     
0x0052226E: int3     
0x0052226F: int3     
0x00522270: sub      esp, 0x30
0x00522273: push     esi
0x00522274: mov      esi, dword ptr [esp + 0x38]
0x00522278: cmp      dword ptr [esi + 0x23c], 0
0x0052227F: jne      0x522288
0x00522281: xor      eax, eax
0x00522283: pop      esi
0x00522284: add      esp, 0x30
0x00522287: ret      
0x00522288: mov      eax, dword ptr [esp + 0x3c]
0x0052228C: movzx    ecx, byte ptr [eax + 1]
0x00522290: mov      edx, dword ptr [eax + 4]
0x00522293: mov      eax, dword ptr [edx + 0x1c]
0x00522296: mov      eax, dword ptr [eax + ecx*4]
0x00522299: add      eax, 0xc
0x0052229C: fld      dword ptr [eax]
0x0052229E: fstp     dword ptr [esp + 0x24]
0x005222A2: fld      dword ptr [eax + 4]
0x005222A5: fstp     dword ptr [esp + 0x28]
0x005222A9: fld      dword ptr [eax + 0xc]
0x005222AC: mov      eax, dword ptr [esi + 8]
0x005222AF: movzx    ecx, byte ptr [eax + 1]
0x005222B3: fstp     dword ptr [esp + 0x30]
0x005222B7: mov      edx, dword ptr [eax + 4]
0x005222BA: mov      eax, dword ptr [edx + 0x1c]
0x005222BD: mov      eax, dword ptr [eax + ecx*4]
0x005222C0: add      eax, 0xc
0x005222C3: lea      ecx, [esp + 4]
0x005222C7: push     ecx
0x005222C8: fld      dword ptr [eax]
0x005222CA: mov      edx, ecx
0x005222CC: fstp     dword ptr [esp + 0x18]
0x005222D0: push     edx
0x005222D1: fld      dword ptr [eax + 4]
0x005222D4: fstp     dword ptr [esp + 0x20]
0x005222D8: fld      dword ptr [eax + 0xc]
0x005222DB: fstp     dword ptr [esp + 0x28]
0x005222DF: fld      dword ptr [esp + 0x1c]
0x005222E3: fsub     dword ptr [esp + 0x2c]
0x005222E7: fstp     dword ptr [esp + 0xc]
0x005222EB: fld      dword ptr [esp + 0x20]
0x005222EF: fsub     dword ptr [esp + 0x30]
0x005222F3: fstp     dword ptr [esp + 0x10]
0x005222F7: fld      dword ptr [esp + 0x28]
0x005222FB: fsub     dword ptr [esp + 0x38]
0x005222FF: fstp     dword ptr [esp + 0x18]
0x00522303: fldz     
0x00522305: fstp     dword ptr [esp + 0x14]
0x00522309: call     0x6b2160
0x0052230E: fstp     st(0)
0x00522310: fld      dword ptr [esp + 0xc]
0x00522314: add      esp, 8
0x00522317: fchs     
0x00522319: fstp     dword ptr [esp + 0x28]
0x0052231D: fld      dword ptr [esi + 0x290]
0x00522323: fmul     dword ptr [esp + 0x28]
0x00522327: fld      dword ptr [esi + 0x28c]
0x0052232D: fmul     dword ptr [esp + 8]
0x00522331: faddp    st(1)
0x00522333: fld      dword ptr [esi + 0x294]
0x00522339: fmul     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x0052233F: faddp    st(1)
0x00522341: fstp     dword ptr [esp + 0x38]
0x00522345: fld      dword ptr [esp + 0x38]
0x00522349: fcomp    dword ptr [0x96665c] ; [f32=0, u32=0x00000000]
0x0052234F: fnstsw   ax
0x00522351: test     ah, 1
0x00522354: mov      eax, 1
0x00522359: je       0x522360
0x0052235B: mov      eax, 2
0x00522360: pop      esi
0x00522361: add      esp, 0x30
0x00522364: ret      
0x00522365: int3     
0x00522366: int3     
0x00522367: int3     
0x00522368: int3     
0x00522369: int3     
0x0052236A: int3     
0x0052236B: int3     
0x0052236C: int3     
0x0052236D: int3     
0x0052236E: int3     
0x0052236F: int3     
0x00522370: mov      ecx, dword ptr [esp + 4]
0x00522374: mov      eax, dword ptr [ecx + 0x23c]
0x0052237A: test     eax, eax
0x0052237C: jne      0x52237f
0x0052237E: ret      
0x0052237F: push     eax
0x00522380: push     ecx
0x00522381: call     0x522270
0x00522386: add      esp, 8
0x00522389: ret      
0x0052238A: int3     
0x0052238B: int3     
0x0052238C: int3     
0x0052238D: int3     
0x0052238E: int3     
0x0052238F: int3     
0x00522390: sub      esp, 0x44
0x00522393: mov      edx, dword ptr [ecx + 0xd4]
0x00522399: mov      eax, dword ptr [edx + 8]
0x0052239C: push     esi
0x0052239D: movzx    esi, byte ptr [eax + 1]
0x005223A1: mov      eax, dword ptr [eax + 4]
0x005223A4: mov      eax, dword ptr [eax + 0x1c]
0x005223A7: mov      eax, dword ptr [eax + esi*4]
0x005223AA: add      eax, 0xc
0x005223AD: cmp      dword ptr [ecx + 0xf4], 0
0x005223B4: pop      esi
0x005223B5: fld      dword ptr [eax]
0x005223B7: fstp     dword ptr [esp + 0x24]
0x005223BB: fld      dword ptr [eax + 4]
0x005223BE: fstp     dword ptr [esp + 0x28]
0x005223C2: fld      dword ptr [eax + 8]
0x005223C5: fstp     dword ptr [esp + 0x2c]
0x005223C9: fld      dword ptr [eax + 0xc]
0x005223CC: fstp     dword ptr [esp + 0x30]
0x005223D0: fld      dword ptr [0x96751c] ; [f32=100, u32=0x42C80000]
0x005223D6: fstp     dword ptr [esp]
0x005223D9: je       0x5223e4
0x005223DB: fld      dword ptr [0x9848f8] ; [f32=-100, u32=0xC2C80000]
0x005223E1: fstp     dword ptr [esp]
0x005223E4: fld      dword ptr [edx + 0x28c]
0x005223EA: lea      ecx, [esp + 4]
0x005223EE: fstp     dword ptr [esp + 4]
0x005223F2: push     ecx
0x005223F3: fld      dword ptr [edx + 0x290]
0x005223F9: fstp     dword ptr [esp + 0xc]
0x005223FD: fld      dword ptr [edx + 0x294]
0x00522403: fstp     dword ptr [esp + 0x10]
0x00522407: fld      dword ptr [edx + 0x298]
0x0052240D: mov      edx, ecx
0x0052240F: push     edx
0x00522410: fstp     dword ptr [esp + 0x18]
0x00522414: call     0x6b2160
0x00522419: fstp     st(0)
0x0052241B: fld      dword ptr [esp + 0xc]
0x0052241F: mov      eax, dword ptr [esp + 0x50]
0x00522423: fld      st(0)
0x00522425: fchs     
0x00522427: fstp     dword ptr [esp + 0x20]
0x0052242B: fld      dword ptr [esp + 0x10]
0x0052242F: fld      st(0)
0x00522431: fld      qword ptr [0x9848f0] ; [f32=0, f64=80, u32=0x00000000]
0x00522437: fmul     st(1), st(0)
0x00522439: fxch     st(1)
0x0052243B: fstp     dword ptr [esp + 0x3c]
0x0052243F: fld      dword ptr [esp + 0x20]
0x00522443: fmul     st(1)
0x00522445: fstp     dword ptr [esp + 0x40]
0x00522449: fldz     
0x0052244B: fmul     st(1)
0x0052244D: fstp     dword ptr [esp + 0x44]
0x00522451: fld      dword ptr [esp + 8]
0x00522455: fld      st(0)
0x00522457: fmulp    st(4)
0x00522459: fxch     st(3)
0x0052245B: fstp     dword ptr [esp + 0x1c]
0x0052245F: fld      st(2)
0x00522461: fmulp    st(2)
0x00522463: fxch     st(1)
0x00522465: fstp     dword ptr [esp + 0x20]
0x00522469: fld      dword ptr [esp + 0x14]
0x0052246D: fmul     st(2)
0x0052246F: fstp     dword ptr [esp + 0x24]
0x00522473: fld      dword ptr [esp + 0x18]
0x00522477: fmulp    st(2)
0x00522479: fxch     st(1)
0x0052247B: fstp     dword ptr [esp + 0x28]
0x0052247F: fld      dword ptr [esp + 0x1c]
0x00522483: fadd     dword ptr [esp + 0x2c]
0x00522487: fstp     dword ptr [esp + 0xc]
0x0052248B: fld      dword ptr [esp + 0x20]
0x0052248F: fadd     dword ptr [esp + 0x30]
0x00522493: fstp     dword ptr [esp + 0x10]
0x00522497: fld      dword ptr [esp + 0x24]
0x0052249B: fadd     dword ptr [esp + 0x34]
0x0052249F: fstp     dword ptr [esp + 0x14]
0x005224A3: fld      dword ptr [esp + 0x28]
0x005224A7: fadd     dword ptr [esp + 0x38]
0x005224AB: fstp     dword ptr [esp + 0x18]
0x005224AF: fld      dword ptr [esp + 0x3c]
0x005224B3: fadd     dword ptr [esp + 0xc]
0x005224B7: fstp     dword ptr [eax]
0x005224B9: fld      dword ptr [esp + 0x10]
0x005224BD: fadd     dword ptr [esp + 0x40]
0x005224C1: fstp     dword ptr [eax + 4]
0x005224C4: fld      dword ptr [esp + 0x14]
0x005224C8: fadd     dword ptr [esp + 0x44]
0x005224CC: fstp     dword ptr [eax + 8]
0x005224CF: fadd     dword ptr [esp + 0x18]
0x005224D3: fstp     dword ptr [eax + 0xc]
0x005224D6: add      esp, 0x4c
0x005224D9: ret      4
0x005224DC: int3     
0x005224DD: int3     
0x005224DE: int3     
0x005224DF: int3     

--- ffTrickTestPhase::execute @ 0x005224E0 ---
0x005224E0: push     esi
0x005224E1: mov      esi, dword ptr [esp + 8]
0x005224E5: push     0
0x005224E7: push     0x1c
0x005224E9: lea      ecx, [esi + 0x14]
0x005224EC: call     0x499c00
0x005224F1: test     eax, eax
0x005224F3: je       0x522579
0x005224F9: push     0xe40e8f3a
0x005224FE: lea      ecx, [eax + 0x1a8]
0x00522504: call     0x5691a0
0x00522509: test     eax, eax
0x0052250B: je       0x522579
0x0052250D: mov      ecx, dword ptr [esi + 0x20]
0x00522510: push     ecx
0x00522511: lea      ecx, [eax + 0x40]
0x00522514: call     0x515750
0x00522519: test     eax, eax
0x0052251B: je       0x522579
0x0052251D: movsx    ecx, byte ptr [esi + 0x24]
0x00522521: mov      esi, dword ptr [esi + 0x28]
0x00522524: movsx    eax, byte ptr [eax + 0xe0]
0x0052252B: cmp      esi, 5
0x0052252E: ja       0x522579
0x00522530: jmp      dword ptr [esi*4 + 0x522580]
0x00522537: xor      edx, edx
0x00522539: cmp      eax, ecx
0x0052253B: setle    dl
0x0052253E: pop      esi
0x0052253F: mov      eax, edx
0x00522541: ret      
0x00522542: xor      edx, edx
0x00522544: cmp      eax, ecx
0x00522546: setl     dl
0x00522549: pop      esi
0x0052254A: mov      eax, edx
0x0052254C: ret      
0x0052254D: xor      edx, edx
0x0052254F: cmp      eax, ecx
0x00522551: setge    dl
0x00522554: pop      esi
0x00522555: mov      eax, edx
0x00522557: ret      
0x00522558: xor      edx, edx
0x0052255A: cmp      eax, ecx
0x0052255C: setg     dl
0x0052255F: pop      esi
0x00522560: mov      eax, edx
0x00522562: ret      
0x00522563: xor      edx, edx
0x00522565: cmp      eax, ecx
0x00522567: sete     dl
0x0052256A: pop      esi
0x0052256B: mov      eax, edx
0x0052256D: ret      
0x0052256E: xor      edx, edx
0x00522570: cmp      eax, ecx
0x00522572: setne    dl
0x00522575: pop      esi
0x00522576: mov      eax, edx
0x00522578: ret      
0x00522579: xor      eax, eax
0x0052257B: pop      esi
0x0052257C: ret      
0x0052257D: lea      ecx, [ecx]
0x00522580: aaa      
0x00522581: and      eax, 0x25420052
0x00522586: push     edx
0x00522587: add      byte ptr [ebp + 0x25], cl
0x0052258A: push     edx
0x0052258B: add      byte ptr [eax + 0x25], bl
0x0052258E: push     edx
0x0052258F: add      byte ptr [ebx + 0x25], ah
0x00522592: push     edx
0x00522593: add      byte ptr [esi + 0x25], ch
0x00522596: push     edx
0x00522597: add      ah, cl
0x00522599: int3     
0x0052259A: int3     
0x0052259B: int3     
0x0052259C: int3     
0x0052259D: int3     
0x0052259E: int3     
0x0052259F: int3     
0x005225A0: test     byte ptr [esp + 4], 1
0x005225A5: push     esi
0x005225A6: mov      esi, ecx
0x005225A8: mov      dword ptr [esi], 0x9848bc
0x005225AE: je       0x5225b9
0x005225B0: push     esi
0x005225B1: call     0x688fb0
0x005225B6: add      esp, 4
0x005225B9: mov      eax, esi
0x005225BB: pop      esi
0x005225BC: ret      4
0x005225BF: int3     

--- CRotasticGameModeSoloGeneric::vfunc_54 @ 0x005225C0 ---
0x005225C0: xor      eax, eax
0x005225C2: ret      
0x005225C3: int3     
0x005225C4: int3     
0x005225C5: int3     
0x005225C6: int3     
0x005225C7: int3     
0x005225C8: int3     
0x005225C9: int3     
0x005225CA: int3     
0x005225CB: int3     
0x005225CC: int3     
0x005225CD: int3     
0x005225CE: int3     
0x005225CF: int3     

--- CRotasticGameModeSoloGeneric::ctor @ 0x005225D0 ---
0x005225D0: mov      eax, dword ptr [esp + 4]
0x005225D4: push     esi
0x005225D5: push     eax
0x005225D6: mov      esi, ecx
0x005225D8: call     0x50de10
0x005225DD: xor      eax, eax
0x005225DF: mov      dword ptr [esi], 0x984910
0x005225E5: mov      dword ptr [esi + 0x160], eax
0x005225EB: mov      dword ptr [esi + 0x164], eax
0x005225F1: mov      eax, esi
0x005225F3: pop      esi
0x005225F4: ret      4
0x005225F7: int3     
0x005225F8: int3     
0x005225F9: int3     
0x005225FA: int3     
0x005225FB: int3     
0x005225FC: int3     
0x005225FD: int3     
0x005225FE: int3     
0x005225FF: int3     