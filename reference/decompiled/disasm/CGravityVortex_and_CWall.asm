=== CGravityVortex_and_CWall (0x005068A0 .. 0x00508200) ===

--- CGravityVortex::ctor @ 0x005068A0 ---
0x005068A0: mov      eax, dword ptr [esp + 4]
0x005068A4: push     esi
0x005068A5: push     eax
0x005068A6: mov      esi, ecx
0x005068A8: call     0x506ab0
0x005068AD: mov      dword ptr [esi], 0x982d78
0x005068B3: mov      byte ptr [esi + 0x1a8], 1
0x005068BA: mov      eax, esi
0x005068BC: pop      esi
0x005068BD: ret      4
0x005068C0: mov      dword ptr [ecx], 0x982d78
0x005068C6: jmp      0x506b40
0x005068CB: int3     
0x005068CC: int3     
0x005068CD: int3     
0x005068CE: int3     
0x005068CF: int3     

--- CGravityVortex::vfunc_43 @ 0x005068D0 ---
0x005068D0: jmp      0x795870
0x005068D5: int3     
0x005068D6: int3     
0x005068D7: int3     
0x005068D8: int3     
0x005068D9: int3     
0x005068DA: int3     
0x005068DB: int3     
0x005068DC: int3     
0x005068DD: int3     
0x005068DE: int3     
0x005068DF: int3     
0x005068E0: mov      eax, dword ptr [ecx + 8]
0x005068E3: movzx    ecx, byte ptr [eax + 1]
0x005068E7: mov      edx, dword ptr [eax + 4]
0x005068EA: mov      eax, dword ptr [edx + 0x38]
0x005068ED: mov      ecx, dword ptr [eax + ecx*4]
0x005068F0: fld      dword ptr [ecx + 0x38]
0x005068F3: ret      
0x005068F4: int3     
0x005068F5: int3     
0x005068F6: int3     
0x005068F7: int3     
0x005068F8: int3     
0x005068F9: int3     
0x005068FA: int3     
0x005068FB: int3     
0x005068FC: int3     
0x005068FD: int3     
0x005068FE: int3     
0x005068FF: int3     
0x00506900: mov      eax, dword ptr [ecx + 8]
0x00506903: movzx    ecx, byte ptr [eax + 1]
0x00506907: mov      edx, dword ptr [eax + 4]
0x0050690A: mov      eax, dword ptr [edx + 0x38]
0x0050690D: mov      ecx, dword ptr [eax + ecx*4]
0x00506910: fld      dword ptr [ecx + 0x3c]
0x00506913: ret      
0x00506914: int3     
0x00506915: int3     
0x00506916: int3     
0x00506917: int3     
0x00506918: int3     
0x00506919: int3     
0x0050691A: int3     
0x0050691B: int3     
0x0050691C: int3     
0x0050691D: int3     
0x0050691E: int3     
0x0050691F: int3     
0x00506920: mov      eax, dword ptr [ecx + 8]
0x00506923: movzx    ecx, byte ptr [eax + 1]
0x00506927: mov      edx, dword ptr [eax + 4]
0x0050692A: mov      eax, dword ptr [edx + 0x1c]
0x0050692D: mov      ecx, dword ptr [eax + ecx*4]
0x00506930: mov      eax, dword ptr [esp + 4]
0x00506934: add      ecx, 0xc
0x00506937: fld      dword ptr [ecx]
0x00506939: fstp     dword ptr [eax]
0x0050693B: fld      dword ptr [ecx + 4]
0x0050693E: fstp     dword ptr [eax + 4]
0x00506941: fld      dword ptr [ecx + 8]
0x00506944: fstp     dword ptr [eax + 8]
0x00506947: fld      dword ptr [ecx + 0xc]
0x0050694A: fstp     dword ptr [eax + 0xc]
0x0050694D: ret      4
0x00506950: mov      eax, dword ptr [ecx + 8]
0x00506953: movzx    ecx, byte ptr [eax + 1]
0x00506957: mov      edx, dword ptr [eax + 4]
0x0050695A: mov      eax, dword ptr [edx + 0x38]
0x0050695D: mov      ecx, dword ptr [eax + ecx*4]
0x00506960: xor      eax, eax
0x00506962: cmp      byte ptr [ecx + 0x40], 1
0x00506966: sete     al
0x00506969: ret      
0x0050696A: int3     
0x0050696B: int3     
0x0050696C: int3     
0x0050696D: int3     
0x0050696E: int3     
0x0050696F: int3     
0x00506970: mov      eax, dword ptr [ecx + 8]
0x00506973: movzx    ecx, byte ptr [eax + 1]
0x00506977: mov      edx, dword ptr [eax + 4]
0x0050697A: mov      eax, dword ptr [edx + 0x38]
0x0050697D: mov      eax, dword ptr [eax + ecx*4]
0x00506980: add      eax, 0x38
0x00506983: ret      
0x00506984: int3     
0x00506985: int3     
0x00506986: int3     
0x00506987: int3     
0x00506988: int3     
0x00506989: int3     
0x0050698A: int3     
0x0050698B: int3     
0x0050698C: int3     
0x0050698D: int3     
0x0050698E: int3     
0x0050698F: int3     

--- CGravityVortex::vfunc_4 @ 0x00506990 ---
0x00506990: push     esi
0x00506991: mov      esi, ecx
0x00506993: mov      ecx, dword ptr [esi + 8]
0x00506996: lea      eax, [esi + 0x60]
0x00506999: push     eax
0x0050699A: push     ecx
0x0050699B: call     0x5687c0
0x005069A0: mov      ecx, dword ptr [esi + 0xc]
0x005069A3: add      esp, 8
0x005069A6: test     ecx, ecx
0x005069A8: je       0x5069d0
0x005069AA: mov      eax, dword ptr [esi + 8]
0x005069AD: movzx    edx, byte ptr [eax + 1]
0x005069B1: push     edi
0x005069B2: mov      edi, dword ptr [eax + 4]
0x005069B5: mov      edi, dword ptr [edi + 0x38]
0x005069B8: cmp      ecx, dword ptr [edi + edx*4]
0x005069BB: pop      edi
0x005069BC: je       0x5069d0
0x005069BE: mov      esi, dword ptr [esp + 0xc]
0x005069C2: mov      edx, dword ptr [ecx]
0x005069C4: mov      edx, dword ptr [edx + 0x24]
0x005069C7: push     esi
0x005069C8: push     eax
0x005069C9: mov      eax, dword ptr [esp + 0x10]
0x005069CD: push     eax
0x005069CE: call     edx
0x005069D0: pop      esi
0x005069D1: ret      8
0x005069D4: int3     
0x005069D5: int3     
0x005069D6: int3     
0x005069D7: int3     
0x005069D8: int3     
0x005069D9: int3     
0x005069DA: int3     
0x005069DB: int3     
0x005069DC: int3     
0x005069DD: int3     
0x005069DE: int3     
0x005069DF: int3     
0x005069E0: sub      esp, 0x10
0x005069E3: mov      ecx, dword ptr [ecx + 8]
0x005069E6: fldz     
0x005069E8: movzx    edx, byte ptr [ecx + 1]
0x005069EC: mov      eax, dword ptr [esp + 0x14]
0x005069F0: push     esi
0x005069F1: mov      esi, dword ptr [ecx + 4]
0x005069F4: mov      esi, dword ptr [esi + 0x38]
0x005069F7: fst      dword ptr [eax]
0x005069F9: mov      edx, dword ptr [esi + edx*4]
0x005069FC: fst      dword ptr [eax + 4]
0x005069FF: movzx    esi, byte ptr [ecx + 1]
0x00506A03: fst      dword ptr [eax + 8]
0x00506A06: fld1     
0x00506A08: fst      dword ptr [eax + 0xc]
0x00506A0B: mov      ecx, dword ptr [ecx + 4]
0x00506A0E: fld      dword ptr [edx + 0x48]
0x00506A11: mov      ecx, dword ptr [ecx + 0x38]
0x00506A14: fstp     dword ptr [esp + 0x18]
0x00506A18: mov      ecx, dword ptr [ecx + esi*4]
0x00506A1B: cmp      byte ptr [ecx + 0x40], 1
0x00506A1F: pop      esi
0x00506A20: jne      0x506aa0
0x00506A22: mov      edx, dword ptr [edx + 0x44]
0x00506A25: test     edx, edx
0x00506A27: jne      0x506a4a
0x00506A29: fld      dword ptr [esp + 0x14]
0x00506A2D: fchs     
0x00506A2F: fstp     dword ptr [esp + 4]
0x00506A33: fxch     st(1)
0x00506A35: fst      dword ptr [eax]
0x00506A37: fld      dword ptr [esp + 4]
0x00506A3B: fstp     dword ptr [eax + 4]
0x00506A3E: fstp     dword ptr [eax + 8]
0x00506A41: fstp     dword ptr [eax + 0xc]
0x00506A44: add      esp, 0x10
0x00506A47: ret      4
0x00506A4A: cmp      edx, 1
0x00506A4D: jne      0x506a66
0x00506A4F: fxch     st(1)
0x00506A51: fst      dword ptr [eax]
0x00506A53: fld      dword ptr [esp + 0x14]
0x00506A57: fstp     dword ptr [eax + 4]
0x00506A5A: fstp     dword ptr [eax + 8]
0x00506A5D: fstp     dword ptr [eax + 0xc]
0x00506A60: add      esp, 0x10
0x00506A63: ret      4
0x00506A66: cmp      edx, 2
0x00506A69: jne      0x506a84
0x00506A6B: fld      dword ptr [esp + 0x14]
0x00506A6F: fchs     
0x00506A71: fstp     dword ptr [eax]
0x00506A73: fxch     st(1)
0x00506A75: fst      dword ptr [eax + 4]
0x00506A78: fstp     dword ptr [eax + 8]
0x00506A7B: fstp     dword ptr [eax + 0xc]
0x00506A7E: add      esp, 0x10
0x00506A81: ret      4
0x00506A84: cmp      edx, 3
0x00506A87: jne      0x506aa0
0x00506A89: fld      dword ptr [esp + 0x14]
0x00506A8D: fstp     dword ptr [eax]
0x00506A8F: fxch     st(1)
0x00506A91: fst      dword ptr [eax + 4]
0x00506A94: fstp     dword ptr [eax + 8]
0x00506A97: fstp     dword ptr [eax + 0xc]
0x00506A9A: add      esp, 0x10
0x00506A9D: ret      4
0x00506AA0: fstp     st(1)
0x00506AA2: fstp     st(0)
0x00506AA4: add      esp, 0x10
0x00506AA7: ret      4
0x00506AAA: int3     
0x00506AAB: int3     
0x00506AAC: int3     
0x00506AAD: int3     
0x00506AAE: int3     
0x00506AAF: int3     
0x00506AB0: push     -1
0x00506AB2: push     0x943293
0x00506AB7: mov      eax, dword ptr fs:[0]
0x00506ABD: push     eax
0x00506ABE: push     ecx
0x00506ABF: push     esi
0x00506AC0: mov      eax, dword ptr [0xb089c8]
0x00506AC5: xor      eax, esp
0x00506AC7: push     eax
0x00506AC8: lea      eax, [esp + 0xc]
0x00506ACC: mov      dword ptr fs:[0], eax
0x00506AD2: mov      esi, ecx
0x00506AD4: mov      dword ptr [esp + 8], esi
0x00506AD8: mov      eax, dword ptr [esp + 0x1c]
0x00506ADC: push     eax
0x00506ADD: call     0x792d80
0x00506AE2: lea      ecx, [esi + 0x60]
0x00506AE5: mov      dword ptr [esp + 0x14], 0
0x00506AED: mov      dword ptr [esi], 0x982c70
0x00506AF3: call     0x568790
0x00506AF8: push     1
0x00506AFA: push     0
0x00506AFC: push     1
0x00506AFE: push     3
0x00506B00: push     3
0x00506B02: mov      ecx, esi
0x00506B04: mov      byte ptr [esp + 0x28], 1
0x00506B09: call     0x7ba420
0x00506B0E: push     1
0x00506B10: push     0
0x00506B12: push     1
0x00506B14: push     0x3c
0x00506B16: push     0x3c
0x00506B18: mov      ecx, esi
0x00506B1A: call     0x7ba420
0x00506B1F: mov      eax, esi
0x00506B21: mov      ecx, dword ptr [esp + 0xc]
0x00506B25: mov      dword ptr fs:[0], ecx
0x00506B2C: pop      ecx
0x00506B2D: pop      esi
0x00506B2E: add      esp, 0x10
0x00506B31: ret      4
0x00506B34: int3     
0x00506B35: int3     
0x00506B36: int3     
0x00506B37: int3     
0x00506B38: int3     
0x00506B39: int3     
0x00506B3A: int3     
0x00506B3B: int3     
0x00506B3C: int3     
0x00506B3D: int3     
0x00506B3E: int3     
0x00506B3F: int3     
0x00506B40: push     -1
0x00506B42: push     0x9432b8
0x00506B47: mov      eax, dword ptr fs:[0]
0x00506B4D: push     eax
0x00506B4E: push     ecx
0x00506B4F: push     esi
0x00506B50: mov      eax, dword ptr [0xb089c8]
0x00506B55: xor      eax, esp
0x00506B57: push     eax
0x00506B58: lea      eax, [esp + 0xc]
0x00506B5C: mov      dword ptr fs:[0], eax
0x00506B62: mov      esi, ecx
0x00506B64: mov      dword ptr [esp + 8], esi
0x00506B68: mov      dword ptr [esi], 0x982c70
0x00506B6E: lea      ecx, [esi + 0x60]
0x00506B71: mov      dword ptr [esp + 0x14], 0
0x00506B79: call     0x5687b0
0x00506B7E: mov      ecx, esi
0x00506B80: mov      dword ptr [esp + 0x14], 0xffffffff
0x00506B88: call     0x792eb0
0x00506B8D: mov      ecx, dword ptr [esp + 0xc]
0x00506B91: mov      dword ptr fs:[0], ecx
0x00506B98: pop      ecx
0x00506B99: pop      esi
0x00506B9A: add      esp, 0x10
0x00506B9D: ret      
0x00506B9E: int3     
0x00506B9F: int3     

--- C3DPanelGui::vfunc_3 @ 0x00506BA0 ---
0x00506BA0: jmp      0x793040
0x00506BA5: int3     
0x00506BA6: int3     
0x00506BA7: int3     
0x00506BA8: int3     
0x00506BA9: int3     
0x00506BAA: int3     
0x00506BAB: int3     
0x00506BAC: int3     
0x00506BAD: int3     
0x00506BAE: int3     
0x00506BAF: int3     

--- C3DPanelGui::vfunc_43 @ 0x00506BB0 ---
0x00506BB0: jmp      0x795870
0x00506BB5: int3     
0x00506BB6: int3     
0x00506BB7: int3     
0x00506BB8: int3     
0x00506BB9: int3     
0x00506BBA: int3     
0x00506BBB: int3     
0x00506BBC: int3     
0x00506BBD: int3     
0x00506BBE: int3     
0x00506BBF: int3     
0x00506BC0: push     esi
0x00506BC1: mov      esi, ecx
0x00506BC3: call     0x506b40
0x00506BC8: test     byte ptr [esp + 8], 1
0x00506BCD: je       0x506bd8
0x00506BCF: push     esi
0x00506BD0: call     0x688fb0
0x00506BD5: add      esp, 4
0x00506BD8: mov      eax, esi
0x00506BDA: pop      esi
0x00506BDB: ret      4
0x00506BDE: int3     
0x00506BDF: int3     

--- C3DPanelGui::vfunc_1 @ 0x00506BE0 ---
0x00506BE0: xor      eax, eax
0x00506BE2: ret      
0x00506BE3: int3     
0x00506BE4: int3     
0x00506BE5: int3     
0x00506BE6: int3     
0x00506BE7: int3     
0x00506BE8: int3     
0x00506BE9: int3     
0x00506BEA: int3     
0x00506BEB: int3     
0x00506BEC: int3     
0x00506BED: int3     
0x00506BEE: int3     
0x00506BEF: int3     
0x00506BF0: mov      eax, ecx
0x00506BF2: mov      ecx, dword ptr [esp + 4]
0x00506BF6: fld      dword ptr [ecx]
0x00506BF8: fstp     dword ptr [eax]
0x00506BFA: fld      dword ptr [ecx + 4]
0x00506BFD: fstp     dword ptr [eax + 4]
0x00506C00: fld      dword ptr [ecx + 8]
0x00506C03: fstp     dword ptr [eax + 8]
0x00506C06: fld      dword ptr [ecx + 0xc]
0x00506C09: fstp     dword ptr [eax + 0xc]
0x00506C0C: ret      4
0x00506C0F: int3     

--- CDebugDeathInput::vfunc_4 @ 0x00506C10 ---
0x00506C10: push     esi
0x00506C11: mov      esi, ecx
0x00506C13: mov      ecx, dword ptr [esi + 8]
0x00506C16: lea      eax, [esi + 0x60]
0x00506C19: push     eax
0x00506C1A: push     ecx
0x00506C1B: call     0x5687c0
0x00506C20: mov      ecx, dword ptr [esi + 0xc]
0x00506C23: add      esp, 8
0x00506C26: test     ecx, ecx
0x00506C28: je       0x506c50
0x00506C2A: mov      eax, dword ptr [esi + 8]
0x00506C2D: movzx    edx, byte ptr [eax + 1]
0x00506C31: push     edi
0x00506C32: mov      edi, dword ptr [eax + 4]
0x00506C35: mov      edi, dword ptr [edi + 0x38]
0x00506C38: cmp      ecx, dword ptr [edi + edx*4]
0x00506C3B: pop      edi
0x00506C3C: je       0x506c50
0x00506C3E: mov      esi, dword ptr [esp + 0xc]
0x00506C42: mov      edx, dword ptr [ecx]
0x00506C44: mov      edx, dword ptr [edx + 0x24]
0x00506C47: push     esi
0x00506C48: push     eax
0x00506C49: mov      eax, dword ptr [esp + 0x10]
0x00506C4D: push     eax
0x00506C4E: call     edx
0x00506C50: pop      esi
0x00506C51: ret      8
0x00506C54: int3     
0x00506C55: int3     
0x00506C56: int3     
0x00506C57: int3     
0x00506C58: int3     
0x00506C59: int3     
0x00506C5A: int3     
0x00506C5B: int3     
0x00506C5C: int3     
0x00506C5D: int3     
0x00506C5E: int3     
0x00506C5F: int3     

--- CGravityVortex::vfunc_0 @ 0x00506C60 ---
0x00506C60: push     esi
0x00506C61: mov      esi, ecx
0x00506C63: mov      dword ptr [esi], 0x982d78
0x00506C69: call     0x506b40
0x00506C6E: test     byte ptr [esp + 8], 1
0x00506C73: je       0x506c7e
0x00506C75: push     esi
0x00506C76: call     0x688fb0
0x00506C7B: add      esp, 4
0x00506C7E: mov      eax, esi
0x00506C80: pop      esi
0x00506C81: ret      4
0x00506C84: int3     
0x00506C85: int3     
0x00506C86: int3     
0x00506C87: int3     
0x00506C88: int3     
0x00506C89: int3     
0x00506C8A: int3     
0x00506C8B: int3     
0x00506C8C: int3     
0x00506C8D: int3     
0x00506C8E: int3     
0x00506C8F: int3     
0x00506C90: push     -1
0x00506C92: push     0x9432ee
0x00506C97: mov      eax, dword ptr fs:[0]
0x00506C9D: push     eax
0x00506C9E: mov      eax, dword ptr [0xb089c8]
0x00506CA3: xor      eax, esp
0x00506CA5: push     eax
0x00506CA6: lea      eax, [esp + 4]
0x00506CAA: mov      dword ptr fs:[0], eax
0x00506CB0: mov      eax, 1
0x00506CB5: test     byte ptr [0xb1b994], al
0x00506CBB: jne      0x506cf1
0x00506CBD: or       dword ptr [0xb1b994], eax
0x00506CC3: push     -1
0x00506CC5: push     0
0x00506CC7: push     0x9789c8
0x00506CCC: mov      dword ptr [esp + 0x18], 0
0x00506CD4: call     0x691560
0x00506CD9: add      esp, 0xc
0x00506CDC: mov      dword ptr [0xb1b990], eax
0x00506CE1: mov      ecx, dword ptr [esp + 4]
0x00506CE5: mov      dword ptr fs:[0], ecx
0x00506CEC: pop      ecx
0x00506CED: add      esp, 0xc
0x00506CF0: ret      
0x00506CF1: mov      eax, dword ptr [0xb1b990]
0x00506CF6: mov      ecx, dword ptr [esp + 4]
0x00506CFA: mov      dword ptr fs:[0], ecx
0x00506D01: pop      ecx
0x00506D02: add      esp, 0xc
0x00506D05: ret      
0x00506D06: int3     
0x00506D07: int3     
0x00506D08: int3     
0x00506D09: int3     
0x00506D0A: int3     
0x00506D0B: int3     
0x00506D0C: int3     
0x00506D0D: int3     
0x00506D0E: int3     
0x00506D0F: int3     

--- C3DPanelGui::vfunc_2 @ 0x00506D10 ---
0x00506D10: push     esi
0x00506D11: call     0x506c90
0x00506D16: mov      esi, dword ptr [esp + 8]
0x00506D1A: cmp      eax, esi
0x00506D1C: je       0x506d2d
0x00506D1E: call     0x433c20
0x00506D23: cmp      eax, esi
0x00506D25: je       0x506d2d
0x00506D27: xor      eax, eax
0x00506D29: pop      esi
0x00506D2A: ret      4
0x00506D2D: mov      eax, 1
0x00506D32: pop      esi
0x00506D33: ret      4
0x00506D36: int3     
0x00506D37: int3     
0x00506D38: int3     
0x00506D39: int3     
0x00506D3A: int3     
0x00506D3B: int3     
0x00506D3C: int3     
0x00506D3D: int3     
0x00506D3E: int3     
0x00506D3F: int3     
0x00506D40: movzx    edx, byte ptr [ecx + 1]
0x00506D44: mov      ecx, dword ptr [ecx + 4]
0x00506D47: mov      eax, dword ptr [ecx + 0x1c]
0x00506D4A: add      edx, edx
0x00506D4C: add      edx, edx
0x00506D4E: mov      eax, dword ptr [edx + eax]
0x00506D51: test     eax, eax
0x00506D53: je       0x506d7c
0x00506D55: cmp      dword ptr [esp + 4], 0
0x00506D5A: jne      0x506d6a
0x00506D5C: push     esi
0x00506D5D: mov      esi, dword ptr [ecx + 0xc]
0x00506D60: test     dword ptr [edx + esi], 0x200
0x00506D67: pop      esi
0x00506D68: je       0x506d7c
0x00506D6A: test     byte ptr [eax + 8], 8
0x00506D6E: je       0x506d7c
0x00506D70: mov      ecx, dword ptr [ecx + 0x20]
0x00506D73: add      ecx, edx
0x00506D75: cmp      dword ptr [ecx], 0
0x00506D78: je       0x506d7c
0x00506D7A: mov      eax, dword ptr [ecx]
0x00506D7C: ret      4
0x00506D7F: int3     

--- faRotasticStopSound::execute @ 0x00506D80 ---
0x00506D80: mov      eax, dword ptr [0x95fb60] ; [str="\Jl#RotasticMasterSoundManagerInGame"]
0x00506D85: push     esi
0x00506D86: mov      esi, dword ptr [esp + 8]
0x00506D8A: mov      ecx, dword ptr [esi + 8]
0x00506D8D: push     0
0x00506D8F: push     0
0x00506D91: push     eax
0x00506D92: call     0x7cd3c0
0x00506D97: movzx    ecx, byte ptr [eax + 1]
0x00506D9B: mov      edx, dword ptr [eax + 4]
0x00506D9E: mov      eax, dword ptr [edx + 0x14]
0x00506DA1: lea      ecx, [ecx + ecx*8]
0x00506DA4: lea      eax, [eax + ecx*4]
0x00506DA7: mov      ecx, 0x1f
0x00506DAC: cmp      byte ptr [eax + 0x14], cl
0x00506DAF: jne      0x506dc1
0x00506DB1: mov      ecx, dword ptr [esi + 0x4c]
0x00506DB4: mov      eax, dword ptr [eax + 4]
0x00506DB7: push     ecx
0x00506DB8: mov      ecx, eax
0x00506DBA: call     0x563d20
0x00506DBF: pop      esi
0x00506DC0: ret      
0x00506DC1: cmp      byte ptr [eax + 0x15], cl
0x00506DC4: jne      0x506dd6
0x00506DC6: mov      ecx, dword ptr [esi + 0x4c]
0x00506DC9: mov      eax, dword ptr [eax + 8]
0x00506DCC: push     ecx
0x00506DCD: mov      ecx, eax
0x00506DCF: call     0x563d20
0x00506DD4: pop      esi
0x00506DD5: ret      
0x00506DD6: cmp      byte ptr [eax + 0x16], cl
0x00506DD9: jne      0x506deb
0x00506DDB: mov      ecx, dword ptr [esi + 0x4c]
0x00506DDE: mov      eax, dword ptr [eax + 0xc]
0x00506DE1: push     ecx
0x00506DE2: mov      ecx, eax
0x00506DE4: call     0x563d20
0x00506DE9: pop      esi
0x00506DEA: ret      
0x00506DEB: cmp      byte ptr [eax + 0x17], cl
0x00506DEE: jne      0x506e00
0x00506DF0: mov      ecx, dword ptr [esi + 0x4c]
0x00506DF3: mov      eax, dword ptr [eax + 0x10]
0x00506DF6: push     ecx
0x00506DF7: mov      ecx, eax
0x00506DF9: call     0x563d20
0x00506DFE: pop      esi
0x00506DFF: ret      
0x00506E00: mov      eax, dword ptr [eax]
0x00506E02: test     eax, eax
0x00506E04: je       0x506e1b
0x00506E06: push     ecx
0x00506E07: mov      ecx, eax
0x00506E09: call     0x461400
0x00506E0E: mov      ecx, dword ptr [esi + 0x4c]
0x00506E11: push     ecx
0x00506E12: mov      ecx, eax
0x00506E14: call     0x563d20
0x00506E19: pop      esi
0x00506E1A: ret      
0x00506E1B: mov      ecx, dword ptr [esi + 0x4c]
0x00506E1E: xor      eax, eax
0x00506E20: push     ecx
0x00506E21: mov      ecx, eax
0x00506E23: call     0x563d20
0x00506E28: pop      esi
0x00506E29: ret      
0x00506E2A: int3     
0x00506E2B: int3     
0x00506E2C: int3     
0x00506E2D: int3     
0x00506E2E: int3     
0x00506E2F: int3     

--- faRotasticStartSpeakerSoundEvent::execute @ 0x00506E30 ---
0x00506E30: lea      eax, [esp - 8]
0x00506E34: sub      esp, 8
0x00506E37: test     al, 0x7f
0x00506E39: je       0x506e4a
0x00506E3B: mov      ecx, eax
0x00506E3D: push     8
0x00506E3F: push     ecx
0x00506E40: call     0x6a9700
0x00506E45: add      esp, 8
0x00506E48: jmp      0x506e53
0x00506E4A: xor      eax, eax
0x00506E4C: mov      dword ptr [esp], eax
0x00506E4F: mov      dword ptr [esp + 4], eax
0x00506E53: push     esi
0x00506E54: mov      esi, dword ptr [esp + 0x10]
0x00506E58: mov      ecx, dword ptr [esi + 0x10]
0x00506E5B: call     0x80a790
0x00506E60: mov      ecx, dword ptr [0xb1bba0]
0x00506E66: mov      edx, dword ptr [esi + 0x4c]
0x00506E69: mov      dword ptr [esp + 4], eax
0x00506E6D: lea      eax, [esp + 4]
0x00506E71: push     eax
0x00506E72: push     0
0x00506E74: push     ecx
0x00506E75: mov      dword ptr [esp + 0x14], edx
0x00506E79: call     0x52d190
0x00506E7E: add      esp, 0xc
0x00506E81: pop      esi
0x00506E82: add      esp, 8
0x00506E85: ret      
0x00506E86: int3     
0x00506E87: int3     
0x00506E88: int3     
0x00506E89: int3     
0x00506E8A: int3     
0x00506E8B: int3     
0x00506E8C: int3     
0x00506E8D: int3     
0x00506E8E: int3     
0x00506E8F: int3     

--- faRotasticPlayAudioStream::execute @ 0x00506E90 ---
0x00506E90: lea      eax, [esp - 8]
0x00506E94: sub      esp, 8
0x00506E97: test     al, 0x7f
0x00506E99: je       0x506eaa
0x00506E9B: mov      ecx, eax
0x00506E9D: push     8
0x00506E9F: push     ecx
0x00506EA0: call     0x6a9700
0x00506EA5: add      esp, 8
0x00506EA8: jmp      0x506eb3
0x00506EAA: xor      eax, eax
0x00506EAC: mov      dword ptr [esp], eax
0x00506EAF: mov      dword ptr [esp + 4], eax
0x00506EB3: push     esi
0x00506EB4: mov      esi, dword ptr [esp + 0x10]
0x00506EB8: mov      ecx, dword ptr [esi + 0x10]
0x00506EBB: call     0x80a790
0x00506EC0: mov      ecx, dword ptr [0xb1bba4]
0x00506EC6: mov      edx, dword ptr [esi + 0x4c]
0x00506EC9: mov      dword ptr [esp + 4], eax
0x00506ECD: lea      eax, [esp + 4]
0x00506ED1: push     eax
0x00506ED2: push     0
0x00506ED4: push     ecx
0x00506ED5: mov      dword ptr [esp + 0x14], edx
0x00506ED9: call     0x52d190
0x00506EDE: add      esp, 0xc
0x00506EE1: pop      esi
0x00506EE2: add      esp, 8
0x00506EE5: ret      
0x00506EE6: int3     
0x00506EE7: int3     
0x00506EE8: int3     
0x00506EE9: int3     
0x00506EEA: int3     
0x00506EEB: int3     
0x00506EEC: int3     
0x00506EED: int3     
0x00506EEE: int3     
0x00506EEF: int3     

--- faRotasticStopAudioStream::execute @ 0x00506EF0 ---
0x00506EF0: lea      eax, [esp - 8]
0x00506EF4: sub      esp, 8
0x00506EF7: test     al, 0x7f
0x00506EF9: je       0x506f0a
0x00506EFB: mov      ecx, eax
0x00506EFD: push     8
0x00506EFF: push     ecx
0x00506F00: call     0x6a9700
0x00506F05: add      esp, 8
0x00506F08: jmp      0x506f13
0x00506F0A: xor      eax, eax
0x00506F0C: mov      dword ptr [esp], eax
0x00506F0F: mov      dword ptr [esp + 4], eax
0x00506F13: push     esi
0x00506F14: mov      esi, dword ptr [esp + 0x10]
0x00506F18: mov      ecx, dword ptr [esi + 0x10]
0x00506F1B: call     0x80a790
0x00506F20: mov      ecx, dword ptr [0xb1bba8]
0x00506F26: mov      edx, dword ptr [esi + 0x4c]
0x00506F29: mov      dword ptr [esp + 4], eax
0x00506F2D: lea      eax, [esp + 4]
0x00506F31: push     eax
0x00506F32: push     0
0x00506F34: push     ecx
0x00506F35: mov      dword ptr [esp + 0x14], edx
0x00506F39: call     0x52d190
0x00506F3E: add      esp, 0xc
0x00506F41: pop      esi
0x00506F42: add      esp, 8
0x00506F45: ret      
0x00506F46: int3     
0x00506F47: int3     
0x00506F48: int3     
0x00506F49: int3     
0x00506F4A: int3     
0x00506F4B: int3     
0x00506F4C: int3     
0x00506F4D: int3     
0x00506F4E: int3     
0x00506F4F: int3     

--- faRotasticPauseAudioStream::execute @ 0x00506F50 ---
0x00506F50: lea      eax, [esp - 8]
0x00506F54: sub      esp, 8
0x00506F57: test     al, 0x7f
0x00506F59: je       0x506f6a
0x00506F5B: mov      ecx, eax
0x00506F5D: push     8
0x00506F5F: push     ecx
0x00506F60: call     0x6a9700
0x00506F65: add      esp, 8
0x00506F68: jmp      0x506f73
0x00506F6A: xor      eax, eax
0x00506F6C: mov      dword ptr [esp], eax
0x00506F6F: mov      dword ptr [esp + 4], eax
0x00506F73: mov      edx, dword ptr [esp + 0xc]
0x00506F77: mov      ecx, dword ptr [edx + 0x10]
0x00506F7A: call     0x80a790
0x00506F7F: mov      ecx, dword ptr [0xb1bbbc]
0x00506F85: mov      dword ptr [esp], eax
0x00506F88: lea      eax, [esp]
0x00506F8B: push     eax
0x00506F8C: push     0
0x00506F8E: push     ecx
0x00506F8F: mov      dword ptr [esp + 0x10], 1
0x00506F97: call     0x52d190
0x00506F9C: add      esp, 0x14
0x00506F9F: ret      

--- faRotasticUnpauseAudioStream::execute @ 0x00506FA0 ---
0x00506FA0: lea      eax, [esp - 8]
0x00506FA4: sub      esp, 8
0x00506FA7: test     al, 0x7f
0x00506FA9: je       0x506fba
0x00506FAB: mov      ecx, eax
0x00506FAD: push     8
0x00506FAF: push     ecx
0x00506FB0: call     0x6a9700
0x00506FB5: add      esp, 8
0x00506FB8: jmp      0x506fc3
0x00506FBA: xor      eax, eax
0x00506FBC: mov      dword ptr [esp], eax
0x00506FBF: mov      dword ptr [esp + 4], eax
0x00506FC3: mov      edx, dword ptr [esp + 0xc]
0x00506FC7: mov      ecx, dword ptr [edx + 0x10]
0x00506FCA: call     0x80a790
0x00506FCF: mov      ecx, dword ptr [0xb1bbbc]
0x00506FD5: mov      dword ptr [esp], eax
0x00506FD8: lea      eax, [esp]
0x00506FDB: push     eax
0x00506FDC: push     0
0x00506FDE: push     ecx
0x00506FDF: mov      dword ptr [esp + 0x10], 0
0x00506FE7: call     0x52d190
0x00506FEC: add      esp, 0x14
0x00506FEF: ret      

--- faRotasticStopSoundsById::execute @ 0x00506FF0 ---
0x00506FF0: lea      eax, [esp - 0xc]
0x00506FF4: sub      esp, 0xc
0x00506FF7: test     al, 0x7f
0x00506FF9: je       0x50700a
0x00506FFB: mov      ecx, eax
0x00506FFD: push     0xc
0x00506FFF: push     ecx
0x00507000: call     0x6a9700
0x00507005: add      esp, 8
0x00507008: jmp      0x507017
0x0050700A: xor      eax, eax
0x0050700C: mov      dword ptr [esp], eax
0x0050700F: mov      dword ptr [esp + 4], eax
0x00507013: mov      dword ptr [esp + 8], eax
0x00507017: push     esi
0x00507018: mov      esi, dword ptr [esp + 0x14]
0x0050701C: mov      ecx, dword ptr [esi + 0x10]
0x0050701F: call     0x80a790
0x00507024: mov      edx, dword ptr [esi + 0x4c]
0x00507027: lea      ecx, [esp + 4]
0x0050702B: push     ecx
0x0050702C: mov      dword ptr [esp + 8], eax
0x00507030: movsx    eax, byte ptr [esi + 0x50]
0x00507034: mov      dword ptr [esp + 0xc], edx
0x00507038: mov      edx, dword ptr [0xb1bbb4]
0x0050703E: push     0
0x00507040: push     edx
0x00507041: mov      dword ptr [esp + 0x18], eax
0x00507045: call     0x52d190
0x0050704A: add      esp, 0xc
0x0050704D: pop      esi
0x0050704E: add      esp, 0xc
0x00507051: ret      
0x00507052: int3     
0x00507053: int3     
0x00507054: int3     
0x00507055: int3     
0x00507056: int3     
0x00507057: int3     
0x00507058: int3     
0x00507059: int3     
0x0050705A: int3     
0x0050705B: int3     
0x0050705C: int3     
0x0050705D: int3     
0x0050705E: int3     
0x0050705F: int3     

--- faRotasticPlaySoundEmitter::execute @ 0x00507060 ---
0x00507060: mov      eax, dword ptr [0x95fb60] ; [str="\Jl#RotasticMasterSoundManagerInGame"]
0x00507065: push     esi
0x00507066: mov      esi, dword ptr [esp + 8]
0x0050706A: mov      ecx, dword ptr [esi + 8]
0x0050706D: push     edi
0x0050706E: push     0
0x00507070: push     0
0x00507072: push     eax
0x00507073: call     0x7cd3c0
0x00507078: movzx    ecx, byte ptr [eax + 1]
0x0050707C: mov      edx, dword ptr [eax + 4]
0x0050707F: mov      eax, dword ptr [edx + 0x14]
0x00507082: lea      ecx, [ecx + ecx*8]
0x00507085: lea      eax, [eax + ecx*4]
0x00507088: mov      ecx, 0x1f
0x0050708D: cmp      byte ptr [eax + 0x14], cl
0x00507090: jne      0x507097
0x00507092: mov      edi, dword ptr [eax + 4]
0x00507095: jmp      0x5070c9
0x00507097: cmp      byte ptr [eax + 0x15], cl
0x0050709A: jne      0x5070a1
0x0050709C: mov      edi, dword ptr [eax + 8]
0x0050709F: jmp      0x5070c9
0x005070A1: cmp      byte ptr [eax + 0x16], cl
0x005070A4: jne      0x5070ab
0x005070A6: mov      edi, dword ptr [eax + 0xc]
0x005070A9: jmp      0x5070c9
0x005070AB: cmp      byte ptr [eax + 0x17], cl
0x005070AE: jne      0x5070b5
0x005070B0: mov      edi, dword ptr [eax + 0x10]
0x005070B3: jmp      0x5070c9
0x005070B5: mov      eax, dword ptr [eax]
0x005070B7: test     eax, eax
0x005070B9: je       0x5070c7
0x005070BB: push     ecx
0x005070BC: mov      ecx, eax
0x005070BE: call     0x461400
0x005070C3: mov      edi, eax
0x005070C5: jmp      0x5070c9
0x005070C7: xor      edi, edi
0x005070C9: mov      ecx, dword ptr [esi + 0x10]
0x005070CC: call     0x80a790
0x005070D1: push     eax
0x005070D2: lea      ecx, [esi + 0x4c]
0x005070D5: call     0x499af0
0x005070DA: test     eax, eax
0x005070DC: je       0x507135
0x005070DE: movzx    ecx, byte ptr [eax + 1]
0x005070E2: mov      edx, dword ptr [eax + 4]
0x005070E5: mov      eax, dword ptr [edx + 0x14]
0x005070E8: lea      ecx, [ecx + ecx*8]
0x005070EB: lea      eax, [eax + ecx*4]
0x005070EE: mov      ecx, 0x2b
0x005070F3: cmp      byte ptr [eax + 0x14], cl
0x005070F6: jne      0x5070fd
0x005070F8: mov      eax, dword ptr [eax + 4]
0x005070FB: jmp      0x507129
0x005070FD: cmp      byte ptr [eax + 0x15], cl
0x00507100: jne      0x507107
0x00507102: mov      eax, dword ptr [eax + 8]
0x00507105: jmp      0x507129
0x00507107: cmp      byte ptr [eax + 0x16], cl
0x0050710A: jne      0x507111
0x0050710C: mov      eax, dword ptr [eax + 0xc]
0x0050710F: jmp      0x507129
0x00507111: cmp      byte ptr [eax + 0x17], cl
0x00507114: jne      0x50711b
0x00507116: mov      eax, dword ptr [eax + 0x10]
0x00507119: jmp      0x507129
0x0050711B: mov      eax, dword ptr [eax]
0x0050711D: test     eax, eax
0x0050711F: je       0x507135
0x00507121: push     ecx
0x00507122: mov      ecx, eax
0x00507124: call     0x461400
0x00507129: test     eax, eax
0x0050712B: je       0x507135
0x0050712D: push     eax
0x0050712E: mov      ecx, edi
0x00507130: call     0x563440
0x00507135: pop      edi
0x00507136: pop      esi
0x00507137: ret      
0x00507138: int3     
0x00507139: int3     
0x0050713A: int3     
0x0050713B: int3     
0x0050713C: int3     
0x0050713D: int3     
0x0050713E: int3     
0x0050713F: int3     

--- faRotasticPlaySoundPositional::execute @ 0x00507140 ---
0x00507140: push     esi
0x00507141: mov      esi, dword ptr [esp + 8]
0x00507145: mov      ecx, dword ptr [esi + 0x10]
0x00507148: push     edi
0x00507149: call     0x80a790
0x0050714E: movzx    ecx, byte ptr [eax + 1]
0x00507152: mov      edx, dword ptr [eax + 4]
0x00507155: mov      eax, dword ptr [edx + 0x28]
0x00507158: mov      ecx, dword ptr [eax + ecx*4]
0x0050715B: mov      edx, dword ptr [0x95fb60] ; [str="\Jl#RotasticMasterSoundManagerInGame"]
0x00507161: mov      ecx, dword ptr [ecx + 0x114]
0x00507167: push     0
0x00507169: push     0
0x0050716B: push     edx
0x0050716C: call     0x7cd3c0
0x00507171: movzx    ecx, byte ptr [eax + 1]
0x00507175: mov      edx, dword ptr [eax + 4]
0x00507178: mov      eax, dword ptr [edx + 0x14]
0x0050717B: lea      ecx, [ecx + ecx*8]
0x0050717E: lea      eax, [eax + ecx*4]
0x00507181: mov      ecx, 0x1f
0x00507186: cmp      byte ptr [eax + 0x14], cl
0x00507189: jne      0x507190
0x0050718B: mov      edi, dword ptr [eax + 4]
0x0050718E: jmp      0x5071c2
0x00507190: cmp      byte ptr [eax + 0x15], cl
0x00507193: jne      0x50719a
0x00507195: mov      edi, dword ptr [eax + 8]
0x00507198: jmp      0x5071c2
0x0050719A: cmp      byte ptr [eax + 0x16], cl
0x0050719D: jne      0x5071a4
0x0050719F: mov      edi, dword ptr [eax + 0xc]
0x005071A2: jmp      0x5071c2
0x005071A4: cmp      byte ptr [eax + 0x17], cl
0x005071A7: jne      0x5071ae
0x005071A9: mov      edi, dword ptr [eax + 0x10]
0x005071AC: jmp      0x5071c2
0x005071AE: mov      eax, dword ptr [eax]
0x005071B0: test     eax, eax
0x005071B2: je       0x5071c0
0x005071B4: push     ecx
0x005071B5: mov      ecx, eax
0x005071B7: call     0x461400
0x005071BC: mov      edi, eax
0x005071BE: jmp      0x5071c2
0x005071C0: xor      edi, edi
0x005071C2: mov      ecx, dword ptr [esi + 0x10]
0x005071C5: call     0x80a790
0x005071CA: push     eax
0x005071CB: lea      ecx, [esi + 0x54]
0x005071CE: call     0x499af0
0x005071D3: test     eax, eax
0x005071D5: je       0x507213
0x005071D7: fld      dword ptr [esi + 0x68]
0x005071DA: sub      esp, 8
0x005071DD: cmp      byte ptr [esi + 0x61], 0
0x005071E1: fstp     dword ptr [esp + 4]
0x005071E5: fld      dword ptr [esi + 0x64]
0x005071E8: setne    cl
0x005071EB: fstp     dword ptr [esp]
0x005071EE: movzx    edx, cl
0x005071F1: movzx    ecx, byte ptr [eax + 1]
0x005071F5: push     edx
0x005071F6: mov      edx, dword ptr [eax + 4]
0x005071F9: mov      eax, dword ptr [edx + 0x1c]
0x005071FC: mov      ecx, dword ptr [eax + ecx*4]
0x005071FF: movzx    edx, byte ptr [esi + 0x60]
0x00507203: mov      eax, dword ptr [esi + 0x50]
0x00507206: add      ecx, 0xc
0x00507209: push     ecx
0x0050720A: push     edx
0x0050720B: push     eax
0x0050720C: mov      ecx, edi
0x0050720E: call     0x563730
0x00507213: pop      edi
0x00507214: pop      esi
0x00507215: ret      
0x00507216: int3     
0x00507217: int3     
0x00507218: int3     
0x00507219: int3     
0x0050721A: int3     
0x0050721B: int3     
0x0050721C: int3     
0x0050721D: int3     
0x0050721E: int3     
0x0050721F: int3     

--- faRotasticPlaySoundEmitterPositional::execute @ 0x00507220 ---
0x00507220: mov      eax, dword ptr [0x95fb60] ; [str="\Jl#RotasticMasterSoundManagerInGame"]
0x00507225: sub      esp, 0x10
0x00507228: push     ebx
0x00507229: mov      ebx, dword ptr [esp + 0x18]
0x0050722D: mov      ecx, dword ptr [ebx + 8]
0x00507230: push     ebp
0x00507231: push     esi
0x00507232: push     0
0x00507234: push     0
0x00507236: push     eax
0x00507237: call     0x7cd3c0
0x0050723C: movzx    ecx, byte ptr [eax + 1]
0x00507240: mov      edx, dword ptr [eax + 4]
0x00507243: mov      eax, dword ptr [edx + 0x14]
0x00507246: lea      ecx, [ecx + ecx*8]
0x00507249: lea      eax, [eax + ecx*4]
0x0050724C: mov      ecx, 0x1f
0x00507251: cmp      byte ptr [eax + 0x14], cl
0x00507254: jne      0x50725b
0x00507256: mov      ebp, dword ptr [eax + 4]
0x00507259: jmp      0x50728d
0x0050725B: cmp      byte ptr [eax + 0x15], cl
0x0050725E: jne      0x507265
0x00507260: mov      ebp, dword ptr [eax + 8]
0x00507263: jmp      0x50728d
0x00507265: cmp      byte ptr [eax + 0x16], cl
0x00507268: jne      0x50726f
0x0050726A: mov      ebp, dword ptr [eax + 0xc]
0x0050726D: jmp      0x50728d
0x0050726F: cmp      byte ptr [eax + 0x17], cl
0x00507272: jne      0x507279
0x00507274: mov      ebp, dword ptr [eax + 0x10]
0x00507277: jmp      0x50728d
0x00507279: mov      eax, dword ptr [eax]
0x0050727B: test     eax, eax
0x0050727D: je       0x50728b
0x0050727F: push     ecx
0x00507280: mov      ecx, eax
0x00507282: call     0x461400
0x00507287: mov      ebp, eax
0x00507289: jmp      0x50728d
0x0050728B: xor      ebp, ebp
0x0050728D: mov      ecx, dword ptr [ebx + 0x10]
0x00507290: call     0x80a790
0x00507295: push     eax
0x00507296: lea      ecx, [ebx + 0x4c]
0x00507299: call     0x499af0
0x0050729E: mov      esi, eax
0x005072A0: test     esi, esi
0x005072A2: je       0x5073a6
0x005072A8: movzx    eax, byte ptr [esi + 1]
0x005072AC: mov      edx, dword ptr [esi + 4]
0x005072AF: lea      ecx, [eax + eax*8]
0x005072B2: mov      eax, dword ptr [edx + 0x14]
0x005072B5: lea      eax, [eax + ecx*4]
0x005072B8: mov      ecx, 0x2b
0x005072BD: push     edi
0x005072BE: cmp      byte ptr [eax + 0x14], cl
0x005072C1: jne      0x5072c8
0x005072C3: mov      edi, dword ptr [eax + 4]
0x005072C6: jmp      0x5072fa
0x005072C8: cmp      byte ptr [eax + 0x15], cl
0x005072CB: jne      0x5072d2
0x005072CD: mov      edi, dword ptr [eax + 8]
0x005072D0: jmp      0x5072fa
0x005072D2: cmp      byte ptr [eax + 0x16], cl
0x005072D5: jne      0x5072dc
0x005072D7: mov      edi, dword ptr [eax + 0xc]
0x005072DA: jmp      0x5072fa
0x005072DC: cmp      byte ptr [eax + 0x17], cl
0x005072DF: jne      0x5072e6
0x005072E1: mov      edi, dword ptr [eax + 0x10]
0x005072E4: jmp      0x5072fa
0x005072E6: mov      eax, dword ptr [eax]
0x005072E8: test     eax, eax
0x005072EA: je       0x5073a5
0x005072F0: push     ecx
0x005072F1: mov      ecx, eax
0x005072F3: call     0x461400
0x005072F8: mov      edi, eax
0x005072FA: test     edi, edi
0x005072FC: je       0x5073a5
0x00507302: push     0
0x00507304: lea      ecx, [ebx + 0x58]
0x00507307: call     0x499af0
0x0050730C: test     eax, eax
0x0050730E: je       0x507345
0x00507310: movzx    ecx, byte ptr [eax + 1]
0x00507314: mov      eax, dword ptr [eax + 4]
0x00507317: mov      edx, dword ptr [eax + 0x1c]
0x0050731A: add      ecx, ecx
0x0050731C: add      ecx, ecx
0x0050731E: mov      edx, dword ptr [ecx + edx]
0x00507321: test     edx, edx
0x00507323: je       0x50737a
0x00507325: mov      esi, dword ptr [eax + 0xc]
0x00507328: test     dword ptr [ecx + esi], 0x200
0x0050732F: je       0x50737a
0x00507331: test     byte ptr [edx + 8], 8
0x00507335: je       0x50737a
0x00507337: mov      eax, dword ptr [eax + 0x20]
0x0050733A: add      eax, ecx
0x0050733C: cmp      dword ptr [eax], 0
0x0050733F: je       0x50737a
0x00507341: mov      eax, dword ptr [eax]
0x00507343: jmp      0x50737c
0x00507345: movzx    eax, byte ptr [esi + 1]
0x00507349: mov      ecx, dword ptr [esi + 4]
0x0050734C: mov      edx, dword ptr [ecx + 0x1c]
0x0050734F: add      eax, eax
0x00507351: add      eax, eax
0x00507353: mov      edx, dword ptr [eax + edx]
0x00507356: test     edx, edx
0x00507358: je       0x50737a
0x0050735A: mov      esi, dword ptr [ecx + 0xc]
0x0050735D: test     dword ptr [eax + esi], 0x200
0x00507364: je       0x50737a
0x00507366: test     byte ptr [edx + 8], 8
0x0050736A: je       0x50737a
0x0050736C: mov      ecx, dword ptr [ecx + 0x20]
0x0050736F: add      eax, ecx
0x00507371: cmp      dword ptr [eax], 0
0x00507374: je       0x50737a
0x00507376: mov      eax, dword ptr [eax]
0x00507378: jmp      0x50737c
0x0050737A: mov      eax, edx
0x0050737C: fld      dword ptr [eax + 0xc]
0x0050737F: lea      edx, [esp + 0x10]
0x00507383: fstp     dword ptr [esp + 0x10]
0x00507387: push     edx
0x00507388: fld      dword ptr [eax + 0x10]
0x0050738B: push     edi
0x0050738C: fstp     dword ptr [esp + 0x1c]
0x00507390: mov      ecx, ebp
0x00507392: fld      dword ptr [eax + 0x14]
0x00507395: fstp     dword ptr [esp + 0x20]
0x00507399: fld      dword ptr [eax + 0x18]
0x0050739C: fstp     dword ptr [esp + 0x24]
0x005073A0: call     0x5635b0
0x005073A5: pop      edi
0x005073A6: pop      esi
0x005073A7: pop      ebp
0x005073A8: pop      ebx
0x005073A9: add      esp, 0x10
0x005073AC: ret      
0x005073AD: int3     
0x005073AE: int3     
0x005073AF: int3     

--- faRotasticStartSoundPositional::execute @ 0x005073B0 ---
0x005073B0: mov      eax, dword ptr [0x95fb60] ; [str="\Jl#RotasticMasterSoundManagerInGame"]
0x005073B5: push     esi
0x005073B6: mov      esi, dword ptr [esp + 8]
0x005073BA: mov      ecx, dword ptr [esi + 8]
0x005073BD: push     edi
0x005073BE: push     0
0x005073C0: push     0
0x005073C2: push     eax
0x005073C3: call     0x7cd3c0
0x005073C8: movzx    ecx, byte ptr [eax + 1]
0x005073CC: mov      edx, dword ptr [eax + 4]
0x005073CF: mov      eax, dword ptr [edx + 0x14]
0x005073D2: lea      ecx, [ecx + ecx*8]
0x005073D5: lea      eax, [eax + ecx*4]
0x005073D8: mov      ecx, 0x1f
0x005073DD: cmp      byte ptr [eax + 0x14], cl
0x005073E0: jne      0x5073e7
0x005073E2: mov      edi, dword ptr [eax + 4]
0x005073E5: jmp      0x507419
0x005073E7: cmp      byte ptr [eax + 0x15], cl
0x005073EA: jne      0x5073f1
0x005073EC: mov      edi, dword ptr [eax + 8]
0x005073EF: jmp      0x507419
0x005073F1: cmp      byte ptr [eax + 0x16], cl
0x005073F4: jne      0x5073fb
0x005073F6: mov      edi, dword ptr [eax + 0xc]
0x005073F9: jmp      0x507419
0x005073FB: cmp      byte ptr [eax + 0x17], cl
0x005073FE: jne      0x507405
0x00507400: mov      edi, dword ptr [eax + 0x10]
0x00507403: jmp      0x507419
0x00507405: mov      eax, dword ptr [eax]
0x00507407: test     eax, eax
0x00507409: je       0x507417
0x0050740B: push     ecx
0x0050740C: mov      ecx, eax
0x0050740E: call     0x461400
0x00507413: mov      edi, eax
0x00507415: jmp      0x507419
0x00507417: xor      edi, edi
0x00507419: mov      ecx, dword ptr [esi + 0x10]
0x0050741C: call     0x80a790
0x00507421: push     eax
0x00507422: lea      ecx, [esi + 0x54]
0x00507425: call     0x499af0
0x0050742A: test     eax, eax
0x0050742C: je       0x5074b6
0x00507432: movzx    ecx, byte ptr [eax + 1]
0x00507436: mov      eax, dword ptr [eax + 4]
0x00507439: mov      edx, dword ptr [eax + 0x1c]
0x0050743C: add      ecx, ecx
0x0050743E: add      ecx, ecx
0x00507440: mov      edx, dword ptr [ecx + edx]
0x00507443: test     edx, edx
0x00507445: je       0x507469
0x00507447: push     ebx
0x00507448: mov      ebx, dword ptr [eax + 0xc]
0x0050744B: test     dword ptr [ecx + ebx], 0x200
0x00507452: pop      ebx
0x00507453: je       0x507469
0x00507455: test     byte ptr [edx + 8], 8
0x00507459: je       0x507469
0x0050745B: mov      eax, dword ptr [eax + 0x20]
0x0050745E: add      eax, ecx
0x00507460: cmp      dword ptr [eax], 0
0x00507463: je       0x507469
0x00507465: mov      eax, dword ptr [eax]
0x00507467: jmp      0x50746b
0x00507469: mov      eax, edx
0x0050746B: mov      ecx, dword ptr [esi + 0x74]
0x0050746E: fldz     
0x00507470: push     ecx
0x00507471: sub      esp, 0x18
0x00507474: cmp      byte ptr [esi + 0x61], 0
0x00507478: fst      dword ptr [esp + 0x14]
0x0050747C: fstp     dword ptr [esp + 0x10]
0x00507480: fld      dword ptr [esi + 0x70]
0x00507483: setne    dl
0x00507486: fstp     dword ptr [esp + 0xc]
0x0050748A: movzx    ecx, dl
0x0050748D: fld      dword ptr [esi + 0x6c]
0x00507490: movzx    edx, byte ptr [esi + 0x60]
0x00507494: fstp     dword ptr [esp + 8]
0x00507498: fld      dword ptr [esi + 0x68]
0x0050749B: fstp     dword ptr [esp + 4]
0x0050749F: add      eax, 0xc
0x005074A2: fld      dword ptr [esi + 0x64]
0x005074A5: fstp     dword ptr [esp]
0x005074A8: push     ecx
0x005074A9: push     eax
0x005074AA: mov      eax, dword ptr [esi + 0x50]
0x005074AD: push     edx
0x005074AE: push     eax
0x005074AF: mov      ecx, edi
0x005074B1: call     0x563990
0x005074B6: pop      edi
0x005074B7: pop      esi
0x005074B8: ret      
0x005074B9: int3     
0x005074BA: int3     
0x005074BB: int3     
0x005074BC: int3     
0x005074BD: int3     
0x005074BE: int3     
0x005074BF: int3     

--- faRotasticStartSoundEmitterPositional::execute @ 0x005074C0 ---
0x005074C0: mov      eax, dword ptr [0x95fb60] ; [str="\Jl#RotasticMasterSoundManagerInGame"]
0x005074C5: push     ebx
0x005074C6: mov      ebx, dword ptr [esp + 8]
0x005074CA: mov      ecx, dword ptr [ebx + 8]
0x005074CD: push     esi
0x005074CE: push     edi
0x005074CF: push     0
0x005074D1: push     0
0x005074D3: push     eax
0x005074D4: call     0x7cd3c0
0x005074D9: movzx    ecx, byte ptr [eax + 1]
0x005074DD: mov      edx, dword ptr [eax + 4]
0x005074E0: mov      eax, dword ptr [edx + 0x14]
0x005074E3: lea      ecx, [ecx + ecx*8]
0x005074E6: lea      eax, [eax + ecx*4]
0x005074E9: mov      ecx, 0x1f
0x005074EE: cmp      byte ptr [eax + 0x14], cl
0x005074F1: jne      0x5074f8
0x005074F3: mov      edi, dword ptr [eax + 4]
0x005074F6: jmp      0x50752a
0x005074F8: cmp      byte ptr [eax + 0x15], cl
0x005074FB: jne      0x507502
0x005074FD: mov      edi, dword ptr [eax + 8]
0x00507500: jmp      0x50752a
0x00507502: cmp      byte ptr [eax + 0x16], cl
0x00507505: jne      0x50750c
0x00507507: mov      edi, dword ptr [eax + 0xc]
0x0050750A: jmp      0x50752a
0x0050750C: cmp      byte ptr [eax + 0x17], cl
0x0050750F: jne      0x507516
0x00507511: mov      edi, dword ptr [eax + 0x10]
0x00507514: jmp      0x50752a
0x00507516: mov      eax, dword ptr [eax]
0x00507518: test     eax, eax
0x0050751A: je       0x507528
0x0050751C: push     ecx
0x0050751D: mov      ecx, eax
0x0050751F: call     0x461400
0x00507524: mov      edi, eax
0x00507526: jmp      0x50752a
0x00507528: xor      edi, edi
0x0050752A: mov      ecx, dword ptr [ebx + 0x10]
0x0050752D: call     0x80a790
0x00507532: push     eax
0x00507533: lea      ecx, [ebx + 0x4c]
0x00507536: call     0x499af0
0x0050753B: mov      esi, eax
0x0050753D: test     esi, esi
0x0050753F: je       0x5075e4
0x00507545: movzx    eax, byte ptr [esi + 1]
0x00507549: mov      edx, dword ptr [esi + 4]
0x0050754C: lea      ecx, [eax + eax*8]
0x0050754F: mov      eax, dword ptr [edx + 0x14]
0x00507552: lea      eax, [eax + ecx*4]
0x00507555: mov      ecx, 0x2b
0x0050755A: cmp      byte ptr [eax + 0x14], cl
0x0050755D: jne      0x507564
0x0050755F: mov      eax, dword ptr [eax + 4]
0x00507562: jmp      0x507590
0x00507564: cmp      byte ptr [eax + 0x15], cl
0x00507567: jne      0x50756e
0x00507569: mov      eax, dword ptr [eax + 8]
0x0050756C: jmp      0x507590
0x0050756E: cmp      byte ptr [eax + 0x16], cl
0x00507571: jne      0x507578
0x00507573: mov      eax, dword ptr [eax + 0xc]
0x00507576: jmp      0x507590
0x00507578: cmp      byte ptr [eax + 0x17], cl
0x0050757B: jne      0x507582
0x0050757D: mov      eax, dword ptr [eax + 0x10]
0x00507580: jmp      0x507590
0x00507582: mov      eax, dword ptr [eax]
0x00507584: test     eax, eax
0x00507586: je       0x5075e4
0x00507588: push     ecx
0x00507589: mov      ecx, eax
0x0050758B: call     0x461400
0x00507590: test     eax, eax
0x00507592: je       0x5075e4
0x00507594: movzx    ecx, byte ptr [esi + 1]
0x00507598: mov      edx, dword ptr [esi + 4]
0x0050759B: mov      esi, dword ptr [edx + 0x1c]
0x0050759E: add      ecx, ecx
0x005075A0: add      ecx, ecx
0x005075A2: mov      esi, dword ptr [ecx + esi]
0x005075A5: test     esi, esi
0x005075A7: je       0x5075cb
0x005075A9: push     ebp
0x005075AA: mov      ebp, dword ptr [edx + 0xc]
0x005075AD: test     dword ptr [ecx + ebp], 0x200
0x005075B4: pop      ebp
0x005075B5: je       0x5075cb
0x005075B7: test     byte ptr [esi + 8], 8
0x005075BB: je       0x5075cb
0x005075BD: mov      edx, dword ptr [edx + 0x20]
0x005075C0: add      ecx, edx
0x005075C2: cmp      dword ptr [ecx], 0
0x005075C5: je       0x5075cb
0x005075C7: mov      ecx, dword ptr [ecx]
0x005075C9: jmp      0x5075cd
0x005075CB: mov      ecx, esi
0x005075CD: mov      edx, dword ptr [ebx + 0x58]
0x005075D0: fld      dword ptr [ebx + 0x5c]
0x005075D3: push     edx
0x005075D4: push     ecx
0x005075D5: add      ecx, 0xc
0x005075D8: fstp     dword ptr [esp]
0x005075DB: push     ecx
0x005075DC: push     eax
0x005075DD: mov      ecx, edi
0x005075DF: call     0x5637e0
0x005075E4: pop      edi
0x005075E5: pop      esi
0x005075E6: pop      ebx
0x005075E7: ret      
0x005075E8: int3     
0x005075E9: int3     
0x005075EA: int3     
0x005075EB: int3     
0x005075EC: int3     
0x005075ED: int3     
0x005075EE: int3     
0x005075EF: int3     

--- faRotasticStopSoundEmitter::execute @ 0x005075F0 ---
0x005075F0: push     esi
0x005075F1: mov      esi, dword ptr [esp + 8]
0x005075F5: mov      ecx, dword ptr [esi + 0x10]
0x005075F8: call     0x80a790
0x005075FD: push     eax
0x005075FE: lea      ecx, [esi + 0x4c]
0x00507601: call     0x499af0
0x00507606: pop      esi
0x00507607: test     eax, eax
0x00507609: je       0x507668
0x0050760B: movzx    ecx, byte ptr [eax + 1]
0x0050760F: mov      edx, dword ptr [eax + 4]
0x00507612: mov      eax, dword ptr [edx + 0x14]
0x00507615: lea      ecx, [ecx + ecx*8]
0x00507618: lea      eax, [eax + ecx*4]
0x0050761B: mov      ecx, 0x2b
0x00507620: cmp      byte ptr [eax + 0x14], cl
0x00507623: jne      0x50762a
0x00507625: mov      eax, dword ptr [eax + 4]
0x00507628: jmp      0x507656
0x0050762A: cmp      byte ptr [eax + 0x15], cl
0x0050762D: jne      0x507634
0x0050762F: mov      eax, dword ptr [eax + 8]
0x00507632: jmp      0x507656
0x00507634: cmp      byte ptr [eax + 0x16], cl
0x00507637: jne      0x50763e
0x00507639: mov      eax, dword ptr [eax + 0xc]
0x0050763C: jmp      0x507656
0x0050763E: cmp      byte ptr [eax + 0x17], cl
0x00507641: jne      0x507648
0x00507643: mov      eax, dword ptr [eax + 0x10]
0x00507646: jmp      0x507656
0x00507648: mov      eax, dword ptr [eax]
0x0050764A: test     eax, eax
0x0050764C: je       0x507668
0x0050764E: push     ecx
0x0050764F: mov      ecx, eax
0x00507651: call     0x461400
0x00507656: test     eax, eax
0x00507658: je       0x507668
0x0050765A: mov      ecx, dword ptr [0xb28098]
0x00507660: push     0
0x00507662: push     eax
0x00507663: call     0x563cb0
0x00507668: ret      
0x00507669: int3     
0x0050766A: int3     
0x0050766B: int3     
0x0050766C: int3     
0x0050766D: int3     
0x0050766E: int3     
0x0050766F: int3     
0x00507670: mov      eax, dword ptr [esp + 4]
0x00507674: fld      dword ptr [esp + 8]
0x00507678: fstp     dword ptr [eax]
0x0050767A: fld      dword ptr [esp + 0xc]
0x0050767E: fstp     dword ptr [eax + 4]
0x00507681: fld      dword ptr [esp + 0x10]
0x00507685: fstp     dword ptr [eax + 8]
0x00507688: fld      dword ptr [esp + 0x14]
0x0050768C: fstp     dword ptr [eax + 0xc]
0x0050768F: ret      
0x00507690: mov      eax, dword ptr [esp + 0xc]
0x00507694: mov      ecx, dword ptr [esp + 8]
0x00507698: push     eax
0x00507699: mov      eax, dword ptr [esp + 8]
0x0050769D: movzx    edx, byte ptr [eax + 0xc]
0x005076A1: mov      eax, dword ptr [eax]
0x005076A3: push     ecx
0x005076A4: push     edx
0x005076A5: push     eax
0x005076A6: call     0x648070
0x005076AB: add      esp, 0x10
0x005076AE: ret      
0x005076AF: int3     
0x005076B0: mov      eax, dword ptr [esp + 0xc]
0x005076B4: mov      ecx, dword ptr [esp + 8]
0x005076B8: push     eax
0x005076B9: mov      eax, dword ptr [esp + 8]
0x005076BD: movzx    edx, byte ptr [eax + 0xc]
0x005076C1: mov      eax, dword ptr [eax]
0x005076C3: push     ecx
0x005076C4: push     edx
0x005076C5: push     eax
0x005076C6: call     0x648130
0x005076CB: add      esp, 0x10
0x005076CE: ret      
0x005076CF: int3     

--- faRotasticMaterialAlterAlpha::execute @ 0x005076D0 ---
0x005076D0: push     ebx
0x005076D1: push     esi
0x005076D2: push     edi
0x005076D3: mov      edi, dword ptr [esp + 0x10]
0x005076D7: lea      esi, [edi + 0x54]
0x005076DA: mov      ecx, esi
0x005076DC: call     0x7bfe00
0x005076E1: test     eax, eax
0x005076E3: je       0x50770c
0x005076E5: mov      ecx, esi
0x005076E7: call     0x7bfe00
0x005076EC: test     eax, eax
0x005076EE: je       0x50772b
0x005076F0: movzx    eax, byte ptr [esi]
0x005076F3: mov      ecx, dword ptr [0xb78a28]
0x005076F9: lea      eax, [eax + eax*2]
0x005076FC: mov      edx, dword ptr [ecx + eax*4 + 8]
0x00507700: movzx    eax, byte ptr [esi + 1]
0x00507704: mov      ecx, dword ptr [edx + 0x78]
0x00507707: mov      ebx, dword ptr [ecx + eax*4]
0x0050770A: jmp      0x50772d
0x0050770C: mov      ecx, dword ptr [0xb79350]
0x00507712: test     ecx, ecx
0x00507714: je       0x50772b
0x00507716: mov      edx, dword ptr [edi + 0x50]
0x00507719: mov      eax, dword ptr [edi + 0x4c]
0x0050771C: push     edx
0x0050771D: push     0
0x0050771F: push     0
0x00507721: push     eax
0x00507722: call     0x7cd120
0x00507727: mov      ebx, eax
0x00507729: jmp      0x50772d
0x0050772B: xor      ebx, ebx
0x0050772D: push     ebx
0x0050772E: call     0x568850
0x00507733: add      esp, 4
0x00507736: test     ebx, ebx
0x00507738: je       0x507793
0x0050773A: test     eax, eax
0x0050773C: je       0x507793
0x0050773E: push     ebp
0x0050773F: lea      ebp, [eax + 0xdc]
0x00507745: push     0
0x00507747: mov      ecx, ebp
0x00507749: call     0x568950
0x0050774E: mov      esi, eax
0x00507750: test     esi, esi
0x00507752: je       0x507792
0x00507754: mov      dword ptr [esi + 4], ebx
0x00507757: fld      dword ptr [edi + 0x58]
0x0050775A: fstp     dword ptr [esi + 0x28]
0x0050775D: push     esi
0x0050775E: fld      dword ptr [edi + 0x5c]
0x00507761: fstp     dword ptr [esi + 8]
0x00507764: mov      cl, byte ptr [edi + 0x68]
0x00507767: fldz     
0x00507769: mov      byte ptr [esi + 0x14], cl
0x0050776C: mov      dl, byte ptr [edi + 0x69]
0x0050776F: mov      byte ptr [esi + 0x15], dl
0x00507772: mov      eax, dword ptr [edi + 0x60]
0x00507775: mov      dword ptr [esi + 0x20], eax
0x00507778: mov      ecx, dword ptr [edi + 0x64]
0x0050777B: fstp     dword ptr [esi + 0xc]
0x0050777E: mov      dword ptr [esi + 0x1c], ecx
0x00507781: mov      ecx, ebp
0x00507783: mov      dword ptr [esi + 0x10], 0
0x0050778A: call     0x568e90
0x0050778F: fstp     dword ptr [esi + 0x24]
0x00507792: pop      ebp
0x00507793: pop      edi
0x00507794: pop      esi
0x00507795: pop      ebx
0x00507796: ret      
0x00507797: int3     
0x00507798: int3     
0x00507799: int3     
0x0050779A: int3     
0x0050779B: int3     
0x0050779C: int3     
0x0050779D: int3     
0x0050779E: int3     
0x0050779F: int3     

--- faRotasticMaterialTranslateUV::execute @ 0x005077A0 ---
0x005077A0: push     ebx
0x005077A1: push     esi
0x005077A2: push     edi
0x005077A3: mov      edi, dword ptr [esp + 0x10]
0x005077A7: lea      esi, [edi + 0x54]
0x005077AA: mov      ecx, esi
0x005077AC: call     0x7bfe00
0x005077B1: test     eax, eax
0x005077B3: je       0x5077dc
0x005077B5: mov      ecx, esi
0x005077B7: call     0x7bfe00
0x005077BC: test     eax, eax
0x005077BE: je       0x5077fb
0x005077C0: movzx    eax, byte ptr [esi]
0x005077C3: mov      ecx, dword ptr [0xb78a28]
0x005077C9: lea      eax, [eax + eax*2]
0x005077CC: mov      edx, dword ptr [ecx + eax*4 + 8]
0x005077D0: movzx    eax, byte ptr [esi + 1]
0x005077D4: mov      ecx, dword ptr [edx + 0x78]
0x005077D7: mov      ebx, dword ptr [ecx + eax*4]
0x005077DA: jmp      0x5077fd
0x005077DC: mov      ecx, dword ptr [0xb79350]
0x005077E2: test     ecx, ecx
0x005077E4: je       0x5077fb
0x005077E6: mov      edx, dword ptr [edi + 0x50]
0x005077E9: mov      eax, dword ptr [edi + 0x4c]
0x005077EC: push     edx
0x005077ED: push     0
0x005077EF: push     0
0x005077F1: push     eax
0x005077F2: call     0x7cd120
0x005077F7: mov      ebx, eax
0x005077F9: jmp      0x5077fd
0x005077FB: xor      ebx, ebx
0x005077FD: push     ebx
0x005077FE: call     0x568850
0x00507803: add      esp, 4
0x00507806: test     ebx, ebx
0x00507808: je       0x507869
0x0050780A: test     eax, eax
0x0050780C: je       0x507869
0x0050780E: push     ebp
0x0050780F: lea      ebp, [eax + 0xdc]
0x00507815: push     1
0x00507817: mov      ecx, ebp
0x00507819: call     0x568950
0x0050781E: mov      esi, eax
0x00507820: test     esi, esi
0x00507822: je       0x507868
0x00507824: mov      dword ptr [esi + 4], ebx
0x00507827: fld      dword ptr [edi + 0x58]
0x0050782A: fstp     dword ptr [esi + 0x2c]
0x0050782D: push     esi
0x0050782E: fld      dword ptr [edi + 0x5c]
0x00507831: fstp     dword ptr [esi + 0x30]
0x00507834: fld      dword ptr [edi + 0x60]
0x00507837: fstp     dword ptr [esi + 8]
0x0050783A: mov      cl, byte ptr [edi + 0x6c]
0x0050783D: fldz     
0x0050783F: mov      byte ptr [esi + 0x14], cl
0x00507842: mov      dl, byte ptr [edi + 0x6d]
0x00507845: mov      byte ptr [esi + 0x15], dl
0x00507848: mov      eax, dword ptr [edi + 0x64]
0x0050784B: mov      dword ptr [esi + 0x20], eax
0x0050784E: mov      ecx, dword ptr [edi + 0x68]
0x00507851: fstp     dword ptr [esi + 0xc]
0x00507854: mov      dword ptr [esi + 0x1c], ecx
0x00507857: mov      ecx, ebp
0x00507859: mov      dword ptr [esi + 0x10], 0
0x00507860: call     0x568e90
0x00507865: fstp     dword ptr [esi + 0x24]
0x00507868: pop      ebp
0x00507869: pop      edi
0x0050786A: pop      esi
0x0050786B: pop      ebx
0x0050786C: ret      
0x0050786D: int3     
0x0050786E: int3     
0x0050786F: int3     

--- faRotasticMaterialUpdate::execute @ 0x00507870 ---
0x00507870: push     esi
0x00507871: push     edi
0x00507872: mov      edi, dword ptr [esp + 0xc]
0x00507876: lea      esi, [edi + 0x54]
0x00507879: mov      ecx, esi
0x0050787B: call     0x7bfe00
0x00507880: test     eax, eax
0x00507882: je       0x5078ab
0x00507884: mov      ecx, esi
0x00507886: call     0x7bfe00
0x0050788B: test     eax, eax
0x0050788D: je       0x5078ca
0x0050788F: movzx    eax, byte ptr [esi]
0x00507892: mov      ecx, dword ptr [0xb78a28]
0x00507898: lea      eax, [eax + eax*2]
0x0050789B: mov      edx, dword ptr [ecx + eax*4 + 8]
0x0050789F: movzx    eax, byte ptr [esi + 1]
0x005078A3: mov      ecx, dword ptr [edx + 0x78]
0x005078A6: mov      esi, dword ptr [ecx + eax*4]
0x005078A9: jmp      0x5078cc
0x005078AB: mov      ecx, dword ptr [0xb79350]
0x005078B1: test     ecx, ecx
0x005078B3: je       0x5078ca
0x005078B5: mov      edx, dword ptr [edi + 0x50]
0x005078B8: mov      eax, dword ptr [edi + 0x4c]
0x005078BB: push     edx
0x005078BC: push     0
0x005078BE: push     0
0x005078C0: push     eax
0x005078C1: call     0x7cd120
0x005078C6: mov      esi, eax
0x005078C8: jmp      0x5078cc
0x005078CA: xor      esi, esi
0x005078CC: push     esi
0x005078CD: call     0x568850
0x005078D2: add      esp, 4
0x005078D5: pop      edi
0x005078D6: test     esi, esi
0x005078D8: pop      esi
0x005078D9: je       0x5078ea
0x005078DB: test     eax, eax
0x005078DD: je       0x5078ea
0x005078DF: lea      ecx, [eax + 0xdc]
0x005078E5: jmp      0x568fb0
0x005078EA: ret      
0x005078EB: int3     
0x005078EC: int3     
0x005078ED: int3     
0x005078EE: int3     
0x005078EF: int3     

--- faRotasticMaterialStop::execute @ 0x005078F0 ---
0x005078F0: push     esi
0x005078F1: push     edi
0x005078F2: mov      edi, dword ptr [esp + 0xc]
0x005078F6: lea      esi, [edi + 0x54]
0x005078F9: mov      ecx, esi
0x005078FB: call     0x7bfe00
0x00507900: test     eax, eax
0x00507902: je       0x50792b
0x00507904: mov      ecx, esi
0x00507906: call     0x7bfe00
0x0050790B: test     eax, eax
0x0050790D: je       0x50794a
0x0050790F: movzx    eax, byte ptr [esi]
0x00507912: mov      ecx, dword ptr [0xb78a28]
0x00507918: lea      eax, [eax + eax*2]
0x0050791B: mov      edx, dword ptr [ecx + eax*4 + 8]
0x0050791F: movzx    eax, byte ptr [esi + 1]
0x00507923: mov      ecx, dword ptr [edx + 0x78]
0x00507926: mov      esi, dword ptr [ecx + eax*4]
0x00507929: jmp      0x50794c
0x0050792B: mov      ecx, dword ptr [0xb79350]
0x00507931: test     ecx, ecx
0x00507933: je       0x50794a
0x00507935: mov      edx, dword ptr [edi + 0x50]
0x00507938: mov      eax, dword ptr [edi + 0x4c]
0x0050793B: push     edx
0x0050793C: push     0
0x0050793E: push     0
0x00507940: push     eax
0x00507941: call     0x7cd120
0x00507946: mov      esi, eax
0x00507948: jmp      0x50794c
0x0050794A: xor      esi, esi
0x0050794C: push     esi
0x0050794D: call     0x568850
0x00507952: add      esp, 4
0x00507955: test     esi, esi
0x00507957: je       0x50796c
0x00507959: test     eax, eax
0x0050795B: je       0x50796c
0x0050795D: mov      ecx, dword ptr [edi + 0x58]
0x00507960: push     ecx
0x00507961: lea      ecx, [eax + 0xdc]
0x00507967: call     0x568980
0x0050796C: pop      edi
0x0050796D: pop      esi
0x0050796E: ret      
0x0050796F: int3     

--- faRotasticMaterialPause::execute @ 0x00507970 ---
0x00507970: push     esi
0x00507971: push     edi
0x00507972: mov      edi, dword ptr [esp + 0xc]
0x00507976: lea      esi, [edi + 0x54]
0x00507979: mov      ecx, esi
0x0050797B: call     0x7bfe00
0x00507980: test     eax, eax
0x00507982: je       0x5079ab
0x00507984: mov      ecx, esi
0x00507986: call     0x7bfe00
0x0050798B: test     eax, eax
0x0050798D: je       0x5079ca
0x0050798F: movzx    eax, byte ptr [esi]
0x00507992: mov      ecx, dword ptr [0xb78a28]
0x00507998: lea      eax, [eax + eax*2]
0x0050799B: mov      edx, dword ptr [ecx + eax*4 + 8]
0x0050799F: movzx    eax, byte ptr [esi + 1]
0x005079A3: mov      ecx, dword ptr [edx + 0x78]
0x005079A6: mov      esi, dword ptr [ecx + eax*4]
0x005079A9: jmp      0x5079cc
0x005079AB: mov      ecx, dword ptr [0xb79350]
0x005079B1: test     ecx, ecx
0x005079B3: je       0x5079ca
0x005079B5: mov      edx, dword ptr [edi + 0x50]
0x005079B8: mov      eax, dword ptr [edi + 0x4c]
0x005079BB: push     edx
0x005079BC: push     0
0x005079BE: push     0
0x005079C0: push     eax
0x005079C1: call     0x7cd120
0x005079C6: mov      esi, eax
0x005079C8: jmp      0x5079cc
0x005079CA: xor      esi, esi
0x005079CC: push     esi
0x005079CD: call     0x568850
0x005079D2: add      esp, 4
0x005079D5: test     esi, esi
0x005079D7: je       0x5079f1
0x005079D9: test     eax, eax
0x005079DB: je       0x5079f1
0x005079DD: movsx    ecx, byte ptr [edi + 0x5c]
0x005079E1: mov      edx, dword ptr [edi + 0x58]
0x005079E4: push     ecx
0x005079E5: push     edx
0x005079E6: lea      ecx, [eax + 0xdc]
0x005079EC: call     0x5689a0
0x005079F1: pop      edi
0x005079F2: pop      esi
0x005079F3: ret      
0x005079F4: int3     
0x005079F5: int3     
0x005079F6: int3     
0x005079F7: int3     
0x005079F8: int3     
0x005079F9: int3     
0x005079FA: int3     
0x005079FB: int3     
0x005079FC: int3     
0x005079FD: int3     
0x005079FE: int3     
0x005079FF: int3     

--- faRotasticSetMaterialConstVector::execute @ 0x00507A00 ---
0x00507A00: sub      esp, 0x90
0x00507A06: push     esi
0x00507A07: push     edi
0x00507A08: mov      edi, dword ptr [esp + 0x9c]
0x00507A0F: lea      esi, [edi + 0x54]
0x00507A12: mov      ecx, esi
0x00507A14: call     0x7bfe00
0x00507A19: test     eax, eax
0x00507A1B: je       0x507a48
0x00507A1D: mov      ecx, esi
0x00507A1F: call     0x7bfe00
0x00507A24: test     eax, eax
0x00507A26: je       0x507a44
0x00507A28: movzx    eax, byte ptr [esi]
0x00507A2B: mov      ecx, dword ptr [0xb78a28]
0x00507A31: lea      eax, [eax + eax*2]
0x00507A34: mov      edx, dword ptr [ecx + eax*4 + 8]
0x00507A38: movzx    eax, byte ptr [esi + 1]
0x00507A3C: mov      ecx, dword ptr [edx + 0x78]
0x00507A3F: mov      eax, dword ptr [ecx + eax*4]
0x00507A42: jmp      0x507a67
0x00507A44: xor      eax, eax
0x00507A46: jmp      0x507a67
0x00507A48: mov      ecx, dword ptr [0xb79350]
0x00507A4E: test     ecx, ecx
0x00507A50: je       0x507ba5
0x00507A56: mov      edx, dword ptr [edi + 0x50]
0x00507A59: mov      eax, dword ptr [edi + 0x4c]
0x00507A5C: push     edx
0x00507A5D: push     0
0x00507A5F: push     0
0x00507A61: push     eax
0x00507A62: call     0x7cd120
0x00507A67: test     eax, eax
0x00507A69: je       0x507ba5
0x00507A6F: movzx    ecx, byte ptr [eax + 1]
0x00507A73: mov      eax, dword ptr [eax + 4]
0x00507A76: mov      edx, dword ptr [eax + 8]
0x00507A79: test     dword ptr [edx + ecx*4], 0x40000
0x00507A80: je       0x507ba5
0x00507A86: mov      edx, dword ptr [eax + 0x14]
0x00507A89: lea      ecx, [ecx + ecx*8]
0x00507A8C: lea      eax, [edx + ecx*4]
0x00507A8F: mov      ecx, 0x1c
0x00507A94: cmp      byte ptr [eax + 0x14], cl
0x00507A97: jne      0x507a9e
0x00507A99: mov      esi, dword ptr [eax + 4]
0x00507A9C: jmp      0x507ad0
0x00507A9E: cmp      byte ptr [eax + 0x15], cl
0x00507AA1: jne      0x507aa8
0x00507AA3: mov      esi, dword ptr [eax + 8]
0x00507AA6: jmp      0x507ad0
0x00507AA8: cmp      byte ptr [eax + 0x16], cl
0x00507AAB: jne      0x507ab2
0x00507AAD: mov      esi, dword ptr [eax + 0xc]
0x00507AB0: jmp      0x507ad0
0x00507AB2: cmp      byte ptr [eax + 0x17], cl
0x00507AB5: jne      0x507abc
0x00507AB7: mov      esi, dword ptr [eax + 0x10]
0x00507ABA: jmp      0x507ad0
0x00507ABC: mov      eax, dword ptr [eax]
0x00507ABE: test     eax, eax
0x00507AC0: je       0x507ba5
0x00507AC6: push     ecx
0x00507AC7: mov      ecx, eax
0x00507AC9: call     0x461400
0x00507ACE: mov      esi, eax
0x00507AD0: test     esi, esi
0x00507AD2: je       0x507ba5
0x00507AD8: lea      eax, [esp + 0x18]
0x00507ADC: test     al, 0x7f
0x00507ADE: je       0x507aef
0x00507AE0: mov      ecx, eax
0x00507AE2: push     0x20
0x00507AE4: push     ecx
0x00507AE5: call     0x6a9700
0x00507AEA: add      esp, 8
0x00507AED: jmp      0x507b11
0x00507AEF: xor      eax, eax
0x00507AF1: mov      dword ptr [esp + 0x18], eax
0x00507AF5: mov      dword ptr [esp + 0x1c], eax
0x00507AF9: mov      dword ptr [esp + 0x20], eax
0x00507AFD: mov      dword ptr [esp + 0x24], eax
0x00507B01: mov      dword ptr [esp + 0x28], eax
0x00507B05: mov      dword ptr [esp + 0x2c], eax
0x00507B09: mov      dword ptr [esp + 0x30], eax
0x00507B0D: mov      dword ptr [esp + 0x34], eax
0x00507B11: mov      ecx, dword ptr [esi + 0x34]
0x00507B14: mov      edx, dword ptr [ecx]
0x00507B16: mov      edx, dword ptr [edx + 0x80]
0x00507B1C: push     0
0x00507B1E: push     0x20
0x00507B20: lea      eax, [esp + 0x20]
0x00507B24: push     eax
0x00507B25: call     edx
0x00507B27: movsx    eax, byte ptr [edi + 0x58]
0x00507B2B: test     eax, eax
0x00507B2D: jge      0x507ba5
0x00507B2F: mov      ecx, dword ptr [esi + 0x34]
0x00507B32: mov      edx, dword ptr [ecx + 0x64]
0x00507B35: mov      eax, dword ptr [esp + eax*4 + 0x18]
0x00507B39: push     0
0x00507B3B: push     edx
0x00507B3C: push     eax
0x00507B3D: call     0x64c490
0x00507B42: mov      esi, eax
0x00507B44: add      esp, 0xc
0x00507B47: test     esi, esi
0x00507B49: je       0x507ba5
0x00507B4B: push     -1
0x00507B4D: lea      ecx, [edi + 0x59]
0x00507B50: push     0
0x00507B52: push     ecx
0x00507B53: call     0x691560
0x00507B58: movzx    edx, byte ptr [esi + 0xc]
0x00507B5C: push     eax
0x00507B5D: mov      eax, dword ptr [esi]
0x00507B5F: push     0
0x00507B61: push     edx
0x00507B62: push     eax
0x00507B63: call     0x648070
0x00507B68: add      esp, 0x1c
0x00507B6B: test     eax, eax
0x00507B6D: je       0x507ba5
0x00507B6F: fld      dword ptr [edi + 0x7c]
0x00507B72: lea      ecx, [esp + 8]
0x00507B76: fstp     dword ptr [esp + 8]
0x00507B7A: push     ecx
0x00507B7B: fld      dword ptr [edi + 0x80]
0x00507B81: push     eax
0x00507B82: fstp     dword ptr [esp + 0x14]
0x00507B86: push     0
0x00507B88: fld      dword ptr [edi + 0x84]
0x00507B8E: push     esi
0x00507B8F: fstp     dword ptr [esp + 0x20]
0x00507B93: fld      dword ptr [edi + 0x88]
0x00507B99: fstp     dword ptr [esp + 0x24]
0x00507B9D: call     0x64c750
0x00507BA2: add      esp, 0x10
0x00507BA5: pop      edi
0x00507BA6: pop      esi
0x00507BA7: add      esp, 0x90
0x00507BAD: ret      
0x00507BAE: int3     
0x00507BAF: int3     

--- faRotasticSetMaterialPixelConstFloat::execute @ 0x00507BB0 ---
0x00507BB0: sub      esp, 0x80
0x00507BB6: push     esi
0x00507BB7: push     edi
0x00507BB8: mov      edi, dword ptr [esp + 0x8c]
0x00507BBF: lea      esi, [edi + 0x54]
0x00507BC2: mov      ecx, esi
0x00507BC4: call     0x7bfe00
0x00507BC9: test     eax, eax
0x00507BCB: je       0x507bf8
0x00507BCD: mov      ecx, esi
0x00507BCF: call     0x7bfe00
0x00507BD4: test     eax, eax
0x00507BD6: je       0x507bf4
0x00507BD8: movzx    eax, byte ptr [esi]
0x00507BDB: mov      ecx, dword ptr [0xb78a28]
0x00507BE1: lea      eax, [eax + eax*2]
0x00507BE4: mov      edx, dword ptr [ecx + eax*4 + 8]
0x00507BE8: movzx    eax, byte ptr [esi + 1]
0x00507BEC: mov      ecx, dword ptr [edx + 0x78]
0x00507BEF: mov      eax, dword ptr [ecx + eax*4]
0x00507BF2: jmp      0x507c17
0x00507BF4: xor      eax, eax
0x00507BF6: jmp      0x507c17
0x00507BF8: mov      ecx, dword ptr [0xb79350]
0x00507BFE: test     ecx, ecx
0x00507C00: je       0x507d2e
0x00507C06: mov      edx, dword ptr [edi + 0x50]
0x00507C09: mov      eax, dword ptr [edi + 0x4c]
0x00507C0C: push     edx
0x00507C0D: push     0
0x00507C0F: push     0
0x00507C11: push     eax
0x00507C12: call     0x7cd120
0x00507C17: test     eax, eax
0x00507C19: je       0x507d2e
0x00507C1F: movzx    ecx, byte ptr [eax + 1]
0x00507C23: mov      eax, dword ptr [eax + 4]
0x00507C26: mov      edx, dword ptr [eax + 8]
0x00507C29: test     dword ptr [edx + ecx*4], 0x40000
0x00507C30: je       0x507d2e
0x00507C36: mov      edx, dword ptr [eax + 0x14]
0x00507C39: lea      ecx, [ecx + ecx*8]
0x00507C3C: lea      eax, [edx + ecx*4]
0x00507C3F: mov      ecx, 0x1c
0x00507C44: cmp      byte ptr [eax + 0x14], cl
0x00507C47: jne      0x507c4e
0x00507C49: mov      esi, dword ptr [eax + 4]
0x00507C4C: jmp      0x507c80
0x00507C4E: cmp      byte ptr [eax + 0x15], cl
0x00507C51: jne      0x507c58
0x00507C53: mov      esi, dword ptr [eax + 8]
0x00507C56: jmp      0x507c80
0x00507C58: cmp      byte ptr [eax + 0x16], cl
0x00507C5B: jne      0x507c62
0x00507C5D: mov      esi, dword ptr [eax + 0xc]
0x00507C60: jmp      0x507c80
0x00507C62: cmp      byte ptr [eax + 0x17], cl
0x00507C65: jne      0x507c6c
0x00507C67: mov      esi, dword ptr [eax + 0x10]
0x00507C6A: jmp      0x507c80
0x00507C6C: mov      eax, dword ptr [eax]
0x00507C6E: test     eax, eax
0x00507C70: je       0x507d2e
0x00507C76: push     ecx
0x00507C77: mov      ecx, eax
0x00507C79: call     0x461400
0x00507C7E: mov      esi, eax
0x00507C80: test     esi, esi
0x00507C82: je       0x507d2e
0x00507C88: lea      eax, [esp + 8]
0x00507C8C: test     al, 0x7f
0x00507C8E: je       0x507c9f
0x00507C90: mov      ecx, eax
0x00507C92: push     0x20
0x00507C94: push     ecx
0x00507C95: call     0x6a9700
0x00507C9A: add      esp, 8
0x00507C9D: jmp      0x507cc1
0x00507C9F: xor      eax, eax
0x00507CA1: mov      dword ptr [esp + 8], eax
0x00507CA5: mov      dword ptr [esp + 0xc], eax
0x00507CA9: mov      dword ptr [esp + 0x10], eax
0x00507CAD: mov      dword ptr [esp + 0x14], eax
0x00507CB1: mov      dword ptr [esp + 0x18], eax
0x00507CB5: mov      dword ptr [esp + 0x1c], eax
0x00507CB9: mov      dword ptr [esp + 0x20], eax
0x00507CBD: mov      dword ptr [esp + 0x24], eax
0x00507CC1: mov      ecx, dword ptr [esi + 0x34]
0x00507CC4: mov      edx, dword ptr [ecx]
0x00507CC6: mov      edx, dword ptr [edx + 0x80]
0x00507CCC: push     0
0x00507CCE: push     0x20
0x00507CD0: lea      eax, [esp + 0x10]
0x00507CD4: push     eax
0x00507CD5: call     edx
0x00507CD7: movsx    eax, byte ptr [edi + 0x58]
0x00507CDB: test     eax, eax
0x00507CDD: jge      0x507d2e
0x00507CDF: mov      ecx, dword ptr [esi + 0x34]
0x00507CE2: mov      edx, dword ptr [ecx + 0x64]
0x00507CE5: mov      eax, dword ptr [esp + eax*4 + 8]
0x00507CE9: push     0
0x00507CEB: push     edx
0x00507CEC: push     eax
0x00507CED: call     0x64c490
0x00507CF2: mov      esi, eax
0x00507CF4: add      esp, 0xc
0x00507CF7: test     esi, esi
0x00507CF9: je       0x507d2e
0x00507CFB: push     -1
0x00507CFD: lea      ecx, [edi + 0x5a]
0x00507D00: push     0
0x00507D02: push     ecx
0x00507D03: call     0x691560
0x00507D08: movsx    edx, byte ptr [edi + 0x59]
0x00507D0C: push     eax
0x00507D0D: push     edx
0x00507D0E: push     esi
0x00507D0F: call     0x5076b0
0x00507D14: add      esp, 0x18
0x00507D17: test     eax, eax
0x00507D19: je       0x507d2e
0x00507D1B: fld      dword ptr [edi + 0x7c]
0x00507D1E: push     ecx
0x00507D1F: fstp     dword ptr [esp]
0x00507D22: push     eax
0x00507D23: push     0
0x00507D25: push     esi
0x00507D26: call     0x64c6b0
0x00507D2B: add      esp, 0x10
0x00507D2E: pop      edi
0x00507D2F: pop      esi
0x00507D30: add      esp, 0x80
0x00507D36: ret      
0x00507D37: int3     
0x00507D38: int3     
0x00507D39: int3     
0x00507D3A: int3     
0x00507D3B: int3     
0x00507D3C: int3     
0x00507D3D: int3     
0x00507D3E: int3     
0x00507D3F: int3     
0x00507D40: push     1
0x00507D42: call     0x7ba320
0x00507D47: add      eax, 0x38
0x00507D4A: ret      
0x00507D4B: int3     
0x00507D4C: int3     
0x00507D4D: int3     
0x00507D4E: int3     
0x00507D4F: int3     

--- CWall::ctor @ 0x00507D50 ---
0x00507D50: mov      eax, dword ptr [esp + 4]
0x00507D54: push     esi
0x00507D55: push     eax
0x00507D56: mov      esi, ecx
0x00507D58: call     0x506ab0
0x00507D5D: mov      dword ptr [esi], 0x98f5e0
0x00507D63: mov      eax, esi
0x00507D65: pop      esi
0x00507D66: ret      4
0x00507D69: int3     
0x00507D6A: int3     
0x00507D6B: int3     
0x00507D6C: int3     
0x00507D6D: int3     
0x00507D6E: int3     
0x00507D6F: int3     
0x00507D70: mov      dword ptr [ecx], 0x98f5e0
0x00507D76: jmp      0x506b40
0x00507D7B: int3     
0x00507D7C: int3     
0x00507D7D: int3     
0x00507D7E: int3     
0x00507D7F: int3     

--- faChangeWallSpecificities::execute @ 0x00507D80 ---
0x00507D80: push     esi
0x00507D81: mov      esi, dword ptr [esp + 8]
0x00507D85: push     edi
0x00507D86: push     0
0x00507D88: lea      edi, [esi + 0x4c]
0x00507D8B: push     0x1c
0x00507D8D: mov      ecx, edi
0x00507D8F: call     0x507ed0
0x00507D94: push     1
0x00507D96: mov      ecx, eax
0x00507D98: call     0x7ba320
0x00507D9D: mov      cl, byte ptr [esi + 0x58]
0x00507DA0: push     0
0x00507DA2: mov      byte ptr [eax + 0x38], cl
0x00507DA5: push     0x1c
0x00507DA7: mov      ecx, edi
0x00507DA9: call     0x507ed0
0x00507DAE: push     1
0x00507DB0: mov      ecx, eax
0x00507DB2: call     0x7ba320
0x00507DB7: mov      dl, byte ptr [esi + 0x59]
0x00507DBA: push     0
0x00507DBC: push     0x1c
0x00507DBE: mov      ecx, edi
0x00507DC0: mov      byte ptr [eax + 0x3a], dl
0x00507DC3: call     0x507ed0
0x00507DC8: push     1
0x00507DCA: mov      ecx, eax
0x00507DCC: call     0x7ba320
0x00507DD1: fld      dword ptr [esi + 0x5c]
0x00507DD4: push     0
0x00507DD6: fstp     dword ptr [eax + 0x3c]
0x00507DD9: push     0x1c
0x00507DDB: mov      ecx, edi
0x00507DDD: call     0x507ed0
0x00507DE2: push     1
0x00507DE4: mov      ecx, eax
0x00507DE6: call     0x7ba320
0x00507DEB: fld      dword ptr [esi + 0x60]
0x00507DEE: push     0
0x00507DF0: fstp     dword ptr [eax + 0x40]
0x00507DF3: push     0x1c
0x00507DF5: mov      ecx, edi
0x00507DF7: call     0x507ed0
0x00507DFC: push     1
0x00507DFE: mov      ecx, eax
0x00507E00: call     0x7ba320
0x00507E05: fld      dword ptr [esi + 0x64]
0x00507E08: pop      edi
0x00507E09: fstp     dword ptr [eax + 0x44]
0x00507E0C: pop      esi
0x00507E0D: ret      
0x00507E0E: int3     
0x00507E0F: int3     

--- faSetWallBouncingCoef::execute @ 0x00507E10 ---
0x00507E10: push     esi
0x00507E11: mov      esi, dword ptr [esp + 8]
0x00507E15: push     0
0x00507E17: push     0x1c
0x00507E19: lea      ecx, [esi + 0x4c]
0x00507E1C: call     0x507ed0
0x00507E21: push     1
0x00507E23: mov      ecx, eax
0x00507E25: call     0x7ba320
0x00507E2A: fld      dword ptr [esi + 0x58]
0x00507E2D: fstp     dword ptr [eax + 0x3c]
0x00507E30: pop      esi
0x00507E31: ret      
0x00507E32: int3     
0x00507E33: int3     
0x00507E34: int3     
0x00507E35: int3     
0x00507E36: int3     
0x00507E37: int3     
0x00507E38: int3     
0x00507E39: int3     
0x00507E3A: int3     
0x00507E3B: int3     
0x00507E3C: int3     
0x00507E3D: int3     
0x00507E3E: int3     
0x00507E3F: int3     
0x00507E40: push     esi
0x00507E41: push     edi
0x00507E42: mov      edi, ecx
0x00507E44: lea      esi, [edi + 8]
0x00507E47: mov      ecx, esi
0x00507E49: call     0x7bfe00
0x00507E4E: test     eax, eax
0x00507E50: je       0x507e7c
0x00507E52: mov      ecx, esi
0x00507E54: call     0x7bfe00
0x00507E59: test     eax, eax
0x00507E5B: je       0x507ebb
0x00507E5D: movzx    eax, byte ptr [esi]
0x00507E60: mov      ecx, dword ptr [0xb78a28]
0x00507E66: lea      eax, [eax + eax*2]
0x00507E69: mov      edx, dword ptr [ecx + eax*4 + 8]
0x00507E6D: movzx    eax, byte ptr [esi + 1]
0x00507E71: mov      ecx, dword ptr [edx + 0x78]
0x00507E74: mov      eax, dword ptr [ecx + eax*4]
0x00507E77: pop      edi
0x00507E78: pop      esi
0x00507E79: ret      4
0x00507E7C: mov      eax, dword ptr [esp + 0xc]
0x00507E80: test     eax, eax
0x00507E82: je       0x507e9d
0x00507E84: movzx    edx, byte ptr [eax + 1]
0x00507E88: mov      ecx, dword ptr [eax + 4]
0x00507E8B: mov      ecx, dword ptr [ecx + 0x28]
0x00507E8E: mov      ecx, dword ptr [ecx + edx*4]
0x00507E91: test     ecx, ecx
0x00507E93: je       0x507e9d
0x00507E95: mov      ecx, dword ptr [ecx + 0x114]
0x00507E9B: jmp      0x507ea3
0x00507E9D: mov      ecx, dword ptr [0xb79350]
0x00507EA3: test     ecx, ecx
0x00507EA5: je       0x507ebb
0x00507EA7: mov      edx, dword ptr [edi + 4]
0x00507EAA: push     edx
0x00507EAB: push     eax
0x00507EAC: mov      eax, dword ptr [edi]
0x00507EAE: push     0
0x00507EB0: push     eax
0x00507EB1: call     0x7cd120
0x00507EB6: pop      edi
0x00507EB7: pop      esi
0x00507EB8: ret      4
0x00507EBB: pop      edi
0x00507EBC: xor      eax, eax
0x00507EBE: pop      esi
0x00507EBF: ret      4
0x00507EC2: int3     
0x00507EC3: int3     
0x00507EC4: int3     
0x00507EC5: int3     
0x00507EC6: int3     
0x00507EC7: int3     
0x00507EC8: int3     
0x00507EC9: int3     
0x00507ECA: int3     
0x00507ECB: int3     
0x00507ECC: int3     
0x00507ECD: int3     
0x00507ECE: int3     
0x00507ECF: int3     
0x00507ED0: mov      eax, dword ptr [esp + 8]
0x00507ED4: push     esi
0x00507ED5: push     eax
0x00507ED6: call     0x507e40
0x00507EDB: mov      esi, eax
0x00507EDD: xor      eax, eax
0x00507EDF: test     esi, esi
0x00507EE1: je       0x507f83
0x00507EE7: movzx    eax, byte ptr [esi + 1]
0x00507EEB: mov      edx, dword ptr [esi + 4]
0x00507EEE: push     ebx
0x00507EEF: mov      ebx, dword ptr [esp + 0xc]
0x00507EF3: lea      ecx, [eax + eax*8]
0x00507EF6: mov      eax, dword ptr [edx + 0x14]
0x00507EF9: push     edi
0x00507EFA: push     ebx
0x00507EFB: lea      ecx, [eax + ecx*4]
0x00507EFE: call     0x461400
0x00507F03: mov      edi, eax
0x00507F05: test     edi, edi
0x00507F07: jne      0x507f81
0x00507F09: movzx    eax, byte ptr [esi + 1]
0x00507F0D: mov      edx, dword ptr [esi + 4]
0x00507F10: lea      ecx, [eax + eax*8]
0x00507F13: mov      eax, dword ptr [edx + 0x14]
0x00507F16: lea      eax, [eax + ecx*4]
0x00507F19: mov      ecx, 0x14
0x00507F1E: cmp      byte ptr [eax + 0x14], cl
0x00507F21: jne      0x507f28
0x00507F23: mov      eax, dword ptr [eax + 4]
0x00507F26: jmp      0x507f54
0x00507F28: cmp      byte ptr [eax + 0x15], cl
0x00507F2B: jne      0x507f32
0x00507F2D: mov      eax, dword ptr [eax + 8]
0x00507F30: jmp      0x507f54
0x00507F32: cmp      byte ptr [eax + 0x16], cl
0x00507F35: jne      0x507f3c
0x00507F37: mov      eax, dword ptr [eax + 0xc]
0x00507F3A: jmp      0x507f54
0x00507F3C: cmp      byte ptr [eax + 0x17], cl
0x00507F3F: jne      0x507f46
0x00507F41: mov      eax, dword ptr [eax + 0x10]
0x00507F44: jmp      0x507f54
0x00507F46: mov      eax, dword ptr [eax]
0x00507F48: test     eax, eax
0x00507F4A: je       0x507f7f
0x00507F4C: push     ecx
0x00507F4D: mov      ecx, eax
0x00507F4F: call     0x461400
0x00507F54: test     eax, eax
0x00507F56: je       0x507f7f
0x00507F58: mov      ecx, eax
0x00507F5A: call     0x7815d0
0x00507F5F: test     eax, eax
0x00507F61: je       0x507f7f
0x00507F63: movzx    ecx, byte ptr [eax + 1]
0x00507F67: mov      edx, dword ptr [eax + 4]
0x00507F6A: mov      eax, dword ptr [edx + 0x14]
0x00507F6D: lea      ecx, [ecx + ecx*8]
0x00507F70: push     ebx
0x00507F71: lea      ecx, [eax + ecx*4]
0x00507F74: call     0x461400
0x00507F79: pop      edi
0x00507F7A: pop      ebx
0x00507F7B: pop      esi
0x00507F7C: ret      8
0x00507F7F: mov      eax, edi
0x00507F81: pop      edi
0x00507F82: pop      ebx
0x00507F83: pop      esi
0x00507F84: ret      8
0x00507F87: int3     
0x00507F88: int3     
0x00507F89: int3     
0x00507F8A: int3     
0x00507F8B: int3     
0x00507F8C: int3     
0x00507F8D: int3     
0x00507F8E: int3     
0x00507F8F: int3     
0x00507F90: push     esi
0x00507F91: mov      esi, ecx
0x00507F93: mov      eax, dword ptr [esi]
0x00507F95: push     eax
0x00507F96: call     0x52d1b0
0x00507F9B: add      esp, 4
0x00507F9E: mov      dword ptr [esi], 0
0x00507FA4: pop      esi
0x00507FA5: ret      
0x00507FA6: int3     
0x00507FA7: int3     
0x00507FA8: int3     
0x00507FA9: int3     
0x00507FAA: int3     
0x00507FAB: int3     
0x00507FAC: int3     
0x00507FAD: int3     
0x00507FAE: int3     
0x00507FAF: int3     
0x00507FB0: xor      eax, eax
0x00507FB2: cmp      dword ptr [esp + 4], 1
0x00507FB7: mov      dword ptr [ecx + 0x1b4], eax
0x00507FBD: mov      dword ptr [ecx + 0x1d8], eax
0x00507FC3: jne      0x507fd7
0x00507FC5: mov      eax, dword ptr [ecx + 0x1a8]
0x00507FCB: fld      dword ptr [eax + 0x1c]
0x00507FCE: fstp     dword ptr [ecx + 0x1b8]
0x00507FD4: ret      4
0x00507FD7: mov      edx, dword ptr [ecx + 0x1a8]
0x00507FDD: fld      dword ptr [edx + 0x18]
0x00507FE0: fstp     dword ptr [ecx + 0x1b8]
0x00507FE6: ret      4
0x00507FE9: int3     
0x00507FEA: int3     
0x00507FEB: int3     
0x00507FEC: int3     
0x00507FED: int3     
0x00507FEE: int3     
0x00507FEF: int3     
0x00507FF0: fld      dword ptr [0x982e8c] ; [f32=0.12, u32=0x3DF5C28F]
0x00507FF6: push     esi
0x00507FF7: mov      esi, dword ptr [ecx + 0x34]
0x00507FFA: mov      eax, dword ptr [esi]
0x00507FFC: mov      edx, dword ptr [eax + 0xa4]
0x00508002: push     0
0x00508004: push     ecx
0x00508005: fstp     dword ptr [esp]
0x00508008: push     0
0x0050800A: mov      ecx, esi
0x0050800C: call     edx
0x0050800E: fld1     
0x00508010: push     ecx
0x00508011: fstp     dword ptr [esp]
0x00508014: mov      ecx, esi
0x00508016: call     0x6dc320
0x0050801B: pop      esi
0x0050801C: ret      
0x0050801D: int3     
0x0050801E: int3     
0x0050801F: int3     
0x00508020: push     ebx
0x00508021: push     esi
0x00508022: push     edi
0x00508023: mov      edi, ecx
0x00508025: mov      esi, dword ptr [edi + 0x34]
0x00508028: mov      eax, dword ptr [edi + 0x1a8]
0x0050802E: mov      ebx, dword ptr [eax + 0x5c]
0x00508031: mov      ecx, esi
0x00508033: call     0x6dc410
0x00508038: cmp      eax, ebx
0x0050803A: je       0x50806f
0x0050803C: fldz     
0x0050803E: push     0
0x00508040: sub      esp, 0xc
0x00508043: fstp     dword ptr [esp + 8]
0x00508047: fld1     
0x00508049: mov      ecx, esi
0x0050804B: fstp     dword ptr [esp + 4]
0x0050804F: fld      dword ptr [0x982e8c] ; [f32=0.12, u32=0x3DF5C28F]
0x00508055: fstp     dword ptr [esp]
0x00508058: push     0
0x0050805A: push     0
0x0050805C: push     ebx
0x0050805D: call     0x6dc670
0x00508062: fldz     
0x00508064: push     ecx
0x00508065: fstp     dword ptr [esp]
0x00508068: mov      ecx, esi
0x0050806A: call     0x6dc320
0x0050806F: fld      dword ptr [esp + 0x10]
0x00508073: push     ecx
0x00508074: fld1     
0x00508076: mov      ecx, dword ptr [edi + 0x1a8]
0x0050807C: mov      edx, dword ptr [ecx + 0x5c]
0x0050807F: fsubrp   st(1)
0x00508081: mov      ecx, esi
0x00508083: fstp     dword ptr [esp + 0x14]
0x00508087: fld      dword ptr [esp + 0x14]
0x0050808B: fstp     dword ptr [esp]
0x0050808E: push     edx
0x0050808F: call     0x6dc470
0x00508094: pop      edi
0x00508095: pop      esi
0x00508096: pop      ebx
0x00508097: ret      4
0x0050809A: int3     
0x0050809B: int3     
0x0050809C: int3     
0x0050809D: int3     
0x0050809E: int3     
0x0050809F: int3     
0x005080A0: fldz     
0x005080A2: mov      eax, dword ptr [ecx + 0x1a8]
0x005080A8: push     esi
0x005080A9: mov      esi, dword ptr [ecx + 0x34]
0x005080AC: mov      ecx, dword ptr [eax + 0x54]
0x005080AF: push     0
0x005080B1: sub      esp, 0xc
0x005080B4: fstp     dword ptr [esp + 8]
0x005080B8: fld1     
0x005080BA: fstp     dword ptr [esp + 4]
0x005080BE: fld      dword ptr [0x982e8c] ; [f32=0.12, u32=0x3DF5C28F]
0x005080C4: fstp     dword ptr [esp]
0x005080C7: push     0
0x005080C9: push     0
0x005080CB: push     ecx
0x005080CC: mov      ecx, esi
0x005080CE: call     0x6dc670
0x005080D3: fld1     
0x005080D5: push     ecx
0x005080D6: fstp     dword ptr [esp]
0x005080D9: mov      ecx, esi
0x005080DB: call     0x6dc320
0x005080E0: pop      esi
0x005080E1: ret      
0x005080E2: int3     
0x005080E3: int3     
0x005080E4: int3     
0x005080E5: int3     
0x005080E6: int3     
0x005080E7: int3     
0x005080E8: int3     
0x005080E9: int3     
0x005080EA: int3     
0x005080EB: int3     
0x005080EC: int3     
0x005080ED: int3     
0x005080EE: int3     
0x005080EF: int3     
0x005080F0: mov      eax, dword ptr [esp + 4]
0x005080F4: fld      dword ptr [esp + 0xc]
0x005080F8: mov      edx, dword ptr [ecx + 0x1a8]
0x005080FE: mov      dword ptr [ecx + 0x1c8], eax
0x00508104: push     ebx
0x00508105: mov      bl, byte ptr [esp + 0xc]
0x00508109: xor      eax, eax
0x0050810B: mov      dword ptr [ecx + 0x1cc], eax
0x00508111: mov      byte ptr [edx + 0x48], bl
0x00508114: mov      edx, dword ptr [ecx + 0x1a8]
0x0050811A: fstp     dword ptr [edx + 0x4c]
0x0050811D: mov      ecx, dword ptr [ecx + 0x1a8]
0x00508123: mov      byte ptr [ecx + 0x34], al
0x00508126: pop      ebx
0x00508127: ret      0xc
0x0050812A: int3     
0x0050812B: int3     
0x0050812C: int3     
0x0050812D: int3     
0x0050812E: int3     
0x0050812F: int3     
0x00508130: push     -1
0x00508132: push     0x943326
0x00508137: mov      eax, dword ptr fs:[0]
0x0050813D: push     eax
0x0050813E: push     ecx
0x0050813F: push     esi
0x00508140: mov      eax, dword ptr [0xb089c8]
0x00508145: xor      eax, esp
0x00508147: push     eax
0x00508148: lea      eax, [esp + 0xc]
0x0050814C: mov      dword ptr fs:[0], eax
0x00508152: mov      esi, ecx
0x00508154: mov      dword ptr [esp + 8], esi
0x00508158: mov      dword ptr [esi], 0x982e90
0x0050815E: mov      ecx, dword ptr [esi + 0x1ac]
0x00508164: mov      dword ptr [esp + 0x14], 1
0x0050816C: test     ecx, ecx
0x0050816E: je       0x508178
0x00508170: mov      eax, dword ptr [ecx]
0x00508172: mov      edx, dword ptr [eax]
0x00508174: push     1
0x00508176: call     edx
0x00508178: mov      dword ptr [esi + 0x1ac], 0
0x00508182: mov      eax, dword ptr [esi + 0x1b0]
0x00508188: push     eax
0x00508189: mov      byte ptr [esp + 0x18], 0
0x0050818E: call     0x52d1b0
0x00508193: add      esp, 4
0x00508196: mov      ecx, esi
0x00508198: mov      dword ptr [esi + 0x1b0], 0
0x005081A2: mov      dword ptr [esp + 0x14], 0xffffffff
0x005081AA: call     0x506b40
0x005081AF: mov      ecx, dword ptr [esp + 0xc]
0x005081B3: mov      dword ptr fs:[0], ecx
0x005081BA: pop      ecx
0x005081BB: pop      esi
0x005081BC: add      esp, 0x10
0x005081BF: ret      
0x005081C0: mov      eax, dword ptr [esp + 0x10]
0x005081C4: mov      ecx, dword ptr [eax + 0x1a8]
0x005081CA: cmp      byte ptr [ecx + 0x10], 1
0x005081CE: jne      0x5081e7
0x005081D0: xor      edx, edx
0x005081D2: mov      dword ptr [eax + 0x1b4], edx
0x005081D8: mov      dword ptr [eax + 0x1d8], edx
0x005081DE: fld      dword ptr [ecx + 0x18]
0x005081E1: fstp     dword ptr [eax + 0x1b8]
0x005081E7: ret      
0x005081E8: int3     
0x005081E9: int3     
0x005081EA: int3     
0x005081EB: int3     
0x005081EC: int3     
0x005081ED: int3     
0x005081EE: int3     
0x005081EF: int3     
0x005081F0: fld      dword ptr [0x982e8c] ; [f32=0.12, u32=0x3DF5C28F]
0x005081F6: push     esi
0x005081F7: push     edi
0x005081F8: mov      esi, ecx
0x005081FA: mov      edi, dword ptr [esi + 0x34]
0x005081FD: push     0
0x005081FF: push     ecx