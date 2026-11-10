=== CRotasticPlayerSubcomponents (0x0056A000 .. 0x0057B500) ===
0x0056A000: fstp     dword ptr [ebx + 8]
0x0056A003: fld      dword ptr [edi + 0xc]
0x0056A006: fstp     dword ptr [ebx + 0xc]
0x0056A009: call     0x6b0250
0x0056A00E: add      esp, 0x1c
0x0056A011: jmp      0x56a062
0x0056A013: and      dword ptr [esi], 0xfffffffd
0x0056A016: fld      dword ptr [ebx]
0x0056A018: fstp     dword ptr [esp + 0x3c]
0x0056A01C: fld      dword ptr [ebx + 4]
0x0056A01F: fstp     dword ptr [esp + 0x40]
0x0056A023: fld      dword ptr [ebx + 8]
0x0056A026: fstp     dword ptr [esp + 0x44]
0x0056A02A: fld      dword ptr [ebx + 0xc]
0x0056A02D: fstp     dword ptr [esp + 0x48]
0x0056A031: fld      dword ptr [edi]
0x0056A033: fstp     dword ptr [ebx]
0x0056A035: fld      dword ptr [edi + 4]
0x0056A038: fstp     dword ptr [ebx + 4]
0x0056A03B: fld      dword ptr [edi + 8]
0x0056A03E: fstp     dword ptr [ebx + 8]
0x0056A041: fld      dword ptr [edi + 0xc]
0x0056A044: fstp     dword ptr [ebx + 0xc]
0x0056A047: fld      dword ptr [esp + 0x3c]
0x0056A04B: fstp     dword ptr [edi]
0x0056A04D: fld      dword ptr [esp + 0x40]
0x0056A051: fstp     dword ptr [edi + 4]
0x0056A054: fld      dword ptr [esp + 0x44]
0x0056A058: fstp     dword ptr [edi + 8]
0x0056A05B: fld      dword ptr [esp + 0x48]
0x0056A05F: fstp     dword ptr [edi + 0xc]
0x0056A062: fldz     
0x0056A064: fstp     dword ptr [esi + 0x50]
0x0056A067: test     byte ptr [esi], 4
0x0056A06A: je       0x56a2fd
0x0056A070: cmp      dword ptr [esi + 0xa4], 0
0x0056A077: mov      edi, dword ptr [esi + 0x94]
0x0056A07D: jne      0x56a0a3
0x0056A07F: fld      dword ptr [esi + 0x98]
0x0056A085: fadd     dword ptr [0xb76120]
0x0056A08B: fstp     dword ptr [esi + 0x98]
0x0056A091: fld      dword ptr [esi + 0x9c]
0x0056A097: fadd     dword ptr [0xb76120]
0x0056A09D: fstp     dword ptr [esi + 0x9c]
0x0056A0A3: fld      dword ptr [esi + 0x9c]
0x0056A0A9: fld      dword ptr [esi + 0xd4]
0x0056A0AF: fcompp   
0x0056A0B1: fnstsw   ax
0x0056A0B3: test     ah, 0x41
0x0056A0B6: jp       0x56a253
0x0056A0BC: fldz     
0x0056A0BE: sub      esp, 8
0x0056A0C1: fstp     dword ptr [esi + 0x9c]
0x0056A0C7: fld      dword ptr [esi + 0xd0]
0x0056A0CD: fstp     dword ptr [esp + 4]
0x0056A0D1: fld      dword ptr [esi + 0xd0]
0x0056A0D7: fchs     
0x0056A0D9: fstp     dword ptr [esp]
0x0056A0DC: call     0x52f240
0x0056A0E1: fmul     dword ptr [esi + 0xc0]
0x0056A0E7: fstp     dword ptr [esp + 0x44]
0x0056A0EB: fld      dword ptr [esi + 0xd0]
0x0056A0F1: fstp     dword ptr [esp + 4]
0x0056A0F5: fld      dword ptr [esi + 0xd0]
0x0056A0FB: fchs     
0x0056A0FD: fstp     dword ptr [esp]
0x0056A100: call     0x52f240
0x0056A105: fmul     dword ptr [esi + 0xc4]
0x0056A10B: fstp     dword ptr [esp + 0x48]
0x0056A10F: fld      dword ptr [esi + 0xd0]
0x0056A115: fstp     dword ptr [esp + 4]
0x0056A119: fld      dword ptr [esi + 0xd0]
0x0056A11F: fchs     
0x0056A121: fstp     dword ptr [esp]
0x0056A124: call     0x52f240
0x0056A129: fmul     dword ptr [esi + 0xc8]
0x0056A12F: add      esp, 8
0x0056A132: cmp      dword ptr [esi + 0xd8], 1
0x0056A139: fstp     dword ptr [esp + 0x44]
0x0056A13D: jne      0x56a15d
0x0056A13F: movzx    edx, byte ptr [edi + 1]
0x0056A143: mov      eax, dword ptr [edi + 4]
0x0056A146: lea      ecx, [esp + 0x3c]
0x0056A14A: push     ecx
0x0056A14B: mov      ecx, dword ptr [eax + 0x20]
0x0056A14E: mov      edx, dword ptr [ecx + edx*4]
0x0056A151: add      edx, 0x1c
0x0056A154: push     edx
0x0056A155: call     0x6b1d00
0x0056A15A: add      esp, 8
0x0056A15D: movzx    eax, byte ptr [edi + 1]
0x0056A161: mov      edx, dword ptr [edi + 4]
0x0056A164: mov      ecx, dword ptr [edx + 0x40]
0x0056A167: add      eax, eax
0x0056A169: add      eax, eax
0x0056A16B: mov      ecx, dword ptr [eax + ecx]
0x0056A16E: test     ecx, ecx
0x0056A170: je       0x56a1c3
0x0056A172: mov      ecx, dword ptr [ecx + 0x20]
0x0056A175: test     ecx, ecx
0x0056A177: je       0x56a1c3
0x0056A179: fld      dword ptr [esi + 0xb0]
0x0056A17F: mov      edx, 0x800
0x0056A184: fadd     dword ptr [esp + 0x3c]
0x0056A188: fstp     dword ptr [esp + 0x2c]
0x0056A18C: fld      dword ptr [esi + 0xb4]
0x0056A192: fadd     dword ptr [esp + 0x40]
0x0056A196: fstp     dword ptr [esp + 0x30]
0x0056A19A: fld      dword ptr [esi + 0xb8]
0x0056A1A0: fadd     dword ptr [esp + 0x44]
0x0056A1A4: fstp     dword ptr [esp + 0x34]
0x0056A1A8: fld      dword ptr [esp + 0x2c]
0x0056A1AC: fstp     dword ptr [ecx + 0xc]
0x0056A1AF: fld      dword ptr [esp + 0x30]
0x0056A1B3: fstp     dword ptr [ecx + 0x10]
0x0056A1B6: fld      dword ptr [esp + 0x34]
0x0056A1BA: fstp     dword ptr [ecx + 0x14]
0x0056A1BD: or       word ptr [ecx + 8], dx
0x0056A1C1: jmp      0x56a23d
0x0056A1C3: test     byte ptr [esi], 1
0x0056A1C6: je       0x56a1ef
0x0056A1C8: movzx    eax, byte ptr [edi + 1]
0x0056A1CC: mov      ecx, edx
0x0056A1CE: mov      edx, dword ptr [ecx + 0x20]
0x0056A1D1: mov      eax, dword ptr [edx + eax*4]
0x0056A1D4: fld      dword ptr [eax + 0xc]
0x0056A1D7: fadd     dword ptr [esp + 0x3c]
0x0056A1DB: fstp     dword ptr [esp + 0x2c]
0x0056A1DF: fld      dword ptr [eax + 0x10]
0x0056A1E2: fadd     dword ptr [esp + 0x40]
0x0056A1E6: fstp     dword ptr [esp + 0x30]
0x0056A1EA: fld      dword ptr [eax + 0x14]
0x0056A1ED: jmp      0x56a217
0x0056A1EF: fld      dword ptr [esi + 0xb0]
0x0056A1F5: mov      edx, dword ptr [edx + 0x20]
0x0056A1F8: fadd     dword ptr [esp + 0x3c]
0x0056A1FC: mov      eax, dword ptr [eax + edx]
0x0056A1FF: fstp     dword ptr [esp + 0x2c]
0x0056A203: fld      dword ptr [esi + 0xb4]
0x0056A209: fadd     dword ptr [esp + 0x40]
0x0056A20D: fstp     dword ptr [esp + 0x30]
0x0056A211: fld      dword ptr [esi + 0xb8]
0x0056A217: fadd     dword ptr [esp + 0x44]
0x0056A21B: mov      ecx, 0x800
0x0056A220: fstp     dword ptr [esp + 0x34]
0x0056A224: fld      dword ptr [esp + 0x2c]
0x0056A228: fstp     dword ptr [eax + 0xc]
0x0056A22B: fld      dword ptr [esp + 0x30]
0x0056A22F: fstp     dword ptr [eax + 0x10]
0x0056A232: fld      dword ptr [esp + 0x34]
0x0056A236: fstp     dword ptr [eax + 0x14]
0x0056A239: or       word ptr [eax + 8], cx
0x0056A23D: movzx    edx, byte ptr [edi + 1]
0x0056A241: mov      eax, dword ptr [edi + 4]
0x0056A244: mov      ecx, dword ptr [eax + 0x20]
0x0056A247: mov      eax, dword ptr [ecx + edx*4]
0x0056A24A: mov      edx, 0x800
0x0056A24F: or       word ptr [eax + 8], dx
0x0056A253: fld      dword ptr [esi + 0x98]
0x0056A259: fdiv     dword ptr [esi + 0xa0]
0x0056A25F: fcomp    qword ptr [0x9795c8] ; [f32=0, f64=1, u32=0x00000000]
0x0056A265: fnstsw   ax
0x0056A267: test     ah, 1
0x0056A26A: jne      0x56a2fd
0x0056A270: mov      eax, dword ptr [esi + 0xa8]
0x0056A276: test     eax, eax
0x0056A278: je       0x56a290
0x0056A27A: dec      eax
0x0056A27B: cmp      eax, 1
0x0056A27E: ja       0x56a2fd
0x0056A280: fldz     
0x0056A282: pop      edi
0x0056A283: fstp     dword ptr [esi + 0x98]
0x0056A289: pop      esi
0x0056A28A: pop      ebp
0x0056A28B: pop      ebx
0x0056A28C: add      esp, 0x3c
0x0056A28F: ret      
0x0056A290: and      dword ptr [esi], 0xfffffffb
0x0056A293: movzx    eax, byte ptr [edi + 1]
0x0056A297: mov      edx, dword ptr [edi + 4]
0x0056A29A: mov      ecx, dword ptr [edx + 0x40]
0x0056A29D: add      eax, eax
0x0056A29F: add      eax, eax
0x0056A2A1: mov      ecx, dword ptr [eax + ecx]
0x0056A2A4: test     ecx, ecx
0x0056A2A6: je       0x56a2bd
0x0056A2A8: mov      ecx, dword ptr [ecx + 0x20]
0x0056A2AB: test     ecx, ecx
0x0056A2AD: je       0x56a2bd
0x0056A2AF: add      esi, 0xb0
0x0056A2B5: push     esi
0x0056A2B6: call     0x509640
0x0056A2BB: jmp      0x56a2e7
0x0056A2BD: mov      edx, dword ptr [edx + 0x20]
0x0056A2C0: fld      dword ptr [esi + 0xb0]
0x0056A2C6: mov      eax, dword ptr [eax + edx]
0x0056A2C9: fstp     dword ptr [eax + 0xc]
0x0056A2CC: mov      ecx, 0x800
0x0056A2D1: fld      dword ptr [esi + 0xb4]
0x0056A2D7: fstp     dword ptr [eax + 0x10]
0x0056A2DA: fld      dword ptr [esi + 0xb8]
0x0056A2E0: fstp     dword ptr [eax + 0x14]
0x0056A2E3: or       word ptr [eax + 8], cx
0x0056A2E7: movzx    edx, byte ptr [edi + 1]
0x0056A2EB: mov      eax, dword ptr [edi + 4]
0x0056A2EE: mov      ecx, dword ptr [eax + 0x20]
0x0056A2F1: mov      eax, dword ptr [ecx + edx*4]
0x0056A2F4: mov      edx, 0x800
0x0056A2F9: or       word ptr [eax + 8], dx
0x0056A2FD: pop      edi
0x0056A2FE: pop      esi
0x0056A2FF: pop      ebp
0x0056A300: pop      ebx
0x0056A301: add      esp, 0x3c
0x0056A304: ret      
0x0056A305: int3     
0x0056A306: int3     
0x0056A307: int3     
0x0056A308: int3     
0x0056A309: int3     
0x0056A30A: int3     
0x0056A30B: int3     
0x0056A30C: int3     
0x0056A30D: int3     
0x0056A30E: int3     
0x0056A30F: int3     
0x0056A310: mov      ecx, dword ptr [0xb1ab18]
0x0056A316: call     0x491d80
0x0056A31B: mov      ecx, dword ptr [eax + 0x1c]
0x0056A31E: sub      ecx, dword ptr [eax + 0x18]
0x0056A321: sar      ecx, 2
0x0056A324: test     ecx, ecx
0x0056A326: ja       0x56a32b
0x0056A328: xor      eax, eax
0x0056A32A: ret      
0x0056A32B: mov      ecx, dword ptr [0xb1ab18]
0x0056A331: push     esi
0x0056A332: mov      esi, dword ptr [0xafce64]
0x0056A338: cmp      esi, -1
0x0056A33B: je       0x56a34d
0x0056A33D: call     0x491d80
0x0056A342: mov      edx, dword ptr [eax + 0x18]
0x0056A345: mov      eax, dword ptr [edx + esi*4]
0x0056A348: mov      eax, dword ptr [eax + 0x28]
0x0056A34B: pop      esi
0x0056A34C: ret      
0x0056A34D: mov      esi, dword ptr [0xafce44]
0x0056A353: call     0x491d80
0x0056A358: cmp      esi, -1
0x0056A35B: je       0x56a368
0x0056A35D: mov      ecx, dword ptr [eax + 0x18]
0x0056A360: mov      edx, dword ptr [ecx + esi*4]
0x0056A363: mov      eax, dword ptr [edx + 0x28]
0x0056A366: pop      esi
0x0056A367: ret      
0x0056A368: mov      eax, dword ptr [eax + 0x18]
0x0056A36B: mov      ecx, dword ptr [eax]
0x0056A36D: mov      eax, dword ptr [ecx + 0x28]
0x0056A370: pop      esi
0x0056A371: ret      
0x0056A372: int3     
0x0056A373: int3     
0x0056A374: int3     
0x0056A375: int3     
0x0056A376: int3     
0x0056A377: int3     
0x0056A378: int3     
0x0056A379: int3     
0x0056A37A: int3     
0x0056A37B: int3     
0x0056A37C: int3     
0x0056A37D: int3     
0x0056A37E: int3     
0x0056A37F: int3     
0x0056A380: mov      ecx, dword ptr [0xb1ab18]
0x0056A386: call     0x491d80
0x0056A38B: mov      ecx, dword ptr [eax + 0x18]
0x0056A38E: mov      edx, dword ptr [eax + 0x1c]
0x0056A391: mov      eax, dword ptr [esp + 4]
0x0056A395: sub      edx, ecx
0x0056A397: sar      edx, 2
0x0056A39A: cmp      edx, eax
0x0056A39C: ja       0x56a3a1
0x0056A39E: xor      eax, eax
0x0056A3A0: ret      
0x0056A3A1: mov      eax, dword ptr [ecx + eax*4]
0x0056A3A4: mov      eax, dword ptr [eax + 0x28]
0x0056A3A7: ret      
0x0056A3A8: int3     
0x0056A3A9: int3     
0x0056A3AA: int3     
0x0056A3AB: int3     
0x0056A3AC: int3     
0x0056A3AD: int3     
0x0056A3AE: int3     
0x0056A3AF: int3     
0x0056A3B0: push     esi
0x0056A3B1: mov      esi, dword ptr [esp + 8]
0x0056A3B5: push     esi
0x0056A3B6: call     0x573cc0
0x0056A3BB: add      esp, 4
0x0056A3BE: test     eax, eax
0x0056A3C0: je       0x56a3c6
0x0056A3C2: xor      eax, eax
0x0056A3C4: pop      esi
0x0056A3C5: ret      
0x0056A3C6: mov      ecx, dword ptr [0xb1ab18]
0x0056A3CC: call     0x491d80
0x0056A3D1: mov      ecx, dword ptr [eax + 0x18]
0x0056A3D4: mov      eax, dword ptr [eax + 0x1c]
0x0056A3D7: sub      eax, ecx
0x0056A3D9: sar      eax, 2
0x0056A3DC: cmp      eax, esi
0x0056A3DE: jbe      0x56a3c2
0x0056A3E0: mov      ecx, dword ptr [ecx + esi*4]
0x0056A3E3: mov      eax, dword ptr [ecx + 0x2c]
0x0056A3E6: test     eax, eax
0x0056A3E8: jne      0x56a3fd
0x0056A3EA: mov      ecx, dword ptr [0xb1ab18]
0x0056A3F0: call     0x491d80
0x0056A3F5: mov      edx, dword ptr [eax + 0x18]
0x0056A3F8: mov      eax, dword ptr [edx]
0x0056A3FA: mov      eax, dword ptr [eax + 0x2c]
0x0056A3FD: pop      esi
0x0056A3FE: ret      
0x0056A3FF: int3     
0x0056A400: movzx    eax, byte ptr [ecx + 0xd40]
0x0056A407: mov      edx, dword ptr [esp + 4]
0x0056A40B: lea      eax, [eax + eax*2]
0x0056A40E: lea      eax, [ecx + eax*4 + 0xc80]
0x0056A415: fld      dword ptr [edx]
0x0056A417: fstp     dword ptr [eax]
0x0056A419: fld      dword ptr [edx + 4]
0x0056A41C: xor      dl, dl
0x0056A41E: fstp     dword ptr [eax + 4]
0x0056A421: fld      qword ptr [0xb75ff0]
0x0056A427: fstp     dword ptr [eax + 8]
0x0056A42A: inc      byte ptr [ecx + 0xd40]
0x0056A430: mov      al, byte ptr [ecx + 0xd40]
0x0056A436: cmp      al, 0x10
0x0056A438: jb       0x56a440
0x0056A43A: mov      byte ptr [ecx + 0xd40], dl
0x0056A440: mov      al, byte ptr [ecx + 0xd41]
0x0056A446: cmp      byte ptr [ecx + 0xd40], al
0x0056A44C: jne      0x56a460
0x0056A44E: inc      al
0x0056A450: mov      byte ptr [ecx + 0xd41], al
0x0056A456: cmp      al, 0x10
0x0056A458: jb       0x56a460
0x0056A45A: mov      byte ptr [ecx + 0xd41], dl
0x0056A460: ret      4
0x0056A463: int3     
0x0056A464: int3     
0x0056A465: int3     
0x0056A466: int3     
0x0056A467: int3     
0x0056A468: int3     
0x0056A469: int3     
0x0056A46A: int3     
0x0056A46B: int3     
0x0056A46C: int3     
0x0056A46D: int3     
0x0056A46E: int3     
0x0056A46F: int3     
0x0056A470: mov      edx, dword ptr [esp + 4]
0x0056A474: test     edx, edx
0x0056A476: jne      0x56a49b
0x0056A478: mov      al, byte ptr [ecx + 0xd41]
0x0056A47E: cmp      byte ptr [ecx + 0xd40], al
0x0056A484: jne      0x56a48b
0x0056A486: xor      eax, eax
0x0056A488: ret      4
0x0056A48B: movzx    eax, al
0x0056A48E: lea      eax, [eax + eax*2]
0x0056A491: lea      eax, [ecx + eax*4 + 0xc80]
0x0056A498: ret      4
0x0056A49B: movzx    eax, byte ptr [ecx + 0xd40]
0x0056A4A2: push     esi
0x0056A4A3: lea      esi, [ecx + 0xd40]
0x0056A4A9: lea      eax, [eax + eax*2]
0x0056A4AC: push     edi
0x0056A4AD: lea      edi, [ecx + eax*4 + 0xc80]
0x0056A4B4: cmp      edx, edi
0x0056A4B6: jne      0x56a4bf
0x0056A4B8: pop      edi
0x0056A4B9: xor      eax, eax
0x0056A4BB: pop      esi
0x0056A4BC: ret      4
0x0056A4BF: add      edx, 0xc
0x0056A4C2: cmp      edx, esi
0x0056A4C4: jb       0x56a4cc
0x0056A4C6: lea      edx, [ecx + 0xc80]
0x0056A4CC: mov      eax, edx
0x0056A4CE: sub      eax, edi
0x0056A4D0: neg      eax
0x0056A4D2: sbb      eax, eax
0x0056A4D4: pop      edi
0x0056A4D5: and      eax, edx
0x0056A4D7: pop      esi
0x0056A4D8: ret      4
0x0056A4DB: int3     
0x0056A4DC: int3     
0x0056A4DD: int3     
0x0056A4DE: int3     
0x0056A4DF: int3     
0x0056A4E0: mov      edx, dword ptr [esp + 4]
0x0056A4E4: test     edx, edx
0x0056A4E6: jne      0x56a50b
0x0056A4E8: mov      al, byte ptr [ecx + 0xd40]
0x0056A4EE: cmp      al, byte ptr [ecx + 0xd41]
0x0056A4F4: jne      0x56a4fb
0x0056A4F6: xor      eax, eax
0x0056A4F8: ret      4
0x0056A4FB: movzx    eax, al
0x0056A4FE: lea      eax, [eax + eax*2]
0x0056A501: lea      eax, [ecx + eax*4 + 0xc80]
0x0056A508: ret      4
0x0056A50B: movzx    eax, byte ptr [ecx + 0xd41]
0x0056A512: lea      eax, [eax + eax*2]
0x0056A515: lea      eax, [ecx + eax*4 + 0xc80]
0x0056A51C: cmp      edx, eax
0x0056A51E: je       0x56a4f6
0x0056A520: sub      edx, 0xc
0x0056A523: lea      eax, [ecx + 0xc80]
0x0056A529: cmp      edx, eax
0x0056A52B: jae      0x56a533
0x0056A52D: lea      edx, [ecx + 0xd34]
0x0056A533: movzx    eax, byte ptr [ecx + 0xd40]
0x0056A53A: lea      eax, [eax + eax*2]
0x0056A53D: lea      ecx, [ecx + eax*4 + 0xc80]
0x0056A544: mov      eax, edx
0x0056A546: sub      eax, ecx
0x0056A548: neg      eax
0x0056A54A: sbb      eax, eax
0x0056A54C: and      eax, edx
0x0056A54E: ret      4
0x0056A551: int3     
0x0056A552: int3     
0x0056A553: int3     
0x0056A554: int3     
0x0056A555: int3     
0x0056A556: int3     
0x0056A557: int3     
0x0056A558: int3     
0x0056A559: int3     
0x0056A55A: int3     
0x0056A55B: int3     
0x0056A55C: int3     
0x0056A55D: int3     
0x0056A55E: int3     
0x0056A55F: int3     
0x0056A560: mov      dword ptr [ecx], 0x992148
0x0056A566: ret      
0x0056A567: int3     
0x0056A568: int3     
0x0056A569: int3     
0x0056A56A: int3     
0x0056A56B: int3     
0x0056A56C: int3     
0x0056A56D: int3     
0x0056A56E: int3     
0x0056A56F: int3     
0x0056A570: test     byte ptr [esp + 4], 1
0x0056A575: push     esi
0x0056A576: mov      esi, ecx
0x0056A578: mov      dword ptr [esi], 0x992148
0x0056A57E: je       0x56a589
0x0056A580: push     esi
0x0056A581: call     0x688fb0
0x0056A586: add      esp, 4
0x0056A589: mov      eax, esi
0x0056A58B: pop      esi
0x0056A58C: ret      4
0x0056A58F: int3     
0x0056A590: mov      eax, dword ptr [ecx + 0x40]
0x0056A593: mov      ecx, dword ptr [esp + 4]
0x0056A597: mov      dword ptr [eax + 0x1c8], ecx
0x0056A59D: ret      4
0x0056A5A0: fldz     
0x0056A5A2: mov      ecx, dword ptr [ecx + 0x40]
0x0056A5A5: fcom     dword ptr [ecx + 0xd54]
0x0056A5AB: xor      edx, edx
0x0056A5AD: fnstsw   ax
0x0056A5AF: test     ah, 5
0x0056A5B2: jp       0x56a5c7
0x0056A5B4: fcomp    dword ptr [ecx + 0xd50]
0x0056A5BA: fnstsw   ax
0x0056A5BC: test     ah, 1
0x0056A5BF: jne      0x56a5c9
0x0056A5C1: lea      eax, [edx + 1]
0x0056A5C4: ret      8
0x0056A5C7: fstp     st(0)
0x0056A5C9: fld1     
0x0056A5CB: fcom     dword ptr [ecx + 0xd48]
0x0056A5D1: fnstsw   ax
0x0056A5D3: test     ah, 0x41
0x0056A5D6: jne      0x56a5f7
0x0056A5D8: fcomp    dword ptr [ecx + 0xd4c]
0x0056A5DE: fnstsw   ax
0x0056A5E0: test     ah, 0x44
0x0056A5E3: jp       0x56a60b
0x0056A5E5: mov      eax, dword ptr [esp + 8]
0x0056A5E9: mov      dword ptr [eax], 1
0x0056A5EF: mov      eax, 1
0x0056A5F4: ret      8
0x0056A5F7: mov      ecx, dword ptr [esp + 4]
0x0056A5FB: fstp     st(0)
0x0056A5FD: mov      dword ptr [ecx], 1
0x0056A603: mov      eax, 1
0x0056A608: ret      8
0x0056A60B: mov      eax, edx
0x0056A60D: ret      8
0x0056A610: mov      eax, dword ptr [esp + 4]
0x0056A614: mov      dword ptr [eax], 1
0x0056A61A: mov      eax, 1
0x0056A61F: ret      8
0x0056A622: int3     
0x0056A623: int3     
0x0056A624: int3     
0x0056A625: int3     
0x0056A626: int3     
0x0056A627: int3     
0x0056A628: int3     
0x0056A629: int3     
0x0056A62A: int3     
0x0056A62B: int3     
0x0056A62C: int3     
0x0056A62D: int3     
0x0056A62E: int3     
0x0056A62F: int3     
0x0056A630: push     esi
0x0056A631: mov      esi, ecx
0x0056A633: mov      eax, dword ptr [esi + 4]
0x0056A636: mov      dword ptr [esi + 0x3c], 1
0x0056A63D: mov      dword ptr [esi + 0x40], eax
0x0056A640: mov      eax, dword ptr [eax + 0x1b4]
0x0056A646: mov      edx, dword ptr [eax]
0x0056A648: mov      edx, dword ptr [edx + 0xc]
0x0056A64B: push     0
0x0056A64D: lea      ecx, [esi + 0xc]
0x0056A650: push     ecx
0x0056A651: mov      ecx, eax
0x0056A653: call     edx
0x0056A655: fldz     
0x0056A657: mov      eax, dword ptr [esi + 0x40]
0x0056A65A: mov      dword ptr [eax + 0x1c8], 0
0x0056A664: mov      eax, dword ptr [esi + 0x40]
0x0056A667: lea      ecx, [eax + 0x2bc]
0x0056A66D: mov      dword ptr [eax + 0xc1c], ecx
0x0056A673: mov      edx, dword ptr [esi + 0x40]
0x0056A676: fstp     dword ptr [edx + 0xc20]
0x0056A67C: pop      esi
0x0056A67D: ret      4
0x0056A680: push     esi
0x0056A681: mov      esi, ecx
0x0056A683: cmp      dword ptr [esi + 0x3c], 0
0x0056A687: je       0x56a69d
0x0056A689: mov      eax, dword ptr [esi + 4]
0x0056A68C: mov      ecx, dword ptr [eax + 0x1b4]
0x0056A692: mov      edx, dword ptr [ecx]
0x0056A694: mov      edx, dword ptr [edx + 0x10]
0x0056A697: lea      eax, [esi + 0xc]
0x0056A69A: push     eax
0x0056A69B: call     edx
0x0056A69D: mov      dword ptr [esi + 0x3c], 0
0x0056A6A4: pop      esi
0x0056A6A5: ret      
0x0056A6A6: int3     
0x0056A6A7: int3     
0x0056A6A8: int3     
0x0056A6A9: int3     
0x0056A6AA: int3     
0x0056A6AB: int3     
0x0056A6AC: int3     
0x0056A6AD: int3     
0x0056A6AE: int3     
0x0056A6AF: int3     
0x0056A6B0: push     esi
0x0056A6B1: mov      esi, ecx
0x0056A6B3: mov      ecx, dword ptr [esi + 8]
0x0056A6B6: call     0x7f9590
0x0056A6BB: fldz     
0x0056A6BD: mov      ecx, dword ptr [esp + 8]
0x0056A6C1: fstp     dword ptr [ecx + 8]
0x0056A6C4: mov      eax, dword ptr [esi + 8]
0x0056A6C7: fld      dword ptr [ecx]
0x0056A6C9: movzx    edx, byte ptr [eax + 1]
0x0056A6CD: mov      eax, dword ptr [eax + 4]
0x0056A6D0: mov      eax, dword ptr [eax + 0x20]
0x0056A6D3: mov      eax, dword ptr [eax + edx*4]
0x0056A6D6: fstp     dword ptr [eax + 0xc]
0x0056A6D9: fld      dword ptr [ecx + 4]
0x0056A6DC: fstp     dword ptr [eax + 0x10]
0x0056A6DF: fld      dword ptr [ecx + 8]
0x0056A6E2: mov      ecx, 0x800
0x0056A6E7: fstp     dword ptr [eax + 0x14]
0x0056A6EA: or       word ptr [eax + 8], cx
0x0056A6EE: mov      eax, dword ptr [esi + 8]
0x0056A6F1: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0056A6F7: movzx    edx, byte ptr [eax + 1]
0x0056A6FB: mov      eax, dword ptr [eax + 4]
0x0056A6FE: mov      ecx, dword ptr [eax + 0x34]
0x0056A701: mov      ecx, dword ptr [ecx + edx*4]
0x0056A704: mov      edx, dword ptr [ecx]
0x0056A706: mov      eax, dword ptr [edx + 0xe8]
0x0056A70C: push     ecx
0x0056A70D: fstp     dword ptr [esp]
0x0056A710: push     0
0x0056A712: push     1
0x0056A714: call     eax
0x0056A716: mov      ecx, dword ptr [esi + 0x40]
0x0056A719: mov      edx, dword ptr [0xb1bac8]
0x0056A71F: add      ecx, 0xdb0
0x0056A725: push     ecx
0x0056A726: push     0
0x0056A728: push     edx
0x0056A729: call     0x52d190
0x0056A72E: add      esp, 0xc
0x0056A731: pop      esi
0x0056A732: ret      4
0x0056A735: int3     
0x0056A736: int3     
0x0056A737: int3     
0x0056A738: int3     
0x0056A739: int3     
0x0056A73A: int3     
0x0056A73B: int3     
0x0056A73C: int3     
0x0056A73D: int3     
0x0056A73E: int3     
0x0056A73F: int3     
0x0056A740: sub      esp, 0x24
0x0056A743: push     esi
0x0056A744: push     edi
0x0056A745: mov      esi, ecx
0x0056A747: mov      ecx, dword ptr [esi + 0x40]
0x0056A74A: lea      eax, [esp + 0x1c]
0x0056A74E: push     eax
0x0056A74F: call     0x540780
0x0056A754: fld      dword ptr [0xb76120]
0x0056A75A: mov      eax, dword ptr [esi + 0x40]
0x0056A75D: fst      dword ptr [esp + 8]
0x0056A761: fmul     dword ptr [esp + 0x1c]
0x0056A765: mov      edx, dword ptr [esi + 8]
0x0056A768: fadd     dword ptr [eax + 0x28c]
0x0056A76E: fstp     dword ptr [eax + 0x28c]
0x0056A774: fld      dword ptr [esp + 0x20]
0x0056A778: fld      dword ptr [esp + 8]
0x0056A77C: fld      st(0)
0x0056A77E: fmulp    st(2)
0x0056A780: fld      dword ptr [eax + 0x290]
0x0056A786: faddp    st(2)
0x0056A788: fxch     st(1)
0x0056A78A: fstp     dword ptr [eax + 0x290]
0x0056A790: fmul     dword ptr [esp + 0x24]
0x0056A794: fadd     dword ptr [eax + 0x294]
0x0056A79A: fstp     dword ptr [eax + 0x294]
0x0056A7A0: movzx    ecx, byte ptr [edx + 1]
0x0056A7A4: fld      dword ptr [eax + 0x28c]
0x0056A7AA: mov      edi, dword ptr [edx + 4]
0x0056A7AD: mov      edi, dword ptr [edi + 0x1c]
0x0056A7B0: fld      dword ptr [0xb76120]
0x0056A7B6: mov      ecx, dword ptr [edi + ecx*4]
0x0056A7B9: fld      st(0)
0x0056A7BB: fmulp    st(2)
0x0056A7BD: add      ecx, 0xc
0x0056A7C0: fld      dword ptr [ecx]
0x0056A7C2: faddp    st(2)
0x0056A7C4: fxch     st(1)
0x0056A7C6: fstp     dword ptr [esp + 0xc]
0x0056A7CA: fld      dword ptr [eax + 0x290]
0x0056A7D0: fmul     st(1)
0x0056A7D2: fadd     dword ptr [ecx + 4]
0x0056A7D5: fstp     dword ptr [esp + 0x10]
0x0056A7D9: fmul     dword ptr [eax + 0x294]
0x0056A7DF: movzx    eax, byte ptr [edx + 1]
0x0056A7E3: fadd     dword ptr [ecx + 8]
0x0056A7E6: mov      ecx, dword ptr [edx + 4]
0x0056A7E9: mov      edx, dword ptr [ecx + 0x20]
0x0056A7EC: mov      eax, dword ptr [edx + eax*4]
0x0056A7EF: fstp     dword ptr [esp + 0x14]
0x0056A7F3: mov      ecx, 0x800
0x0056A7F8: fld      dword ptr [esp + 0xc]
0x0056A7FC: fstp     dword ptr [eax + 0xc]
0x0056A7FF: fld      dword ptr [esp + 0x10]
0x0056A803: fstp     dword ptr [eax + 0x10]
0x0056A806: fld      dword ptr [esp + 0x14]
0x0056A80A: fstp     dword ptr [eax + 0x14]
0x0056A80D: or       word ptr [eax + 8], cx
0x0056A811: mov      esi, dword ptr [esi + 8]
0x0056A814: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0056A81A: movzx    edx, byte ptr [esi + 1]
0x0056A81E: mov      eax, dword ptr [esi + 4]
0x0056A821: mov      ecx, dword ptr [eax + 0x34]
0x0056A824: mov      ecx, dword ptr [ecx + edx*4]
0x0056A827: mov      edx, dword ptr [ecx]
0x0056A829: mov      eax, dword ptr [edx + 0xe8]
0x0056A82F: push     ecx
0x0056A830: fstp     dword ptr [esp]
0x0056A833: push     0
0x0056A835: push     1
0x0056A837: call     eax
0x0056A839: pop      edi
0x0056A83A: pop      esi
0x0056A83B: add      esp, 0x24
0x0056A83E: ret      
0x0056A83F: int3     
0x0056A840: sub      esp, 0x14
0x0056A843: mov      eax, dword ptr [ecx + 8]
0x0056A846: movzx    edx, byte ptr [eax + 1]
0x0056A84A: mov      eax, dword ptr [eax + 4]
0x0056A84D: mov      eax, dword ptr [eax + 0x1c]
0x0056A850: mov      eax, dword ptr [eax + edx*4]
0x0056A853: push     esi
0x0056A854: mov      esi, dword ptr [ecx + 0x40]
0x0056A857: mov      ecx, dword ptr [esi + 0x23c]
0x0056A85D: movzx    edx, byte ptr [ecx + 1]
0x0056A861: mov      ecx, dword ptr [ecx + 4]
0x0056A864: mov      ecx, dword ptr [ecx + 0x1c]
0x0056A867: mov      ecx, dword ptr [ecx + edx*4]
0x0056A86A: add      ecx, 0xc
0x0056A86D: add      eax, 0xc
0x0056A870: fld      dword ptr [ecx]
0x0056A872: fsub     dword ptr [eax]
0x0056A874: fstp     dword ptr [esp + 8]
0x0056A878: fld      dword ptr [ecx + 4]
0x0056A87B: fsub     dword ptr [eax + 4]
0x0056A87E: fstp     dword ptr [esp + 0xc]
0x0056A882: fld      dword ptr [ecx + 8]
0x0056A885: fsub     dword ptr [eax + 8]
0x0056A888: fstp     dword ptr [esp + 0x10]
0x0056A88C: fld      dword ptr [esp + 0xc]
0x0056A890: fld      dword ptr [esp + 8]
0x0056A894: fld      dword ptr [esp + 0x10]
0x0056A898: fld      st(1)
0x0056A89A: fmulp    st(2)
0x0056A89C: fld      st(2)
0x0056A89E: fmulp    st(3)
0x0056A8A0: fxch     st(1)
0x0056A8A2: faddp    st(2)
0x0056A8A4: fmul     st(0), st(0)
0x0056A8A6: faddp    st(1)
0x0056A8A8: fstp     dword ptr [esp + 4]
0x0056A8AC: fld      dword ptr [esp + 4]
0x0056A8B0: call     0x8eb930
0x0056A8B5: fstp     dword ptr [esp + 4]
0x0056A8B9: fld      dword ptr [esp + 4]
0x0056A8BD: fstp     dword ptr [esi + 0xc38]
0x0056A8C3: pop      esi
0x0056A8C4: add      esp, 0x14
0x0056A8C7: ret      
0x0056A8C8: int3     
0x0056A8C9: int3     
0x0056A8CA: int3     
0x0056A8CB: int3     
0x0056A8CC: int3     
0x0056A8CD: int3     
0x0056A8CE: int3     
0x0056A8CF: int3     
0x0056A8D0: sub      esp, 0x44
0x0056A8D3: push     esi
0x0056A8D4: mov      esi, ecx
0x0056A8D6: mov      eax, dword ptr [esi + 8]
0x0056A8D9: movzx    edx, byte ptr [eax + 1]
0x0056A8DD: mov      eax, dword ptr [eax + 4]
0x0056A8E0: mov      eax, dword ptr [eax + 0x1c]
0x0056A8E3: mov      eax, dword ptr [eax + edx*4]
0x0056A8E6: mov      ecx, dword ptr [esi + 0x40]
0x0056A8E9: mov      ecx, dword ptr [ecx + 0x23c]
0x0056A8EF: movzx    edx, byte ptr [ecx + 1]
0x0056A8F3: mov      ecx, dword ptr [ecx + 4]
0x0056A8F6: mov      ecx, dword ptr [ecx + 0x1c]
0x0056A8F9: mov      ecx, dword ptr [ecx + edx*4]
0x0056A8FC: add      ecx, 0xc
0x0056A8FF: add      eax, 0xc
0x0056A902: lea      edx, [esp + 8]
0x0056A906: fld      dword ptr [ecx]
0x0056A908: push     edx
0x0056A909: fsub     dword ptr [eax]
0x0056A90B: fstp     dword ptr [esp + 0xc]
0x0056A90F: fld      dword ptr [ecx + 4]
0x0056A912: fsub     dword ptr [eax + 4]
0x0056A915: fstp     dword ptr [esp + 0x10]
0x0056A919: fld      dword ptr [ecx + 8]
0x0056A91C: fsub     dword ptr [eax + 8]
0x0056A91F: lea      eax, [esp + 0x3c]
0x0056A923: push     eax
0x0056A924: fstp     dword ptr [esp + 0x18]
0x0056A928: call     0x6b2160
0x0056A92D: mov      ecx, dword ptr [esi + 0x40]
0x0056A930: fstp     st(0)
0x0056A932: fld      dword ptr [esp + 0x44]
0x0056A936: add      ecx, 0x28c
0x0056A93C: fstp     dword ptr [esp + 0x20]
0x0056A940: push     ecx
0x0056A941: fld      dword ptr [esp + 0x44]
0x0056A945: lea      edx, [esp + 0x34]
0x0056A949: fchs     
0x0056A94B: push     edx
0x0056A94C: fstp     dword ptr [esp + 0x2c]
0x0056A950: call     0x6b2160
0x0056A955: mov      ecx, dword ptr [0xb76124]
0x0056A95B: fstp     st(0)
0x0056A95D: add      esp, 0x10
0x0056A960: push     0
0x0056A962: push     0x992134
0x0056A967: call     0x6e60c0
0x0056A96C: test     eax, eax
0x0056A96E: je       0x56a9f8
0x0056A974: cmp      byte ptr [eax + 0x28], 0x31
0x0056A978: jne      0x56a9f8
0x0056A97A: fld      dword ptr [esp + 0x2c]
0x0056A97E: mov      eax, dword ptr [esi + 0x40]
0x0056A981: fmul     dword ptr [esp + 0x1c]
0x0056A985: mov      ecx, dword ptr [eax + 0x1e4]
0x0056A98B: fld      dword ptr [esp + 0x28]
0x0056A98F: fmul     dword ptr [esp + 0x18]
0x0056A993: faddp    st(1)
0x0056A995: fld      dword ptr [esp + 0x30]
0x0056A999: fmul     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x0056A99F: faddp    st(1)
0x0056A9A1: fstp     dword ptr [esp + 4]
0x0056A9A5: fld      dword ptr [esp + 4]
0x0056A9A9: fabs     
0x0056A9AB: fstp     dword ptr [esp + 4]
0x0056A9AF: fld      dword ptr [esp + 4]
0x0056A9B3: fild     dword ptr [eax + 0xc48]
0x0056A9B9: fmul     dword ptr [ecx + 0x28]
0x0056A9BC: fadd     dword ptr [ecx + 0x24]
0x0056A9BF: fcompp   
0x0056A9C1: fnstsw   ax
0x0056A9C3: test     ah, 0x41
0x0056A9C6: jp       0x56a9e9
0x0056A9C8: push     edi
0x0056A9C9: mov      edi, dword ptr [esi + 0x40]
0x0056A9CC: mov      eax, dword ptr [edi + 0xc48]
0x0056A9D2: push     5
0x0056A9D4: inc      eax
0x0056A9D5: push     0
0x0056A9D7: push     eax
0x0056A9D8: call     0x5194e0
0x0056A9DD: add      esp, 0xc
0x0056A9E0: mov      dword ptr [edi + 0xc48], eax
0x0056A9E6: pop      edi
0x0056A9E7: jmp      0x56aa05
0x0056A9E9: mov      ecx, dword ptr [esi + 0x40]
0x0056A9EC: mov      dword ptr [ecx + 0xc48], 0
0x0056A9F6: jmp      0x56aa05
0x0056A9F8: mov      edx, dword ptr [esi + 0x40]
0x0056A9FB: mov      dword ptr [edx + 0xc48], 0
0x0056AA05: mov      eax, dword ptr [esi + 0x40]
0x0056AA08: fild     dword ptr [eax + 0xc48]
0x0056AA0E: mov      ecx, dword ptr [eax + 0x1e4]
0x0056AA14: fmul     dword ptr [ecx + 0x20]
0x0056AA17: fadd     dword ptr [ecx + 0x18]
0x0056AA1A: fstp     dword ptr [eax + 0xc3c]
0x0056AA20: mov      eax, dword ptr [esi + 0x40]
0x0056AA23: fld      dword ptr [eax + 0xc3c]
0x0056AA29: fdiv     dword ptr [eax + 0xc44]
0x0056AA2F: fstp     dword ptr [eax + 0xc40]
0x0056AA35: mov      esi, dword ptr [esi + 0x40]
0x0056AA38: fld      dword ptr [esi + 0x28c]
0x0056AA3E: fstp     dword ptr [esi + 0xc24]
0x0056AA44: fld      dword ptr [esi + 0x290]
0x0056AA4A: fstp     dword ptr [esi + 0xc28]
0x0056AA50: fld      dword ptr [esi + 0x294]
0x0056AA56: fstp     dword ptr [esi + 0xc2c]
0x0056AA5C: fld      dword ptr [esi + 0x298]
0x0056AA62: fstp     dword ptr [esi + 0xc30]
0x0056AA68: pop      esi
0x0056AA69: add      esp, 0x44
0x0056AA6C: ret      
0x0056AA6D: int3     
0x0056AA6E: int3     
0x0056AA6F: int3     
0x0056AA70: sub      esp, 0x50
0x0056AA73: mov      edx, ecx
0x0056AA75: mov      eax, dword ptr [edx + 0x40]
0x0056AA78: mov      ecx, dword ptr [eax + 0x1e4]
0x0056AA7E: fld      dword ptr [ecx + 0x3c]
0x0056AA81: push     ebx
0x0056AA82: fstp     dword ptr [esp + 0x18]
0x0056AA86: push     ebp
0x0056AA87: fld      qword ptr [0xb75ff0]
0x0056AA8D: push     esi
0x0056AA8E: fstp     dword ptr [esp + 0x1c]
0x0056AA92: push     edi
0x0056AA93: fld      dword ptr [esp + 0x20]
0x0056AA97: mov      dword ptr [esp + 0x28], edx
0x0056AA9B: fsub     dword ptr [ecx + 0x38]
0x0056AA9E: movzx    ecx, byte ptr [eax + 0xd40]
0x0056AAA5: lea      ecx, [ecx + ecx*2]
0x0056AAA8: lea      edi, [eax + ecx*4 + 0xc80]
0x0056AAAF: movzx    ecx, byte ptr [eax + 0xd41]
0x0056AAB6: fstp     dword ptr [esp + 0x1c]
0x0056AABA: fld      dword ptr [esp + 0x1c]
0x0056AABE: lea      ecx, [ecx + ecx*2]
0x0056AAC1: lea      ebx, [eax + ecx*4 + 0xc80]
0x0056AAC8: xor      ecx, ecx
0x0056AACA: mov      esi, eax
0x0056AACC: test     ecx, ecx
0x0056AACE: jne      0x56aaed
0x0056AAD0: mov      al, byte ptr [esi + 0xd41]
0x0056AAD6: cmp      byte ptr [esi + 0xd40], al
0x0056AADC: je       0x56ab2f
0x0056AADE: movzx    eax, al
0x0056AAE1: lea      edx, [eax + eax*2]
0x0056AAE4: lea      ecx, [esi + edx*4 + 0xc80]
0x0056AAEB: jmp      0x56ab19
0x0056AAED: movzx    eax, byte ptr [esi + 0xd40]
0x0056AAF4: lea      edx, [esi + 0xd40]
0x0056AAFA: lea      eax, [eax + eax*2]
0x0056AAFD: lea      eax, [esi + eax*4 + 0xc80]
0x0056AB04: cmp      ecx, eax
0x0056AB06: je       0x56ab2f
0x0056AB08: add      ecx, 0xc
0x0056AB0B: cmp      ecx, edx
0x0056AB0D: jb       0x56ab15
0x0056AB0F: lea      ecx, [esi + 0xc80]
0x0056AB15: cmp      ecx, eax
0x0056AB17: je       0x56ab2f
0x0056AB19: test     ecx, ecx
0x0056AB1B: je       0x56ab2f
0x0056AB1D: fld      dword ptr [ecx + 8]
0x0056AB20: fcomp    st(1)
0x0056AB22: fnstsw   ax
0x0056AB24: test     ah, 5
0x0056AB27: jp       0x56ab2d
0x0056AB29: mov      ebx, ecx
0x0056AB2B: jmp      0x56aacc
0x0056AB2D: mov      edi, ecx
0x0056AB2F: fld      dword ptr [edi + 8]
0x0056AB32: fsub     dword ptr [ebx + 8]
0x0056AB35: fstp     dword ptr [esp + 0x18]
0x0056AB39: fldz     
0x0056AB3B: fcom     dword ptr [esp + 0x18]
0x0056AB3F: fnstsw   ax
0x0056AB41: test     ah, 0x44
0x0056AB44: jp       0x56ab50
0x0056AB46: fld      dword ptr [0x992178] ; [f32=0.0001, u32=0x38D1B717]
0x0056AB4C: fstp     dword ptr [esp + 0x18]
0x0056AB50: fld      dword ptr [edi + 8]
0x0056AB53: push     ebx
0x0056AB54: fsub     st(2)
0x0056AB56: mov      ecx, esi
0x0056AB58: fdiv     dword ptr [esp + 0x1c]
0x0056AB5C: fld1     
0x0056AB5E: fld      st(0)
0x0056AB60: fsubrp   st(2)
0x0056AB62: fxch     st(1)
0x0056AB64: fstp     dword ptr [esp + 0x24]
0x0056AB68: fld      dword ptr [esp + 0x24]
0x0056AB6C: fld      st(0)
0x0056AB6E: fsubp    st(2)
0x0056AB70: fxch     st(1)
0x0056AB72: fstp     dword ptr [esp + 0x24]
0x0056AB76: fld      dword ptr [ebx]
0x0056AB78: fld      dword ptr [esp + 0x24]
0x0056AB7C: fld      st(0)
0x0056AB7E: fmulp    st(2)
0x0056AB80: fld      st(2)
0x0056AB82: fmul     dword ptr [edi]
0x0056AB84: faddp    st(2)
0x0056AB86: fxch     st(1)
0x0056AB88: fstp     dword ptr [esp + 0x14]
0x0056AB8C: fld      dword ptr [edi + 4]
0x0056AB8F: fmulp    st(2)
0x0056AB91: fmul     dword ptr [ebx + 4]
0x0056AB94: faddp    st(1)
0x0056AB96: fstp     dword ptr [esp + 0x18]
0x0056AB9A: fld      dword ptr [esp + 0x14]
0x0056AB9E: fstp     dword ptr [esp + 0x30]
0x0056ABA2: fld      dword ptr [esp + 0x18]
0x0056ABA6: fstp     dword ptr [esp + 0x34]
0x0056ABAA: fxch     st(1)
0x0056ABAC: fstp     dword ptr [esp + 0x38]
0x0056ABB0: fstp     dword ptr [esp + 0x1c]
0x0056ABB4: fld      dword ptr [esp + 0x28]
0x0056ABB8: fmul     st(0), st(0)
0x0056ABBA: fstp     dword ptr [esp + 0x24]
0x0056ABBE: call     0x56a4e0
0x0056ABC3: lea      ecx, [esp + 0x2c]
0x0056ABC7: mov      dword ptr [esp + 0x40], ecx
0x0056ABCB: push     edi
0x0056ABCC: mov      ecx, esi
0x0056ABCE: mov      dword ptr [esp + 0x3c], eax
0x0056ABD2: mov      dword ptr [esp + 0x40], ebx
0x0056ABD6: mov      dword ptr [esp + 0x48], edi
0x0056ABDA: call     0x56a470
0x0056ABDF: fld      dword ptr [esp + 0x20]
0x0056ABE3: fldz     
0x0056ABE5: mov      ebp, eax
0x0056ABE7: mov      dword ptr [esp + 0x48], ebp
0x0056ABEB: xor      esi, esi
0x0056ABED: mov      eax, dword ptr [esp + esi + 0x38]
0x0056ABF1: test     eax, eax
0x0056ABF3: jne      0x56abfb
0x0056ABF5: fst      dword ptr [esp + esi + 0x4c]
0x0056ABF9: jmp      0x56ac65
0x0056ABFB: fstp     st(0)
0x0056ABFD: fld      dword ptr [eax + 8]
0x0056AC00: fsub     dword ptr [esp + 0x1c]
0x0056AC04: fmul     qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x0056AC0A: fstp     dword ptr [esp + 0x24]
0x0056AC0E: fld      dword ptr [esp + 0x24]
0x0056AC12: fmul     st(0), st(0)
0x0056AC14: fstp     dword ptr [esp + 0x24]
0x0056AC18: fld      dword ptr [esp + 0x24]
0x0056AC1C: fchs     
0x0056AC1E: fxch     st(1)
0x0056AC20: fadd     st(0), st(0)
0x0056AC22: fdivp    st(1)
0x0056AC24: fstp     dword ptr [esp + 0x24]
0x0056AC28: fld      qword ptr [0x992170] ; [f64=2.71828, u32=0xA0000000]
0x0056AC2E: fld      dword ptr [esp + 0x24]
0x0056AC32: call     0x8ec260
0x0056AC37: fstp     dword ptr [esp + 0x24]
0x0056AC3B: fld      dword ptr [esp + 0x24]
0x0056AC3F: fld      dword ptr [esp + 0x20]
0x0056AC43: fld      qword ptr [0x984338] ; [f64=6.28319, u32=0x60000000]
0x0056AC49: fmul     st(1)
0x0056AC4B: fdivp    st(2)
0x0056AC4D: fxch     st(1)
0x0056AC4F: fstp     dword ptr [esp + 0x24]
0x0056AC53: fld      dword ptr [esp + 0x24]
0x0056AC57: fst      dword ptr [esp + esi + 0x4c]
0x0056AC5B: fadd     dword ptr [esp + 0x18]
0x0056AC5F: fstp     dword ptr [esp + 0x18]
0x0056AC63: fldz     
0x0056AC65: add      esi, 4
0x0056AC68: cmp      esi, 0x14
0x0056AC6B: jl       0x56abed
0x0056AC6D: fstp     st(1)
0x0056AC6F: fld      dword ptr [esp + 0x18]
0x0056AC73: fcom     st(1)
0x0056AC75: fnstsw   ax
0x0056AC77: test     ah, 0x41
0x0056AC7A: jne      0x56ad6b
0x0056AC80: fld1     
0x0056AC82: mov      eax, dword ptr [esp + 0x38]
0x0056AC86: fdivrp   st(1)
0x0056AC88: fstp     dword ptr [esp + 0x24]
0x0056AC8C: fst      dword ptr [esp + 0x14]
0x0056AC90: fstp     dword ptr [esp + 0x10]
0x0056AC94: fld      dword ptr [esp + 0x24]
0x0056AC98: test     eax, eax
0x0056AC9A: je       0x56acc3
0x0056AC9C: fld      dword ptr [esp + 0x4c]
0x0056ACA0: fmul     st(1)
0x0056ACA2: fstp     dword ptr [esp + 0x18]
0x0056ACA6: fld      dword ptr [eax]
0x0056ACA8: fld      dword ptr [esp + 0x18]
0x0056ACAC: fld      st(0)
0x0056ACAE: fmulp    st(2)
0x0056ACB0: fldz     
0x0056ACB2: fadd     st(2), st(0)
0x0056ACB4: fxch     st(2)
0x0056ACB6: fstp     dword ptr [esp + 0x10]
0x0056ACBA: fmul     dword ptr [eax + 4]
0x0056ACBD: faddp    st(1)
0x0056ACBF: fstp     dword ptr [esp + 0x14]
0x0056ACC3: fld      dword ptr [esp + 0x50]
0x0056ACC7: fmul     st(1)
0x0056ACC9: fstp     dword ptr [esp + 0x18]
0x0056ACCD: fld      dword ptr [ebx]
0x0056ACCF: fld      dword ptr [esp + 0x18]
0x0056ACD3: fld      st(0)
0x0056ACD5: fmulp    st(2)
0x0056ACD7: fld      dword ptr [esp + 0x10]
0x0056ACDB: faddp    st(2)
0x0056ACDD: fxch     st(1)
0x0056ACDF: fstp     dword ptr [esp + 0x10]
0x0056ACE3: fmul     dword ptr [ebx + 4]
0x0056ACE6: fadd     dword ptr [esp + 0x14]
0x0056ACEA: fstp     dword ptr [esp + 0x14]
0x0056ACEE: fld      dword ptr [esp + 0x54]
0x0056ACF2: fmul     st(1)
0x0056ACF4: fstp     dword ptr [esp + 0x18]
0x0056ACF8: fld      dword ptr [esp + 0x18]
0x0056ACFC: fld      st(0)
0x0056ACFE: fmul     dword ptr [esp + 0x2c]
0x0056AD02: fadd     dword ptr [esp + 0x10]
0x0056AD06: fstp     dword ptr [esp + 0x10]
0x0056AD0A: fmul     dword ptr [esp + 0x30]
0x0056AD0E: fadd     dword ptr [esp + 0x14]
0x0056AD12: fstp     dword ptr [esp + 0x14]
0x0056AD16: fld      dword ptr [esp + 0x58]
0x0056AD1A: fmul     st(1)
0x0056AD1C: fstp     dword ptr [esp + 0x18]
0x0056AD20: fld      dword ptr [esp + 0x18]
0x0056AD24: fld      st(0)
0x0056AD26: fmul     dword ptr [edi]
0x0056AD28: fadd     dword ptr [esp + 0x10]
0x0056AD2C: fstp     dword ptr [esp + 0x10]
0x0056AD30: fmul     dword ptr [edi + 4]
0x0056AD33: fadd     dword ptr [esp + 0x14]
0x0056AD37: fstp     dword ptr [esp + 0x14]
0x0056AD3B: test     ebp, ebp
0x0056AD3D: je       0x56ad6d
0x0056AD3F: fmul     dword ptr [esp + 0x5c]
0x0056AD43: fstp     dword ptr [esp + 0x18]
0x0056AD47: fld      dword ptr [ebp]
0x0056AD4A: fld      dword ptr [esp + 0x18]
0x0056AD4E: fld      st(0)
0x0056AD50: fmulp    st(2)
0x0056AD52: fld      dword ptr [esp + 0x10]
0x0056AD56: faddp    st(2)
0x0056AD58: fxch     st(1)
0x0056AD5A: fstp     dword ptr [esp + 0x10]
0x0056AD5E: fmul     dword ptr [ebp + 4]
0x0056AD61: fadd     dword ptr [esp + 0x14]
0x0056AD65: fstp     dword ptr [esp + 0x14]
0x0056AD69: jmp      0x56ad6f
0x0056AD6B: fstp     st(1)
0x0056AD6D: fstp     st(0)
0x0056AD6F: mov      edx, dword ptr [esp + 0x28]
0x0056AD73: mov      eax, dword ptr [edx + 0x40]
0x0056AD76: mov      ecx, dword ptr [eax + 0x1e4]
0x0056AD7C: fld      dword ptr [ecx + 0x40]
0x0056AD7F: mov      edx, dword ptr [esp + 0x64]
0x0056AD83: fmul     dword ptr [esp + 0x10]
0x0056AD87: mov      ecx, dword ptr [esp + 0x68]
0x0056AD8B: pop      edi
0x0056AD8C: pop      esi
0x0056AD8D: fstp     dword ptr [edx]
0x0056AD8F: mov      eax, dword ptr [eax + 0x1e4]
0x0056AD95: fld      dword ptr [eax + 0x40]
0x0056AD98: pop      ebp
0x0056AD99: fmul     dword ptr [esp + 8]
0x0056AD9D: pop      ebx
0x0056AD9E: fstp     dword ptr [ecx]
0x0056ADA0: add      esp, 0x50
0x0056ADA3: ret      8
0x0056ADA6: int3     
0x0056ADA7: int3     
0x0056ADA8: int3     
0x0056ADA9: int3     
0x0056ADAA: int3     
0x0056ADAB: int3     
0x0056ADAC: int3     
0x0056ADAD: int3     
0x0056ADAE: int3     
0x0056ADAF: int3     
0x0056ADB0: sub      esp, 0x50
0x0056ADB3: fld      dword ptr [0xb76120]
0x0056ADB9: push     esi
0x0056ADBA: fmul     qword ptr [0x98a2a8] ; [f32=0, f64=10, u32=0x00000000]
0x0056ADC0: mov      esi, ecx
0x0056ADC2: mov      eax, dword ptr [esi + 8]
0x0056ADC5: movzx    ecx, byte ptr [eax + 1]
0x0056ADC9: mov      edx, dword ptr [eax + 4]
0x0056ADCC: fstp     dword ptr [esp + 8]
0x0056ADD0: mov      eax, dword ptr [edx + 0x1c]
0x0056ADD3: mov      eax, dword ptr [eax + ecx*4]
0x0056ADD6: push     edi
0x0056ADD7: mov      edi, dword ptr [esi + 0x40]
0x0056ADDA: add      eax, 0xc
0x0056ADDD: fld      dword ptr [edi + 0x1cc]
0x0056ADE3: fsub     dword ptr [eax]
0x0056ADE5: fstp     dword ptr [esp + 0x28]
0x0056ADE9: fld      dword ptr [edi + 0x1d0]
0x0056ADEF: fsub     dword ptr [eax + 4]
0x0056ADF2: fstp     dword ptr [esp + 0x2c]
0x0056ADF6: fldz     
0x0056ADF8: fst      dword ptr [esp + 0x34]
0x0056ADFC: fstp     dword ptr [esp + 0x30]
0x0056AE00: fld      dword ptr [esp + 0x2c]
0x0056AE04: fld      dword ptr [esp + 0x28]
0x0056AE08: fldz     
0x0056AE0A: fmul     st(0), st(0)
0x0056AE0C: fst      qword ptr [esp + 0x10]
0x0056AE10: fld      st(1)
0x0056AE12: fmulp    st(2)
0x0056AE14: fld      st(2)
0x0056AE16: fmulp    st(3)
0x0056AE18: fxch     st(1)
0x0056AE1A: faddp    st(2)
0x0056AE1C: faddp    st(1)
0x0056AE1E: fstp     dword ptr [esp + 8]
0x0056AE22: fld      dword ptr [esp + 8]
0x0056AE26: call     0x8eb930
0x0056AE2B: fstp     dword ptr [esp + 8]
0x0056AE2F: fld      dword ptr [esp + 8]
0x0056AE33: fcomp    dword ptr [0x966d94] ; [f32=1, u32=0x3F800000]
0x0056AE39: fnstsw   ax
0x0056AE3B: test     ah, 0x41
0x0056AE3E: jp       0x56ae50
0x0056AE40: mov      dword ptr [edi + 0x1c8], 0
0x0056AE4A: pop      edi
0x0056AE4B: pop      esi
0x0056AE4C: add      esp, 0x50
0x0056AE4F: ret      
0x0056AE50: lea      ecx, [esp + 0x28]
0x0056AE54: push     ecx
0x0056AE55: lea      edx, [esp + 0x4c]
0x0056AE59: push     edx
0x0056AE5A: call     0x6b2160
0x0056AE5F: fstp     st(0)
0x0056AE61: fld      dword ptr [esp + 0x50]
0x0056AE65: mov      eax, dword ptr [esi + 8]
0x0056AE68: fld      dword ptr [esp + 0x14]
0x0056AE6C: movzx    ecx, byte ptr [eax + 1]
0x0056AE70: mov      edx, dword ptr [eax + 4]
0x0056AE73: fld      st(0)
0x0056AE75: mov      eax, dword ptr [edx + 0x1c]
0x0056AE78: fmulp    st(2)
0x0056AE7A: mov      eax, dword ptr [eax + ecx*4]
0x0056AE7D: fxch     st(1)
0x0056AE7F: add      eax, 0xc
0x0056AE82: fstp     dword ptr [esp + 0x40]
0x0056AE86: add      esp, 8
0x0056AE89: lea      ecx, [esp + 0x18]
0x0056AE8D: fmul     dword ptr [esp + 0x4c]
0x0056AE91: push     ecx
0x0056AE92: mov      ecx, esi
0x0056AE94: fstp     dword ptr [esp + 0x40]
0x0056AE98: fld      dword ptr [eax]
0x0056AE9A: fadd     dword ptr [esp + 0x3c]
0x0056AE9E: fstp     dword ptr [esp + 0x1c]
0x0056AEA2: fld      dword ptr [eax + 4]
0x0056AEA5: fadd     dword ptr [esp + 0x40]
0x0056AEA9: fstp     dword ptr [esp + 0x20]
0x0056AEAD: fldz     
0x0056AEAF: fstp     dword ptr [esp + 0x24]
0x0056AEB3: fld1     
0x0056AEB5: fstp     dword ptr [esp + 0x28]
0x0056AEB9: call     0x56a6b0
0x0056AEBE: mov      edi, dword ptr [esi + 0x40]
0x0056AEC1: cmp      dword ptr [edi + 0x23c], 0
0x0056AEC8: je       0x56af2a
0x0056AECA: mov      esi, edi
0x0056AECC: mov      eax, dword ptr [esi + 0x23c]
0x0056AED2: fld      dword ptr [esi + 0x1cc]
0x0056AED8: movzx    edx, byte ptr [eax + 1]
0x0056AEDC: mov      eax, dword ptr [eax + 4]
0x0056AEDF: mov      ecx, dword ptr [eax + 0x1c]
0x0056AEE2: mov      eax, dword ptr [ecx + edx*4]
0x0056AEE5: add      eax, 0xc
0x0056AEE8: fsub     dword ptr [eax]
0x0056AEEA: fstp     dword ptr [esp + 0x18]
0x0056AEEE: fld      dword ptr [esi + 0x1d0]
0x0056AEF4: fsub     dword ptr [eax + 4]
0x0056AEF7: fstp     dword ptr [esp + 0x1c]
0x0056AEFB: fld      dword ptr [esp + 0x1c]
0x0056AEFF: fld      dword ptr [esp + 0x18]
0x0056AF03: fmul     st(0), st(0)
0x0056AF05: fld      st(1)
0x0056AF07: fmulp    st(2)
0x0056AF09: faddp    st(1)
0x0056AF0B: fadd     qword ptr [esp + 0x10]
0x0056AF0F: fstp     dword ptr [esp + 0xc]
0x0056AF13: fld      dword ptr [esp + 0xc]
0x0056AF17: call     0x8eb930
0x0056AF1C: fstp     dword ptr [esp + 0xc]
0x0056AF20: fld      dword ptr [esp + 0xc]
0x0056AF24: fstp     dword ptr [edi + 0xc38]
0x0056AF2A: pop      edi
0x0056AF2B: pop      esi
0x0056AF2C: add      esp, 0x50
0x0056AF2F: ret      
0x0056AF30: push     esi
0x0056AF31: mov      esi, ecx
0x0056AF33: mov      eax, dword ptr [esi + 0x40]
0x0056AF36: fld      dword ptr [eax + 0xc20]
0x0056AF3C: fadd     dword ptr [0xb76120]
0x0056AF42: fstp     dword ptr [eax + 0xc20]
0x0056AF48: mov      eax, dword ptr [esi + 0x40]
0x0056AF4B: fld      dword ptr [eax + 0xc20]
0x0056AF51: fld      qword ptr [0x992180] ; [f64=0.05, u32=0xA0000000]
0x0056AF57: fcom     st(1)
0x0056AF59: fnstsw   ax
0x0056AF5B: fstp     st(1)
0x0056AF5D: test     ah, 0x41
0x0056AF60: jp       0x56afe1
0x0056AF62: mov      eax, dword ptr [esi + 0x40]
0x0056AF65: fsubr    dword ptr [eax + 0xc20]
0x0056AF6B: fstp     dword ptr [eax + 0xc20]
0x0056AF71: mov      eax, dword ptr [esi + 8]
0x0056AF74: movzx    ecx, byte ptr [eax + 1]
0x0056AF78: mov      edx, dword ptr [eax + 4]
0x0056AF7B: mov      eax, dword ptr [edx + 0x1c]
0x0056AF7E: mov      ecx, dword ptr [eax + ecx*4]
0x0056AF81: fld      dword ptr [ecx + 0xc]
0x0056AF84: call     0x8ebdc0
0x0056AF89: mov      edx, dword ptr [esi + 0x40]
0x0056AF8C: mov      ecx, dword ptr [edx + 0xc1c]
0x0056AF92: mov      word ptr [ecx], ax
0x0056AF95: mov      eax, dword ptr [esi + 8]
0x0056AF98: movzx    edx, byte ptr [eax + 1]
0x0056AF9C: mov      eax, dword ptr [eax + 4]
0x0056AF9F: mov      ecx, dword ptr [eax + 0x1c]
0x0056AFA2: mov      edx, dword ptr [ecx + edx*4]
0x0056AFA5: fld      dword ptr [edx + 0x10]
0x0056AFA8: call     0x8ebdc0
0x0056AFAD: mov      ecx, dword ptr [esi + 0x40]
0x0056AFB0: mov      edx, dword ptr [ecx + 0xc1c]
0x0056AFB6: mov      word ptr [edx + 2], ax
0x0056AFBA: mov      eax, dword ptr [esi + 0x40]
0x0056AFBD: add      dword ptr [eax + 0xc1c], 4
0x0056AFC4: mov      eax, dword ptr [esi + 0x40]
0x0056AFC7: add      eax, 0xc1c
0x0056AFCC: cmp      dword ptr [eax], eax
0x0056AFCE: jb       0x56afe3
0x0056AFD0: mov      esi, dword ptr [esi + 0x40]
0x0056AFD3: lea      eax, [esi + 0x2bc]
0x0056AFD9: mov      dword ptr [esi + 0xc1c], eax
0x0056AFDF: pop      esi
0x0056AFE0: ret      
0x0056AFE1: fstp     st(0)
0x0056AFE3: pop      esi
0x0056AFE4: ret      
0x0056AFE5: int3     
0x0056AFE6: int3     
0x0056AFE7: int3     
0x0056AFE8: int3     
0x0056AFE9: int3     
0x0056AFEA: int3     
0x0056AFEB: int3     
0x0056AFEC: int3     
0x0056AFED: int3     
0x0056AFEE: int3     
0x0056AFEF: int3     
0x0056AFF0: fldz     
0x0056AFF2: mov      ecx, dword ptr [ecx + 0x40]
0x0056AFF5: fcom     dword ptr [ecx + 0xd54]
0x0056AFFB: fnstsw   ax
0x0056AFFD: test     ah, 1
0x0056B000: jne      0x56b062
0x0056B002: fld      dword ptr [ecx + 0xd4c]
0x0056B008: fadd     dword ptr [esp + 4]
0x0056B00C: fstp     dword ptr [esp + 4]
0x0056B010: fld1     
0x0056B012: fld      dword ptr [esp + 4]
0x0056B016: fcom     st(1)
0x0056B018: fnstsw   ax
0x0056B01A: test     ah, 0x41
0x0056B01D: jne      0x56b034
0x0056B01F: fstp     st(0)
0x0056B021: fstp     st(1)
0x0056B023: fstp     dword ptr [esp + 4]
0x0056B027: fld      dword ptr [esp + 4]
0x0056B02B: fstp     dword ptr [ecx + 0xd4c]
0x0056B031: ret      4
0x0056B034: fstp     st(1)
0x0056B036: fcom     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x0056B03C: fnstsw   ax
0x0056B03E: test     ah, 0x41
0x0056B041: jne      0x56b047
0x0056B043: fstp     st(1)
0x0056B045: jmp      0x56b049
0x0056B047: fstp     st(0)
0x0056B049: fstp     dword ptr [esp + 4]
0x0056B04D: fld      dword ptr [esp + 4]
0x0056B051: fstp     dword ptr [esp + 4]
0x0056B055: fld      dword ptr [esp + 4]
0x0056B059: fstp     dword ptr [ecx + 0xd4c]
0x0056B05F: ret      4
0x0056B062: fstp     st(0)
0x0056B064: ret      4
0x0056B067: int3     
0x0056B068: int3     
0x0056B069: int3     
0x0056B06A: int3     
0x0056B06B: int3     
0x0056B06C: int3     
0x0056B06D: int3     
0x0056B06E: int3     
0x0056B06F: int3     
0x0056B070: fld      dword ptr [edx]
0x0056B072: fadd     dword ptr [ecx]
0x0056B074: fstp     dword ptr [eax]
0x0056B076: fld      dword ptr [edx + 4]
0x0056B079: fadd     dword ptr [ecx + 4]
0x0056B07C: fstp     dword ptr [eax + 4]
0x0056B07F: fld      dword ptr [edx + 8]
0x0056B082: fadd     dword ptr [ecx + 8]
0x0056B085: fstp     dword ptr [eax + 8]
0x0056B088: fld      dword ptr [edx + 0xc]
0x0056B08B: fadd     dword ptr [ecx + 0xc]
0x0056B08E: fstp     dword ptr [eax + 0xc]
0x0056B091: ret      
0x0056B092: int3     
0x0056B093: int3     
0x0056B094: int3     
0x0056B095: int3     
0x0056B096: int3     
0x0056B097: int3     
0x0056B098: int3     
0x0056B099: int3     
0x0056B09A: int3     
0x0056B09B: int3     
0x0056B09C: int3     
0x0056B09D: int3     
0x0056B09E: int3     
0x0056B09F: int3     
0x0056B0A0: fld      dword ptr [edx]
0x0056B0A2: fsub     dword ptr [ecx]
0x0056B0A4: fstp     dword ptr [eax]
0x0056B0A6: fld      dword ptr [edx + 4]
0x0056B0A9: fsub     dword ptr [ecx + 4]
0x0056B0AC: fstp     dword ptr [eax + 4]
0x0056B0AF: fld      dword ptr [edx + 8]
0x0056B0B2: fsub     dword ptr [ecx + 8]
0x0056B0B5: fstp     dword ptr [eax + 8]
0x0056B0B8: fld      dword ptr [edx + 0xc]
0x0056B0BB: fsub     dword ptr [ecx + 0xc]
0x0056B0BE: fstp     dword ptr [eax + 0xc]
0x0056B0C1: ret      
0x0056B0C2: int3     
0x0056B0C3: int3     
0x0056B0C4: int3     
0x0056B0C5: int3     
0x0056B0C6: int3     
0x0056B0C7: int3     
0x0056B0C8: int3     
0x0056B0C9: int3     
0x0056B0CA: int3     
0x0056B0CB: int3     
0x0056B0CC: int3     
0x0056B0CD: int3     
0x0056B0CE: int3     
0x0056B0CF: int3     
0x0056B0D0: fld      dword ptr [ecx]
0x0056B0D2: fld      dword ptr [esp + 4]
0x0056B0D6: fld      st(0)
0x0056B0D8: fmulp    st(2)
0x0056B0DA: fxch     st(1)
0x0056B0DC: fstp     dword ptr [eax]
0x0056B0DE: fld      dword ptr [ecx + 4]
0x0056B0E1: fmul     st(1)
0x0056B0E3: fstp     dword ptr [eax + 4]
0x0056B0E6: fld      dword ptr [ecx + 8]
0x0056B0E9: fmul     st(1)
0x0056B0EB: fstp     dword ptr [eax + 8]
0x0056B0EE: fmul     dword ptr [ecx + 0xc]
0x0056B0F1: fstp     dword ptr [eax + 0xc]
0x0056B0F4: ret      
0x0056B0F5: int3     
0x0056B0F6: int3     
0x0056B0F7: int3     
0x0056B0F8: int3     
0x0056B0F9: int3     
0x0056B0FA: int3     
0x0056B0FB: int3     
0x0056B0FC: int3     
0x0056B0FD: int3     
0x0056B0FE: int3     
0x0056B0FF: int3     
0x0056B100: fld      dword ptr [ecx]
0x0056B102: fld      dword ptr [esp + 4]
0x0056B106: fld      st(0)
0x0056B108: fmulp    st(2)
0x0056B10A: fxch     st(1)
0x0056B10C: fstp     dword ptr [eax]
0x0056B10E: fld      dword ptr [ecx + 4]
0x0056B111: fmul     st(1)
0x0056B113: fstp     dword ptr [eax + 4]
0x0056B116: fld      dword ptr [ecx + 8]
0x0056B119: fmul     st(1)
0x0056B11B: fstp     dword ptr [eax + 8]
0x0056B11E: fmul     dword ptr [ecx + 0xc]
0x0056B121: fstp     dword ptr [eax + 0xc]
0x0056B124: ret      
0x0056B125: int3     
0x0056B126: int3     
0x0056B127: int3     
0x0056B128: int3     
0x0056B129: int3     
0x0056B12A: int3     
0x0056B12B: int3     
0x0056B12C: int3     
0x0056B12D: int3     
0x0056B12E: int3     
0x0056B12F: int3     
0x0056B130: jmp      0x56af30
0x0056B135: int3     
0x0056B136: int3     
0x0056B137: int3     
0x0056B138: int3     
0x0056B139: int3     
0x0056B13A: int3     
0x0056B13B: int3     
0x0056B13C: int3     
0x0056B13D: int3     
0x0056B13E: int3     
0x0056B13F: int3     
0x0056B140: push     -1
0x0056B142: push     0x947ec8
0x0056B147: mov      eax, dword ptr fs:[0]
0x0056B14D: push     eax
0x0056B14E: sub      esp, 0x1c
0x0056B151: push     esi
0x0056B152: mov      eax, dword ptr [0xb089c8]
0x0056B157: xor      eax, esp
0x0056B159: push     eax
0x0056B15A: lea      eax, [esp + 0x24]
0x0056B15E: mov      dword ptr fs:[0], eax
0x0056B164: mov      esi, ecx
0x0056B166: mov      eax, dword ptr [esi + 4]
0x0056B169: push     0x51b1e251
0x0056B16E: lea      ecx, [eax + 0x1a8]
0x0056B174: call     0x5691a0
0x0056B179: test     eax, eax
0x0056B17B: je       0x56b187
0x0056B17D: mov      dword ptr [eax + 0x134], 1
0x0056B187: mov      eax, dword ptr [esi + 0x40]
0x0056B18A: fld      dword ptr [eax + 0x28c]
0x0056B190: fld      qword ptr [0x980ce0] ; [f32=0, f64=-1, u32=0x00000000]
0x0056B196: fmul     st(1), st(0)
0x0056B198: fxch     st(1)
0x0056B19A: fstp     dword ptr [esp + 0x14]
0x0056B19E: fld      dword ptr [eax + 0x290]
0x0056B1A4: fmul     st(1)
0x0056B1A6: fstp     dword ptr [esp + 0x18]
0x0056B1AA: fld      dword ptr [eax + 0x294]
0x0056B1B0: fmul     st(1)
0x0056B1B2: fstp     dword ptr [esp + 0x1c]
0x0056B1B6: fmul     dword ptr [eax + 0x298]
0x0056B1BC: fstp     dword ptr [esp + 0x20]
0x0056B1C0: fld      dword ptr [esp + 0x14]
0x0056B1C4: fstp     dword ptr [eax + 0x28c]
0x0056B1CA: fld      dword ptr [esp + 0x18]
0x0056B1CE: fstp     dword ptr [eax + 0x290]
0x0056B1D4: fld      dword ptr [esp + 0x1c]
0x0056B1D8: fstp     dword ptr [eax + 0x294]
0x0056B1DE: fld      dword ptr [esp + 0x20]
0x0056B1E2: fstp     dword ptr [eax + 0x298]
0x0056B1E8: lea      eax, [esp + 0xc]
0x0056B1EC: test     al, 0x7f
0x0056B1EE: je       0x56b1ff
0x0056B1F0: mov      ecx, eax
0x0056B1F2: push     8
0x0056B1F4: push     ecx
0x0056B1F5: call     0x6a9700
0x0056B1FA: add      esp, 8
0x0056B1FD: jmp      0x56b209
0x0056B1FF: xor      eax, eax
0x0056B201: mov      dword ptr [esp + 0xc], eax
0x0056B205: mov      dword ptr [esp + 0x10], eax
0x0056B209: mov      ecx, dword ptr [0xb1bb78]
0x0056B20F: mov      edx, dword ptr [esi + 8]
0x0056B212: lea      eax, [esp + 0xc]
0x0056B216: push     eax
0x0056B217: push     0
0x0056B219: push     ecx
0x0056B21A: mov      dword ptr [esp + 0x18], edx
0x0056B21E: call     0x52d190
0x0056B223: mov      edx, dword ptr [esi + 0x40]
0x0056B226: mov      ecx, dword ptr [edx + 0x1b4]
0x0056B22C: add      esp, 0xc
0x0056B22F: mov      dword ptr [esp + 8], 0x9921ec
0x0056B237: mov      eax, dword ptr [ecx]
0x0056B239: mov      eax, dword ptr [eax + 8]
0x0056B23C: push     1
0x0056B23E: lea      edx, [esp + 0xc]
0x0056B242: push     edx
0x0056B243: mov      dword ptr [esp + 0x34], 0
0x0056B24B: call     eax
0x0056B24D: mov      ecx, dword ptr [esp + 0x24]
0x0056B251: mov      dword ptr fs:[0], ecx
0x0056B258: pop      ecx
0x0056B259: pop      esi
0x0056B25A: add      esp, 0x28
0x0056B25D: ret      
0x0056B25E: int3     
0x0056B25F: int3     
0x0056B260: push     -1
0x0056B262: push     0x947ef3
0x0056B267: mov      eax, dword ptr fs:[0]
0x0056B26D: push     eax
0x0056B26E: sub      esp, 8
0x0056B271: push     esi
0x0056B272: mov      eax, dword ptr [0xb089c8]
0x0056B277: xor      eax, esp
0x0056B279: push     eax
0x0056B27A: lea      eax, [esp + 0x10]
0x0056B27E: mov      dword ptr fs:[0], eax
0x0056B284: mov      esi, ecx
0x0056B286: mov      eax, dword ptr [esi + 0x40]
0x0056B289: mov      ecx, dword ptr [eax + 0x23c]
0x0056B28F: test     ecx, ecx
0x0056B291: je       0x56b379
0x0056B297: movzx    eax, byte ptr [ecx + 1]
0x0056B29B: mov      ecx, dword ptr [ecx + 4]
0x0056B29E: mov      edx, dword ptr [ecx + 8]
0x0056B2A1: test     dword ptr [edx + eax*4], 0x40000
0x0056B2A8: je       0x56b2f0
0x0056B2AA: mov      ecx, dword ptr [ecx + 0x14]
0x0056B2AD: lea      eax, [eax + eax*8]
0x0056B2B0: lea      eax, [ecx + eax*4]
0x0056B2B3: mov      ecx, 0x1c
0x0056B2B8: cmp      byte ptr [eax + 0x14], cl
0x0056B2BB: jne      0x56b2c2
0x0056B2BD: mov      eax, dword ptr [eax + 4]
0x0056B2C0: jmp      0x56b2f2
0x0056B2C2: cmp      byte ptr [eax + 0x15], cl
0x0056B2C5: jne      0x56b2cc
0x0056B2C7: mov      eax, dword ptr [eax + 8]
0x0056B2CA: jmp      0x56b2f2
0x0056B2CC: cmp      byte ptr [eax + 0x16], cl
0x0056B2CF: jne      0x56b2d6
0x0056B2D1: mov      eax, dword ptr [eax + 0xc]
0x0056B2D4: jmp      0x56b2f2
0x0056B2D6: cmp      byte ptr [eax + 0x17], cl
0x0056B2D9: jne      0x56b2e0
0x0056B2DB: mov      eax, dword ptr [eax + 0x10]
0x0056B2DE: jmp      0x56b2f2
0x0056B2E0: mov      eax, dword ptr [eax]
0x0056B2E2: test     eax, eax
0x0056B2E4: je       0x56b2f0
0x0056B2E6: push     ecx
0x0056B2E7: mov      ecx, eax
0x0056B2E9: call     0x461400
0x0056B2EE: jmp      0x56b2f2
0x0056B2F0: xor      eax, eax
0x0056B2F2: mov      edx, dword ptr [esi + 0x40]
0x0056B2F5: push     edx
0x0056B2F6: mov      ecx, eax
0x0056B2F8: call     0x520a40
0x0056B2FD: mov      eax, dword ptr [esi + 0x40]
0x0056B300: mov      ecx, dword ptr [eax + 0x23c]
0x0056B306: mov      dword ptr [eax + 0x240], ecx
0x0056B30C: mov      eax, dword ptr [esi + 0x40]
0x0056B30F: mov      dword ptr [eax + 0x248], 1
0x0056B319: mov      dword ptr [eax + 0x23c], 0
0x0056B323: mov      edx, dword ptr [esi + 0x40]
0x0056B326: mov      ecx, dword ptr [edx + 0x1b4]
0x0056B32C: mov      dword ptr [esp + 8], 0x9921b0
0x0056B334: mov      dword ptr [esp + 0xc], 0
0x0056B33C: mov      eax, dword ptr [ecx]
0x0056B33E: mov      eax, dword ptr [eax + 8]
0x0056B341: push     1
0x0056B343: lea      edx, [esp + 0xc]
0x0056B347: push     edx
0x0056B348: mov      dword ptr [esp + 0x20], 0
0x0056B350: call     eax
0x0056B352: mov      ecx, dword ptr [esi + 0x40]
0x0056B355: mov      ecx, dword ptr [ecx + 0x1b4]
0x0056B35B: mov      dword ptr [esp + 8], 0x98b3b4
0x0056B363: mov      edx, dword ptr [ecx]
0x0056B365: mov      edx, dword ptr [edx + 8]
0x0056B368: push     1
0x0056B36A: lea      eax, [esp + 0xc]
0x0056B36E: push     eax
0x0056B36F: mov      dword ptr [esp + 0x20], 1
0x0056B377: call     edx
0x0056B379: mov      ecx, dword ptr [esp + 0x10]
0x0056B37D: mov      dword ptr fs:[0], ecx
0x0056B384: pop      ecx
0x0056B385: pop      esi
0x0056B386: add      esp, 0x14
0x0056B389: ret      
0x0056B38A: int3     
0x0056B38B: int3     
0x0056B38C: int3     
0x0056B38D: int3     
0x0056B38E: int3     
0x0056B38F: int3     
0x0056B390: push     esi
0x0056B391: mov      esi, ecx
0x0056B393: mov      eax, dword ptr [esi + 0x40]
0x0056B396: cmp      dword ptr [eax + 0x23c], 0
0x0056B39D: je       0x56b3ca
0x0056B39F: call     0x56b260
0x0056B3A4: mov      ecx, dword ptr [esi + 0x40]
0x0056B3A7: lea      edx, [ecx + 0x28c]
0x0056B3AD: push     edx
0x0056B3AE: call     0x56a400
0x0056B3B3: mov      eax, dword ptr [esi + 0x40]
0x0056B3B6: lea      ecx, [eax + 0x290]
0x0056B3BC: push     ecx
0x0056B3BD: add      eax, 0x28c
0x0056B3C2: push     eax
0x0056B3C3: mov      ecx, esi
0x0056B3C5: call     0x56aa70
0x0056B3CA: pop      esi
0x0056B3CB: ret      
0x0056B3CC: int3     
0x0056B3CD: int3     
0x0056B3CE: int3     
0x0056B3CF: int3     
0x0056B3D0: push     -1
0x0056B3D2: push     0x947f19
0x0056B3D7: mov      eax, dword ptr fs:[0]
0x0056B3DD: push     eax
0x0056B3DE: sub      esp, 0x90
0x0056B3E4: push     esi
0x0056B3E5: push     edi
0x0056B3E6: mov      eax, dword ptr [0xb089c8]
0x0056B3EB: xor      eax, esp
0x0056B3ED: push     eax
0x0056B3EE: lea      eax, [esp + 0x9c]
0x0056B3F5: mov      dword ptr fs:[0], eax
0x0056B3FB: mov      esi, ecx
0x0056B3FD: mov      eax, dword ptr [esi + 0x40]
0x0056B400: push     0x7ae2e2fb
0x0056B405: lea      ecx, [eax + 0x1a8]
0x0056B40B: call     0x569250
0x0056B410: test     eax, eax
0x0056B412: je       0x56b44f
0x0056B414: test     byte ptr [eax + 0x41], 1
0x0056B418: je       0x56b44f
0x0056B41A: mov      eax, dword ptr [esi + 0x40]
0x0056B41D: mov      ecx, dword ptr [eax + 0x1b4]
0x0056B423: mov      dword ptr [esp + 0xc], 0x9921c4
0x0056B42B: mov      edx, dword ptr [ecx]
0x0056B42D: mov      edx, dword ptr [edx + 8]
0x0056B430: push     1
0x0056B432: lea      eax, [esp + 0x10]
0x0056B436: push     eax
0x0056B437: mov      dword ptr [esp + 0xac], 0
0x0056B442: call     edx
0x0056B444: mov      dword ptr [esp + 0xa4], 0xffffffff
0x0056B44F: fldz     
0x0056B451: mov      eax, dword ptr [esi + 8]
0x0056B454: fst      dword ptr [esp + 0x6c]
0x0056B458: fst      dword ptr [esp + 0x70]
0x0056B45C: fst      dword ptr [esp + 0x74]
0x0056B460: fld1     
0x0056B462: fst      dword ptr [esp + 0x78]
0x0056B466: movzx    ecx, byte ptr [eax + 1]
0x0056B46A: mov      edx, dword ptr [eax + 4]
0x0056B46D: mov      eax, dword ptr [edx + 0x1c]
0x0056B470: mov      eax, dword ptr [eax + ecx*4]
0x0056B473: mov      ecx, dword ptr [esi + 0x40]
0x0056B476: add      eax, 0xc
0x0056B479: fld      dword ptr [eax]
0x0056B47B: fstp     dword ptr [esp + 0x3c]
0x0056B47F: fld      dword ptr [eax + 4]
0x0056B482: fstp     dword ptr [esp + 0x40]
0x0056B486: fld      dword ptr [eax + 8]
0x0056B489: fstp     dword ptr [esp + 0x44]
0x0056B48D: fld      dword ptr [eax + 0xc]
0x0056B490: mov      eax, dword ptr [ecx + 0x23c]
0x0056B496: movzx    edx, byte ptr [eax + 1]
0x0056B49A: fstp     dword ptr [esp + 0x48]
0x0056B49E: mov      eax, dword ptr [eax + 4]
0x0056B4A1: mov      ecx, dword ptr [eax + 0x1c]
0x0056B4A4: mov      eax, dword ptr [ecx + edx*4]
0x0056B4A7: add      eax, 0xc
0x0056B4AA: lea      edx, [esp + 0x6c]
0x0056B4AE: push     edx
0x0056B4AF: fld      dword ptr [eax]
0x0056B4B1: fstp     dword ptr [esp + 0x50]
0x0056B4B5: fld      dword ptr [eax + 4]
0x0056B4B8: fstp     dword ptr [esp + 0x54]
0x0056B4BC: fld      dword ptr [eax + 8]
0x0056B4BF: fstp     dword ptr [esp + 0x58]
0x0056B4C3: fld      dword ptr [eax + 0xc]
0x0056B4C6: lea      eax, [esp + 0x20]
0x0056B4CA: fstp     dword ptr [esp + 0x5c]
0x0056B4CE: push     eax
0x0056B4CF: fld      dword ptr [esp + 0x54]
0x0056B4D3: fsub     dword ptr [esp + 0x44]
0x0056B4D7: fstp     dword ptr [esp + 0x24]
0x0056B4DB: fld      dword ptr [esp + 0x58]
0x0056B4DF: fsub     dword ptr [esp + 0x48]
0x0056B4E3: fstp     dword ptr [esp + 0x28]
0x0056B4E7: fld      dword ptr [esp + 0x5c]
0x0056B4EB: fsub     dword ptr [esp + 0x4c]
0x0056B4EF: fstp     dword ptr [esp + 0x2c]
0x0056B4F3: fld      dword ptr [esp + 0x60]
0x0056B4F7: fsub     dword ptr [esp + 0x50]
0x0056B4FB: fstp     dword ptr [esp + 0x30]
0x0056B4FF: fld      dword ptr [esp + 0x24]
0x0056B503: fstp     dword ptr [esp + 0x74]
0x0056B507: fld      dword ptr [esp + 0x28]
0x0056B50B: fstp     dword ptr [esp + 0x78]
0x0056B50F: fld      dword ptr [esp + 0x2c]
0x0056B513: fstp     dword ptr [esp + 0x7c]
0x0056B517: fld      dword ptr [esp + 0x30]
0x0056B51B: fstp     dword ptr [esp + 0x80]
0x0056B522: fxch     st(1)
0x0056B524: fst      dword ptr [esp + 0x24]
0x0056B528: fst      dword ptr [esp + 0x28]
0x0056B52C: fstp     dword ptr [esp + 0x2c]
0x0056B530: fstp     dword ptr [esp + 0x30]
0x0056B534: call     0x6b2160
0x0056B539: mov      ecx, dword ptr [esi + 0x40]
0x0056B53C: fstp     st(0)
0x0056B53E: fld      dword ptr [esp + 0x24]
0x0056B542: add      esp, 8
0x0056B545: fchs     
0x0056B547: fstp     dword ptr [esp + 0x80]
0x0056B54E: fld      dword ptr [ecx + 0x290]
0x0056B554: fmul     dword ptr [esp + 0x80]
0x0056B55B: fld      dword ptr [ecx + 0x28c]
0x0056B561: fmul     dword ptr [esp + 0x20]
0x0056B565: faddp    st(1)
0x0056B567: fld      dword ptr [ecx + 0x294]
0x0056B56D: fldz     
0x0056B56F: fmul     st(1), st(0)
0x0056B571: fxch     st(2)
0x0056B573: faddp    st(1)
0x0056B575: fstp     dword ptr [esp + 0x10]
0x0056B579: fld      dword ptr [esp + 0x10]
0x0056B57D: fst      dword ptr [esp + 0x18]
0x0056B581: fldz     
0x0056B583: fcom     st(1)
0x0056B585: fnstsw   ax
0x0056B587: test     ah, 0x41
0x0056B58A: jp       0x56b590
0x0056B58C: fld1     
0x0056B58E: jmp      0x56b596
0x0056B590: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0056B596: fstp     dword ptr [esp + 0xc]
0x0056B59A: fst      dword ptr [esp + 0x10]
0x0056B59E: fcom     dword ptr [ecx + 0xc4c]
0x0056B5A4: fnstsw   ax
0x0056B5A6: test     ah, 5
0x0056B5A9: jp       0x56b5d7
0x0056B5AB: mov      eax, ecx
0x0056B5AD: mov      edx, dword ptr [eax + 0x1e4]
0x0056B5B3: fld      dword ptr [eax + 0xc4c]
0x0056B5B9: fdiv     dword ptr [edx + 0x30]
0x0056B5BC: fstp     dword ptr [esp + 0x14]
0x0056B5C0: fld      dword ptr [esp + 0x14]
0x0056B5C4: fld      st(0)
0x0056B5C6: fld1     
0x0056B5C8: fsubrp   st(1)
0x0056B5CA: fmul     dword ptr [edx + 0x2c]
0x0056B5CD: fxch     st(1)
0x0056B5CF: fmul     st(4)
0x0056B5D1: faddp    st(1)
0x0056B5D3: fstp     dword ptr [esp + 0x10]
0x0056B5D7: fld      dword ptr [ecx + 0xc4c]
0x0056B5DD: fsub     dword ptr [0xb76120]
0x0056B5E3: fstp     dword ptr [esp + 0x14]
0x0056B5E7: fld      dword ptr [esp + 0x14]
0x0056B5EB: fld      qword ptr [0x982fc0] ; [u32=0xE0000000]
0x0056B5F1: fcom     st(1)
0x0056B5F3: fnstsw   ax
0x0056B5F5: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x0056B5FB: test     ah, 5
0x0056B5FE: jp       0x56b60a
0x0056B600: fstp     st(2)
0x0056B602: fxch     st(1)
0x0056B604: fst      dword ptr [esp + 0x14]
0x0056B608: jmp      0x56b633
0x0056B60A: fxch     st(5)
0x0056B60C: fcom     st(2)
0x0056B60E: fnstsw   ax
0x0056B610: test     ah, 5
0x0056B613: jp       0x56b61d
0x0056B615: fxch     st(2)
0x0056B617: fstp     dword ptr [esp + 0x14]
0x0056B61B: jmp      0x56b627
0x0056B61D: fstp     st(2)
0x0056B61F: fxch     st(2)
0x0056B621: fst      dword ptr [esp + 0x14]
0x0056B625: fxch     st(2)
0x0056B627: fld      dword ptr [esp + 0x14]
0x0056B62B: fstp     dword ptr [esp + 0x14]
0x0056B62F: fxch     st(1)
0x0056B631: fxch     st(4)
0x0056B633: fld      dword ptr [esp + 0x14]
0x0056B637: fstp     dword ptr [ecx + 0xc4c]
0x0056B63D: mov      edx, dword ptr [esi + 0x40]
0x0056B640: mov      eax, dword ptr [edx + 0x1e4]
0x0056B646: fld      st(3)
0x0056B648: fld      st(0)
0x0056B64A: fmulp    st(1)
0x0056B64C: fmul     dword ptr [eax + 0x10]
0x0056B64F: fadd     dword ptr [esp + 0x10]
0x0056B653: fmul     dword ptr [0xb76120]
0x0056B659: fstp     dword ptr [esp + 0x14]
0x0056B65D: fld      dword ptr [esp + 0x14]
0x0056B661: fld      dword ptr [esp + 0xc]
0x0056B665: fld      st(0)
0x0056B667: fmulp    st(2)
0x0056B669: fxch     st(1)
0x0056B66B: fstp     dword ptr [esp + 0xc]
0x0056B66F: fld      dword ptr [esp + 0xc]
0x0056B673: faddp    st(5)
0x0056B675: fxch     st(4)
0x0056B677: fstp     dword ptr [esp + 0x10]
0x0056B67B: fxch     st(3)
0x0056B67D: fcom     st(2)
0x0056B67F: fnstsw   ax
0x0056B681: test     ah, 0x41
0x0056B684: jne      0x56b6d0
0x0056B686: fstp     st(0)
0x0056B688: fld      dword ptr [esp + 0x10]
0x0056B68C: fcom     st(1)
0x0056B68E: fnstsw   ax
0x0056B690: fstp     st(1)
0x0056B692: test     ah, 0x41
0x0056B695: jne      0x56b6a3
0x0056B697: fstp     st(0)
0x0056B699: fstp     st(0)
0x0056B69B: fstp     st(1)
0x0056B69D: fstp     dword ptr [esp + 0x10]
0x0056B6A1: jmp      0x56b71d
0x0056B6A3: fstp     st(2)
0x0056B6A5: fxch     st(2)
0x0056B6A7: fcomp    st(1)
0x0056B6A9: fnstsw   ax
0x0056B6AB: test     ah, 5
0x0056B6AE: jp       0x56b6c0
0x0056B6B0: fstp     st(1)
0x0056B6B2: fstp     dword ptr [esp + 0xc]
0x0056B6B6: fld      dword ptr [esp + 0xc]
0x0056B6BA: fstp     dword ptr [esp + 0x10]
0x0056B6BE: jmp      0x56b71d
0x0056B6C0: fstp     st(0)
0x0056B6C2: fstp     dword ptr [esp + 0xc]
0x0056B6C6: fld      dword ptr [esp + 0xc]
0x0056B6CA: fstp     dword ptr [esp + 0x10]
0x0056B6CE: jmp      0x56b71d
0x0056B6D0: fstp     st(4)
0x0056B6D2: fstp     st(0)
0x0056B6D4: fstp     st(1)
0x0056B6D6: fcom     st(1)
0x0056B6D8: fnstsw   ax
0x0056B6DA: fstp     st(1)
0x0056B6DC: test     ah, 0x41
0x0056B6DF: jne      0x56b71b
0x0056B6E1: fld      dword ptr [esp + 0x10]
0x0056B6E5: fcom     st(1)
0x0056B6E7: fnstsw   ax
0x0056B6E9: test     ah, 0x41
0x0056B6EC: jne      0x56b6f6
0x0056B6EE: fstp     st(0)
0x0056B6F0: fstp     dword ptr [esp + 0x10]
0x0056B6F4: jmp      0x56b71d
0x0056B6F6: fstp     st(1)
0x0056B6F8: fcom     qword ptr [0x992260] ; [u32=0xE0000000]
0x0056B6FE: fnstsw   ax
0x0056B700: test     ah, 0x41
0x0056B703: je       0x56b70d
0x0056B705: fstp     st(0)
0x0056B707: fld      dword ptr [0x992258] ; [u32=0xFF7FFFFF]
0x0056B70D: fstp     dword ptr [esp + 0xc]
0x0056B711: fld      dword ptr [esp + 0xc]
0x0056B715: fstp     dword ptr [esp + 0x10]
0x0056B719: jmp      0x56b71d
0x0056B71B: fstp     st(0)
0x0056B71D: lea      ecx, [esp + 0x2c]
0x0056B721: push     ecx
0x0056B722: mov      ecx, edx
0x0056B724: call     0x540780
0x0056B729: fld      dword ptr [eax + 4]
0x0056B72C: fmul     dword ptr [esp + 0x80]
0x0056B733: mov      ecx, dword ptr [esi + 0x40]
0x0056B736: fld      dword ptr [eax]
0x0056B738: fmul     dword ptr [esp + 0x20]
0x0056B73C: faddp    st(1)
0x0056B73E: fld      dword ptr [eax + 8]
0x0056B741: fmul     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x0056B747: faddp    st(1)
0x0056B749: fstp     dword ptr [esp + 0xc]
0x0056B74D: fld      dword ptr [esp + 0xc]
0x0056B751: fmul     dword ptr [0xb76120]
0x0056B757: fadd     dword ptr [esp + 0x10]
0x0056B75B: fstp     dword ptr [esp + 0x10]
0x0056B75F: fld      dword ptr [esp + 0x10]
0x0056B763: fld      st(0)
0x0056B765: fabs     
0x0056B767: fstp     dword ptr [esp + 0xc]
0x0056B76B: fld      dword ptr [esp + 0xc]
0x0056B76F: fld      dword ptr [ecx + 0xc3c]
0x0056B775: fcompp   
0x0056B777: fnstsw   ax
0x0056B779: fldz     
0x0056B77B: test     ah, 5
0x0056B77E: jp       0x56b7ad
0x0056B780: fcom     st(1)
0x0056B782: fnstsw   ax
0x0056B784: fstp     st(1)
0x0056B786: test     ah, 0x41
0x0056B789: jp       0x56b78f
0x0056B78B: fld1     
0x0056B78D: jmp      0x56b795
0x0056B78F: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0056B795: fstp     dword ptr [esp + 0xc]
0x0056B799: fld      dword ptr [esp + 0xc]
0x0056B79D: fmul     dword ptr [ecx + 0xc3c]
0x0056B7A3: fstp     dword ptr [esp + 0x10]
0x0056B7A7: fld      dword ptr [esp + 0x10]
0x0056B7AB: jmp      0x56b7af
0x0056B7AD: fxch     st(1)
0x0056B7AF: fdiv     dword ptr [ecx + 0xc38]
0x0056B7B5: fstp     dword ptr [esp + 0x14]
0x0056B7B9: fld      dword ptr [esp + 0x14]
0x0056B7BD: fld      st(0)
0x0056B7BF: fabs     
0x0056B7C1: fstp     dword ptr [esp + 0xc]
0x0056B7C5: fld      dword ptr [esp + 0xc]
0x0056B7C9: fld      dword ptr [ecx + 0xc40]
0x0056B7CF: fcompp   
0x0056B7D1: fnstsw   ax
0x0056B7D3: test     ah, 5
0x0056B7D6: jp       0x56b801
0x0056B7D8: fcomp    st(1)
0x0056B7DA: fnstsw   ax
0x0056B7DC: test     ah, 1
0x0056B7DF: jne      0x56b7e5
0x0056B7E1: fld1     
0x0056B7E3: jmp      0x56b7eb
0x0056B7E5: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0056B7EB: fstp     dword ptr [esp + 0xc]
0x0056B7EF: fld      dword ptr [esp + 0xc]
0x0056B7F3: fmul     dword ptr [ecx + 0xc40]
0x0056B7F9: fstp     dword ptr [esp + 0x14]
0x0056B7FD: fld      dword ptr [esp + 0x14]
0x0056B801: mov      edx, ecx
0x0056B803: fst      dword ptr [edx + 0xc34]
0x0056B809: mov      eax, dword ptr [esi + 0x40]
0x0056B80C: mov      ecx, dword ptr [esi + 8]
0x0056B80F: fxch     st(1)
0x0056B811: fst      dword ptr [esp + 0x5c]
0x0056B815: push     ecx
0x0056B816: fst      dword ptr [esp + 0x64]
0x0056B81A: fstp     dword ptr [esp + 0x68]
0x0056B81E: fld1     
0x0056B820: fstp     dword ptr [esp + 0x6c]
0x0056B824: mov      eax, dword ptr [eax + 0x23c]
0x0056B82A: movzx    edx, byte ptr [eax + 1]
0x0056B82E: fmul     dword ptr [0xb76120]
0x0056B834: mov      eax, dword ptr [eax + 4]
0x0056B837: mov      eax, dword ptr [eax + 0x1c]
0x0056B83A: mov      edx, dword ptr [eax + edx*4]
0x0056B83D: movzx    eax, byte ptr [ecx + 1]
0x0056B841: fstp     dword ptr [esp + 0x10]
0x0056B845: fld      dword ptr [esp + 0x10]
0x0056B849: fchs     
0x0056B84B: mov      ecx, dword ptr [ecx + 4]
0x0056B84E: fstp     dword ptr [esp]
0x0056B851: add      edx, 0xc
0x0056B854: push     edx
0x0056B855: mov      edx, dword ptr [ecx + 0x1c]
0x0056B858: mov      eax, dword ptr [edx + eax*4]
0x0056B85B: add      eax, 0xc
0x0056B85E: push     eax
0x0056B85F: lea      ecx, [esp + 0x68]
0x0056B863: push     ecx
0x0056B864: call     0x57b190
0x0056B869: mov      edx, dword ptr [esi + 0x40]
0x0056B86C: mov      eax, dword ptr [edx + 0x23c]
0x0056B872: movzx    ecx, byte ptr [eax + 1]
0x0056B876: mov      edx, dword ptr [eax + 4]
0x0056B879: mov      eax, dword ptr [edx + 0x1c]
0x0056B87C: mov      eax, dword ptr [eax + ecx*4]
0x0056B87F: add      eax, 0xc
0x0056B882: lea      ecx, [esp + 0x7c]
0x0056B886: push     ecx
0x0056B887: fld      dword ptr [eax]
0x0056B889: lea      edx, [esp + 0x60]
0x0056B88D: fstp     dword ptr [esp + 0x30]
0x0056B891: push     edx
0x0056B892: fld      dword ptr [eax + 4]
0x0056B895: fstp     dword ptr [esp + 0x38]
0x0056B899: fld      dword ptr [eax + 8]
0x0056B89C: fstp     dword ptr [esp + 0x3c]
0x0056B8A0: fld      dword ptr [eax + 0xc]
0x0056B8A3: fstp     dword ptr [esp + 0x40]
0x0056B8A7: fld      dword ptr [esp + 0x34]
0x0056B8AB: fsub     dword ptr [esp + 0x74]
0x0056B8AF: fstp     dword ptr [esp + 0x54]
0x0056B8B3: fld      dword ptr [esp + 0x38]
0x0056B8B7: fsub     dword ptr [esp + 0x78]
0x0056B8BB: fstp     dword ptr [esp + 0x58]
0x0056B8BF: fld      dword ptr [esp + 0x3c]
0x0056B8C3: fsub     dword ptr [esp + 0x7c]
0x0056B8C7: fstp     dword ptr [esp + 0x5c]
0x0056B8CB: fld      dword ptr [esp + 0x40]
0x0056B8CF: fsub     dword ptr [esp + 0x80]
0x0056B8D6: fstp     dword ptr [esp + 0x60]
0x0056B8DA: fld      dword ptr [esp + 0x54]
0x0056B8DE: fstp     dword ptr [esp + 0x84]
0x0056B8E5: fld      dword ptr [esp + 0x58]
0x0056B8E9: fstp     dword ptr [esp + 0x88]
0x0056B8F0: fld      dword ptr [esp + 0x5c]
0x0056B8F4: fstp     dword ptr [esp + 0x8c]
0x0056B8FB: fld      dword ptr [esp + 0x60]
0x0056B8FF: fstp     dword ptr [esp + 0x90]
0x0056B906: fldz     
0x0056B908: fst      dword ptr [esp + 0x64]
0x0056B90C: fst      dword ptr [esp + 0x68]
0x0056B910: fstp     dword ptr [esp + 0x6c]
0x0056B914: fld1     
0x0056B916: fstp     dword ptr [esp + 0x70]
0x0056B91A: call     0x6b2160
0x0056B91F: fstp     st(0)
0x0056B921: mov      eax, dword ptr [esi + 0x40]
0x0056B924: fld      dword ptr [eax + 0xc38]
0x0056B92A: fstp     dword ptr [esp + 0x24]
0x0056B92E: mov      eax, dword ptr [eax + 0x23c]
0x0056B934: fld      dword ptr [esp + 0x64]
0x0056B938: movzx    ecx, byte ptr [eax + 1]
0x0056B93C: fld      dword ptr [esp + 0x24]
0x0056B940: mov      edx, dword ptr [eax + 4]
0x0056B943: fld      st(0)
0x0056B945: mov      eax, dword ptr [edx + 0x1c]
0x0056B948: fmulp    st(2)
0x0056B94A: mov      eax, dword ptr [eax + ecx*4]
0x0056B94D: fxch     st(1)
0x0056B94F: add      eax, 0xc
0x0056B952: add      esp, 0x14
0x0056B955: fstp     dword ptr [esp + 0x40]
0x0056B959: fld      dword ptr [esp + 0x54]
0x0056B95D: fmul     st(1)
0x0056B95F: fstp     dword ptr [esp + 0x44]
0x0056B963: fld      dword ptr [esp + 0x58]
0x0056B967: fmul     st(1)
0x0056B969: fstp     dword ptr [esp + 0x48]
0x0056B96D: fmul     dword ptr [esp + 0x5c]
0x0056B971: fstp     dword ptr [esp + 0x4c]
0x0056B975: fld      dword ptr [eax]
0x0056B977: fstp     dword ptr [esp + 0x20]
0x0056B97B: fld      dword ptr [eax + 4]
0x0056B97E: fstp     dword ptr [esp + 0x24]
0x0056B982: fld      dword ptr [eax + 8]
0x0056B985: fstp     dword ptr [esp + 0x28]
0x0056B989: fld      dword ptr [eax + 0xc]
0x0056B98C: mov      eax, dword ptr [esi + 8]
0x0056B98F: fstp     dword ptr [esp + 0x2c]
0x0056B993: fld      dword ptr [esp + 0x20]
0x0056B997: fsub     dword ptr [esp + 0x40]
0x0056B99B: fstp     dword ptr [esp + 0x30]
0x0056B99F: fld      dword ptr [esp + 0x24]
0x0056B9A3: fsub     dword ptr [esp + 0x44]
0x0056B9A7: fstp     dword ptr [esp + 0x34]
0x0056B9AB: fld      dword ptr [esp + 0x28]
0x0056B9AF: fsub     dword ptr [esp + 0x48]
0x0056B9B3: fstp     dword ptr [esp + 0x38]
0x0056B9B7: fld      dword ptr [esp + 0x2c]
0x0056B9BB: fsub     dword ptr [esp + 0x4c]
0x0056B9BF: fstp     dword ptr [esp + 0x3c]
0x0056B9C3: fld      dword ptr [esp + 0x30]
0x0056B9C7: fst      dword ptr [esp + 0x60]
0x0056B9CB: fld      dword ptr [esp + 0x34]
0x0056B9CF: fstp     dword ptr [esp + 0x64]
0x0056B9D3: fld      dword ptr [esp + 0x38]
0x0056B9D7: fstp     dword ptr [esp + 0x68]
0x0056B9DB: fld      dword ptr [esp + 0x3c]
0x0056B9DF: fstp     dword ptr [esp + 0x6c]
0x0056B9E3: movzx    ecx, byte ptr [eax + 1]
0x0056B9E7: mov      edx, dword ptr [eax + 4]
0x0056B9EA: mov      eax, dword ptr [edx + 0x20]
0x0056B9ED: mov      eax, dword ptr [eax + ecx*4]
0x0056B9F0: mov      ecx, 0x800
0x0056B9F5: fstp     dword ptr [eax + 0xc]
0x0056B9F8: fld      dword ptr [esp + 0x64]
0x0056B9FC: fstp     dword ptr [eax + 0x10]
0x0056B9FF: fld      dword ptr [esp + 0x68]
0x0056BA03: fstp     dword ptr [eax + 0x14]
0x0056BA06: or       word ptr [eax + 8], cx
0x0056BA0A: mov      eax, dword ptr [esi + 8]
0x0056BA0D: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0056BA13: movzx    edx, byte ptr [eax + 1]
0x0056BA17: fstp     dword ptr [esp]
0x0056BA1A: mov      eax, dword ptr [eax + 4]
0x0056BA1D: mov      ecx, dword ptr [eax + 0x34]
0x0056BA20: mov      ecx, dword ptr [ecx + edx*4]
0x0056BA23: mov      edx, dword ptr [ecx]
0x0056BA25: mov      eax, dword ptr [edx + 0xe8]
0x0056BA2B: push     0
0x0056BA2D: push     1
0x0056BA2F: call     eax
0x0056BA31: fld      dword ptr [esp + 0x4c]
0x0056BA35: fchs     
0x0056BA37: fstp     dword ptr [esp + 0x80]
0x0056BA3E: fld      dword ptr [esp + 0x50]
0x0056BA42: fld      st(0)
0x0056BA44: fld      dword ptr [esp + 0x10]
0x0056BA48: fld      st(0)
0x0056BA4A: fmulp    st(2)
0x0056BA4C: mov      eax, dword ptr [esi + 0x40]
0x0056BA4F: fxch     st(1)
0x0056BA51: fstp     dword ptr [esp + 0x2c]
0x0056BA55: fld      dword ptr [esp + 0x80]
0x0056BA5C: fld      st(0)
0x0056BA5E: fmul     st(2)
0x0056BA60: fstp     dword ptr [esp + 0x30]
0x0056BA64: fld      st(1)
0x0056BA66: fldz     
0x0056BA68: fmul     st(1), st(0)
0x0056BA6A: fxch     st(1)
0x0056BA6C: fstp     dword ptr [esp + 0x34]
0x0056BA70: fxch     st(2)
0x0056BA72: fst      dword ptr [esp + 0x38]
0x0056BA76: fld      dword ptr [esp + 0x2c]
0x0056BA7A: fstp     dword ptr [eax + 0x28c]
0x0056BA80: fld      dword ptr [esp + 0x30]
0x0056BA84: fstp     dword ptr [eax + 0x290]
0x0056BA8A: fld      dword ptr [esp + 0x34]
0x0056BA8E: fstp     dword ptr [eax + 0x294]
0x0056BA94: fld      dword ptr [esp + 0x38]
0x0056BA98: fstp     dword ptr [eax + 0x298]
0x0056BA9E: fld      dword ptr [eax + 0xc38]
0x0056BAA4: fmul     dword ptr [eax + 0xc34]
0x0056BAAA: fstp     dword ptr [esp + 0xc]
0x0056BAAE: fld      dword ptr [esp + 0xc]
0x0056BAB2: fld      st(0)
0x0056BAB4: fmulp    st(5)
0x0056BAB6: fxch     st(4)
0x0056BAB8: fstp     dword ptr [esp + 0x2c]
0x0056BABC: fld      st(3)
0x0056BABE: fmulp    st(2)
0x0056BAC0: fxch     st(1)
0x0056BAC2: fstp     dword ptr [esp + 0x30]
0x0056BAC6: fld      st(2)
0x0056BAC8: fmul     st(2)
0x0056BACA: fstp     dword ptr [esp + 0x34]
0x0056BACE: fxch     st(2)
0x0056BAD0: fstp     dword ptr [esp + 0x38]
0x0056BAD4: fld      dword ptr [esp + 0x2c]
0x0056BAD8: fstp     dword ptr [eax + 0xc70]
0x0056BADE: fld      dword ptr [esp + 0x30]
0x0056BAE2: fstp     dword ptr [eax + 0xc74]
0x0056BAE8: fld      dword ptr [esp + 0x34]
0x0056BAEC: fstp     dword ptr [eax + 0xc78]
0x0056BAF2: fld      dword ptr [esp + 0x38]
0x0056BAF6: fstp     dword ptr [eax + 0xc7c]
0x0056BAFC: mov      cl, byte ptr [eax + 0xd40]
0x0056BB02: movzx    edx, cl
0x0056BB05: inc      cl
0x0056BB07: lea      edx, [edx + edx*2]
0x0056BB0A: mov      byte ptr [eax + 0xd40], cl
0x0056BB10: lea      edx, [eax + edx*4 + 0xc80]
0x0056BB17: mov      eax, dword ptr [esi + 0x40]
0x0056BB1A: mov      cl, 0x10
0x0056BB1C: cmp      byte ptr [eax + 0xd40], cl
0x0056BB22: jb       0x56bb2b
0x0056BB24: mov      byte ptr [eax + 0xd40], 0
0x0056BB2B: mov      edi, dword ptr [esi + 0x40]
0x0056BB2E: mov      al, byte ptr [edi + 0xd41]
0x0056BB34: cmp      al, byte ptr [edi + 0xd40]
0x0056BB3A: jne      0x56bb58
0x0056BB3C: mov      eax, edi
0x0056BB3E: inc      byte ptr [eax + 0xd41]
0x0056BB44: mov      eax, dword ptr [esi + 0x40]
0x0056BB47: cmp      byte ptr [eax + 0xd41], cl
0x0056BB4D: jb       0x56bb58
0x0056BB4F: mov      ecx, eax
0x0056BB51: mov      byte ptr [ecx + 0xd41], 0
0x0056BB58: mov      eax, dword ptr [esi + 0x40]
0x0056BB5B: fld      dword ptr [eax + 0xc70]
0x0056BB61: fstp     dword ptr [edx]
0x0056BB63: fld      dword ptr [eax + 0xc74]
0x0056BB69: fstp     dword ptr [edx + 4]
0x0056BB6C: fld      qword ptr [0xb75ff0]
0x0056BB72: fstp     dword ptr [edx + 8]
0x0056BB75: fld      dword ptr [esp + 0x18]
0x0056BB79: fmulp    st(2)
0x0056BB7B: fcompp   
0x0056BB7D: fnstsw   ax
0x0056BB7F: test     ah, 0x41
0x0056BB82: jne      0x56bc60
0x0056BB88: mov      ecx, dword ptr [esi + 0x40]
0x0056BB8B: lea      edx, [esp + 0x8c]
0x0056BB92: push     edx
0x0056BB93: call     0x540780
0x0056BB98: fldz     
0x0056BB9A: fst      dword ptr [esp + 0x7c]
0x0056BB9E: push     eax
0x0056BB9F: fst      dword ptr [esp + 0x84]
0x0056BBA6: lea      eax, [esp + 0x80]
0x0056BBAD: fstp     dword ptr [esp + 0x88]
0x0056BBB4: push     eax
0x0056BBB5: fld1     
0x0056BBB7: fstp     dword ptr [esp + 0x90]
0x0056BBBE: call     0x6b2160
0x0056BBC3: fstp     st(0)
0x0056BBC5: fld      dword ptr [esp + 0x54]
0x0056BBC9: add      esp, 8
0x0056BBCC: fld      qword ptr [0x980ce0] ; [f32=0, f64=-1, u32=0x00000000]
0x0056BBD2: fmul     st(1), st(0)
0x0056BBD4: fxch     st(1)
0x0056BBD6: fstp     dword ptr [esp + 0x2c]
0x0056BBDA: fld      dword ptr [esp + 0x50]
0x0056BBDE: fmul     st(1)
0x0056BBE0: fstp     dword ptr [esp + 0x30]
0x0056BBE4: fmul     dword ptr [esp + 0x54]
0x0056BBE8: fstp     dword ptr [esp + 0x34]
0x0056BBEC: fld      dword ptr [esp + 0x30]
0x0056BBF0: fmul     dword ptr [esp + 0x80]
0x0056BBF7: fld      dword ptr [esp + 0x2c]
0x0056BBFB: fmul     dword ptr [esp + 0x7c]
0x0056BBFF: faddp    st(1)
0x0056BC01: fld      dword ptr [esp + 0x34]
0x0056BC05: fmul     dword ptr [esp + 0x84]
0x0056BC0C: faddp    st(1)
0x0056BC0E: fstp     dword ptr [esp + 0x18]
0x0056BC12: fld      dword ptr [esp + 0x18]
0x0056BC16: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x0056BC1C: fnstsw   ax
0x0056BC1E: test     ah, 0x41
0x0056BC21: jne      0x56bc2d
0x0056BC23: fstp     st(0)
0x0056BC25: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x0056BC2B: jmp      0x56bc46
0x0056BC2D: fcom     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x0056BC33: fnstsw   ax
0x0056BC35: test     ah, 0x41
0x0056BC38: je       0x56bc3e
0x0056BC3A: fstp     st(0)
0x0056BC3C: fldz     
0x0056BC3E: fstp     dword ptr [esp + 0xc]
0x0056BC42: fld      dword ptr [esp + 0xc]
0x0056BC46: mov      eax, dword ptr [esi + 0x40]
0x0056BC49: fstp     dword ptr [esp + 0xc]
0x0056BC4D: mov      ecx, dword ptr [eax + 0x1e4]
0x0056BC53: fld      dword ptr [ecx + 0x30]
0x0056BC56: fmul     dword ptr [esp + 0xc]
0x0056BC5A: fstp     dword ptr [eax + 0xc4c]
0x0056BC60: mov      eax, dword ptr [esi + 0x40]
0x0056BC63: fld      dword ptr [eax + 0xc38]
0x0056BC69: fld      dword ptr [eax + 0xc44]
0x0056BC6F: fcompp   
0x0056BC71: fnstsw   ax
0x0056BC73: test     ah, 5
0x0056BC76: jp       0x56bce4
0x0056BC78: mov      eax, dword ptr [esi + 0x40]
0x0056BC7B: cmp      dword ptr [eax + 0xd64], 0
0x0056BC82: je       0x56bce4
0x0056BC84: mov      edx, dword ptr [eax + 0x1e4]
0x0056BC8A: fld      dword ptr [edx + 0x74]
0x0056BC8D: fstp     dword ptr [esp + 0x18]
0x0056BC91: fldz     
0x0056BC93: fld      dword ptr [esp + 0x18]
0x0056BC97: fcom     st(1)
0x0056BC99: fnstsw   ax
0x0056BC9B: fstp     st(1)
0x0056BC9D: test     ah, 0x41
0x0056BCA0: jne      0x56bce2
0x0056BCA2: fld      dword ptr [0xb76120]
0x0056BCA8: mov      eax, dword ptr [esi + 0x40]
0x0056BCAB: fmulp    st(1)
0x0056BCAD: fsubr    dword ptr [eax + 0xc38]
0x0056BCB3: fstp     dword ptr [eax + 0xc38]
0x0056BCB9: mov      eax, dword ptr [esi + 0x40]
0x0056BCBC: fld      dword ptr [eax + 0xc38]
0x0056BCC2: fld      dword ptr [eax + 0xc44]
0x0056BCC8: fcompp   
0x0056BCCA: fnstsw   ax
0x0056BCCC: test     ah, 0x41
0x0056BCCF: jne      0x56bce4
0x0056BCD1: mov      eax, dword ptr [esi + 0x40]
0x0056BCD4: fld      dword ptr [eax + 0xc44]
0x0056BCDA: fstp     dword ptr [eax + 0xc38]
0x0056BCE0: jmp      0x56bce4
0x0056BCE2: fstp     st(0)
0x0056BCE4: mov      ecx, dword ptr [esi + 0x40]
0x0056BCE7: fld      dword ptr [ecx + 0xc38]
0x0056BCED: fld      dword ptr [ecx + 0xc44]
0x0056BCF3: fcompp   
0x0056BCF5: fnstsw   ax
0x0056BCF7: test     ah, 0x41
0x0056BCFA: jne      0x56bd95
0x0056BD00: mov      edx, ecx
0x0056BD02: fld      dword ptr [edx + 0xc34]
0x0056BD08: fabs     
0x0056BD0A: fstp     dword ptr [esp + 0x18]
0x0056BD0E: fld      dword ptr [esp + 0x18]
0x0056BD12: fld      dword ptr [ecx + 0xc40]
0x0056BD18: fmul     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x0056BD1E: fstp     dword ptr [esp + 0x18]
0x0056BD22: fld      dword ptr [esp + 0x18]
0x0056BD26: fcompp   
0x0056BD28: fnstsw   ax
0x0056BD2A: test     ah, 5
0x0056BD2D: jp       0x56bd95
0x0056BD2F: mov      eax, edx
0x0056BD31: fld      dword ptr [eax + 0xc38]
0x0056BD37: fld      dword ptr [0xb76120]
0x0056BD3D: fmul     qword ptr [0x980de0] ; [f32=0, f64=50, u32=0x00000000]
0x0056BD43: faddp    st(1)
0x0056BD45: fstp     dword ptr [esp + 0x18]
0x0056BD49: fld      dword ptr [eax + 0xc44]
0x0056BD4F: fstp     dword ptr [esp + 0xc]
0x0056BD53: fld      dword ptr [esp + 0x18]
0x0056BD57: fld      dword ptr [esp + 0xc]
0x0056BD5B: fcom     st(1)
0x0056BD5D: fnstsw   ax
0x0056BD5F: test     ah, 5
0x0056BD62: jp       0x56bd68
0x0056BD64: fstp     st(1)
0x0056BD66: jmp      0x56bd87
0x0056BD68: fstp     st(0)
0x0056BD6A: fcom     qword ptr [0x992250] ; [f32=-0, f64=1e-05, u32=0x80000000]
0x0056BD70: fnstsw   ax
0x0056BD72: test     ah, 0x41
0x0056BD75: je       0x56bd7f
0x0056BD77: fstp     st(0)
0x0056BD79: fld      dword ptr [0x992248] ; [u32=0x3727C5AC]
0x0056BD7F: fstp     dword ptr [esp + 0xc]
0x0056BD83: fld      dword ptr [esp + 0xc]
0x0056BD87: fstp     dword ptr [esp + 0xc]
0x0056BD8B: fld      dword ptr [esp + 0xc]
0x0056BD8F: fstp     dword ptr [edx + 0xc38]
0x0056BD95: mov      ecx, dword ptr [esi + 0x40]
0x0056BD98: fld      dword ptr [0x9672ec] ; [f32=0.001, u32=0x3A83126F]
0x0056BD9E: fcom     dword ptr [ecx + 0xc38]
0x0056BDA4: fnstsw   ax
0x0056BDA6: test     ah, 0x41
0x0056BDA9: jne      0x56bdb3
0x0056BDAB: fstp     dword ptr [ecx + 0xc38]
0x0056BDB1: jmp      0x56bdb5
0x0056BDB3: fstp     st(0)
0x0056BDB5: mov      esi, dword ptr [esi + 0x40]
0x0056BDB8: fld      dword ptr [esi + 0xc38]
0x0056BDBE: fcomp    qword ptr [0x992240] ; [f32=0, f64=4000, u32=0x00000000]
0x0056BDC4: fnstsw   ax
0x0056BDC6: test     ah, 0x41
0x0056BDC9: jne      0x56bdd7
0x0056BDCB: fld      dword ptr [0x99223c] ; [f32=4000, u32=0x457A0000]
0x0056BDD1: fstp     dword ptr [esi + 0xc38]
0x0056BDD7: mov      ecx, dword ptr [esp + 0x9c]
0x0056BDDE: mov      dword ptr fs:[0], ecx
0x0056BDE5: pop      ecx
0x0056BDE6: pop      edi
0x0056BDE7: pop      esi
0x0056BDE8: add      esp, 0x9c
0x0056BDEE: ret      
0x0056BDEF: int3     
0x0056BDF0: sub      esp, 0x10
0x0056BDF3: push     esi
0x0056BDF4: mov      esi, ecx
0x0056BDF6: mov      eax, dword ptr [esi + 0x40]
0x0056BDF9: add      eax, 0x24c
0x0056BDFE: push     eax
0x0056BDFF: call     0x56a6b0
0x0056BE04: fldz     
0x0056BE06: mov      ecx, dword ptr [esi + 8]
0x0056BE09: fst      dword ptr [esp + 4]
0x0056BE0D: movzx    eax, byte ptr [ecx + 1]
0x0056BE11: fst      dword ptr [esp + 8]
0x0056BE15: mov      ecx, dword ptr [ecx + 4]
0x0056BE18: fstp     dword ptr [esp + 0xc]
0x0056BE1C: mov      edx, dword ptr [ecx + 0x1c]
0x0056BE1F: fld1     
0x0056BE21: add      eax, eax
0x0056BE23: fstp     dword ptr [esp + 0x10]
0x0056BE27: add      eax, eax
0x0056BE29: mov      edx, dword ptr [eax + edx]
0x0056BE2C: test     edx, edx
0x0056BE2E: je       0x56be52
0x0056BE30: push     edi
0x0056BE31: mov      edi, dword ptr [ecx + 0xc]
0x0056BE34: test     dword ptr [eax + edi], 0x200
0x0056BE3B: pop      edi
0x0056BE3C: je       0x56be52
0x0056BE3E: test     byte ptr [edx + 8], 8
0x0056BE42: je       0x56be52
0x0056BE44: mov      ecx, dword ptr [ecx + 0x20]
0x0056BE47: add      eax, ecx
0x0056BE49: cmp      dword ptr [eax], 0
0x0056BE4C: je       0x56be52
0x0056BE4E: mov      eax, dword ptr [eax]
0x0056BE50: jmp      0x56be54
0x0056BE52: mov      eax, edx
0x0056BE54: lea      edx, [esp + 4]
0x0056BE58: push     edx
0x0056BE59: mov      ecx, eax
0x0056BE5B: call     0x509670
0x0056BE60: mov      eax, dword ptr [esi + 0x40]
0x0056BE63: mov      ecx, dword ptr [eax + 0x23c]
0x0056BE69: test     ecx, ecx
0x0056BE6B: je       0x56bed3
0x0056BE6D: movzx    eax, byte ptr [ecx + 1]
0x0056BE71: mov      ecx, dword ptr [ecx + 4]
0x0056BE74: mov      edx, dword ptr [ecx + 8]
0x0056BE77: test     dword ptr [edx + eax*4], 0x40000
0x0056BE7E: je       0x56bec6
0x0056BE80: mov      ecx, dword ptr [ecx + 0x14]
0x0056BE83: lea      eax, [eax + eax*8]
0x0056BE86: lea      eax, [ecx + eax*4]
0x0056BE89: mov      ecx, 0x1c
0x0056BE8E: cmp      byte ptr [eax + 0x14], cl
0x0056BE91: jne      0x56be98
0x0056BE93: mov      eax, dword ptr [eax + 4]
0x0056BE96: jmp      0x56bec8
0x0056BE98: cmp      byte ptr [eax + 0x15], cl
0x0056BE9B: jne      0x56bea2
0x0056BE9D: mov      eax, dword ptr [eax + 8]
0x0056BEA0: jmp      0x56bec8
0x0056BEA2: cmp      byte ptr [eax + 0x16], cl
0x0056BEA5: jne      0x56beac
0x0056BEA7: mov      eax, dword ptr [eax + 0xc]
0x0056BEAA: jmp      0x56bec8
0x0056BEAC: cmp      byte ptr [eax + 0x17], cl
0x0056BEAF: jne      0x56beb6
0x0056BEB1: mov      eax, dword ptr [eax + 0x10]
0x0056BEB4: jmp      0x56bec8
0x0056BEB6: mov      eax, dword ptr [eax]
0x0056BEB8: test     eax, eax
0x0056BEBA: je       0x56bec6
0x0056BEBC: push     ecx
0x0056BEBD: mov      ecx, eax
0x0056BEBF: call     0x461400
0x0056BEC4: jmp      0x56bec8
0x0056BEC6: xor      eax, eax
0x0056BEC8: mov      edx, dword ptr [esi + 0x40]
0x0056BECB: push     edx
0x0056BECC: mov      ecx, eax
0x0056BECE: call     0x520a40
0x0056BED3: mov      ecx, esi
0x0056BED5: call     0x56b260
0x0056BEDA: fldz     
0x0056BEDC: mov      eax, dword ptr [esi + 0x40]
0x0056BEDF: mov      dword ptr [eax + 0x240], 0
0x0056BEE9: mov      eax, dword ptr [esi + 0x40]
0x0056BEEC: fst      dword ptr [eax + 0x28c]
0x0056BEF2: fst      dword ptr [eax + 0x290]
0x0056BEF8: fst      dword ptr [eax + 0x294]
0x0056BEFE: fld1     
0x0056BF00: fst      dword ptr [eax + 0x298]
0x0056BF06: fstp     dword ptr [eax + 0xc30]
0x0056BF0C: fst      dword ptr [eax + 0xc24]
0x0056BF12: fst      dword ptr [eax + 0xc28]
0x0056BF18: fst      dword ptr [eax + 0xc2c]
0x0056BF1E: fstp     dword ptr [eax + 0xc34]
0x0056BF24: mov      esi, dword ptr [esi + 0x40]
0x0056BF27: lea      ecx, [esi + 0x2bc]
0x0056BF2D: mov      dword ptr [esi + 0xc1c], ecx
0x0056BF33: pop      esi
0x0056BF34: add      esp, 0x10
0x0056BF37: ret      
0x0056BF38: int3     
0x0056BF39: int3     
0x0056BF3A: int3     
0x0056BF3B: int3     
0x0056BF3C: int3     
0x0056BF3D: int3     
0x0056BF3E: int3     
0x0056BF3F: int3     
0x0056BF40: fldz     
0x0056BF42: mov      eax, dword ptr [ecx + 0x40]
0x0056BF45: fstp     dword ptr [eax + 0xd48]
0x0056BF4B: jmp      0x56b140
0x0056BF50: push     -1
0x0056BF52: push     0x947f52
0x0056BF57: mov      eax, dword ptr fs:[0]
0x0056BF5D: push     eax
0x0056BF5E: sub      esp, 0x10
0x0056BF61: push     ebx
0x0056BF62: push     esi
0x0056BF63: push     edi
0x0056BF64: mov      eax, dword ptr [0xb089c8]
0x0056BF69: xor      eax, esp
0x0056BF6B: push     eax
0x0056BF6C: lea      eax, [esp + 0x20]
0x0056BF70: mov      dword ptr fs:[0], eax
0x0056BF76: mov      esi, ecx
0x0056BF78: call     0x56b260
0x0056BF7D: mov      edi, dword ptr [esp + 0x30]
0x0056BF81: mov      eax, dword ptr [edi + 8]
0x0056BF84: mov      ecx, dword ptr [esi + 0x40]
0x0056BF87: mov      ebx, 1
0x0056BF8C: test     eax, eax
0x0056BF8E: jne      0x56bf96
0x0056BF90: mov      dword ptr [ecx + 0x248], ebx
0x0056BF96: mov      dword ptr [ecx + 0x23c], eax
0x0056BF9C: mov      eax, dword ptr [esi + 0x40]
0x0056BF9F: mov      dword ptr [eax + 0xd68], ebx
0x0056BFA5: mov      ecx, dword ptr [esi + 0x40]
0x0056BFA8: push     ecx
0x0056BFA9: mov      ecx, edi
0x0056BFAB: call     0x5209d0
0x0056BFB0: mov      ecx, esi
0x0056BFB2: call     0x56a840
0x0056BFB7: mov      ecx, esi
0x0056BFB9: call     0x56a8d0
0x0056BFBE: lea      edx, [esp + 0x10]
0x0056BFC2: test     dl, 0x7f
0x0056BFC5: je       0x56bfd6
0x0056BFC7: mov      eax, edx
0x0056BFC9: push     8
0x0056BFCB: push     eax
0x0056BFCC: call     0x6a9700
0x0056BFD1: add      esp, 8
0x0056BFD4: jmp      0x56bfe0
0x0056BFD6: xor      eax, eax
0x0056BFD8: mov      dword ptr [esp + 0x10], eax
0x0056BFDC: mov      dword ptr [esp + 0x14], eax
0x0056BFE0: mov      ecx, dword ptr [esi + 8]
0x0056BFE3: mov      edx, dword ptr [edi + 8]
0x0056BFE6: lea      eax, [esp + 0x10]
0x0056BFEA: push     eax
0x0056BFEB: mov      dword ptr [esp + 0x14], ecx
0x0056BFEF: mov      ecx, dword ptr [0xb1babc]
0x0056BFF5: push     0
0x0056BFF7: push     ecx
0x0056BFF8: mov      dword ptr [esp + 0x20], edx
0x0056BFFC: call     0x52d190
0x0056C001: mov      edx, dword ptr [esi + 0x40]
0x0056C004: mov      ecx, dword ptr [edx + 0x1b4]
0x0056C00A: add      esp, 0xc
0x0056C00D: mov      dword ptr [esp + 0x18], 0x9921b0
0x0056C015: mov      dword ptr [esp + 0x1c], ebx
0x0056C019: mov      eax, dword ptr [ecx]
0x0056C01B: mov      eax, dword ptr [eax + 8]
0x0056C01E: push     ebx
0x0056C01F: lea      edx, [esp + 0x1c]
0x0056C023: push     edx
0x0056C024: mov      dword ptr [esp + 0x30], 0
0x0056C02C: call     eax
0x0056C02E: mov      ecx, dword ptr [esi + 0x40]
0x0056C031: mov      ecx, dword ptr [ecx + 0x1b4]
0x0056C037: mov      dword ptr [esp + 0x30], 0x9921d8
0x0056C03F: mov      edx, dword ptr [ecx]
0x0056C041: mov      edx, dword ptr [edx + 8]
0x0056C044: push     ebx
0x0056C045: lea      eax, [esp + 0x34]
0x0056C049: push     eax
0x0056C04A: mov      dword ptr [esp + 0x30], ebx
0x0056C04E: call     edx
0x0056C050: mov      eax, dword ptr [esi + 0x40]
0x0056C053: mov      ecx, dword ptr [eax + 0x1b4]
0x0056C059: mov      dword ptr [esp + 0x30], 0x992200
0x0056C061: mov      edx, dword ptr [ecx]
0x0056C063: mov      edx, dword ptr [edx + 8]
0x0056C066: push     ebx
0x0056C067: lea      eax, [esp + 0x34]
0x0056C06B: push     eax
0x0056C06C: mov      dword ptr [esp + 0x30], 2
0x0056C074: call     edx
0x0056C076: mov      ecx, dword ptr [esp + 0x20]
0x0056C07A: mov      dword ptr fs:[0], ecx
0x0056C081: pop      ecx
0x0056C082: pop      edi
0x0056C083: pop      esi
0x0056C084: pop      ebx
0x0056C085: add      esp, 0x1c
0x0056C088: ret      4
0x0056C08B: int3     
0x0056C08C: int3     
0x0056C08D: int3     
0x0056C08E: int3     
0x0056C08F: int3     
0x0056C090: push     -1
0x0056C092: push     0x947fba
0x0056C097: mov      eax, dword ptr fs:[0]
0x0056C09D: push     eax
0x0056C09E: sub      esp, 0xb4
0x0056C0A4: push     ebx
0x0056C0A5: push     ebp
0x0056C0A6: push     esi
0x0056C0A7: push     edi
0x0056C0A8: mov      eax, dword ptr [0xb089c8]
0x0056C0AD: xor      eax, esp
0x0056C0AF: push     eax
0x0056C0B0: lea      eax, [esp + 0xc8]
0x0056C0B7: mov      dword ptr fs:[0], eax
0x0056C0BD: mov      esi, ecx
0x0056C0BF: mov      eax, dword ptr [0xb1aa84]
0x0056C0C4: cmp      dword ptr [eax + 0x30], 0
0x0056C0C8: jne      0x56d15f
0x0056C0CE: cmp      dword ptr [eax + 0x8c], 0
0x0056C0D5: jne      0x56d15f
0x0056C0DB: mov      eax, dword ptr [esi + 0x40]
0x0056C0DE: push     0xd9168664
0x0056C0E3: lea      ecx, [eax + 0x1a8]
0x0056C0E9: call     0x5691a0
0x0056C0EE: mov      ebx, eax
0x0056C0F0: mov      eax, dword ptr [esi + 0x40]
0x0056C0F3: push     0x7ae2e2fb
0x0056C0F8: lea      ecx, [eax + 0x1a8]
0x0056C0FE: mov      dword ptr [esp + 0x30], ebx
0x0056C102: call     0x569250
0x0056C107: fldz     
0x0056C109: mov      ebp, eax
0x0056C10B: mov      eax, dword ptr [esi + 0x40]
0x0056C10E: cmp      dword ptr [eax + 0x204], 0
0x0056C115: mov      dword ptr [esp + 0x3c], ebp
0x0056C119: je       0x56c12f
0x0056C11B: fcom     dword ptr [eax + 0x230]
0x0056C121: fnstsw   ax
0x0056C123: test     ah, 5
0x0056C126: jp       0x56c12f
0x0056C128: mov      eax, 1
0x0056C12D: jmp      0x56c131
0x0056C12F: xor      eax, eax
0x0056C131: mov      ecx, dword ptr [esi + 0x40]
0x0056C134: mov      dword ptr [ecx + 0x238], eax
0x0056C13A: mov      eax, dword ptr [esi + 0x40]
0x0056C13D: fld      dword ptr [eax + 0xdf4]
0x0056C143: fadd     dword ptr [0xb76120]
0x0056C149: fstp     dword ptr [eax + 0xdf4]
0x0056C14F: mov      edx, dword ptr [esi + 0x40]
0x0056C152: fld      dword ptr [0x96a85c] ; [f32=5, u32=0x40A00000]
0x0056C158: fcomp    dword ptr [edx + 0xdf4]
0x0056C15E: fnstsw   ax
0x0056C160: test     ah, 5
0x0056C163: jp       0x56c17c
0x0056C165: mov      eax, edx
0x0056C167: mov      dword ptr [eax + 0xdfc], 0
0x0056C171: mov      ecx, dword ptr [esi + 0x40]
0x0056C174: fstp     dword ptr [ecx + 0xdf4]
0x0056C17A: jmp      0x56c17e
0x0056C17C: fstp     st(0)
0x0056C17E: mov      eax, dword ptr [esi + 0x40]
0x0056C181: mov      edi, dword ptr [eax + 0xdbc]
0x0056C187: mov      eax, dword ptr [eax + 0xdc0]
0x0056C18D: cmp      edi, eax
0x0056C18F: je       0x56c1b2
0x0056C191: mov      edx, dword ptr [edi + 8]
0x0056C194: mov      eax, dword ptr [edi + 4]
0x0056C197: mov      ecx, dword ptr [edi]
0x0056C199: push     edx
0x0056C19A: push     eax
0x0056C19B: push     ecx
0x0056C19C: call     0x52d190
0x0056C1A1: mov      edx, dword ptr [esi + 0x40]
0x0056C1A4: add      edi, 0xc
0x0056C1A7: add      esp, 0xc
0x0056C1AA: cmp      edi, dword ptr [edx + 0xdc0]
0x0056C1B0: jne      0x56c191
0x0056C1B2: mov      eax, dword ptr [esi + 0x40]
0x0056C1B5: mov      ecx, dword ptr [eax + 0xdbc]
0x0056C1BB: add      eax, 0xdb8
0x0056C1C0: xor      edi, edi
0x0056C1C2: cmp      dword ptr [eax + 0xc], edi
0x0056C1C5: je       0x56c1ca
0x0056C1C7: mov      dword ptr [eax + 8], ecx
0x0056C1CA: mov      eax, dword ptr [esi + 0x40]
0x0056C1CD: cmp      dword ptr [eax + 0xd74], 1
0x0056C1D4: jne      0x56c29a
0x0056C1DA: mov      eax, dword ptr [esi + 8]
0x0056C1DD: movzx    ecx, byte ptr [eax + 1]
0x0056C1E1: mov      edx, dword ptr [eax + 4]
0x0056C1E4: mov      eax, dword ptr [edx + 0x34]
0x0056C1E7: mov      ecx, dword ptr [eax + ecx*4]
0x0056C1EA: mov      edx, dword ptr [ecx]
0x0056C1EC: mov      eax, dword ptr [edx + 0x128]
0x0056C1F2: push     edi
0x0056C1F3: push     edi
0x0056C1F4: push     1
0x0056C1F6: call     eax
0x0056C1F8: mov      eax, dword ptr [esi + 0x40]
0x0056C1FB: fld      dword ptr [eax + 0xd78]
0x0056C201: fsub     dword ptr [0xb76120]
0x0056C207: fstp     dword ptr [eax + 0xd78]
0x0056C20D: mov      ecx, dword ptr [esi + 0x40]
0x0056C210: fldz     
0x0056C212: fcomp    dword ptr [ecx + 0xd78]
0x0056C218: fnstsw   ax
0x0056C21A: test     ah, 0x41
0x0056C21D: jne      0x56c27e
0x0056C21F: mov      ecx, dword ptr [esi + 8]
0x0056C222: push     edi
0x0056C223: push     edi
0x0056C224: call     0x7f8390
0x0056C229: mov      edx, dword ptr [esi + 0x40]
0x0056C22C: mov      dword ptr [edx + 0xd74], edi
0x0056C232: mov      eax, dword ptr [esi + 0x40]
0x0056C235: cmp      dword ptr [eax + 0x1ec], edi
0x0056C23B: je       0x56c29a
0x0056C23D: mov      ecx, eax
0x0056C23F: call     0x540ef0
0x0056C244: mov      eax, dword ptr [esi + 8]
0x0056C247: movzx    ecx, byte ptr [eax + 1]
0x0056C24B: mov      edx, dword ptr [eax + 4]
0x0056C24E: mov      eax, dword ptr [edx + 0x28]
0x0056C251: mov      eax, dword ptr [eax + ecx*4]
0x0056C254: mov      ecx, dword ptr [0x95f978] ; [u32=0x2EE0407F]
0x0056C25A: push     edi
0x0056C25B: push     edi
0x0056C25C: push     ecx
0x0056C25D: mov      ecx, dword ptr [eax + 0x114]
0x0056C263: call     0x7cd3c0
0x0056C268: cmp      eax, edi
0x0056C26A: je       0x56c29a
0x0056C26C: mov      edx, dword ptr [esi + 0x40]
0x0056C26F: mov      dword ptr [edx + 0x1f8], 1
0x0056C279: jmp      0x56d15f
0x0056C27E: mov      eax, dword ptr [esi + 0x40]
0x0056C281: cmp      dword ptr [eax + 0xe10], 1
0x0056C288: je       0x56d15f
0x0056C28E: mov      ecx, esi
0x0056C290: call     0x56a740
0x0056C295: jmp      0x56d15f
0x0056C29A: mov      ecx, dword ptr [esi + 0x40]
0x0056C29D: cmp      dword ptr [ecx + 0x1ec], edi
0x0056C2A3: jne      0x56c30e
0x0056C2A5: cmp      dword ptr [ecx + 0x1e8], 1
0x0056C2AC: jne      0x56d15f
0x0056C2B2: mov      ecx, dword ptr [ecx + 0x1dc]
0x0056C2B8: cmp      byte ptr [ecx + 1], 1
0x0056C2BC: jne      0x56d15f
0x0056C2C2: cmp      ebp, edi
0x0056C2C4: je       0x56d15f
0x0056C2CA: test     byte ptr [ebp + 0x40], 1
0x0056C2CE: je       0x56d15f
0x0056C2D4: mov      edx, dword ptr [esi + 0x40]
0x0056C2D7: push     edi
0x0056C2D8: mov      dword ptr [edx + 0x1e8], edi
0x0056C2DE: mov      ecx, dword ptr [esi + 0x40]
0x0056C2E1: push     1
0x0056C2E3: call     0x540470
0x0056C2E8: mov      eax, dword ptr [esi + 0x40]
0x0056C2EB: mov      ecx, dword ptr [0xb1bad0]
0x0056C2F1: add      eax, 0xda4
0x0056C2F6: push     eax
0x0056C2F7: push     edi
0x0056C2F8: push     ecx
0x0056C2F9: call     0x52d190
0x0056C2FE: mov      ecx, dword ptr [esi + 0x40]
0x0056C301: add      esp, 0xc
0x0056C304: call     0x540ef0
0x0056C309: jmp      0x56d15f
0x0056C30E: cmp      dword ptr [ecx + 0x1f4], edi
0x0056C314: je       0x56c33f
0x0056C316: cmp      dword ptr [ecx + 0x1f8], 1
0x0056C31D: jne      0x56d15f
0x0056C323: cmp      ebp, edi
0x0056C325: je       0x56d15f
0x0056C32B: test     byte ptr [ebp + 0x40], 1
0x0056C32F: je       0x56d15f
0x0056C335: call     0x540de0
0x0056C33A: jmp      0x56d15f
0x0056C33F: cmp      dword ptr [ecx + 0x1fc], edi
0x0056C345: je       0x56c352
0x0056C347: mov      dword ptr [ecx + 0x1fc], edi
0x0056C34D: jmp      0x56d15f
0x0056C352: mov      ecx, dword ptr [ecx + 0x1e4]
0x0056C358: fld      dword ptr [ecx + 0x78]
0x0056C35B: mov      eax, dword ptr [esi + 8]
0x0056C35E: movzx    edx, byte ptr [eax + 1]
0x0056C362: fstp     dword ptr [esp + 0x14]
0x0056C366: mov      ecx, dword ptr [eax + 4]
0x0056C369: mov      ecx, dword ptr [ecx + 0x1c]
0x0056C36C: mov      ecx, dword ptr [ecx + edx*4]
0x0056C36F: movzx    edx, byte ptr [eax + 1]
0x0056C373: fld      dword ptr [ecx + 0xc]
0x0056C376: mov      eax, dword ptr [eax + 4]
0x0056C379: fstp     dword ptr [esp + 0x18]
0x0056C37D: mov      ecx, dword ptr [eax + 0x1c]
0x0056C380: mov      eax, dword ptr [ecx + edx*4]
0x0056C383: fld      dword ptr [eax + 0x10]
0x0056C386: fstp     dword ptr [esp + 0x64]
0x0056C38A: fld      dword ptr [esp + 0x14]
0x0056C38E: fld      st(0)
0x0056C390: fldz     
0x0056C392: fsubrp   st(1)
0x0056C394: fstp     dword ptr [esp + 0x14]
0x0056C398: fld      dword ptr [esp + 0x14]
0x0056C39C: fst      dword ptr [esp + 0x14]
0x0056C3A0: fld      st(1)
0x0056C3A2: fadd     qword ptr [0x992270] ; [f32=0, f64=1920, u32=0x00000000]
0x0056C3A8: fstp     dword ptr [esp + 0x60]
0x0056C3AC: fstp     dword ptr [esp + 0x40]
0x0056C3B0: fadd     qword ptr [0x992268] ; [f32=0, f64=1080, u32=0x00000000]
0x0056C3B6: fstp     dword ptr [esp + 0x1c]
0x0056C3BA: fld      dword ptr [esp + 0x18]
0x0056C3BE: fld      dword ptr [esp + 0x14]
0x0056C3C2: fcomp    st(1)
0x0056C3C4: fnstsw   ax
0x0056C3C6: test     ah, 0x41
0x0056C3C9: je       0x56c3fa
0x0056C3CB: fld      dword ptr [esp + 0x60]
0x0056C3CF: fcompp   
0x0056C3D1: fnstsw   ax
0x0056C3D3: test     ah, 5
0x0056C3D6: jnp      0x56c3fc
0x0056C3D8: fld      dword ptr [esp + 0x64]
0x0056C3DC: fld      dword ptr [esp + 0x40]
0x0056C3E0: fcomp    st(1)
0x0056C3E2: fnstsw   ax
0x0056C3E4: test     ah, 0x41
0x0056C3E7: je       0x56c3fa
0x0056C3E9: fld      dword ptr [esp + 0x1c]
0x0056C3ED: fcompp   
0x0056C3EF: fnstsw   ax
0x0056C3F1: test     ah, 5
0x0056C3F4: jnp      0x56c3fc
0x0056C3F6: xor      eax, eax
0x0056C3F8: jmp      0x56c401
0x0056C3FA: fstp     st(0)
0x0056C3FC: mov      eax, 1
0x0056C401: mov      edx, dword ptr [esi + 0x40]
0x0056C404: fldz     
0x0056C406: mov      dword ptr [edx + 0xd64], eax
0x0056C40C: mov      eax, dword ptr [esi + 0x40]
0x0056C40F: fcom     dword ptr [eax + 0xd54]
0x0056C415: fnstsw   ax
0x0056C417: test     ah, 5
0x0056C41A: jp       0x56c4e9
0x0056C420: mov      eax, dword ptr [esi + 0x40]
0x0056C423: fld      dword ptr [eax + 0xd54]
0x0056C429: fsub     dword ptr [0xb76120]
0x0056C42F: fstp     dword ptr [eax + 0xd54]
0x0056C435: mov      ecx, dword ptr [esi + 0x40]
0x0056C438: fcom     dword ptr [ecx + 0xd54]
0x0056C43E: fnstsw   ax
0x0056C440: test     ah, 1
0x0056C443: jne      0x56c460
0x0056C445: mov      edx, ecx
0x0056C447: fstp     dword ptr [edx + 0xd54]
0x0056C44D: push     ecx
0x0056C44E: fld1     
0x0056C450: mov      ecx, dword ptr [esi + 0x40]
0x0056C453: fstp     dword ptr [esp]
0x0056C456: call     0x53fea0
0x0056C45B: jmp      0x56c4eb
0x0056C460: mov      edi, dword ptr [esi + 0x40]
0x0056C463: fstp     st(0)
0x0056C465: fld      dword ptr [edi + 0xd54]
0x0056C46B: sub      esp, 8
0x0056C46E: fmul     qword ptr [0x9837d8] ; [f32=0, f64=5, u32=0x00000000]
0x0056C474: fstp     dword ptr [esp + 0x24]
0x0056C478: fld      dword ptr [esp + 0x24]
0x0056C47C: fst      qword ptr [esp + 0x48]
0x0056C480: fstp     qword ptr [esp]
0x0056C483: call     0x8ebb20
0x0056C488: fstp     dword ptr [esp + 0x24]
0x0056C48C: add      esp, 8
0x0056C48F: fld      dword ptr [esp + 0x1c]
0x0056C493: fsubr    qword ptr [esp + 0x40]
0x0056C497: fstp     dword ptr [esp + 0x18]
0x0056C49B: fld      dword ptr [0x9ac388] ; [f32=0.5, u32=0x3F000000]
0x0056C4A1: fld      dword ptr [esp + 0x18]
0x0056C4A5: fcom     st(1)
0x0056C4A7: fnstsw   ax
0x0056C4A9: fstp     st(1)
0x0056C4AB: test     ah, 5
0x0056C4AE: jp       0x56c4bc
0x0056C4B0: fld1     
0x0056C4B2: fsubrp   st(1)
0x0056C4B4: fstp     dword ptr [esp + 0x18]
0x0056C4B8: fld      dword ptr [esp + 0x18]
0x0056C4BC: fadd     st(0), st(0)
0x0056C4BE: push     ecx
0x0056C4BF: mov      ecx, edi
0x0056C4C1: fsub     qword ptr [0x9795c8] ; [f32=0, f64=1, u32=0x00000000]
0x0056C4C7: fstp     dword ptr [esp + 0x1c]
0x0056C4CB: fld      dword ptr [esp + 0x1c]
0x0056C4CF: fld      st(0)
0x0056C4D1: fmul     st(0), st(0)
0x0056C4D3: fmulp    st(1)
0x0056C4D5: fstp     dword ptr [esp + 0x1c]
0x0056C4D9: fld      dword ptr [esp + 0x1c]
0x0056C4DD: fstp     dword ptr [esp]
0x0056C4E0: call     0x53fea0
0x0056C4E5: xor      edi, edi
0x0056C4E7: jmp      0x56c4eb
0x0056C4E9: fstp     st(0)
0x0056C4EB: mov      eax, dword ptr [esi + 0x40]
0x0056C4EE: fldz     
0x0056C4F0: fcom     dword ptr [eax + 0xd50]
0x0056C4F6: fnstsw   ax
0x0056C4F8: test     ah, 5
0x0056C4FB: jp       0x56c52c
0x0056C4FD: mov      eax, dword ptr [esi + 0x40]
0x0056C500: fld      dword ptr [eax + 0xd50]
0x0056C506: fsub     dword ptr [0xb76120]
0x0056C50C: fstp     dword ptr [eax + 0xd50]
0x0056C512: mov      ecx, dword ptr [esi + 0x40]
0x0056C515: fcom     dword ptr [ecx + 0xd50]
0x0056C51B: fnstsw   ax
0x0056C51D: test     ah, 1
0x0056C520: jne      0x56c52c
0x0056C522: mov      edx, ecx
0x0056C524: fstp     dword ptr [edx + 0xd50]
0x0056C52A: jmp      0x56c52e
0x0056C52C: fstp     st(0)
0x0056C52E: fld1     
0x0056C530: mov      ecx, dword ptr [esi + 0x40]
0x0056C533: fcom     dword ptr [ecx + 0xd48]
0x0056C539: fnstsw   ax
0x0056C53B: test     ah, 0x44
0x0056C53E: jnp      0x56c54f
0x0056C540: fcomp    dword ptr [ecx + 0xd4c]
0x0056C546: fnstsw   ax
0x0056C548: test     ah, 0x44
0x0056C54B: jnp      0x56c551
0x0056C54D: jmp      0x56c556
0x0056C54F: fstp     st(0)
0x0056C551: mov      edi, 1
0x0056C556: xor      ebp, ebp
0x0056C558: cmp      dword ptr [ecx + 0xd58], ebp
0x0056C55E: je       0x56c56a
0x0056C560: cmp      edi, ebp
0x0056C562: je       0x56c56a
0x0056C564: mov      dword ptr [ecx + 0xd58], ebp
0x0056C56A: mov      eax, dword ptr [esi + 0x40]
0x0056C56D: cmp      dword ptr [eax + 0x248], ebp
0x0056C573: jne      0x56c583
0x0056C575: mov      ecx, dword ptr [eax + 0x23c]
0x0056C57B: mov      dword ptr [eax + 0x240], ecx
0x0056C581: jmp      0x56c589
0x0056C583: mov      dword ptr [eax + 0x248], ebp
0x0056C589: mov      eax, dword ptr [esi + 0x40]
0x0056C58C: mov      dword ptr [eax + 0x244], ebp
0x0056C592: cmp      ebx, ebp
0x0056C594: je       0x56c5a6
0x0056C596: mov      ecx, ebx
0x0056C598: call     0x5757a0
0x0056C59D: mov      ecx, dword ptr [esi + 0x40]
0x0056C5A0: mov      dword ptr [ecx + 0x244], eax
0x0056C5A6: mov      edx, dword ptr [esi + 0x40]
0x0056C5A9: mov      eax, dword ptr [edx + 0x244]
0x0056C5AF: cmp      eax, ebp
0x0056C5B1: je       0x56c624
0x0056C5B3: movzx    ecx, byte ptr [eax + 1]
0x0056C5B7: mov      eax, dword ptr [eax + 4]
0x0056C5BA: mov      edx, dword ptr [eax + 8]
0x0056C5BD: test     dword ptr [edx + ecx*4], 0x40000
0x0056C5C4: je       0x56c60d
0x0056C5C6: mov      edx, dword ptr [eax + 0x14]
0x0056C5C9: lea      ecx, [ecx + ecx*8]
0x0056C5CC: cmp      byte ptr [edx + ecx*4 + 0x14], 0x1c
0x0056C5D1: lea      eax, [edx + ecx*4]
0x0056C5D4: jne      0x56c5db
0x0056C5D6: mov      eax, dword ptr [eax + 4]
0x0056C5D9: jmp      0x56c60f
0x0056C5DB: cmp      byte ptr [eax + 0x15], 0x1c
0x0056C5DF: jne      0x56c5e6
0x0056C5E1: mov      eax, dword ptr [eax + 8]
0x0056C5E4: jmp      0x56c60f
0x0056C5E6: cmp      byte ptr [eax + 0x16], 0x1c
0x0056C5EA: jne      0x56c5f1
0x0056C5EC: mov      eax, dword ptr [eax + 0xc]
0x0056C5EF: jmp      0x56c60f
0x0056C5F1: cmp      byte ptr [eax + 0x17], 0x1c
0x0056C5F5: jne      0x56c5fc
0x0056C5F7: mov      eax, dword ptr [eax + 0x10]
0x0056C5FA: jmp      0x56c60f
0x0056C5FC: mov      eax, dword ptr [eax]
0x0056C5FE: cmp      eax, ebp
0x0056C600: je       0x56c60d
0x0056C602: push     0x1c
0x0056C604: mov      ecx, eax
0x0056C606: call     0x461400
0x0056C60B: jmp      0x56c60f
0x0056C60D: xor      eax, eax
0x0056C60F: mov      ecx, dword ptr [esi + 0x40]
0x0056C612: mov      edx, dword ptr [ecx + 0x1dc]
0x0056C618: movsx    ecx, byte ptr [edx]
0x0056C61B: push     edi
0x0056C61C: push     ecx
0x0056C61D: mov      ecx, eax
0x0056C61F: call     0x520cf0
0x0056C624: fldz     
0x0056C626: mov      ecx, dword ptr [esi + 0x40]
0x0056C629: fcom     dword ptr [ecx + 0xc50]
0x0056C62F: xor      ebx, ebx
0x0056C631: or       ebp, 0xffffffff
0x0056C634: fnstsw   ax
0x0056C636: test     ah, 0x44
0x0056C639: jp       0x56c86b
0x0056C63F: fcomp    dword ptr [ecx + 0xc58]
0x0056C645: fnstsw   ax
0x0056C647: test     ah, 0x44
0x0056C64A: jp       0x56c86d
0x0056C650: cmp      dword ptr [ecx + 0x204], ebx
0x0056C656: jne      0x56c86d
0x0056C65C: call     0x56d500
0x0056C661: test     eax, eax
0x0056C663: jne      0x56c86d
0x0056C669: mov      ecx, dword ptr [esp + 0x3c]
0x0056C66D: test     ecx, ecx
0x0056C66F: je       0x56c86d
0x0056C675: mov      cl, byte ptr [ecx + 0x40]
0x0056C678: mov      eax, dword ptr [esi + 0x40]
0x0056C67B: mov      edx, dword ptr [eax + 0x1e4]
0x0056C681: movzx    edi, cl
0x0056C684: and      edi, 1
0x0056C687: je       0x56c691
0x0056C689: mov      dword ptr [eax + 0xd68], ebx
0x0056C68F: jmp      0x56c6bb
0x0056C691: cmp      byte ptr [edx + 0x7c], bl
0x0056C694: je       0x56c850
0x0056C69A: cmp      dword ptr [eax + 0xd68], ebx
0x0056C6A0: jne      0x56c850
0x0056C6A6: cmp      dword ptr [eax + 0x240], ebx
0x0056C6AC: jne      0x56c850
0x0056C6B2: test     cl, 4
0x0056C6B5: je       0x56c850
0x0056C6BB: mov      eax, dword ptr [esi + 0x40]
0x0056C6BE: mov      edi, dword ptr [eax + 0x244]
0x0056C6C4: test     edi, edi
0x0056C6C6: je       0x56c850
0x0056C6CC: xor      eax, eax
0x0056C6CE: lea      edx, [esp + 0x14]
0x0056C6D2: mov      dword ptr [esp + 0x18], eax
0x0056C6D6: mov      dword ptr [esp + 0x14], eax
0x0056C6DA: push     edx
0x0056C6DB: lea      eax, [esp + 0x1c]
0x0056C6DF: push     eax
0x0056C6E0: mov      ecx, esi
0x0056C6E2: call     0x56a5a0
0x0056C6E7: test     eax, eax
0x0056C6E9: je       0x56c7de
0x0056C6EF: cmp      dword ptr [esp + 0x18], ebx
0x0056C6F3: je       0x56c71e
0x0056C6F5: mov      ecx, dword ptr [esi + 0x40]
0x0056C6F8: fldz     
0x0056C6FA: fstp     dword ptr [ecx + 0xd48]
0x0056C700: mov      edx, dword ptr [esi + 0x40]
0x0056C703: mov      ecx, dword ptr [edx + 0x1b4]
0x0056C709: mov      dword ptr [esp + 0x1c], 0x992188
0x0056C711: mov      dword ptr [esp + 0xd0], 0
0x0056C71C: jmp      0x56c74b
0x0056C71E: cmp      dword ptr [esp + 0x14], ebx
0x0056C722: je       0x56c760
0x0056C724: mov      ecx, dword ptr [esi + 0x40]
0x0056C727: fldz     
0x0056C729: fstp     dword ptr [ecx + 0xd4c]
0x0056C72F: mov      edx, dword ptr [esi + 0x40]
0x0056C732: mov      ecx, dword ptr [edx + 0x1b4]
0x0056C738: mov      dword ptr [esp + 0x1c], 0x99219c
0x0056C740: mov      dword ptr [esp + 0xd0], 1
0x0056C74B: mov      eax, dword ptr [ecx]
0x0056C74D: mov      eax, dword ptr [eax + 8]
0x0056C750: push     1
0x0056C752: lea      edx, [esp + 0x20]
0x0056C756: push     edx
0x0056C757: call     eax
0x0056C759: mov      dword ptr [esp + 0xd0], ebp
0x0056C760: mov      ecx, dword ptr [esi + 0x40]
0x0056C763: mov      ebx, dword ptr [ecx + 0x244]
0x0056C769: movzx    eax, byte ptr [ebx + 1]
0x0056C76D: mov      ecx, dword ptr [ebx + 4]
0x0056C770: mov      edx, dword ptr [ecx + 8]
0x0056C773: test     dword ptr [edx + eax*4], 0x40000
0x0056C77A: je       0x56c7c3
0x0056C77C: mov      ecx, dword ptr [ecx + 0x14]
0x0056C77F: lea      eax, [eax + eax*8]
0x0056C782: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x0056C787: lea      eax, [ecx + eax*4]
0x0056C78A: jne      0x56c791
0x0056C78C: mov      eax, dword ptr [eax + 4]
0x0056C78F: jmp      0x56c7c5
0x0056C791: cmp      byte ptr [eax + 0x15], 0x1c
0x0056C795: jne      0x56c79c
0x0056C797: mov      eax, dword ptr [eax + 8]
0x0056C79A: jmp      0x56c7c5
0x0056C79C: cmp      byte ptr [eax + 0x16], 0x1c
0x0056C7A0: jne      0x56c7a7
0x0056C7A2: mov      eax, dword ptr [eax + 0xc]
0x0056C7A5: jmp      0x56c7c5
0x0056C7A7: cmp      byte ptr [eax + 0x17], 0x1c
0x0056C7AB: jne      0x56c7b2
0x0056C7AD: mov      eax, dword ptr [eax + 0x10]
0x0056C7B0: jmp      0x56c7c5
0x0056C7B2: mov      eax, dword ptr [eax]
0x0056C7B4: test     eax, eax
0x0056C7B6: je       0x56c7c3
0x0056C7B8: push     0x1c
0x0056C7BA: mov      ecx, eax
0x0056C7BC: call     0x461400
0x0056C7C1: jmp      0x56c7c5
0x0056C7C3: xor      eax, eax
0x0056C7C5: mov      edx, dword ptr [esi + 0x40]
0x0056C7C8: mov      ecx, dword ptr [edx + 0x1dc]
0x0056C7CE: movsx    edx, byte ptr [ecx]
0x0056C7D1: push     edx
0x0056C7D2: mov      ecx, eax
0x0056C7D4: call     0x520d60
0x0056C7D9: jmp      0x56c86d
0x0056C7DE: movzx    eax, byte ptr [edi + 1]
0x0056C7E2: mov      edi, dword ptr [edi + 4]
0x0056C7E5: mov      ecx, dword ptr [edi + 8]
0x0056C7E8: test     dword ptr [ecx + eax*4], 0x40000
0x0056C7EF: je       0x56c838
0x0056C7F1: lea      edx, [eax + eax*8]
0x0056C7F4: mov      eax, dword ptr [edi + 0x14]
0x0056C7F7: cmp      byte ptr [eax + edx*4 + 0x14], 0x1c
0x0056C7FC: lea      eax, [eax + edx*4]
0x0056C7FF: jne      0x56c806
0x0056C801: mov      eax, dword ptr [eax + 4]
0x0056C804: jmp      0x56c83a
0x0056C806: cmp      byte ptr [eax + 0x15], 0x1c
0x0056C80A: jne      0x56c811
0x0056C80C: mov      eax, dword ptr [eax + 8]
0x0056C80F: jmp      0x56c83a
0x0056C811: cmp      byte ptr [eax + 0x16], 0x1c
0x0056C815: jne      0x56c81c
0x0056C817: mov      eax, dword ptr [eax + 0xc]
0x0056C81A: jmp      0x56c83a
0x0056C81C: cmp      byte ptr [eax + 0x17], 0x1c
0x0056C820: jne      0x56c827
0x0056C822: mov      eax, dword ptr [eax + 0x10]
0x0056C825: jmp      0x56c83a
0x0056C827: mov      eax, dword ptr [eax]
0x0056C829: test     eax, eax
0x0056C82B: je       0x56c838
0x0056C82D: push     0x1c
0x0056C82F: mov      ecx, eax
0x0056C831: call     0x461400
0x0056C836: jmp      0x56c83a
0x0056C838: xor      eax, eax
0x0056C83A: mov      ecx, dword ptr [esi + 0x40]
0x0056C83D: mov      edx, dword ptr [ecx + 0x1dc]
0x0056C843: movsx    ecx, byte ptr [edx]
0x0056C846: push     ecx
0x0056C847: mov      ecx, eax
0x0056C849: call     0x520dd0
0x0056C84E: jmp      0x56c86d
0x0056C850: mov      edx, dword ptr [esp + 0x3c]
0x0056C854: test     byte ptr [edx + 0x40], 4
0x0056C858: jne      0x56c86d
0x0056C85A: cmp      dword ptr [eax + 0x240], ebx
0x0056C860: je       0x56c86d
0x0056C862: mov      ecx, esi
0x0056C864: call     0x56b390
0x0056C869: jmp      0x56c86d
0x0056C86B: fstp     st(0)
0x0056C86D: mov      eax, dword ptr [esi + 0x40]
0x0056C870: mov      ecx, dword ptr [eax + 0x23c]
0x0056C876: test     ecx, ecx
0x0056C878: je       0x56c8e8
0x0056C87A: movzx    eax, byte ptr [ecx + 1]
0x0056C87E: mov      ecx, dword ptr [ecx + 4]
0x0056C881: mov      edx, dword ptr [ecx + 8]
0x0056C884: test     dword ptr [edx + eax*4], 0x40000
0x0056C88B: je       0x56c8d4
0x0056C88D: mov      ecx, dword ptr [ecx + 0x14]
0x0056C890: lea      eax, [eax + eax*8]
0x0056C893: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x0056C898: lea      eax, [ecx + eax*4]
0x0056C89B: jne      0x56c8a2
0x0056C89D: mov      eax, dword ptr [eax + 4]
0x0056C8A0: jmp      0x56c8d6
0x0056C8A2: cmp      byte ptr [eax + 0x15], 0x1c
0x0056C8A6: jne      0x56c8ad
0x0056C8A8: mov      eax, dword ptr [eax + 8]
0x0056C8AB: jmp      0x56c8d6
0x0056C8AD: cmp      byte ptr [eax + 0x16], 0x1c
0x0056C8B1: jne      0x56c8b8
0x0056C8B3: mov      eax, dword ptr [eax + 0xc]
0x0056C8B6: jmp      0x56c8d6
0x0056C8B8: cmp      byte ptr [eax + 0x17], 0x1c
0x0056C8BC: jne      0x56c8c3
0x0056C8BE: mov      eax, dword ptr [eax + 0x10]
0x0056C8C1: jmp      0x56c8d6
0x0056C8C3: mov      eax, dword ptr [eax]
0x0056C8C5: test     eax, eax
0x0056C8C7: je       0x56c8d4
0x0056C8C9: push     0x1c
0x0056C8CB: mov      ecx, eax
0x0056C8CD: call     0x461400
0x0056C8D2: jmp      0x56c8d6
0x0056C8D4: xor      eax, eax
0x0056C8D6: mov      eax, dword ptr [eax + 0x1a8]
0x0056C8DC: cmp      byte ptr [eax], 0
0x0056C8DF: jne      0x56c8e8
0x0056C8E1: mov      ecx, esi
0x0056C8E3: call     0x56b390
0x0056C8E8: mov      eax, dword ptr [esi + 0x40]
0x0056C8EB: cmp      dword ptr [eax + 0x204], 1
0x0056C8F2: jne      0x56ca7e
0x0056C8F8: mov      ecx, dword ptr [esp + 0x3c]
0x0056C8FC: test     ecx, ecx
0x0056C8FE: je       0x56c906
0x0056C900: test     byte ptr [ecx + 0x40], 1
0x0056C904: jne      0x56c913
0x0056C906: cmp      dword ptr [eax + 0x208], 0
0x0056C90D: je       0x56ca7e
0x0056C913: call     0x56d500
0x0056C918: test     eax, eax
0x0056C91A: jne      0x56ca7e
0x0056C920: mov      eax, dword ptr [esi + 0x40]
0x0056C923: fld      dword ptr [eax + 0x210]
0x0056C929: push     ecx
0x0056C92A: fstp     dword ptr [esp + 0x44]
0x0056C92E: fld      dword ptr [eax + 0x214]
0x0056C934: fstp     dword ptr [esp + 0x48]
0x0056C938: fld      dword ptr [eax + 0x218]
0x0056C93E: fstp     dword ptr [esp + 0x4c]
0x0056C942: fldz     
0x0056C944: fcomp    dword ptr [eax + 0x230]
0x0056C94A: fnstsw   ax
0x0056C94C: test     ah, 5
0x0056C94F: mov      eax, dword ptr [esi + 0x40]
0x0056C952: fld      dword ptr [eax + 0x20c]
0x0056C958: lea      ecx, [eax + 0x210]
0x0056C95E: fstp     dword ptr [esp]
0x0056C961: lea      eax, [esp + 0x6c]
0x0056C965: jp       0x56c993
0x0056C967: call     0x56b0d0
0x0056C96C: mov      edx, dword ptr [esi + 0x40]
0x0056C96F: mov      ecx, eax
0x0056C971: add      esp, 4
0x0056C974: add      edx, 0x28c
0x0056C97A: lea      eax, [esp + 0x50]
0x0056C97E: call     0x56b070
0x0056C983: fld      dword ptr [eax]
0x0056C985: fstp     dword ptr [esp + 0x1c]
0x0056C989: fld      dword ptr [eax + 4]
0x0056C98C: mov      eax, 1
0x0056C991: jmp      0x56c9a9
0x0056C993: call     0x56b0d0
0x0056C998: fld      dword ptr [eax]
0x0056C99A: fstp     dword ptr [esp + 0x20]
0x0056C99E: add      esp, 4
0x0056C9A1: fld      dword ptr [eax + 4]
0x0056C9A4: mov      eax, 2
0x0056C9A9: mov      ecx, dword ptr [esi + 0x40]
0x0056C9AC: fstp     dword ptr [esp + 0x20]
0x0056C9B0: push     eax
0x0056C9B1: call     0x5405d0
0x0056C9B6: fld      dword ptr [esp + 0x1c]
0x0056C9BA: mov      eax, dword ptr [esi + 0x40]
0x0056C9BD: mov      ecx, dword ptr [esi + 8]
0x0056C9C0: fstp     dword ptr [eax + 0x28c]
0x0056C9C6: fld      dword ptr [esp + 0x20]
0x0056C9CA: push     0
0x0056C9CC: fstp     dword ptr [eax + 0x290]
0x0056C9D2: fldz     
0x0056C9D4: fst      dword ptr [eax + 0x294]
0x0056C9DA: fstp     dword ptr [eax + 0x298]
0x0056C9E0: movzx    edx, byte ptr [ecx + 1]
0x0056C9E4: mov      edi, dword ptr [ecx + 4]
0x0056C9E7: mov      edi, dword ptr [edi + 0x34]
0x0056C9EA: mov      edx, dword ptr [edi + edx*4]
0x0056C9ED: mov      edx, dword ptr [edx + 0x98]
0x0056C9F3: mov      edx, dword ptr [edx + 0x40]
0x0056C9F6: mov      edx, dword ptr [edx + 4]
0x0056C9F9: mov      eax, dword ptr [eax + 0x1e4]
0x0056C9FF: fld      dword ptr [edx + 0x10]
0x0056CA02: fstp     dword ptr [esp + 0x20]
0x0056CA06: fld      dword ptr [esp + 0x20]
0x0056CA0A: fld      dword ptr [eax + 0x70]
0x0056CA0D: fmul     st(1)
0x0056CA0F: fsubp    st(1)
0x0056CA11: fmul     qword ptr [0x980f90] ; [f64=1.1, u32=0xA0000000]
0x0056CA17: fstp     dword ptr [esp + 0x20]
0x0056CA1B: call     0x506d40
0x0056CA20: fld      dword ptr [esp + 0x40]
0x0056CA24: add      eax, 0xc
0x0056CA27: fld      dword ptr [esp + 0x1c]
0x0056CA2B: mov      ecx, dword ptr [esi + 0x40]
0x0056CA2E: fld      st(0)
0x0056CA30: mov      ecx, dword ptr [ecx + 0x1b4]
0x0056CA36: fmulp    st(2)
0x0056CA38: mov      dword ptr [esp + 0x1c], 0x98b3b4
0x0056CA40: fld      dword ptr [eax]
0x0056CA42: faddp    st(2)
0x0056CA44: fxch     st(1)
0x0056CA46: fstp     dword ptr [eax]
0x0056CA48: fld      st(0)
0x0056CA4A: fmul     dword ptr [esp + 0x44]
0x0056CA4E: fadd     dword ptr [eax + 4]
0x0056CA51: fstp     dword ptr [eax + 4]
0x0056CA54: fmul     dword ptr [esp + 0x48]
0x0056CA58: fadd     dword ptr [eax + 8]
0x0056CA5B: fstp     dword ptr [eax + 8]
0x0056CA5E: mov      edx, dword ptr [ecx]
0x0056CA60: mov      edx, dword ptr [edx + 8]
0x0056CA63: push     1
0x0056CA65: lea      eax, [esp + 0x20]
0x0056CA69: push     eax
0x0056CA6A: mov      dword ptr [esp + 0xd8], 2
0x0056CA75: call     edx
0x0056CA77: mov      dword ptr [esp + 0xd0], ebp
0x0056CA7E: mov      edi, dword ptr [esi + 0x40]
0x0056CA81: mov      ebp, dword ptr [edi + 0x1e4]
0x0056CA87: cmp      byte ptr [ebp + 0x50], 0
0x0056CA8B: je       0x56caf7
0x0056CA8D: fld      dword ptr [edi + 0x290]
0x0056CA93: fld      dword ptr [edi + 0x28c]
0x0056CA99: fld      dword ptr [edi + 0x294]
0x0056CA9F: fld      st(1)
0x0056CAA1: fmulp    st(2)
0x0056CAA3: fld      st(2)
0x0056CAA5: fmulp    st(3)
0x0056CAA7: fxch     st(1)
0x0056CAA9: faddp    st(2)
0x0056CAAB: fmul     st(0), st(0)
0x0056CAAD: faddp    st(1)
0x0056CAAF: fstp     dword ptr [esp + 0x1c]
0x0056CAB3: fld      dword ptr [esp + 0x1c]
0x0056CAB7: call     0x8eb930
0x0056CABC: fstp     dword ptr [esp + 0x1c]
0x0056CAC0: fld      dword ptr [esp + 0x1c]
0x0056CAC4: sub      esp, 0xc
0x0056CAC7: fstp     dword ptr [esp + 0x28]
0x0056CACB: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x0056CAD1: fstp     dword ptr [esp + 8]
0x0056CAD5: fld1     
0x0056CAD7: fstp     dword ptr [esp + 4]
0x0056CADB: fld      dword ptr [esp + 0x28]
0x0056CADF: fdiv     dword ptr [ebp + 0x54]
0x0056CAE2: fstp     dword ptr [esp + 0x28]
0x0056CAE6: fld      dword ptr [esp + 0x28]
0x0056CAEA: fstp     dword ptr [esp]
0x0056CAED: call     0x509740
0x0056CAF2: add      esp, 0xc
0x0056CAF5: jmp      0x56caf9
0x0056CAF7: fld1     
0x0056CAF9: fstp     dword ptr [esp + 0x14]
0x0056CAFD: fldz     
0x0056CAFF: fcom     dword ptr [edi + 0xd50]
0x0056CB05: fnstsw   ax
0x0056CB07: test     ah, 5
0x0056CB0A: jp       0x56cb17
0x0056CB0C: fld      dword ptr [ebp + 0x5c]
0x0056CB0F: fstp     dword ptr [esp + 0x3c]
0x0056CB13: fld1     
0x0056CB15: jmp      0x56cb1d
0x0056CB17: fld1     
0x0056CB19: fst      dword ptr [esp + 0x3c]
0x0056CB1D: mov      eax, dword ptr [esi + 0x40]
0x0056CB20: mov      ecx, dword ptr [eax + 0x1e4]
0x0056CB26: fld      dword ptr [ecx + 0x4c]
0x0056CB29: fmul     dword ptr [0xb76120]
0x0056CB2F: fild     dword ptr [eax + 0xd5c]
0x0056CB35: fadd     qword ptr [0x9795c8] ; [f32=0, f64=1, u32=0x00000000]
0x0056CB3B: fmulp    st(1)
0x0056CB3D: fmul     dword ptr [esp + 0x14]
0x0056CB41: fmul     dword ptr [esp + 0x3c]
0x0056CB45: fadd     dword ptr [eax + 0xd48]
0x0056CB4B: fstp     dword ptr [eax + 0xd48]
0x0056CB51: mov      edx, dword ptr [esi + 0x40]
0x0056CB54: fld      dword ptr [edx + 0xd48]
0x0056CB5A: fstp     dword ptr [esp + 0x1c]
0x0056CB5E: fld      dword ptr [esp + 0x1c]
0x0056CB62: fcom     st(1)
0x0056CB64: fnstsw   ax
0x0056CB66: test     ah, 0x41
0x0056CB69: jne      0x56cb6f
0x0056CB6B: fstp     st(0)
0x0056CB6D: jmp      0x56cb8e
0x0056CB6F: fstp     st(1)
0x0056CB71: fcom     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x0056CB77: fnstsw   ax
0x0056CB79: test     ah, 0x41
0x0056CB7C: jne      0x56cb84
0x0056CB7E: fstp     dword ptr [esp + 0x14]
0x0056CB82: jmp      0x56cb8a
0x0056CB84: fstp     st(0)
0x0056CB86: fst      dword ptr [esp + 0x14]
0x0056CB8A: fld      dword ptr [esp + 0x14]
0x0056CB8E: mov      eax, dword ptr [esi + 0x40]
0x0056CB91: fstp     dword ptr [esp + 0x14]
0x0056CB95: fld      dword ptr [esp + 0x14]
0x0056CB99: fstp     dword ptr [eax + 0xd48]
0x0056CB9F: mov      ecx, dword ptr [esi + 0x40]
0x0056CBA2: fcom     dword ptr [ecx + 0xc50]
0x0056CBA8: fnstsw   ax
0x0056CBAA: test     ah, 0x44
0x0056CBAD: jp       0x56cd37
0x0056CBB3: fcomp    dword ptr [ecx + 0xc58]
0x0056CBB9: fnstsw   ax
0x0056CBBB: test     ah, 0x44
0x0056CBBE: jp       0x56cd39
0x0056CBC4: test     ebx, ebx
0x0056CBC6: je       0x56ccb4
0x0056CBCC: cmp      dword ptr [ecx + 0x240], 0
0x0056CBD3: jne      0x56ccb4
0x0056CBD9: cmp      dword ptr [ecx + 0x204], 0
0x0056CBE0: jne      0x56ccb4
0x0056CBE6: movzx    eax, byte ptr [ebx + 1]
0x0056CBEA: mov      ecx, dword ptr [ebx + 4]
0x0056CBED: mov      edx, dword ptr [ecx + 8]
0x0056CBF0: test     dword ptr [edx + eax*4], 0x40000
0x0056CBF7: je       0x56cc9e
0x0056CBFD: mov      ecx, dword ptr [ecx + 0x14]
0x0056CC00: lea      eax, [eax + eax*8]
0x0056CC03: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x0056CC08: lea      eax, [ecx + eax*4]
0x0056CC0B: jne      0x56cc24
0x0056CC0D: mov      eax, dword ptr [eax + 4]
0x0056CC10: push     eax
0x0056CC11: mov      ecx, esi
0x0056CC13: call     0x56bf50
0x0056CC18: mov      ecx, esi
0x0056CC1A: call     0x56b3d0
0x0056CC1F: jmp      0x56cd39
0x0056CC24: cmp      byte ptr [eax + 0x15], 0x1c
0x0056CC28: jne      0x56cc41
0x0056CC2A: mov      eax, dword ptr [eax + 8]
0x0056CC2D: push     eax
0x0056CC2E: mov      ecx, esi
0x0056CC30: call     0x56bf50
0x0056CC35: mov      ecx, esi
0x0056CC37: call     0x56b3d0
0x0056CC3C: jmp      0x56cd39
0x0056CC41: cmp      byte ptr [eax + 0x16], 0x1c
0x0056CC45: jne      0x56cc5e
0x0056CC47: mov      eax, dword ptr [eax + 0xc]
0x0056CC4A: push     eax
0x0056CC4B: mov      ecx, esi
0x0056CC4D: call     0x56bf50
0x0056CC52: mov      ecx, esi
0x0056CC54: call     0x56b3d0
0x0056CC59: jmp      0x56cd39
0x0056CC5E: cmp      byte ptr [eax + 0x17], 0x1c
0x0056CC62: jne      0x56cc7b
0x0056CC64: mov      eax, dword ptr [eax + 0x10]
0x0056CC67: push     eax
0x0056CC68: mov      ecx, esi
0x0056CC6A: call     0x56bf50
0x0056CC6F: mov      ecx, esi
0x0056CC71: call     0x56b3d0
0x0056CC76: jmp      0x56cd39
0x0056CC7B: mov      eax, dword ptr [eax]
0x0056CC7D: test     eax, eax
0x0056CC7F: je       0x56cc9e
0x0056CC81: push     0x1c
0x0056CC83: mov      ecx, eax
0x0056CC85: call     0x461400
0x0056CC8A: push     eax
0x0056CC8B: mov      ecx, esi
0x0056CC8D: call     0x56bf50
0x0056CC92: mov      ecx, esi
0x0056CC94: call     0x56b3d0
0x0056CC99: jmp      0x56cd39
0x0056CC9E: xor      eax, eax
0x0056CCA0: push     eax
0x0056CCA1: mov      ecx, esi
0x0056CCA3: call     0x56bf50
0x0056CCA8: mov      ecx, esi
0x0056CCAA: call     0x56b3d0
0x0056CCAF: jmp      0x56cd39
0x0056CCB4: cmp      dword ptr [ecx + 0x23c], 0
0x0056CCBB: je       0x56ccc6
0x0056CCBD: mov      ecx, esi
0x0056CCBF: call     0x56b3d0
0x0056CCC4: jmp      0x56cd39
0x0056CCC6: cmp      dword ptr [ecx + 0x204], 0
0x0056CCCD: jne      0x56cd39
0x0056CCCF: mov      ecx, esi
0x0056CCD1: call     0x56a740
0x0056CCD6: mov      edi, dword ptr [esi + 0x40]
0x0056CCD9: lea      ecx, [edi + 0x28c]
0x0056CCDF: call     0x51bc60
0x0056CCE4: mov      edx, dword ptr [edi + 0x1e4]
0x0056CCEA: fld      dword ptr [edx + 0x14]
0x0056CCED: fcompp   
0x0056CCEF: fnstsw   ax
0x0056CCF1: test     ah, 5
0x0056CCF4: jp       0x56cd39
0x0056CCF6: mov      eax, edi
0x0056CCF8: mov      ecx, dword ptr [eax + 0x1e4]
0x0056CCFE: fld      dword ptr [ecx + 0x14]
0x0056CD01: push     ecx
0x0056CD02: add      eax, 0x28c
0x0056CD07: fstp     dword ptr [esp]
0x0056CD0A: push     eax
0x0056CD0B: lea      edx, [esp + 0x70]
0x0056CD0F: push     edx
0x0056CD10: call     0x51ac00
0x0056CD15: mov      ecx, eax
0x0056CD17: add      esp, 8
0x0056CD1A: lea      eax, [esp + 0x54]
0x0056CD1E: call     0x56b0d0
0x0056CD23: mov      ecx, dword ptr [esi + 0x40]
0x0056CD26: add      esp, 4
0x0056CD29: push     eax
0x0056CD2A: add      ecx, 0x28c
0x0056CD30: call     0x506bf0
0x0056CD35: jmp      0x56cd39
0x0056CD37: fstp     st(0)
0x0056CD39: mov      edi, dword ptr [esp + 0x2c]
0x0056CD3D: xor      ebx, ebx
0x0056CD3F: cmp      edi, ebx
0x0056CD41: je       0x56cfd0
0x0056CD47: mov      eax, dword ptr [esi + 0x40]
0x0056CD4A: cmp      dword ptr [eax + 0x23c], ebx
0x0056CD50: setne    cl
0x0056CD53: movzx    edx, cl
0x0056CD56: push     edx
0x0056CD57: mov      ecx, edi
0x0056CD59: call     0x575310
0x0056CD5E: cmp      eax, 1
0x0056CD61: jne      0x56cfd0
0x0056CD67: cmp      dword ptr [edi + 0x40], ebx
0x0056CD6A: je       0x56ce38
0x0056CD70: lea      eax, [edi + 0x44]
0x0056CD73: push     eax
0x0056CD74: mov      ecx, esi
0x0056CD76: call     0x56a6b0
0x0056CD7B: fld      dword ptr [edi + 0x54]
0x0056CD7E: fstp     dword ptr [esp + 0x2c]
0x0056CD82: lea      ecx, [esp + 0x2c]
0x0056CD86: fld      dword ptr [edi + 0x58]
0x0056CD89: push     ecx
0x0056CD8A: fstp     dword ptr [esp + 0x34]
0x0056CD8E: lea      edx, [esp + 0x44]
0x0056CD92: fld      dword ptr [edi + 0x5c]
0x0056CD95: push     edx
0x0056CD96: fstp     dword ptr [esp + 0x3c]
0x0056CD9A: lea      eax, [esp + 0x80]
0x0056CDA1: fld      dword ptr [edi + 0x60]
0x0056CDA4: push     eax
0x0056CDA5: fstp     dword ptr [esp + 0x44]
0x0056CDA9: fld      dword ptr [esp + 0x38]
0x0056CDAD: fchs     
0x0056CDAF: fstp     dword ptr [esp + 0x60]
0x0056CDB3: fld      dword ptr [esp + 0x3c]
0x0056CDB7: fstp     dword ptr [esp + 0x4c]
0x0056CDBB: fld      dword ptr [esp + 0x60]
0x0056CDBF: fstp     dword ptr [esp + 0x50]
0x0056CDC3: fldz     
0x0056CDC5: fstp     dword ptr [esp + 0x54]
0x0056CDC9: fld1     
0x0056CDCB: fstp     dword ptr [esp + 0x58]
0x0056CDCF: call     0x56d4a0
0x0056CDD4: fld      dword ptr [eax]
0x0056CDD6: fstp     dword ptr [esp + 0x5c]
0x0056CDDA: lea      ecx, [esp + 0x4c]
0x0056CDDE: fld      dword ptr [eax + 4]
0x0056CDE1: push     ecx
0x0056CDE2: fstp     dword ptr [esp + 0x64]
0x0056CDE6: lea      edx, [esp + 0x3c]
0x0056CDEA: fld      dword ptr [eax + 8]
0x0056CDED: push     edx
0x0056CDEE: fstp     dword ptr [esp + 0x6c]
0x0056CDF2: lea      ecx, [esp + 0x9c]
0x0056CDF9: fld      dword ptr [eax + 0xc]
0x0056CDFC: lea      eax, [esp + 0x64]
0x0056CE00: fstp     dword ptr [esp + 0x70]
0x0056CE04: push     eax
0x0056CE05: push     ecx
0x0056CE06: call     0x53e9b0
0x0056CE0B: lea      edx, [esp + 0xa4]
0x0056CE12: push     edx
0x0056CE13: lea      eax, [esp + 0x88]
0x0056CE1A: push     eax
0x0056CE1B: call     0x6afb00
0x0056CE20: add      esp, 0x24
0x0056CE23: lea      ecx, [esp + 0x68]
0x0056CE27: push     ecx
0x0056CE28: mov      ecx, dword ptr [esi + 8]
0x0056CE2B: push     ebx
0x0056CE2C: call     0x506d40
0x0056CE31: mov      ecx, eax
0x0056CE33: call     0x509670
0x0056CE38: mov      ecx, dword ptr [esi + 0x40]
0x0056CE3B: call     0x5409f0
0x0056CE40: fldz     
0x0056CE42: mov      eax, dword ptr [esi + 0x40]
0x0056CE45: fst      dword ptr [eax + 0x28c]
0x0056CE4B: fst      dword ptr [eax + 0x290]
0x0056CE51: push     ebx
0x0056CE52: fst      dword ptr [eax + 0x294]
0x0056CE58: push     ebx
0x0056CE59: fld1     
0x0056CE5B: fst      dword ptr [eax + 0x298]
0x0056CE61: fstp     dword ptr [eax + 0xc30]
0x0056CE67: fst      dword ptr [eax + 0xc24]
0x0056CE6D: fst      dword ptr [eax + 0xc28]
0x0056CE73: fstp     dword ptr [eax + 0xc2c]
0x0056CE79: mov      dword ptr [eax + 0xe10], 1
0x0056CE83: mov      eax, dword ptr [esi + 8]
0x0056CE86: movzx    edx, byte ptr [eax + 1]
0x0056CE8A: mov      eax, dword ptr [eax + 4]
0x0056CE8D: mov      ecx, dword ptr [eax + 0x28]
0x0056CE90: mov      eax, dword ptr [ecx + edx*4]
0x0056CE93: mov      eax, dword ptr [eax + 0x114]
0x0056CE99: mov      edx, dword ptr [0x95f310] ; [u32=0xD70608CB]
0x0056CE9F: push     edx
0x0056CEA0: mov      ecx, eax
0x0056CEA2: call     0x7cd3c0
0x0056CEA7: cmp      eax, ebx
0x0056CEA9: je       0x56cf78
0x0056CEAF: movzx    ecx, byte ptr [eax + 1]
0x0056CEB3: mov      edx, dword ptr [eax + 4]
0x0056CEB6: mov      eax, dword ptr [edx + 0x1c]
0x0056CEB9: mov      eax, dword ptr [eax + ecx*4]
0x0056CEBC: mov      ecx, dword ptr [esi + 8]
0x0056CEBF: movzx    edx, byte ptr [ecx + 1]
0x0056CEC3: mov      ecx, dword ptr [ecx + 4]
0x0056CEC6: mov      ecx, dword ptr [ecx + 0x1c]
0x0056CEC9: mov      ecx, dword ptr [ecx + edx*4]
0x0056CECC: fld      dword ptr [ecx + 0xc]
0x0056CECF: fsub     dword ptr [eax + 0xc]
0x0056CED2: fstp     dword ptr [esp + 0x2c]
0x0056CED6: fld      dword ptr [ecx + 0x10]
0x0056CED9: fsub     dword ptr [eax + 0x10]
0x0056CEDC: fstp     dword ptr [esp + 0x30]
0x0056CEE0: fld      dword ptr [ecx + 0x14]
0x0056CEE3: fsub     dword ptr [eax + 0x14]
0x0056CEE6: fstp     dword ptr [esp + 0x34]
0x0056CEEA: fld      dword ptr [esp + 0x2c]
0x0056CEEE: fld      dword ptr [esp + 0x30]
0x0056CEF2: fld      dword ptr [esp + 0x34]
0x0056CEF6: fld      st(1)
0x0056CEF8: fmulp    st(2)
0x0056CEFA: fld      st(2)
0x0056CEFC: fmulp    st(3)
0x0056CEFE: fxch     st(1)
0x0056CF00: faddp    st(2)
0x0056CF02: fmul     st(0), st(0)
0x0056CF04: faddp    st(1)
0x0056CF06: fstp     dword ptr [esp + 0x2c]
0x0056CF0A: fld      dword ptr [esp + 0x2c]
0x0056CF0E: call     0x8eb930
0x0056CF13: fstp     dword ptr [esp + 0x2c]
0x0056CF17: fld      dword ptr [esp + 0x2c]
0x0056CF1B: fcomp    qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x0056CF21: fnstsw   ax
0x0056CF23: test     ah, 5
0x0056CF26: jp       0x56cf78
0x0056CF28: mov      edx, dword ptr [esi + 0x40]
0x0056CF2B: mov      ecx, dword ptr [edx + 0x1b4]
0x0056CF31: mov      dword ptr [esp + 0x2c], 0x992214
0x0056CF39: mov      eax, dword ptr [ecx]
0x0056CF3B: mov      eax, dword ptr [eax + 8]
0x0056CF3E: push     1
0x0056CF40: lea      edx, [esp + 0x30]
0x0056CF44: push     edx
0x0056CF45: mov      dword ptr [esp + 0xd8], 3
0x0056CF50: call     eax
0x0056CF52: mov      ecx, dword ptr [esi + 0x40]
0x0056CF55: mov      ecx, dword ptr [ecx + 0x1b4]
0x0056CF5B: mov      dword ptr [esp + 0x2c], 0x98b3f0
0x0056CF63: mov      dword ptr [esp + 0x30], ebx
0x0056CF67: mov      dword ptr [esp + 0xd0], 4
0x0056CF72: lea      eax, [esp + 0x2c]
0x0056CF76: jmp      0x56cfc6
0x0056CF78: mov      eax, dword ptr [esi + 0x40]
0x0056CF7B: mov      ecx, dword ptr [eax + 0x1b4]
0x0056CF81: mov      dword ptr [esp + 0x2c], 0x992228
0x0056CF89: mov      edx, dword ptr [ecx]
0x0056CF8B: mov      edx, dword ptr [edx + 8]
0x0056CF8E: push     1
0x0056CF90: lea      eax, [esp + 0x30]
0x0056CF94: push     eax
0x0056CF95: mov      dword ptr [esp + 0xd8], 5
0x0056CFA0: call     edx
0x0056CFA2: mov      eax, dword ptr [esi + 0x40]
0x0056CFA5: mov      ecx, dword ptr [eax + 0x1b4]
0x0056CFAB: mov      dword ptr [esp + 0x1c], 0x98b3f0
0x0056CFB3: mov      dword ptr [esp + 0x20], ebx
0x0056CFB7: mov      dword ptr [esp + 0xd0], 6
0x0056CFC2: lea      eax, [esp + 0x1c]
0x0056CFC6: mov      edx, dword ptr [ecx]
0x0056CFC8: mov      edx, dword ptr [edx + 8]
0x0056CFCB: push     1
0x0056CFCD: push     eax
0x0056CFCE: call     edx
0x0056CFD0: mov      ecx, dword ptr [esi + 0x40]
0x0056CFD3: fldz     
0x0056CFD5: cmp      dword ptr [ecx + 0x204], 1
0x0056CFDC: jne      0x56d0c4
0x0056CFE2: fcom     dword ptr [ecx + 0x230]
0x0056CFE8: fnstsw   ax
0x0056CFEA: test     ah, 5
0x0056CFED: jp       0x56d0c4
0x0056CFF3: mov      eax, ecx
0x0056CFF5: fld      dword ptr [eax + 0x230]
0x0056CFFB: fmul     dword ptr [eax + 0x220]
0x0056D001: fstp     dword ptr [eax + 0x28c]
0x0056D007: mov      eax, dword ptr [esi + 0x40]
0x0056D00A: fld      dword ptr [eax + 0x230]
0x0056D010: fmul     dword ptr [eax + 0x224]
0x0056D016: fstp     dword ptr [eax + 0x290]
0x0056D01C: mov      ecx, dword ptr [esi + 8]
0x0056D01F: movzx    eax, byte ptr [ecx + 1]
0x0056D023: mov      edx, dword ptr [ecx + 4]
0x0056D026: mov      edi, dword ptr [edx + 0x1c]
0x0056D029: add      eax, eax
0x0056D02B: add      eax, eax
0x0056D02D: mov      edi, dword ptr [eax + edi]
0x0056D030: cmp      edi, ebx
0x0056D032: je       0x56d051
0x0056D034: mov      ebp, dword ptr [edx + 0xc]
0x0056D037: test     dword ptr [eax + ebp], 0x200
0x0056D03E: je       0x56d051
0x0056D040: test     byte ptr [edi + 8], 8
0x0056D044: je       0x56d051
0x0056D046: mov      edx, dword ptr [edx + 0x20]
0x0056D049: add      eax, edx
0x0056D04B: cmp      dword ptr [eax], ebx
0x0056D04D: je       0x56d051
0x0056D04F: mov      edi, dword ptr [eax]
0x0056D051: movzx    eax, byte ptr [ecx + 1]
0x0056D055: mov      ecx, dword ptr [ecx + 4]
0x0056D058: mov      edx, dword ptr [ecx + 0x1c]
0x0056D05B: add      eax, eax
0x0056D05D: add      eax, eax
0x0056D05F: mov      edx, dword ptr [eax + edx]
0x0056D062: cmp      edx, ebx
0x0056D064: je       0x56d085
0x0056D066: mov      ebp, dword ptr [ecx + 0xc]
0x0056D069: test     dword ptr [eax + ebp], 0x200
0x0056D070: je       0x56d085
0x0056D072: test     byte ptr [edx + 8], 8
0x0056D076: je       0x56d085
0x0056D078: mov      ecx, dword ptr [ecx + 0x20]
0x0056D07B: add      eax, ecx
0x0056D07D: cmp      dword ptr [eax], ebx
0x0056D07F: je       0x56d085
0x0056D081: mov      eax, dword ptr [eax]
0x0056D083: jmp      0x56d087
0x0056D085: mov      eax, edx
0x0056D087: fld      dword ptr [0xb76120]
0x0056D08D: mov      ecx, dword ptr [esi + 0x40]
0x0056D090: fst      dword ptr [esp + 0x2c]
0x0056D094: fmul     dword ptr [ecx + 0x28c]
0x0056D09A: fadd     dword ptr [edi + 0xc]
0x0056D09D: fstp     dword ptr [eax + 0xc]
0x0056D0A0: fld      dword ptr [ecx + 0x290]
0x0056D0A6: fld      dword ptr [esp + 0x2c]
0x0056D0AA: fld      st(0)
0x0056D0AC: fmulp    st(2)
0x0056D0AE: fld      dword ptr [edi + 0x10]
0x0056D0B1: faddp    st(2)
0x0056D0B3: fxch     st(1)
0x0056D0B5: fstp     dword ptr [eax + 0x10]
0x0056D0B8: fmul     dword ptr [ecx + 0x294]
0x0056D0BE: fadd     dword ptr [edi + 0x14]
0x0056D0C1: fstp     dword ptr [eax + 0x14]
0x0056D0C4: fld      dword ptr [ecx + 0xc50]
0x0056D0CA: fsub     dword ptr [0xb76120]
0x0056D0D0: fstp     dword ptr [esp + 0x2c]
0x0056D0D4: fld      dword ptr [esp + 0x2c]
0x0056D0D8: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x0056D0DE: fnstsw   ax
0x0056D0E0: test     ah, 0x41
0x0056D0E3: jne      0x56d0ef
0x0056D0E5: fstp     st(0)
0x0056D0E7: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x0056D0ED: jmp      0x56d10c
0x0056D0EF: fcom     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x0056D0F5: fnstsw   ax
0x0056D0F7: test     ah, 0x41
0x0056D0FA: jne      0x56d102
0x0056D0FC: fstp     dword ptr [esp + 0x14]
0x0056D100: jmp      0x56d108
0x0056D102: fstp     st(0)
0x0056D104: fst      dword ptr [esp + 0x14]
0x0056D108: fld      dword ptr [esp + 0x14]
0x0056D10C: fstp     dword ptr [esp + 0x14]
0x0056D110: fld      dword ptr [esp + 0x14]
0x0056D114: fstp     dword ptr [ecx + 0xc50]
0x0056D11A: mov      esi, dword ptr [esi + 8]
0x0056D11D: movzx    eax, byte ptr [esi + 1]
0x0056D121: mov      esi, dword ptr [esi + 4]
0x0056D124: mov      edx, dword ptr [esi + 0x1c]
0x0056D127: add      eax, eax
0x0056D129: add      eax, eax
0x0056D12B: mov      ecx, dword ptr [eax + edx]
0x0056D12E: cmp      ecx, ebx
0x0056D130: je       0x56d151
0x0056D132: mov      edx, dword ptr [esi + 0xc]
0x0056D135: test     dword ptr [eax + edx], 0x200
0x0056D13C: je       0x56d151
0x0056D13E: test     byte ptr [ecx + 8], 8
0x0056D142: je       0x56d151
0x0056D144: mov      edx, dword ptr [esi + 0x20]
0x0056D147: add      eax, edx
0x0056D149: cmp      dword ptr [eax], ebx
0x0056D14B: je       0x56d151
0x0056D14D: mov      eax, dword ptr [eax]
0x0056D14F: jmp      0x56d153
0x0056D151: mov      eax, ecx
0x0056D153: mov      ecx, 0x800
0x0056D158: fstp     dword ptr [eax + 0x14]
0x0056D15B: or       word ptr [eax + 8], cx
0x0056D15F: mov      ecx, dword ptr [esp + 0xc8]
0x0056D166: mov      dword ptr fs:[0], ecx
0x0056D16D: pop      ecx
0x0056D16E: pop      edi
0x0056D16F: pop      esi
0x0056D170: pop      ebp
0x0056D171: pop      ebx
0x0056D172: add      esp, 0xc0
0x0056D178: ret      
0x0056D179: int3     
0x0056D17A: int3     
0x0056D17B: int3     
0x0056D17C: int3     
0x0056D17D: int3     
0x0056D17E: int3     
0x0056D17F: int3     
0x0056D180: push     esi
0x0056D181: mov      esi, ecx
0x0056D183: mov      eax, dword ptr [esi + 0x40]
0x0056D186: fld      dword ptr [eax + 0x28c]
0x0056D18C: mov      ecx, dword ptr [esi + 8]
0x0056D18F: fstp     dword ptr [eax + 0x29c]
0x0056D195: push     edi
0x0056D196: fld      dword ptr [eax + 0x290]
0x0056D19C: fstp     dword ptr [eax + 0x2a0]
0x0056D1A2: fld      dword ptr [eax + 0x294]
0x0056D1A8: fstp     dword ptr [eax + 0x2a4]
0x0056D1AE: fld      dword ptr [eax + 0x298]
0x0056D1B4: fstp     dword ptr [eax + 0x2a8]
0x0056D1BA: movzx    edx, byte ptr [ecx + 1]
0x0056D1BE: mov      edi, dword ptr [ecx + 4]
0x0056D1C1: mov      edi, dword ptr [edi + 0x1c]
0x0056D1C4: mov      edx, dword ptr [edi + edx*4]
0x0056D1C7: add      edx, 0xc
0x0056D1CA: fld      dword ptr [edx]
0x0056D1CC: fstp     dword ptr [eax + 0x2ac]
0x0056D1D2: fld      dword ptr [edx + 4]
0x0056D1D5: fstp     dword ptr [eax + 0x2b0]
0x0056D1DB: fld      dword ptr [edx + 8]
0x0056D1DE: fstp     dword ptr [eax + 0x2b4]
0x0056D1E4: fld      dword ptr [edx + 0xc]
0x0056D1E7: fstp     dword ptr [eax + 0x2b8]
0x0056D1ED: movzx    eax, byte ptr [ecx + 1]
0x0056D1F1: mov      edx, dword ptr [ecx + 4]
0x0056D1F4: mov      edx, dword ptr [edx + 0x1c]
0x0056D1F7: mov      edx, dword ptr [edx + eax*4]
0x0056D1FA: movzx    eax, byte ptr [ecx + 1]
0x0056D1FE: mov      ecx, dword ptr [ecx + 4]
0x0056D201: mov      edi, dword ptr [ecx + 0x1c]
0x0056D204: add      eax, eax
0x0056D206: add      eax, eax
0x0056D208: mov      edi, dword ptr [eax + edi]
0x0056D20B: add      edx, 0xc
0x0056D20E: test     edi, edi
0x0056D210: je       0x56d234
0x0056D212: push     ebx
0x0056D213: mov      ebx, dword ptr [ecx + 0xc]
0x0056D216: test     dword ptr [eax + ebx], 0x200
0x0056D21D: pop      ebx
0x0056D21E: je       0x56d234
0x0056D220: test     byte ptr [edi + 8], 8
0x0056D224: je       0x56d234
0x0056D226: mov      ecx, dword ptr [ecx + 0x20]
0x0056D229: add      eax, ecx
0x0056D22B: cmp      dword ptr [eax], 0
0x0056D22E: je       0x56d234
0x0056D230: mov      eax, dword ptr [eax]
0x0056D232: jmp      0x56d236
0x0056D234: mov      eax, edi
0x0056D236: fldz     
0x0056D238: fst      dword ptr [edx + 8]
0x0056D23B: mov      edx, dword ptr [esi + 0x40]
0x0056D23E: fstp     dword ptr [eax + 0x14]
0x0056D241: cmp      dword ptr [edx + 0x1c8], 0
0x0056D248: je       0x56d251
0x0056D24A: mov      ecx, esi
0x0056D24C: call     0x56adb0
0x0056D251: pop      edi
0x0056D252: mov      ecx, esi
0x0056D254: pop      esi
0x0056D255: jmp      0x56c090
0x0056D25A: int3     
0x0056D25B: int3     
0x0056D25C: int3     
0x0056D25D: int3     
0x0056D25E: int3     
0x0056D25F: int3     
0x0056D260: mov      ecx, dword ptr [esp + 8]
0x0056D264: jmp      0x56bdf0
0x0056D269: int3     
0x0056D26A: int3     
0x0056D26B: int3     
0x0056D26C: int3     
0x0056D26D: int3     
0x0056D26E: int3     
0x0056D26F: int3     
0x0056D270: mov      ecx, dword ptr [esp + 8]
0x0056D274: fldz     
0x0056D276: mov      eax, dword ptr [ecx + 0x40]
0x0056D279: fstp     dword ptr [eax + 0xd48]
0x0056D27F: jmp      0x56b140
0x0056D284: int3     
0x0056D285: int3     
0x0056D286: int3     
0x0056D287: int3     
0x0056D288: int3     
0x0056D289: int3     
0x0056D28A: int3     
0x0056D28B: int3     
0x0056D28C: int3     
0x0056D28D: int3     
0x0056D28E: int3     
0x0056D28F: int3     
0x0056D290: push     esi
0x0056D291: push     edi
0x0056D292: mov      edi, ecx
0x0056D294: mov      eax, dword ptr [edi + 0xc]
0x0056D297: mov      edx, dword ptr [eax + 0x18]
0x0056D29A: push     edi
0x0056D29B: lea      esi, [edi + 0xc]
0x0056D29E: push     0x56d260
0x0056D2A3: push     0xb1bc48
0x0056D2A8: mov      ecx, esi
0x0056D2AA: call     edx
0x0056D2AC: mov      eax, dword ptr [esi]
0x0056D2AE: mov      edx, dword ptr [eax + 0x18]
0x0056D2B1: push     edi
0x0056D2B2: push     0x56d270
0x0056D2B7: push     0xb49cb8
0x0056D2BC: mov      ecx, esi
0x0056D2BE: call     edx
0x0056D2C0: pop      edi
0x0056D2C1: pop      esi
0x0056D2C2: ret      
0x0056D2C3: int3     
0x0056D2C4: int3     
0x0056D2C5: int3     
0x0056D2C6: int3     
0x0056D2C7: int3     
0x0056D2C8: int3     
0x0056D2C9: int3     
0x0056D2CA: int3     
0x0056D2CB: int3     
0x0056D2CC: int3     
0x0056D2CD: int3     
0x0056D2CE: int3     
0x0056D2CF: int3     
0x0056D2D0: push     esi
0x0056D2D1: mov      esi, ecx
0x0056D2D3: call     0x56d6f0
0x0056D2D8: mov      dword ptr [esi], 0x9922a8
0x0056D2DE: mov      eax, esi
0x0056D2E0: pop      esi
0x0056D2E1: ret      
0x0056D2E2: int3     
0x0056D2E3: int3     
0x0056D2E4: int3     
0x0056D2E5: int3     
0x0056D2E6: int3     
0x0056D2E7: int3     
0x0056D2E8: int3     
0x0056D2E9: int3     
0x0056D2EA: int3     
0x0056D2EB: int3     
0x0056D2EC: int3     
0x0056D2ED: int3     
0x0056D2EE: int3     
0x0056D2EF: int3     
0x0056D2F0: push     -1
0x0056D2F2: push     0x947fe3
0x0056D2F7: mov      eax, dword ptr fs:[0]
0x0056D2FD: push     eax
0x0056D2FE: push     ecx
0x0056D2FF: push     esi
0x0056D300: mov      eax, dword ptr [0xb089c8]
0x0056D305: xor      eax, esp
0x0056D307: push     eax
0x0056D308: lea      eax, [esp + 0xc]
0x0056D30C: mov      dword ptr fs:[0], eax
0x0056D312: mov      esi, ecx
0x0056D314: mov      dword ptr [esp + 8], esi
0x0056D318: mov      dword ptr [esi], 0x9922a8
0x0056D31E: mov      dword ptr [esp + 0x14], 0
0x0056D326: call     dword ptr [0x9922d4] ; [u32=0x0056A680]
0x0056D32C: mov      ecx, esi
0x0056D32E: mov      dword ptr [esi + 4], 0
0x0056D335: mov      dword ptr [esi + 8], 0
0x0056D33C: mov      dword ptr [esp + 0x14], 0xffffffff
0x0056D344: call     0x56d750
0x0056D349: mov      ecx, dword ptr [esp + 0xc]
0x0056D34D: mov      dword ptr fs:[0], ecx
0x0056D354: pop      ecx
0x0056D355: pop      esi
0x0056D356: add      esp, 0x10
0x0056D359: ret      
0x0056D35A: int3     
0x0056D35B: int3     
0x0056D35C: int3     
0x0056D35D: int3     
0x0056D35E: int3     
0x0056D35F: int3     
0x0056D360: mov      dword ptr [ecx + 0x3c], 1
0x0056D367: ret      4
0x0056D36A: int3     
0x0056D36B: int3     
0x0056D36C: int3     
0x0056D36D: int3     
0x0056D36E: int3     
0x0056D36F: int3     
0x0056D370: mov      dword ptr [ecx + 0x3c], 0
0x0056D377: ret      
0x0056D378: int3     
0x0056D379: int3     
0x0056D37A: int3     
0x0056D37B: int3     
0x0056D37C: int3     
0x0056D37D: int3     
0x0056D37E: int3     
0x0056D37F: int3     
0x0056D380: xor      eax, eax
0x0056D382: cmp      dword ptr [esp + 4], 0xb1bbfc
0x0056D38A: sete     al
0x0056D38D: ret      4
0x0056D390: mov      eax, 0xb1bbfc
0x0056D395: ret      
0x0056D396: int3     
0x0056D397: int3     
0x0056D398: int3     
0x0056D399: int3     
0x0056D39A: int3     
0x0056D39B: int3     
0x0056D39C: int3     
0x0056D39D: int3     
0x0056D39E: int3     
0x0056D39F: int3     
0x0056D3A0: xor      eax, eax
0x0056D3A2: cmp      dword ptr [esp + 4], 0xb1bc10
0x0056D3AA: sete     al
0x0056D3AD: ret      4
0x0056D3B0: mov      eax, 0xb1bc10
0x0056D3B5: ret      
0x0056D3B6: int3     
0x0056D3B7: int3     
0x0056D3B8: int3     
0x0056D3B9: int3     
0x0056D3BA: int3     
0x0056D3BB: int3     
0x0056D3BC: int3     
0x0056D3BD: int3     
0x0056D3BE: int3     
0x0056D3BF: int3     
0x0056D3C0: xor      eax, eax
0x0056D3C2: cmp      dword ptr [esp + 4], 0xb1bc70
0x0056D3CA: sete     al
0x0056D3CD: ret      4
0x0056D3D0: mov      eax, 0xb1bc70
0x0056D3D5: ret      
0x0056D3D6: int3     
0x0056D3D7: int3     
0x0056D3D8: int3     
0x0056D3D9: int3     
0x0056D3DA: int3     
0x0056D3DB: int3     
0x0056D3DC: int3     
0x0056D3DD: int3     
0x0056D3DE: int3     
0x0056D3DF: int3     
0x0056D3E0: xor      eax, eax
0x0056D3E2: cmp      dword ptr [esp + 4], 0xb49cb8
0x0056D3EA: sete     al
0x0056D3ED: ret      4
0x0056D3F0: mov      eax, 0xb49cb8
0x0056D3F5: ret      
0x0056D3F6: int3     
0x0056D3F7: int3     
0x0056D3F8: int3     
0x0056D3F9: int3     
0x0056D3FA: int3     
0x0056D3FB: int3     
0x0056D3FC: int3     
0x0056D3FD: int3     
0x0056D3FE: int3     
0x0056D3FF: int3     
0x0056D400: xor      eax, eax
0x0056D402: cmp      dword ptr [esp + 4], 0xb26550
0x0056D40A: sete     al
0x0056D40D: ret      4
0x0056D410: mov      eax, 0xb26550
0x0056D415: ret      
0x0056D416: int3     
0x0056D417: int3     
0x0056D418: int3     
0x0056D419: int3     
0x0056D41A: int3     
0x0056D41B: int3     
0x0056D41C: int3     
0x0056D41D: int3     
0x0056D41E: int3     
0x0056D41F: int3     
0x0056D420: xor      eax, eax
0x0056D422: cmp      dword ptr [esp + 4], 0xb26560
0x0056D42A: sete     al
0x0056D42D: ret      4
0x0056D430: mov      eax, 0xb26560
0x0056D435: ret      
0x0056D436: int3     
0x0056D437: int3     
0x0056D438: int3     
0x0056D439: int3     
0x0056D43A: int3     
0x0056D43B: int3     
0x0056D43C: int3     
0x0056D43D: int3     
0x0056D43E: int3     
0x0056D43F: int3     
0x0056D440: xor      eax, eax
0x0056D442: cmp      dword ptr [esp + 4], 0xb26568
0x0056D44A: sete     al
0x0056D44D: ret      4
0x0056D450: mov      eax, 0xb26568
0x0056D455: ret      
0x0056D456: int3     
0x0056D457: int3     
0x0056D458: int3     
0x0056D459: int3     
0x0056D45A: int3     
0x0056D45B: int3     
0x0056D45C: int3     
0x0056D45D: int3     
0x0056D45E: int3     
0x0056D45F: int3     
0x0056D460: xor      eax, eax
0x0056D462: cmp      dword ptr [esp + 4], 0xb2656c
0x0056D46A: sete     al
0x0056D46D: ret      4
0x0056D470: mov      eax, 0xb2656c
0x0056D475: ret      
0x0056D476: int3     
0x0056D477: int3     
0x0056D478: int3     
0x0056D479: int3     
0x0056D47A: int3     
0x0056D47B: int3     
0x0056D47C: int3     
0x0056D47D: int3     
0x0056D47E: int3     
0x0056D47F: int3     
0x0056D480: xor      eax, eax
0x0056D482: cmp      dword ptr [esp + 4], 0xb2657c
0x0056D48A: sete     al
0x0056D48D: ret      4
0x0056D490: mov      eax, 0xb2657c
0x0056D495: ret      
0x0056D496: int3     
0x0056D497: int3     
0x0056D498: int3     
0x0056D499: int3     
0x0056D49A: int3     
0x0056D49B: int3     
0x0056D49C: int3     
0x0056D49D: int3     
0x0056D49E: int3     
0x0056D49F: int3     
0x0056D4A0: sub      esp, 0x10
0x0056D4A3: mov      ecx, dword ptr [esp + 0x18]
0x0056D4A7: fld1     
0x0056D4A9: mov      eax, dword ptr [esp + 0x14]
0x0056D4AD: fstp     dword ptr [eax + 0xc]
0x0056D4B0: mov      edx, dword ptr [esp + 0x1c]
0x0056D4B4: fld      dword ptr [ecx + 4]
0x0056D4B7: fmul     dword ptr [edx + 8]
0x0056D4BA: fld      dword ptr [ecx + 8]
0x0056D4BD: fmul     dword ptr [edx + 4]
0x0056D4C0: fsubp    st(1)
0x0056D4C2: fstp     dword ptr [esp]
0x0056D4C5: fld      dword ptr [edx]
0x0056D4C7: fmul     dword ptr [ecx + 8]
0x0056D4CA: fld      dword ptr [edx + 8]
0x0056D4CD: fmul     dword ptr [ecx]
0x0056D4CF: fsubp    st(1)
0x0056D4D1: fstp     dword ptr [esp + 4]
0x0056D4D5: fld      dword ptr [ecx]
0x0056D4D7: fmul     dword ptr [edx + 4]
0x0056D4DA: fld      dword ptr [ecx + 4]
0x0056D4DD: fmul     dword ptr [edx]
0x0056D4DF: fsubp    st(1)
0x0056D4E1: fstp     dword ptr [esp + 8]
0x0056D4E5: fld      dword ptr [esp]
0x0056D4E8: fstp     dword ptr [eax]
0x0056D4EA: fld      dword ptr [esp + 4]
0x0056D4EE: fstp     dword ptr [eax + 4]
0x0056D4F1: fld      dword ptr [esp + 8]
0x0056D4F5: fstp     dword ptr [eax + 8]
0x0056D4F8: add      esp, 0x10
0x0056D4FB: ret      
0x0056D4FC: int3     
0x0056D4FD: int3     
0x0056D4FE: int3     
0x0056D4FF: int3     
0x0056D500: mov      eax, dword ptr [0xb1aa7c]
0x0056D505: mov      ecx, dword ptr [eax + 0xc]
0x0056D508: push     0x13
0x0056D50A: call     0x4c2bc0
0x0056D50F: test     eax, eax
0x0056D511: jne      0x56d516
0x0056D513: xor      eax, eax
0x0056D515: ret      
0x0056D516: mov      eax, dword ptr [eax + 0x254]
0x0056D51C: cmp      eax, 1
0x0056D51F: je       0x56d52b
0x0056D521: cmp      eax, 3
0x0056D524: je       0x56d52b
0x0056D526: cmp      eax, 4
0x0056D529: jne      0x56d513
0x0056D52B: mov      eax, 1
0x0056D530: ret      
0x0056D531: int3     
0x0056D532: int3     
0x0056D533: int3     
0x0056D534: int3     
0x0056D535: int3     
0x0056D536: int3     
0x0056D537: int3     
0x0056D538: int3     
0x0056D539: int3     
0x0056D53A: int3     
0x0056D53B: int3     
0x0056D53C: int3     
0x0056D53D: int3     
0x0056D53E: int3     
0x0056D53F: int3     
0x0056D540: mov      eax, dword ptr [esp + 4]
0x0056D544: push     0
0x0056D546: push     eax
0x0056D547: push     4
0x0056D549: call     0x689060
0x0056D54E: add      esp, 0xc
0x0056D551: test     eax, eax
0x0056D553: je       0x56d55e
0x0056D555: mov      dword ptr [eax], 0x992188
0x0056D55B: ret      4
0x0056D55E: xor      eax, eax
0x0056D560: ret      4
0x0056D563: int3     
0x0056D564: int3     
0x0056D565: int3     
0x0056D566: int3     
0x0056D567: int3     
0x0056D568: int3     
0x0056D569: int3     
0x0056D56A: int3     
0x0056D56B: int3     
0x0056D56C: int3     
0x0056D56D: int3     
0x0056D56E: int3     
0x0056D56F: int3     
0x0056D570: mov      eax, dword ptr [esp + 4]
0x0056D574: push     0
0x0056D576: push     eax
0x0056D577: push     4
0x0056D579: call     0x689060
0x0056D57E: add      esp, 0xc
0x0056D581: test     eax, eax
0x0056D583: je       0x56d58e
0x0056D585: mov      dword ptr [eax], 0x99219c
0x0056D58B: ret      4
0x0056D58E: xor      eax, eax
0x0056D590: ret      4
0x0056D593: int3     
0x0056D594: int3     
0x0056D595: int3     
0x0056D596: int3     
0x0056D597: int3     
0x0056D598: int3     
0x0056D599: int3     
0x0056D59A: int3     
0x0056D59B: int3     
0x0056D59C: int3     
0x0056D59D: int3     
0x0056D59E: int3     
0x0056D59F: int3     
0x0056D5A0: mov      eax, dword ptr [esp + 4]
0x0056D5A4: push     esi
0x0056D5A5: push     0
0x0056D5A7: push     eax
0x0056D5A8: push     8
0x0056D5AA: mov      esi, ecx
0x0056D5AC: call     0x689060
0x0056D5B1: add      esp, 0xc
0x0056D5B4: test     eax, eax
0x0056D5B6: je       0x56d5c8
0x0056D5B8: mov      dword ptr [eax], 0x9921b0
0x0056D5BE: mov      ecx, dword ptr [esi + 4]
0x0056D5C1: mov      dword ptr [eax + 4], ecx
0x0056D5C4: pop      esi
0x0056D5C5: ret      4
0x0056D5C8: xor      eax, eax
0x0056D5CA: pop      esi
0x0056D5CB: ret      4
0x0056D5CE: int3     
0x0056D5CF: int3     
0x0056D5D0: mov      eax, dword ptr [esp + 4]
0x0056D5D4: push     0
0x0056D5D6: push     eax
0x0056D5D7: push     4
0x0056D5D9: call     0x689060
0x0056D5DE: add      esp, 0xc
0x0056D5E1: test     eax, eax
0x0056D5E3: je       0x56d5ee
0x0056D5E5: mov      dword ptr [eax], 0x9921c4
0x0056D5EB: ret      4
0x0056D5EE: xor      eax, eax
0x0056D5F0: ret      4
0x0056D5F3: int3     
0x0056D5F4: int3     
0x0056D5F5: int3     
0x0056D5F6: int3     
0x0056D5F7: int3     
0x0056D5F8: int3     
0x0056D5F9: int3     
0x0056D5FA: int3     
0x0056D5FB: int3     
0x0056D5FC: int3     
0x0056D5FD: int3     
0x0056D5FE: int3     
0x0056D5FF: int3     
0x0056D600: mov      eax, dword ptr [esp + 4]
0x0056D604: push     0
0x0056D606: push     eax
0x0056D607: push     4
0x0056D609: call     0x689060
0x0056D60E: add      esp, 0xc
0x0056D611: test     eax, eax
0x0056D613: je       0x56d61e
0x0056D615: mov      dword ptr [eax], 0x9921d8
0x0056D61B: ret      4
0x0056D61E: xor      eax, eax
0x0056D620: ret      4
0x0056D623: int3     
0x0056D624: int3     
0x0056D625: int3     
0x0056D626: int3     
0x0056D627: int3     
0x0056D628: int3     
0x0056D629: int3     
0x0056D62A: int3     
0x0056D62B: int3     
0x0056D62C: int3     
0x0056D62D: int3     
0x0056D62E: int3     
0x0056D62F: int3     
0x0056D630: mov      eax, dword ptr [esp + 4]
0x0056D634: push     0
0x0056D636: push     eax
0x0056D637: push     4
0x0056D639: call     0x689060
0x0056D63E: add      esp, 0xc
0x0056D641: test     eax, eax
0x0056D643: je       0x56d64e
0x0056D645: mov      dword ptr [eax], 0x9921ec
0x0056D64B: ret      4
0x0056D64E: xor      eax, eax
0x0056D650: ret      4
0x0056D653: int3     
0x0056D654: int3     
0x0056D655: int3     
0x0056D656: int3     
0x0056D657: int3     
0x0056D658: int3     
0x0056D659: int3     
0x0056D65A: int3     
0x0056D65B: int3     
0x0056D65C: int3     
0x0056D65D: int3     
0x0056D65E: int3     
0x0056D65F: int3     
0x0056D660: mov      eax, dword ptr [esp + 4]
0x0056D664: push     0
0x0056D666: push     eax
0x0056D667: push     4
0x0056D669: call     0x689060
0x0056D66E: add      esp, 0xc
0x0056D671: test     eax, eax
0x0056D673: je       0x56d67e
0x0056D675: mov      dword ptr [eax], 0x992200
0x0056D67B: ret      4
0x0056D67E: xor      eax, eax
0x0056D680: ret      4
0x0056D683: int3     
0x0056D684: int3     
0x0056D685: int3     
0x0056D686: int3     
0x0056D687: int3     
0x0056D688: int3     
0x0056D689: int3     
0x0056D68A: int3     
0x0056D68B: int3     
0x0056D68C: int3     
0x0056D68D: int3     
0x0056D68E: int3     
0x0056D68F: int3     
0x0056D690: mov      eax, dword ptr [esp + 4]
0x0056D694: push     0
0x0056D696: push     eax
0x0056D697: push     4
0x0056D699: call     0x689060
0x0056D69E: add      esp, 0xc
0x0056D6A1: test     eax, eax
0x0056D6A3: je       0x56d6ae
0x0056D6A5: mov      dword ptr [eax], 0x992214
0x0056D6AB: ret      4
0x0056D6AE: xor      eax, eax
0x0056D6B0: ret      4
0x0056D6B3: int3     
0x0056D6B4: int3     
0x0056D6B5: int3     
0x0056D6B6: int3     
0x0056D6B7: int3     
0x0056D6B8: int3     
0x0056D6B9: int3     
0x0056D6BA: int3     
0x0056D6BB: int3     
0x0056D6BC: int3     
0x0056D6BD: int3     
0x0056D6BE: int3     
0x0056D6BF: int3     
0x0056D6C0: mov      eax, dword ptr [esp + 4]
0x0056D6C4: push     0
0x0056D6C6: push     eax
0x0056D6C7: push     4
0x0056D6C9: call     0x689060
0x0056D6CE: add      esp, 0xc
0x0056D6D1: test     eax, eax
0x0056D6D3: je       0x56d6de
0x0056D6D5: mov      dword ptr [eax], 0x992228
0x0056D6DB: ret      4
0x0056D6DE: xor      eax, eax
0x0056D6E0: ret      4
0x0056D6E3: int3     
0x0056D6E4: int3     
0x0056D6E5: int3     
0x0056D6E6: int3     
0x0056D6E7: int3     
0x0056D6E8: int3     
0x0056D6E9: int3     
0x0056D6EA: int3     
0x0056D6EB: int3     
0x0056D6EC: int3     
0x0056D6ED: int3     
0x0056D6EE: int3     
0x0056D6EF: int3     
0x0056D6F0: push     -1
0x0056D6F2: push     0x948008
0x0056D6F7: mov      eax, dword ptr fs:[0]
0x0056D6FD: push     eax
0x0056D6FE: push     ecx
0x0056D6FF: push     esi
0x0056D700: mov      eax, dword ptr [0xb089c8]
0x0056D705: xor      eax, esp
0x0056D707: push     eax
0x0056D708: lea      eax, [esp + 0xc]
0x0056D70C: mov      dword ptr fs:[0], eax
0x0056D712: mov      esi, ecx
0x0056D714: mov      dword ptr [esp + 8], esi
0x0056D718: lea      ecx, [esi + 0xc]
0x0056D71B: mov      dword ptr [esp + 0x14], 0
0x0056D723: mov      dword ptr [esi], 0x992278
0x0056D729: call     0x50e290
0x0056D72E: mov      dword ptr [esi + 0x3c], 0
0x0056D735: mov      eax, esi
0x0056D737: mov      ecx, dword ptr [esp + 0xc]
0x0056D73B: mov      dword ptr fs:[0], ecx
0x0056D742: pop      ecx
0x0056D743: pop      esi
0x0056D744: add      esp, 0x10
0x0056D747: ret      
0x0056D748: int3     
0x0056D749: int3     
0x0056D74A: int3     
0x0056D74B: int3     
0x0056D74C: int3     
0x0056D74D: int3     
0x0056D74E: int3     
0x0056D74F: int3     
0x0056D750: push     -1
0x0056D752: push     0x948008
0x0056D757: mov      eax, dword ptr fs:[0]
0x0056D75D: push     eax
0x0056D75E: push     ecx
0x0056D75F: push     esi
0x0056D760: mov      eax, dword ptr [0xb089c8]
0x0056D765: xor      eax, esp
0x0056D767: push     eax
0x0056D768: lea      eax, [esp + 0xc]
0x0056D76C: mov      dword ptr fs:[0], eax
0x0056D772: mov      esi, ecx
0x0056D774: mov      dword ptr [esp + 8], esi
0x0056D778: mov      dword ptr [esi], 0x992278
0x0056D77E: xor      eax, eax
0x0056D780: mov      dword ptr [esp + 0x14], eax
0x0056D784: cmp      dword ptr [esi + 0x3c], eax
0x0056D787: je       0x56d78c
0x0056D789: mov      dword ptr [esi + 0x3c], eax
0x0056D78C: lea      ecx, [esi + 0xc]
0x0056D78F: mov      dword ptr [esi + 0x3c], eax
0x0056D792: call     0x50e5e0
0x0056D797: mov      dword ptr [esi], 0x992148
0x0056D79D: mov      ecx, dword ptr [esp + 0xc]
0x0056D7A1: mov      dword ptr fs:[0], ecx
0x0056D7A8: pop      ecx
0x0056D7A9: pop      esi
0x0056D7AA: add      esp, 0x10
0x0056D7AD: ret      
0x0056D7AE: int3     
0x0056D7AF: int3     
0x0056D7B0: push     esi
0x0056D7B1: mov      esi, ecx
0x0056D7B3: call     0x56d750
0x0056D7B8: test     byte ptr [esp + 8], 1
0x0056D7BD: je       0x56d7c8
0x0056D7BF: push     esi
0x0056D7C0: call     0x688fb0
0x0056D7C5: add      esp, 4
0x0056D7C8: mov      eax, esi
0x0056D7CA: pop      esi
0x0056D7CB: ret      4
0x0056D7CE: int3     
0x0056D7CF: int3     
0x0056D7D0: mov      eax, 0xb49cc4
0x0056D7D5: ret      
0x0056D7D6: int3     
0x0056D7D7: int3     
0x0056D7D8: int3     
0x0056D7D9: int3     
0x0056D7DA: int3     
0x0056D7DB: int3     
0x0056D7DC: int3     
0x0056D7DD: int3     
0x0056D7DE: int3     
0x0056D7DF: int3     
0x0056D7E0: push     esi
0x0056D7E1: mov      esi, ecx
0x0056D7E3: call     0x56d2f0
0x0056D7E8: test     byte ptr [esp + 8], 1
0x0056D7ED: je       0x56d7f8
0x0056D7EF: push     esi
0x0056D7F0: call     0x688fb0
0x0056D7F5: add      esp, 4
0x0056D7F8: mov      eax, esi
0x0056D7FA: pop      esi
0x0056D7FB: ret      4
0x0056D7FE: int3     
0x0056D7FF: int3     
0x0056D800: push     esi
0x0056D801: mov      esi, ecx
0x0056D803: call     0x7d9ec0
0x0056D808: lea      eax, [esi + 0x4c]
0x0056D80B: lea      ecx, [esi + 0x8c]
0x0056D811: lea      edx, [esi + 0xc]
0x0056D814: mov      dword ptr [esi + 0xd0], eax
0x0056D81A: mov      dword ptr [esi], 0x9922d8
0x0056D820: mov      dword ptr [esi + 0xd4], ecx
0x0056D826: mov      dword ptr [esi + 0xcc], edx
0x0056D82C: mov      eax, esi
0x0056D82E: pop      esi
0x0056D82F: ret      
0x0056D830: mov      edx, dword ptr [ecx + 0xd0]
0x0056D836: lea      eax, [ecx + 0x4c]
0x0056D839: push     esi
0x0056D83A: cmp      eax, edx
0x0056D83C: je       0x56d84d
0x0056D83E: mov      esi, dword ptr [esp + 8]
0x0056D842: cmp      dword ptr [eax], esi
0x0056D844: je       0x56d853
0x0056D846: add      eax, 4
0x0056D849: cmp      eax, edx
0x0056D84B: jne      0x56d842
0x0056D84D: xor      eax, eax
0x0056D84F: pop      esi
0x0056D850: ret      4
0x0056D853: lea      eax, [ecx + 0xc]
0x0056D856: mov      ecx, dword ptr [ecx + 0xcc]
0x0056D85C: cmp      eax, ecx
0x0056D85E: je       0x56d86b
0x0056D860: cmp      dword ptr [eax], esi
0x0056D862: je       0x56d84d
0x0056D864: add      eax, 4
0x0056D867: cmp      eax, ecx
0x0056D869: jne      0x56d860
0x0056D86B: mov      eax, 1
0x0056D870: pop      esi
0x0056D871: ret      4
0x0056D874: int3     
0x0056D875: int3     
0x0056D876: int3     
0x0056D877: int3     
0x0056D878: int3     
0x0056D879: int3     
0x0056D87A: int3     
0x0056D87B: int3     
0x0056D87C: int3     
0x0056D87D: int3     
0x0056D87E: int3     
0x0056D87F: int3     
0x0056D880: lea      eax, [ecx + 0x4c]
0x0056D883: mov      ecx, dword ptr [ecx + 0xd0]
0x0056D889: cmp      eax, ecx
0x0056D88B: je       0x56d89c
0x0056D88D: mov      edx, dword ptr [esp + 4]
0x0056D891: cmp      dword ptr [eax], edx
0x0056D893: je       0x56d8a1
0x0056D895: add      eax, 4
0x0056D898: cmp      eax, ecx
0x0056D89A: jne      0x56d891
0x0056D89C: xor      eax, eax
0x0056D89E: ret      4
0x0056D8A1: mov      eax, 1
0x0056D8A6: ret      4
0x0056D8A9: int3     
0x0056D8AA: int3     
0x0056D8AB: int3     
0x0056D8AC: int3     
0x0056D8AD: int3     
0x0056D8AE: int3     
0x0056D8AF: int3     
0x0056D8B0: push     ebx
0x0056D8B1: push     esi
0x0056D8B2: mov      esi, ecx
0x0056D8B4: mov      eax, dword ptr [esi + 0xd0]
0x0056D8BA: sub      eax, esi
0x0056D8BC: sub      eax, 0x4c
0x0056D8BF: sar      eax, 2
0x0056D8C2: add      eax, eax
0x0056D8C4: add      eax, eax
0x0056D8C6: cmp      eax, 0xc00
0x0056D8CB: push     edi
0x0056D8CC: lea      ebx, [esi + 0x4c]
0x0056D8CF: lea      ecx, [esi + 0xc]
0x0056D8D2: jg       0x56d8f3
0x0056D8D4: mov      edx, ebx
0x0056D8D6: and      edx, 0x7f
0x0056D8D9: jne      0x56d8e0
0x0056D8DB: test     cl, 0x7f
0x0056D8DE: je       0x56d8f3
0x0056D8E0: mov      edi, ecx
0x0056D8E2: and      edi, 0x7f
0x0056D8E5: cmp      edx, edi
0x0056D8E7: jne      0x56d8f3
0x0056D8E9: push     eax
0x0056D8EA: push     ebx
0x0056D8EB: push     ecx
0x0056D8EC: call     0x6a98f0
0x0056D8F1: jmp      0x56d8fb
0x0056D8F3: push     eax
0x0056D8F4: push     ebx
0x0056D8F5: push     ecx
0x0056D8F6: call     0x8eb4a0
0x0056D8FB: mov      eax, dword ptr [esi + 0xd0]
0x0056D901: sub      eax, esi
0x0056D903: sub      eax, 0x4c
0x0056D906: sar      eax, 2
0x0056D909: lea      ecx, [esi + eax*4 + 0xc]
0x0056D90D: mov      eax, dword ptr [esi + 0xd4]
0x0056D913: sub      eax, esi
0x0056D915: sub      eax, 0x8c
0x0056D91A: sar      eax, 2
0x0056D91D: add      eax, eax
0x0056D91F: add      eax, eax
0x0056D921: add      esp, 0xc
0x0056D924: cmp      eax, 0xc00
0x0056D929: mov      dword ptr [esi + 0xcc], ecx
0x0056D92F: lea      edi, [esi + 0x8c]
0x0056D935: jg       0x56d956
0x0056D937: mov      ecx, edi
0x0056D939: and      ecx, 0x7f
0x0056D93C: jne      0x56d943
0x0056D93E: test     bl, 0x7f
0x0056D941: je       0x56d956
0x0056D943: mov      edx, ebx
0x0056D945: and      edx, 0x7f
0x0056D948: cmp      ecx, edx
0x0056D94A: jne      0x56d956
0x0056D94C: push     eax
0x0056D94D: push     edi
0x0056D94E: push     ebx
0x0056D94F: call     0x6a98f0
0x0056D954: jmp      0x56d95e
0x0056D956: push     eax
0x0056D957: push     edi
0x0056D958: push     ebx
0x0056D959: call     0x8eb4a0
0x0056D95E: mov      eax, dword ptr [esi + 0xd4]
0x0056D964: sub      eax, esi
0x0056D966: sub      eax, 0x8c
0x0056D96B: add      esp, 0xc
0x0056D96E: sar      eax, 2
0x0056D971: lea      ecx, [esi + eax*4 + 0x4c]
0x0056D975: mov      dword ptr [esi + 0xd4], edi
0x0056D97B: pop      edi
0x0056D97C: mov      dword ptr [esi + 0xd0], ecx
0x0056D982: pop      esi
0x0056D983: pop      ebx
0x0056D984: ret      
0x0056D985: int3     
0x0056D986: int3     
0x0056D987: int3     
0x0056D988: int3     
0x0056D989: int3     
0x0056D98A: int3     
0x0056D98B: int3     
0x0056D98C: int3     
0x0056D98D: int3     
0x0056D98E: int3     
0x0056D98F: int3     
0x0056D990: push     esi
0x0056D991: push     7
0x0056D993: push     0x992308
0x0056D998: mov      esi, ecx
0x0056D99A: call     0x6e1850
0x0056D99F: mov      dword ptr [esi], 0x992314
0x0056D9A5: mov      eax, esi
0x0056D9A7: pop      esi
0x0056D9A8: ret      
0x0056D9A9: int3     
0x0056D9AA: int3     
0x0056D9AB: int3     
0x0056D9AC: int3     
0x0056D9AD: int3     
0x0056D9AE: int3     
0x0056D9AF: int3     
0x0056D9B0: jmp      0x6e2040
0x0056D9B5: int3     
0x0056D9B6: int3     
0x0056D9B7: int3     
0x0056D9B8: int3     
0x0056D9B9: int3     
0x0056D9BA: int3     
0x0056D9BB: int3     
0x0056D9BC: int3     
0x0056D9BD: int3     
0x0056D9BE: int3     
0x0056D9BF: int3     
0x0056D9C0: jmp      0x6e1d00
0x0056D9C5: int3     
0x0056D9C6: int3     
0x0056D9C7: int3     
0x0056D9C8: int3     
0x0056D9C9: int3     
0x0056D9CA: int3     
0x0056D9CB: int3     
0x0056D9CC: int3     
0x0056D9CD: int3     
0x0056D9CE: int3     
0x0056D9CF: int3     
0x0056D9D0: dec      dword ptr [ecx + 0x4c]
0x0056D9D3: ret      
0x0056D9D4: int3     
0x0056D9D5: int3     
0x0056D9D6: int3     
0x0056D9D7: int3     
0x0056D9D8: int3     
0x0056D9D9: int3     
0x0056D9DA: int3     
0x0056D9DB: int3     
0x0056D9DC: int3     
0x0056D9DD: int3     
0x0056D9DE: int3     
0x0056D9DF: int3     

--- C3DPanelGui::vfunc_14 @ 0x0056D9E0 ---
0x0056D9E0: ret      
0x0056D9E1: int3     
0x0056D9E2: int3     
0x0056D9E3: int3     
0x0056D9E4: int3     
0x0056D9E5: int3     
0x0056D9E6: int3     
0x0056D9E7: int3     
0x0056D9E8: int3     
0x0056D9E9: int3     
0x0056D9EA: int3     
0x0056D9EB: int3     
0x0056D9EC: int3     
0x0056D9ED: int3     
0x0056D9EE: int3     
0x0056D9EF: int3     
0x0056D9F0: mov      eax, dword ptr [esp + 4]
0x0056D9F4: push     0x99234c
0x0056D9F9: push     eax
0x0056D9FA: call     0x6949c0
0x0056D9FF: add      esp, 8
0x0056DA02: ret      4
0x0056DA05: int3     
0x0056DA06: int3     
0x0056DA07: int3     
0x0056DA08: int3     
0x0056DA09: int3     
0x0056DA0A: int3     
0x0056DA0B: int3     
0x0056DA0C: int3     
0x0056DA0D: int3     
0x0056DA0E: int3     
0x0056DA0F: int3     
0x0056DA10: push     esi
0x0056DA11: mov      esi, ecx
0x0056DA13: call     0x6e1a50
0x0056DA18: test     byte ptr [esp + 8], 1
0x0056DA1D: je       0x56da28
0x0056DA1F: push     esi
0x0056DA20: call     0x688fb0
0x0056DA25: add      esp, 4
0x0056DA28: mov      eax, esi
0x0056DA2A: pop      esi
0x0056DA2B: ret      4
0x0056DA2E: int3     
0x0056DA2F: int3     
0x0056DA30: inc      dword ptr [ecx + 0x4c]
0x0056DA33: cmp      dword ptr [esp + 4], 0
0x0056DA38: je       0x56da41
0x0056DA3A: or       dword ptr [ecx + 0x98], 0x20
0x0056DA41: ret      4
0x0056DA44: int3     
0x0056DA45: int3     
0x0056DA46: int3     
0x0056DA47: int3     
0x0056DA48: int3     
0x0056DA49: int3     
0x0056DA4A: int3     
0x0056DA4B: int3     
0x0056DA4C: int3     
0x0056DA4D: int3     
0x0056DA4E: int3     
0x0056DA4F: int3     
0x0056DA50: ret      
0x0056DA51: int3     
0x0056DA52: int3     
0x0056DA53: int3     
0x0056DA54: int3     
0x0056DA55: int3     
0x0056DA56: int3     
0x0056DA57: int3     
0x0056DA58: int3     
0x0056DA59: int3     
0x0056DA5A: int3     
0x0056DA5B: int3     
0x0056DA5C: int3     
0x0056DA5D: int3     
0x0056DA5E: int3     
0x0056DA5F: int3     
0x0056DA60: ret      
0x0056DA61: int3     
0x0056DA62: int3     
0x0056DA63: int3     
0x0056DA64: int3     
0x0056DA65: int3     
0x0056DA66: int3     
0x0056DA67: int3     
0x0056DA68: int3     
0x0056DA69: int3     
0x0056DA6A: int3     
0x0056DA6B: int3     
0x0056DA6C: int3     
0x0056DA6D: int3     
0x0056DA6E: int3     
0x0056DA6F: int3     
0x0056DA70: mov      eax, dword ptr [ecx]
0x0056DA72: mov      edx, dword ptr [eax + 4]
0x0056DA75: jmp      edx
0x0056DA77: int3     
0x0056DA78: int3     
0x0056DA79: int3     
0x0056DA7A: int3     
0x0056DA7B: int3     
0x0056DA7C: int3     
0x0056DA7D: int3     
0x0056DA7E: int3     
0x0056DA7F: int3     
0x0056DA80: mov      eax, dword ptr [esp + 4]
0x0056DA84: push     esi
0x0056DA85: mov      esi, ecx
0x0056DA87: mov      ecx, dword ptr [eax]
0x0056DA89: mov      edx, dword ptr [esi + 0xd4]
0x0056DA8F: push     ecx
0x0056DA90: push     edx
0x0056DA91: call     0x521f30
0x0056DA96: add      esp, 8
0x0056DA99: test     eax, eax
0x0056DA9B: je       0x56daa6
0x0056DA9D: mov      eax, dword ptr [esi]
0x0056DA9F: mov      edx, dword ptr [eax + 0x14]
0x0056DAA2: mov      ecx, esi
0x0056DAA4: call     edx
0x0056DAA6: pop      esi
0x0056DAA7: ret      4
0x0056DAAA: int3     
0x0056DAAB: int3     
0x0056DAAC: int3     
0x0056DAAD: int3     
0x0056DAAE: int3     
0x0056DAAF: int3     
0x0056DAB0: mov      eax, dword ptr [esp + 4]
0x0056DAB4: mov      ecx, dword ptr [eax + 4]
0x0056DAB7: push     esi
0x0056DAB8: mov      esi, dword ptr [esp + 0xc]
0x0056DABC: mov      edx, dword ptr [esi + 0xd4]
0x0056DAC2: push     ecx
0x0056DAC3: push     edx
0x0056DAC4: call     0x521f30
0x0056DAC9: add      esp, 8
0x0056DACC: test     eax, eax
0x0056DACE: je       0x56dada
0x0056DAD0: mov      eax, dword ptr [esi]
0x0056DAD2: mov      edx, dword ptr [eax + 0x14]
0x0056DAD5: mov      ecx, esi
0x0056DAD7: pop      esi
0x0056DAD8: jmp      edx
0x0056DADA: pop      esi
0x0056DADB: ret      
0x0056DADC: int3     
0x0056DADD: int3     
0x0056DADE: int3     
0x0056DADF: int3     
0x0056DAE0: push     -1
0x0056DAE2: push     0x948046
0x0056DAE7: mov      eax, dword ptr fs:[0]
0x0056DAED: push     eax
0x0056DAEE: push     ecx
0x0056DAEF: push     esi
0x0056DAF0: push     edi
0x0056DAF1: mov      eax, dword ptr [0xb089c8]
0x0056DAF6: xor      eax, esp
0x0056DAF8: push     eax
0x0056DAF9: lea      eax, [esp + 0x10]
0x0056DAFD: mov      dword ptr fs:[0], eax
0x0056DB03: mov      esi, ecx
0x0056DB05: mov      dword ptr [esp + 0xc], esi
0x0056DB09: mov      eax, dword ptr [esp + 0x20]
0x0056DB0D: push     eax
0x0056DB0E: call     0x521c60
0x0056DB13: lea      edi, [esi + 0xf8]
0x0056DB19: mov      ecx, edi
0x0056DB1B: mov      dword ptr [esp + 0x18], 0
0x0056DB23: mov      dword ptr [esi], 0x992364
0x0056DB29: call     0x50e290
0x0056DB2E: mov      ecx, dword ptr [esi + 0xd4]
0x0056DB34: mov      ecx, dword ptr [ecx + 0x1b4]
0x0056DB3A: mov      edx, dword ptr [ecx]
0x0056DB3C: mov      eax, dword ptr [edx + 0xc]
0x0056DB3F: push     0
0x0056DB41: push     edi
0x0056DB42: mov      byte ptr [esp + 0x20], 1
0x0056DB47: call     eax
0x0056DB49: mov      edx, dword ptr [edi]
0x0056DB4B: mov      eax, dword ptr [edx + 0x18]
0x0056DB4E: push     esi
0x0056DB4F: push     0x56dab0
0x0056DB54: push     0xb49ccc
0x0056DB59: mov      ecx, edi
0x0056DB5B: call     eax
0x0056DB5D: mov      eax, esi
0x0056DB5F: mov      ecx, dword ptr [esp + 0x10]
0x0056DB63: mov      dword ptr fs:[0], ecx
0x0056DB6A: pop      ecx
0x0056DB6B: pop      edi
0x0056DB6C: pop      esi
0x0056DB6D: add      esp, 0x10
0x0056DB70: ret      4
0x0056DB73: int3     
0x0056DB74: int3     
0x0056DB75: int3     
0x0056DB76: int3     
0x0056DB77: int3     
0x0056DB78: int3     
0x0056DB79: int3     
0x0056DB7A: int3     
0x0056DB7B: int3     
0x0056DB7C: int3     
0x0056DB7D: int3     
0x0056DB7E: int3     
0x0056DB7F: int3     
0x0056DB80: push     -1
0x0056DB82: push     0x948077
0x0056DB87: mov      eax, dword ptr fs:[0]
0x0056DB8D: push     eax
0x0056DB8E: push     ecx
0x0056DB8F: push     esi
0x0056DB90: mov      eax, dword ptr [0xb089c8]
0x0056DB95: xor      eax, esp
0x0056DB97: push     eax
0x0056DB98: lea      eax, [esp + 0xc]
0x0056DB9C: mov      dword ptr fs:[0], eax
0x0056DBA2: mov      esi, ecx
0x0056DBA4: mov      dword ptr [esp + 8], esi
0x0056DBA8: mov      dword ptr [esi], 0x992364
0x0056DBAE: mov      eax, dword ptr [esi + 0xd4]
0x0056DBB4: mov      ecx, dword ptr [eax + 0x1b4]
0x0056DBBA: mov      dword ptr [esp + 0x14], 1
0x0056DBC2: test     ecx, ecx
0x0056DBC4: je       0x56dbd4
0x0056DBC6: mov      edx, dword ptr [ecx]
0x0056DBC8: mov      edx, dword ptr [edx + 0x10]
0x0056DBCB: lea      eax, [esi + 0xf8]
0x0056DBD1: push     eax
0x0056DBD2: call     edx
0x0056DBD4: lea      ecx, [esi + 0xf8]
0x0056DBDA: mov      byte ptr [esp + 0x14], 0
0x0056DBDF: call     0x50e5e0
0x0056DBE4: mov      ecx, esi
0x0056DBE6: mov      dword ptr [esp + 0x14], 0xffffffff
0x0056DBEE: call     0x521ad0
0x0056DBF3: mov      ecx, dword ptr [esp + 0xc]
0x0056DBF7: mov      dword ptr fs:[0], ecx
0x0056DBFE: pop      ecx
0x0056DBFF: pop      esi
0x0056DC00: add      esp, 0x10
0x0056DC03: ret      
0x0056DC04: int3     
0x0056DC05: int3     
0x0056DC06: int3     
0x0056DC07: int3     
0x0056DC08: int3     
0x0056DC09: int3     
0x0056DC0A: int3     
0x0056DC0B: int3     
0x0056DC0C: int3     
0x0056DC0D: int3     
0x0056DC0E: int3     
0x0056DC0F: int3     
0x0056DC10: mov      eax, 0xb49cd0
0x0056DC15: ret      
0x0056DC16: int3     
0x0056DC17: int3     
0x0056DC18: int3     
0x0056DC19: int3     
0x0056DC1A: int3     
0x0056DC1B: int3     
0x0056DC1C: int3     
0x0056DC1D: int3     
0x0056DC1E: int3     
0x0056DC1F: int3     
0x0056DC20: push     esi
0x0056DC21: mov      esi, ecx
0x0056DC23: call     0x56db80
0x0056DC28: test     byte ptr [esp + 8], 1
0x0056DC2D: je       0x56dc38
0x0056DC2F: push     esi
0x0056DC30: call     0x688fb0
0x0056DC35: add      esp, 4
0x0056DC38: mov      eax, esi
0x0056DC3A: pop      esi
0x0056DC3B: ret      4
0x0056DC3E: int3     
0x0056DC3F: int3     
0x0056DC40: mov      eax, dword ptr [esp + 4]
0x0056DC44: push     esi
0x0056DC45: push     eax
0x0056DC46: mov      esi, ecx
0x0056DC48: call     0x521c60
0x0056DC4D: mov      dword ptr [esi], 0x992388
0x0056DC53: mov      dword ptr [esi + 0xf4], 1
0x0056DC5D: mov      eax, esi
0x0056DC5F: pop      esi
0x0056DC60: ret      4
0x0056DC63: int3     
0x0056DC64: int3     
0x0056DC65: int3     
0x0056DC66: int3     
0x0056DC67: int3     
0x0056DC68: int3     
0x0056DC69: int3     
0x0056DC6A: int3     
0x0056DC6B: int3     
0x0056DC6C: int3     
0x0056DC6D: int3     
0x0056DC6E: int3     
0x0056DC6F: int3     
0x0056DC70: mov      dword ptr [ecx], 0x992388
0x0056DC76: jmp      0x521ad0
0x0056DC7B: int3     
0x0056DC7C: int3     
0x0056DC7D: int3     
0x0056DC7E: int3     
0x0056DC7F: int3     
0x0056DC80: ret      
0x0056DC81: int3     
0x0056DC82: int3     
0x0056DC83: int3     
0x0056DC84: int3     
0x0056DC85: int3     
0x0056DC86: int3     
0x0056DC87: int3     
0x0056DC88: int3     
0x0056DC89: int3     
0x0056DC8A: int3     
0x0056DC8B: int3     
0x0056DC8C: int3     
0x0056DC8D: int3     
0x0056DC8E: int3     
0x0056DC8F: int3     
0x0056DC90: mov      eax, dword ptr [ecx]
0x0056DC92: mov      edx, dword ptr [eax + 4]
0x0056DC95: jmp      edx
0x0056DC97: int3     
0x0056DC98: int3     
0x0056DC99: int3     
0x0056DC9A: int3     
0x0056DC9B: int3     
0x0056DC9C: int3     
0x0056DC9D: int3     
0x0056DC9E: int3     
0x0056DC9F: int3     
0x0056DCA0: fld      dword ptr [edx]
0x0056DCA2: fsub     dword ptr [ecx]
0x0056DCA4: fstp     dword ptr [eax]
0x0056DCA6: fld      dword ptr [edx + 4]
0x0056DCA9: fsub     dword ptr [ecx + 4]
0x0056DCAC: fstp     dword ptr [eax + 4]
0x0056DCAF: fld      dword ptr [edx + 8]
0x0056DCB2: fsub     dword ptr [ecx + 8]
0x0056DCB5: fstp     dword ptr [eax + 8]
0x0056DCB8: fld      dword ptr [edx + 0xc]
0x0056DCBB: fsub     dword ptr [ecx + 0xc]
0x0056DCBE: fstp     dword ptr [eax + 0xc]
0x0056DCC1: ret      
0x0056DCC2: int3     
0x0056DCC3: int3     
0x0056DCC4: int3     
0x0056DCC5: int3     
0x0056DCC6: int3     
0x0056DCC7: int3     
0x0056DCC8: int3     
0x0056DCC9: int3     
0x0056DCCA: int3     
0x0056DCCB: int3     
0x0056DCCC: int3     
0x0056DCCD: int3     
0x0056DCCE: int3     
0x0056DCCF: int3     
0x0056DCD0: sub      esp, 0x44
0x0056DCD3: push     esi
0x0056DCD4: mov      esi, ecx
0x0056DCD6: mov      eax, dword ptr [esi + 0xd4]
0x0056DCDC: cmp      dword ptr [eax + 0x240], 0
0x0056DCE3: jne      0x56de2e
0x0056DCE9: cmp      dword ptr [eax + 0x23c], 0
0x0056DCF0: je       0x56de2e
0x0056DCF6: mov      ecx, eax
0x0056DCF8: mov      eax, dword ptr [ecx + 0x23c]
0x0056DCFE: movzx    edx, byte ptr [eax + 1]
0x0056DD02: mov      eax, dword ptr [eax + 4]
0x0056DD05: mov      eax, dword ptr [eax + 0x1c]
0x0056DD08: mov      eax, dword ptr [eax + edx*4]
0x0056DD0B: mov      ecx, dword ptr [ecx + 8]
0x0056DD0E: movzx    edx, byte ptr [ecx + 1]
0x0056DD12: fld      dword ptr [eax + 0xc]
0x0056DD15: fstp     dword ptr [esp + 0x18]
0x0056DD19: fld      dword ptr [eax + 0x10]
0x0056DD1C: add      eax, 0xc
0x0056DD1F: fstp     dword ptr [esp + 0x1c]
0x0056DD23: fld      dword ptr [eax + 8]
0x0056DD26: fstp     dword ptr [esp + 0x20]
0x0056DD2A: fld      dword ptr [eax + 0xc]
0x0056DD2D: mov      eax, dword ptr [ecx + 4]
0x0056DD30: mov      ecx, dword ptr [eax + 0x1c]
0x0056DD33: fstp     dword ptr [esp + 0x24]
0x0056DD37: mov      eax, dword ptr [ecx + edx*4]
0x0056DD3A: fld      dword ptr [eax + 0xc]
0x0056DD3D: add      eax, 0xc
0x0056DD40: fstp     dword ptr [esp + 8]
0x0056DD44: lea      edx, [esp + 0x28]
0x0056DD48: fld      dword ptr [eax + 4]
0x0056DD4B: push     edx
0x0056DD4C: fstp     dword ptr [esp + 0x10]
0x0056DD50: fld      dword ptr [eax + 8]
0x0056DD53: fstp     dword ptr [esp + 0x14]
0x0056DD57: fld      dword ptr [eax + 0xc]
0x0056DD5A: lea      eax, [esp + 0xc]
0x0056DD5E: fstp     dword ptr [esp + 0x18]
0x0056DD62: push     eax
0x0056DD63: fld      dword ptr [esp + 0x10]
0x0056DD67: fsub     dword ptr [esp + 0x20]
0x0056DD6B: fstp     dword ptr [esp + 0x30]
0x0056DD6F: fld      dword ptr [esp + 0x14]
0x0056DD73: fsub     dword ptr [esp + 0x24]
0x0056DD77: fstp     dword ptr [esp + 0x34]
0x0056DD7B: fld      dword ptr [esp + 0x18]
0x0056DD7F: fsub     dword ptr [esp + 0x28]
0x0056DD83: fstp     dword ptr [esp + 0x38]
0x0056DD87: fld      dword ptr [esp + 0x1c]
0x0056DD8B: fsub     dword ptr [esp + 0x2c]
0x0056DD8F: fstp     dword ptr [esp + 0x3c]
0x0056DD93: fldz     
0x0056DD95: fst      dword ptr [esp + 0x10]
0x0056DD99: fst      dword ptr [esp + 0x14]
0x0056DD9D: fstp     dword ptr [esp + 0x18]
0x0056DDA1: fld1     
0x0056DDA3: fstp     dword ptr [esp + 0x1c]
0x0056DDA7: call     0x6b2160
0x0056DDAC: fstp     st(0)
0x0056DDAE: fld      dword ptr [esp + 0x10]
0x0056DDB2: mov      ecx, dword ptr [esi + 0xd4]
0x0056DDB8: fchs     
0x0056DDBA: add      ecx, 0xc24
0x0056DDC0: fstp     dword ptr [esp + 0x44]
0x0056DDC4: push     ecx
0x0056DDC5: fldz     
0x0056DDC7: lea      edx, [esp + 0x24]
0x0056DDCB: fst      dword ptr [esp + 0x24]
0x0056DDCF: push     edx
0x0056DDD0: fst      dword ptr [esp + 0x2c]
0x0056DDD4: fstp     dword ptr [esp + 0x30]
0x0056DDD8: fld1     
0x0056DDDA: fstp     dword ptr [esp + 0x34]
0x0056DDDE: call     0x6b2160
0x0056DDE3: fstp     st(0)
0x0056DDE5: fld      dword ptr [esp + 0x2c]
0x0056DDE9: add      esp, 0x10
0x0056DDEC: fmul     dword ptr [esp + 0x3c]
0x0056DDF0: fld      dword ptr [esp + 0xc]
0x0056DDF4: fmul     dword ptr [esp + 0x18]
0x0056DDF8: faddp    st(1)
0x0056DDFA: fld      dword ptr [esp + 0x20]
0x0056DDFE: fmul     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x0056DE04: faddp    st(1)
0x0056DE06: fstp     dword ptr [esp + 4]
0x0056DE0A: fld      dword ptr [esp + 4]
0x0056DE0E: fabs     
0x0056DE10: fstp     dword ptr [esp + 4]
0x0056DE14: fld      dword ptr [esp + 4]
0x0056DE18: fcomp    qword ptr [0x9923a0] ; [f32=0, f64=0.98, u32=0x00000000]
0x0056DE1E: fnstsw   ax
0x0056DE20: test     ah, 1
0x0056DE23: jne      0x56de2e
0x0056DE25: mov      eax, dword ptr [esi]
0x0056DE27: mov      edx, dword ptr [eax + 0x14]
0x0056DE2A: mov      ecx, esi
0x0056DE2C: call     edx
0x0056DE2E: pop      esi
0x0056DE2F: add      esp, 0x44
0x0056DE32: ret      
0x0056DE33: int3     
0x0056DE34: int3     
0x0056DE35: int3     
0x0056DE36: int3     
0x0056DE37: int3     
0x0056DE38: int3     
0x0056DE39: int3     
0x0056DE3A: int3     
0x0056DE3B: int3     
0x0056DE3C: int3     
0x0056DE3D: int3     
0x0056DE3E: int3     
0x0056DE3F: int3     
0x0056DE40: mov      eax, 0xb49cec
0x0056DE45: ret      
0x0056DE46: int3     
0x0056DE47: int3     
0x0056DE48: int3     
0x0056DE49: int3     
0x0056DE4A: int3     
0x0056DE4B: int3     
0x0056DE4C: int3     
0x0056DE4D: int3     
0x0056DE4E: int3     
0x0056DE4F: int3     
0x0056DE50: push     esi
0x0056DE51: mov      esi, ecx
0x0056DE53: mov      dword ptr [esi], 0x992388
0x0056DE59: call     0x521ad0
0x0056DE5E: test     byte ptr [esp + 8], 1
0x0056DE63: je       0x56de6e
0x0056DE65: push     esi
0x0056DE66: call     0x688fb0
0x0056DE6B: add      esp, 4
0x0056DE6E: mov      eax, esi
0x0056DE70: pop      esi
0x0056DE71: ret      4
0x0056DE74: int3     
0x0056DE75: int3     
0x0056DE76: int3     
0x0056DE77: int3     
0x0056DE78: int3     
0x0056DE79: int3     
0x0056DE7A: int3     
0x0056DE7B: int3     
0x0056DE7C: int3     
0x0056DE7D: int3     
0x0056DE7E: int3     
0x0056DE7F: int3     
0x0056DE80: mov      ecx, dword ptr [esp + 8]
0x0056DE84: mov      eax, dword ptr [ecx]
0x0056DE86: mov      edx, dword ptr [eax + 0x14]
0x0056DE89: jmp      edx
0x0056DE8B: int3     
0x0056DE8C: int3     
0x0056DE8D: int3     
0x0056DE8E: int3     
0x0056DE8F: int3     
0x0056DE90: ret      
0x0056DE91: int3     
0x0056DE92: int3     
0x0056DE93: int3     
0x0056DE94: int3     
0x0056DE95: int3     
0x0056DE96: int3     
0x0056DE97: int3     
0x0056DE98: int3     
0x0056DE99: int3     
0x0056DE9A: int3     
0x0056DE9B: int3     
0x0056DE9C: int3     
0x0056DE9D: int3     
0x0056DE9E: int3     
0x0056DE9F: int3     
0x0056DEA0: ret      
0x0056DEA1: int3     
0x0056DEA2: int3     
0x0056DEA3: int3     
0x0056DEA4: int3     
0x0056DEA5: int3     
0x0056DEA6: int3     
0x0056DEA7: int3     
0x0056DEA8: int3     
0x0056DEA9: int3     
0x0056DEAA: int3     
0x0056DEAB: int3     
0x0056DEAC: int3     
0x0056DEAD: int3     
0x0056DEAE: int3     
0x0056DEAF: int3     
0x0056DEB0: mov      eax, dword ptr [ecx]
0x0056DEB2: mov      edx, dword ptr [eax + 4]
0x0056DEB5: jmp      edx
0x0056DEB7: int3     
0x0056DEB8: int3     
0x0056DEB9: int3     
0x0056DEBA: int3     
0x0056DEBB: int3     
0x0056DEBC: int3     
0x0056DEBD: int3     
0x0056DEBE: int3     
0x0056DEBF: int3     
0x0056DEC0: push     -1
0x0056DEC2: push     0x9480b6
0x0056DEC7: mov      eax, dword ptr fs:[0]
0x0056DECD: push     eax
0x0056DECE: push     ecx
0x0056DECF: push     esi
0x0056DED0: push     edi
0x0056DED1: mov      eax, dword ptr [0xb089c8]
0x0056DED6: xor      eax, esp
0x0056DED8: push     eax
0x0056DED9: lea      eax, [esp + 0x10]
0x0056DEDD: mov      dword ptr fs:[0], eax
0x0056DEE3: mov      esi, ecx
0x0056DEE5: mov      dword ptr [esp + 0xc], esi
0x0056DEE9: mov      eax, dword ptr [esp + 0x20]
0x0056DEED: push     eax
0x0056DEEE: call     0x521c60
0x0056DEF3: lea      edi, [esi + 0xf8]
0x0056DEF9: mov      ecx, edi
0x0056DEFB: mov      dword ptr [esp + 0x18], 0
0x0056DF03: mov      dword ptr [esi], 0x9923b0
0x0056DF09: call     0x50e290
0x0056DF0E: mov      ecx, dword ptr [esi + 0xd4]
0x0056DF14: mov      eax, 1
0x0056DF19: mov      dword ptr [esi + 0xf4], eax
0x0056DF1F: mov      ecx, dword ptr [ecx + 0x1b4]
0x0056DF25: mov      edx, dword ptr [ecx]
0x0056DF27: push     0
0x0056DF29: mov      byte ptr [esp + 0x1c], al
0x0056DF2D: mov      eax, dword ptr [edx + 0xc]
0x0056DF30: push     edi
0x0056DF31: call     eax
0x0056DF33: mov      edx, dword ptr [edi]
0x0056DF35: mov      eax, dword ptr [edx + 0x18]
0x0056DF38: push     esi
0x0056DF39: push     0x56de80
0x0056DF3E: push     0xb1bc1c
0x0056DF43: mov      ecx, edi
0x0056DF45: call     eax
0x0056DF47: mov      eax, esi
0x0056DF49: mov      ecx, dword ptr [esp + 0x10]
0x0056DF4D: mov      dword ptr fs:[0], ecx
0x0056DF54: pop      ecx
0x0056DF55: pop      edi
0x0056DF56: pop      esi
0x0056DF57: add      esp, 0x10
0x0056DF5A: ret      4
0x0056DF5D: int3     
0x0056DF5E: int3     
0x0056DF5F: int3     
0x0056DF60: push     -1
0x0056DF62: push     0x9480e7
0x0056DF67: mov      eax, dword ptr fs:[0]
0x0056DF6D: push     eax
0x0056DF6E: push     ecx
0x0056DF6F: push     esi
0x0056DF70: mov      eax, dword ptr [0xb089c8]
0x0056DF75: xor      eax, esp
0x0056DF77: push     eax
0x0056DF78: lea      eax, [esp + 0xc]
0x0056DF7C: mov      dword ptr fs:[0], eax
0x0056DF82: mov      esi, ecx
0x0056DF84: mov      dword ptr [esp + 8], esi
0x0056DF88: mov      dword ptr [esi], 0x9923b0
0x0056DF8E: mov      eax, dword ptr [esi + 0xd4]
0x0056DF94: mov      ecx, dword ptr [eax + 0x1b4]
0x0056DF9A: mov      dword ptr [esp + 0x14], 1
0x0056DFA2: test     ecx, ecx
0x0056DFA4: je       0x56dfb4
0x0056DFA6: mov      edx, dword ptr [ecx]
0x0056DFA8: mov      edx, dword ptr [edx + 0x10]
0x0056DFAB: lea      eax, [esi + 0xf8]
0x0056DFB1: push     eax
0x0056DFB2: call     edx
0x0056DFB4: lea      ecx, [esi + 0xf8]
0x0056DFBA: mov      byte ptr [esp + 0x14], 0
0x0056DFBF: call     0x50e5e0
0x0056DFC4: mov      ecx, esi
0x0056DFC6: mov      dword ptr [esp + 0x14], 0xffffffff
0x0056DFCE: call     0x521ad0
0x0056DFD3: mov      ecx, dword ptr [esp + 0xc]
0x0056DFD7: mov      dword ptr fs:[0], ecx
0x0056DFDE: pop      ecx
0x0056DFDF: pop      esi
0x0056DFE0: add      esp, 0x10
0x0056DFE3: ret      
0x0056DFE4: int3     
0x0056DFE5: int3     
0x0056DFE6: int3     
0x0056DFE7: int3     
0x0056DFE8: int3     
0x0056DFE9: int3     
0x0056DFEA: int3     
0x0056DFEB: int3     
0x0056DFEC: int3     
0x0056DFED: int3     
0x0056DFEE: int3     
0x0056DFEF: int3     
0x0056DFF0: mov      eax, 0xb49d08
0x0056DFF5: ret      
0x0056DFF6: int3     
0x0056DFF7: int3     
0x0056DFF8: int3     
0x0056DFF9: int3     
0x0056DFFA: int3     
0x0056DFFB: int3     
0x0056DFFC: int3     
0x0056DFFD: int3     
0x0056DFFE: int3     
0x0056DFFF: int3     
0x0056E000: push     esi
0x0056E001: mov      esi, ecx
0x0056E003: call     0x56df60
0x0056E008: test     byte ptr [esp + 8], 1
0x0056E00D: je       0x56e018
0x0056E00F: push     esi
0x0056E010: call     0x688fb0
0x0056E015: add      esp, 4
0x0056E018: mov      eax, esi
0x0056E01A: pop      esi
0x0056E01B: ret      4
0x0056E01E: int3     
0x0056E01F: int3     
0x0056E020: mov      eax, dword ptr [esp + 4]
0x0056E024: push     esi
0x0056E025: push     eax
0x0056E026: mov      esi, ecx
0x0056E028: call     0x521c60
0x0056E02D: mov      dword ptr [esi], 0x9923d4
0x0056E033: mov      dword ptr [esi + 0xf8], 0
0x0056E03D: mov      dword ptr [esi + 0xf4], 1
0x0056E047: mov      eax, esi
0x0056E049: pop      esi
0x0056E04A: ret      4
0x0056E04D: int3     
0x0056E04E: int3     
0x0056E04F: int3     
0x0056E050: mov      dword ptr [ecx], 0x9923d4
0x0056E056: jmp      0x521ad0
0x0056E05B: int3     
0x0056E05C: int3     
0x0056E05D: int3     
0x0056E05E: int3     
0x0056E05F: int3     
0x0056E060: ret      
0x0056E061: int3     
0x0056E062: int3     
0x0056E063: int3     
0x0056E064: int3     
0x0056E065: int3     
0x0056E066: int3     
0x0056E067: int3     
0x0056E068: int3     
0x0056E069: int3     
0x0056E06A: int3     
0x0056E06B: int3     
0x0056E06C: int3     
0x0056E06D: int3     
0x0056E06E: int3     
0x0056E06F: int3     
0x0056E070: mov      eax, dword ptr [ecx]
0x0056E072: mov      edx, dword ptr [eax + 4]
0x0056E075: jmp      edx
0x0056E077: int3     
0x0056E078: int3     
0x0056E079: int3     
0x0056E07A: int3     
0x0056E07B: int3     
0x0056E07C: int3     
0x0056E07D: int3     
0x0056E07E: int3     
0x0056E07F: int3     
0x0056E080: push     ecx
0x0056E081: push     esi
0x0056E082: mov      esi, ecx
0x0056E084: mov      eax, dword ptr [esi + 0xd4]
0x0056E08A: cmp      dword ptr [eax + 0x240], 0
0x0056E091: jne      0x56e1aa
0x0056E097: cmp      dword ptr [eax + 0x23c], 0
0x0056E09E: je       0x56e1aa
0x0056E0A4: cmp      dword ptr [esi + 0xf8], 0
0x0056E0AB: jne      0x56e12c
0x0056E0AD: mov      eax, dword ptr [eax + 8]
0x0056E0B0: movzx    ecx, byte ptr [eax + 1]
0x0056E0B4: mov      edx, dword ptr [eax + 4]
0x0056E0B7: mov      eax, dword ptr [edx + 0x28]
0x0056E0BA: mov      eax, dword ptr [eax + ecx*4]
0x0056E0BD: mov      ecx, dword ptr [0x95fc5c] ; [str="e/@@RotasticPlayerDeathTrigger"]
0x0056E0C3: push     0
0x0056E0C5: push     0
0x0056E0C7: push     ecx
0x0056E0C8: mov      ecx, dword ptr [eax + 0x114]
0x0056E0CE: call     0x7cd3c0
0x0056E0D3: test     eax, eax
0x0056E0D5: je       0x56e12c
0x0056E0D7: movzx    ecx, byte ptr [eax + 1]
0x0056E0DB: mov      eax, dword ptr [eax + 4]
0x0056E0DE: lea      edx, [ecx + ecx*8]
0x0056E0E1: mov      ecx, dword ptr [eax + 0x14]
0x0056E0E4: lea      eax, [ecx + edx*4]
0x0056E0E7: mov      ecx, 0x2f
0x0056E0EC: cmp      byte ptr [eax + 0x14], cl
0x0056E0EF: jne      0x56e0f6
0x0056E0F1: mov      eax, dword ptr [eax + 4]
0x0056E0F4: jmp      0x56e126
0x0056E0F6: cmp      byte ptr [eax + 0x15], cl
0x0056E0F9: jne      0x56e100
0x0056E0FB: mov      eax, dword ptr [eax + 8]
0x0056E0FE: jmp      0x56e126
0x0056E100: cmp      byte ptr [eax + 0x16], cl
0x0056E103: jne      0x56e10a
0x0056E105: mov      eax, dword ptr [eax + 0xc]
0x0056E108: jmp      0x56e126
0x0056E10A: cmp      byte ptr [eax + 0x17], cl
0x0056E10D: jne      0x56e114
0x0056E10F: mov      eax, dword ptr [eax + 0x10]
0x0056E112: jmp      0x56e126
0x0056E114: mov      eax, dword ptr [eax]
0x0056E116: test     eax, eax
0x0056E118: je       0x56e124
0x0056E11A: push     ecx
0x0056E11B: mov      ecx, eax
0x0056E11D: call     0x461400
0x0056E122: jmp      0x56e126
0x0056E124: xor      eax, eax
0x0056E126: mov      dword ptr [esi + 0xf8], eax
0x0056E12C: mov      ecx, dword ptr [esi + 0xf8]
0x0056E132: test     ecx, ecx
0x0056E134: je       0x56e1aa
0x0056E136: mov      edx, dword ptr [esi + 0xd4]
0x0056E13C: mov      eax, dword ptr [edx + 8]
0x0056E13F: movzx    edx, byte ptr [eax + 1]
0x0056E143: mov      eax, dword ptr [eax + 4]
0x0056E146: mov      eax, dword ptr [eax + 0x1c]
0x0056E149: mov      eax, dword ptr [eax + edx*4]
0x0056E14C: push     0
0x0056E14E: add      eax, 0xc
0x0056E151: push     eax
0x0056E152: call     0x7b9400
0x0056E157: fstp     dword ptr [esp + 4]
0x0056E15B: fldz     
0x0056E15D: fld      dword ptr [esp + 4]
0x0056E161: fcom     st(1)
0x0056E163: fnstsw   ax
0x0056E165: fstp     st(1)
0x0056E167: test     ah, 0x41
0x0056E16A: jne      0x56e1a8
0x0056E16C: fcomp    dword ptr [0x967d90] ; [f32=150, u32=0x43160000]
0x0056E172: fnstsw   ax
0x0056E174: test     ah, 5
0x0056E177: jp       0x56e1aa
0x0056E179: mov      ecx, dword ptr [esi + 0xd4]
0x0056E17F: add      ecx, 0x28c
0x0056E185: push     ecx
0x0056E186: call     0x521380
0x0056E18B: fcomp    qword ptr [0x989da8] ; [f32=0, f64=200, u32=0x00000000]
0x0056E191: add      esp, 4
0x0056E194: fnstsw   ax
0x0056E196: test     ah, 1
0x0056E199: jne      0x56e1aa
0x0056E19B: mov      edx, dword ptr [esi]
0x0056E19D: mov      eax, dword ptr [edx + 0x14]
0x0056E1A0: mov      ecx, esi
0x0056E1A2: pop      esi
0x0056E1A3: add      esp, 4
0x0056E1A6: jmp      eax
0x0056E1A8: fstp     st(0)
0x0056E1AA: pop      esi
0x0056E1AB: pop      ecx
0x0056E1AC: ret      
0x0056E1AD: int3     
0x0056E1AE: int3     
0x0056E1AF: int3     
0x0056E1B0: mov      eax, 0xb49d24
0x0056E1B5: ret      
0x0056E1B6: int3     
0x0056E1B7: int3     
0x0056E1B8: int3     
0x0056E1B9: int3     
0x0056E1BA: int3     
0x0056E1BB: int3     
0x0056E1BC: int3     
0x0056E1BD: int3     
0x0056E1BE: int3     
0x0056E1BF: int3     
0x0056E1C0: push     esi
0x0056E1C1: mov      esi, ecx
0x0056E1C3: mov      dword ptr [esi], 0x9923d4
0x0056E1C9: call     0x521ad0
0x0056E1CE: test     byte ptr [esp + 8], 1
0x0056E1D3: je       0x56e1de
0x0056E1D5: push     esi
0x0056E1D6: call     0x688fb0
0x0056E1DB: add      esp, 4
0x0056E1DE: mov      eax, esi
0x0056E1E0: pop      esi
0x0056E1E1: ret      4
0x0056E1E4: int3     
0x0056E1E5: int3     
0x0056E1E6: int3     
0x0056E1E7: int3     
0x0056E1E8: int3     
0x0056E1E9: int3     
0x0056E1EA: int3     
0x0056E1EB: int3     
0x0056E1EC: int3     
0x0056E1ED: int3     
0x0056E1EE: int3     
0x0056E1EF: int3     
0x0056E1F0: mov      eax, dword ptr [esp + 4]
0x0056E1F4: push     esi
0x0056E1F5: push     eax
0x0056E1F6: mov      esi, ecx
0x0056E1F8: call     0x521c60
0x0056E1FD: fldz     
0x0056E1FF: mov      eax, 1
0x0056E204: fstp     dword ptr [esi + 0xfc]
0x0056E20A: mov      dword ptr [esi + 0xec], eax
0x0056E210: mov      dword ptr [esi + 0xf0], eax
0x0056E216: mov      dword ptr [esi], 0x9923f8
0x0056E21C: mov      dword ptr [esi + 0xf8], 0
0x0056E226: mov      eax, esi
0x0056E228: pop      esi
0x0056E229: ret      4
0x0056E22C: int3     
0x0056E22D: int3     
0x0056E22E: int3     
0x0056E22F: int3     
0x0056E230: mov      dword ptr [ecx], 0x9923f8
0x0056E236: jmp      0x521ad0
0x0056E23B: int3     
0x0056E23C: int3     
0x0056E23D: int3     
0x0056E23E: int3     
0x0056E23F: int3     
0x0056E240: push     esi
0x0056E241: mov      esi, ecx
0x0056E243: call     0x521ae0
0x0056E248: mov      dword ptr [esi + 0xf8], 0
0x0056E252: pop      esi
0x0056E253: ret      
0x0056E254: int3     
0x0056E255: int3     
0x0056E256: int3     
0x0056E257: int3     
0x0056E258: int3     
0x0056E259: int3     
0x0056E25A: int3     
0x0056E25B: int3     
0x0056E25C: int3     
0x0056E25D: int3     
0x0056E25E: int3     
0x0056E25F: int3     
0x0056E260: push     esi
0x0056E261: mov      esi, ecx
0x0056E263: fld      dword ptr [esi + 0xfc]
0x0056E269: fcomp    qword ptr [0x98a508] ; [f64=0.8, u32=0xA0000000]
0x0056E26F: fnstsw   ax
0x0056E271: test     ah, 1
0x0056E274: jne      0x56e292
0x0056E276: cmp      dword ptr [esi + 0xf8], 0
0x0056E27D: je       0x56e292
0x0056E27F: mov      eax, dword ptr [esi]
0x0056E281: mov      edx, dword ptr [eax + 4]
0x0056E284: call     edx
0x0056E286: fld      dword ptr [0x992410] ; [f32=-99999, u32=0xC7C34F80]
0x0056E28C: fstp     dword ptr [esi + 0xfc]
0x0056E292: pop      esi
0x0056E293: ret      
0x0056E294: int3     
0x0056E295: int3     
0x0056E296: int3     
0x0056E297: int3     
0x0056E298: int3     
0x0056E299: int3     
0x0056E29A: int3     
0x0056E29B: int3     
0x0056E29C: int3     
0x0056E29D: int3     
0x0056E29E: int3     
0x0056E29F: int3     
0x0056E2A0: fld      dword ptr [edx]
0x0056E2A2: fsub     dword ptr [ecx]
0x0056E2A4: fstp     dword ptr [eax]
0x0056E2A6: fld      dword ptr [edx + 4]
0x0056E2A9: fsub     dword ptr [ecx + 4]
0x0056E2AC: fstp     dword ptr [eax + 4]
0x0056E2AF: fld      dword ptr [edx + 8]
0x0056E2B2: fsub     dword ptr [ecx + 8]
0x0056E2B5: fstp     dword ptr [eax + 8]
0x0056E2B8: fld      dword ptr [edx + 0xc]
0x0056E2BB: fsub     dword ptr [ecx + 0xc]
0x0056E2BE: fstp     dword ptr [eax + 0xc]
0x0056E2C1: ret      
0x0056E2C2: int3     
0x0056E2C3: int3     
0x0056E2C4: int3     
0x0056E2C5: int3     
0x0056E2C6: int3     
0x0056E2C7: int3     
0x0056E2C8: int3     
0x0056E2C9: int3     
0x0056E2CA: int3     
0x0056E2CB: int3     
0x0056E2CC: int3     
0x0056E2CD: int3     
0x0056E2CE: int3     
0x0056E2CF: int3     
0x0056E2D0: sub      esp, 0x48
0x0056E2D3: push     esi
0x0056E2D4: mov      esi, ecx
0x0056E2D6: mov      ecx, dword ptr [esi + 0xd4]
0x0056E2DC: mov      eax, dword ptr [ecx + 0x23c]
0x0056E2E2: test     eax, eax
0x0056E2E4: jne      0x56e2f9
0x0056E2E6: fldz     
0x0056E2E8: mov      dword ptr [esi + 0xf8], eax
0x0056E2EE: fstp     dword ptr [esi + 0xfc]
0x0056E2F4: pop      esi
0x0056E2F5: add      esp, 0x48
0x0056E2F8: ret      
0x0056E2F9: mov      edx, dword ptr [esi + 0xf8]
0x0056E2FF: test     edx, edx
0x0056E301: jne      0x56e323
0x0056E303: fldz     
0x0056E305: mov      byte ptr [esi + 0xe0], 1
0x0056E30C: mov      eax, dword ptr [ecx + 0x23c]
0x0056E312: fstp     dword ptr [esi + 0xfc]
0x0056E318: mov      dword ptr [esi + 0xf8], eax
0x0056E31E: pop      esi
0x0056E31F: add      esp, 0x48
0x0056E322: ret      
0x0056E323: cmp      eax, edx
0x0056E325: je       0x56e334
0x0056E327: mov      edx, dword ptr [esi]
0x0056E329: mov      eax, dword ptr [edx + 0x10]
0x0056E32C: mov      ecx, esi
0x0056E32E: pop      esi
0x0056E32F: add      esp, 0x48
0x0056E332: jmp      eax
0x0056E334: mov      eax, dword ptr [ecx + 8]
0x0056E337: movzx    edx, byte ptr [eax + 1]
0x0056E33B: mov      eax, dword ptr [eax + 4]
0x0056E33E: mov      eax, dword ptr [eax + 0x1c]
0x0056E341: mov      eax, dword ptr [eax + edx*4]
0x0056E344: add      eax, 0xc
0x0056E347: fld      dword ptr [eax]
0x0056E349: fstp     dword ptr [esp + 0xc]
0x0056E34D: fld      dword ptr [eax + 4]
0x0056E350: fstp     dword ptr [esp + 0x10]
0x0056E354: fld      dword ptr [eax + 0xc]
0x0056E357: mov      eax, dword ptr [ecx + 0x23c]
0x0056E35D: movzx    edx, byte ptr [eax + 1]
0x0056E361: fstp     dword ptr [esp + 0x18]
0x0056E365: mov      eax, dword ptr [eax + 4]
0x0056E368: mov      eax, dword ptr [eax + 0x1c]
0x0056E36B: mov      eax, dword ptr [eax + edx*4]
0x0056E36E: add      eax, 0xc
0x0056E371: lea      edx, [esp + 0x3c]
0x0056E375: push     edx
0x0056E376: fld      dword ptr [eax]
0x0056E378: fstp     dword ptr [esp + 0x20]
0x0056E37C: fld      dword ptr [eax + 4]
0x0056E37F: fstp     dword ptr [esp + 0x24]
0x0056E383: fld      dword ptr [eax + 0xc]
0x0056E386: fstp     dword ptr [esp + 0x2c]
0x0056E38A: fld      dword ptr [esp + 0x20]
0x0056E38E: fsub     dword ptr [esp + 0x10]
0x0056E392: fstp     dword ptr [esp + 0x30]
0x0056E396: fld      dword ptr [esp + 0x24]
0x0056E39A: fsub     dword ptr [esp + 0x14]
0x0056E39E: fstp     dword ptr [esp + 0x34]
0x0056E3A2: fld      dword ptr [esp + 0x2c]
0x0056E3A6: fsub     dword ptr [esp + 0x1c]
0x0056E3AA: fstp     dword ptr [esp + 0x3c]
0x0056E3AE: fldz     
0x0056E3B0: fstp     dword ptr [esp + 0x38]
0x0056E3B4: call     0x540780
0x0056E3B9: fldz     
0x0056E3BB: fst      dword ptr [esp + 0x1c]
0x0056E3BF: lea      eax, [esp + 0x3c]
0x0056E3C3: fst      dword ptr [esp + 0x20]
0x0056E3C7: push     eax
0x0056E3C8: fstp     dword ptr [esp + 0x28]
0x0056E3CC: lea      ecx, [esp + 0x20]
0x0056E3D0: fld1     
0x0056E3D2: push     ecx
0x0056E3D3: fstp     dword ptr [esp + 0x30]
0x0056E3D7: call     0x6b2160
0x0056E3DC: fstp     st(0)
0x0056E3DE: fldz     
0x0056E3E0: lea      edx, [esp + 0x34]
0x0056E3E4: fst      dword ptr [esp + 0x14]
0x0056E3E8: push     edx
0x0056E3E9: fst      dword ptr [esp + 0x1c]
0x0056E3ED: lea      eax, [esp + 0x18]
0x0056E3F1: fstp     dword ptr [esp + 0x20]
0x0056E3F5: push     eax
0x0056E3F6: fld1     
0x0056E3F8: fstp     dword ptr [esp + 0x28]
0x0056E3FC: call     0x6b2160
0x0056E401: fstp     st(0)
0x0056E403: fld      dword ptr [esp + 0x20]
0x0056E407: add      esp, 0x10
0x0056E40A: fmul     dword ptr [esp + 0x20]
0x0056E40E: fld      dword ptr [esp + 0xc]
0x0056E412: fmul     dword ptr [esp + 0x1c]
0x0056E416: faddp    st(1)
0x0056E418: fld      dword ptr [esp + 0x14]
0x0056E41C: fmul     dword ptr [esp + 0x24]
0x0056E420: faddp    st(1)
0x0056E422: fstp     dword ptr [esp + 4]
0x0056E426: fld      dword ptr [esp + 4]
0x0056E42A: fstp     dword ptr [esp + 8]
0x0056E42E: fld      qword ptr [0x992418] ; [f64=0.392699, u32=0x60000000]
0x0056E434: call     0x8ebeb0
0x0056E439: fstp     dword ptr [esp + 4]
0x0056E43D: fld      dword ptr [esp + 4]
0x0056E441: fld      dword ptr [esp + 8]
0x0056E445: fcompp   
0x0056E447: fnstsw   ax
0x0056E449: mov      edx, dword ptr [esi]
0x0056E44B: mov      ecx, esi
0x0056E44D: test     ah, 1
0x0056E450: jne      0x56e46e
0x0056E452: fld      dword ptr [esi + 0xfc]
0x0056E458: mov      eax, dword ptr [edx + 0x14]
0x0056E45B: fadd     dword ptr [0xb76120]
0x0056E461: fstp     dword ptr [esi + 0xfc]
0x0056E467: call     eax
0x0056E469: pop      esi
0x0056E46A: add      esp, 0x48
0x0056E46D: ret      
0x0056E46E: mov      eax, dword ptr [edx + 0x10]
0x0056E471: call     eax
0x0056E473: pop      esi
0x0056E474: add      esp, 0x48
0x0056E477: ret      
0x0056E478: int3     
0x0056E479: int3     
0x0056E47A: int3     
0x0056E47B: int3     
0x0056E47C: int3     
0x0056E47D: int3     
0x0056E47E: int3     
0x0056E47F: int3     
0x0056E480: mov      eax, 0xb49d40
0x0056E485: ret      
0x0056E486: int3     
0x0056E487: int3     
0x0056E488: int3     
0x0056E489: int3     
0x0056E48A: int3     
0x0056E48B: int3     
0x0056E48C: int3     
0x0056E48D: int3     
0x0056E48E: int3     
0x0056E48F: int3     
0x0056E490: push     esi
0x0056E491: mov      esi, ecx
0x0056E493: mov      dword ptr [esi], 0x9923f8
0x0056E499: call     0x521ad0
0x0056E49E: test     byte ptr [esp + 8], 1
0x0056E4A3: je       0x56e4ae
0x0056E4A5: push     esi
0x0056E4A6: call     0x688fb0
0x0056E4AB: add      esp, 4
0x0056E4AE: mov      eax, esi
0x0056E4B0: pop      esi
0x0056E4B1: ret      4
0x0056E4B4: int3     
0x0056E4B5: int3     
0x0056E4B6: int3     
0x0056E4B7: int3     
0x0056E4B8: int3     
0x0056E4B9: int3     
0x0056E4BA: int3     
0x0056E4BB: int3     
0x0056E4BC: int3     
0x0056E4BD: int3     
0x0056E4BE: int3     
0x0056E4BF: int3     
0x0056E4C0: push     -1
0x0056E4C2: push     0x948134
0x0056E4C7: mov      eax, dword ptr fs:[0]
0x0056E4CD: push     eax
0x0056E4CE: push     ecx
0x0056E4CF: push     ebx
0x0056E4D0: push     esi
0x0056E4D1: mov      eax, dword ptr [0xb089c8]
0x0056E4D6: xor      eax, esp
0x0056E4D8: push     eax
0x0056E4D9: lea      eax, [esp + 0x10]
0x0056E4DD: mov      dword ptr fs:[0], eax
0x0056E4E3: mov      esi, ecx
0x0056E4E5: mov      dword ptr [esp + 0xc], esi
0x0056E4E9: mov      dword ptr [esi], 0x99242c
0x0056E4EF: mov      eax, dword ptr [esi + 0x114]
0x0056E4F5: push     eax
0x0056E4F6: mov      dword ptr [esp + 0x1c], 2
0x0056E4FE: call     0x52d1b0
0x0056E503: xor      ebx, ebx
0x0056E505: mov      dword ptr [esi + 0x114], ebx
0x0056E50B: mov      ecx, dword ptr [esi + 0x110]
0x0056E511: push     ecx
0x0056E512: mov      byte ptr [esp + 0x20], 1
0x0056E517: call     0x52d1b0
0x0056E51C: mov      dword ptr [esi + 0x110], ebx
0x0056E522: mov      edx, dword ptr [esi + 0x10c]
0x0056E528: push     edx
0x0056E529: mov      byte ptr [esp + 0x24], bl
0x0056E52D: call     0x52d1b0
0x0056E532: add      esp, 0xc
0x0056E535: mov      ecx, esi
0x0056E537: mov      dword ptr [esi + 0x10c], ebx
0x0056E53D: mov      dword ptr [esp + 0x18], 0xffffffff
0x0056E545: call     0x521ad0
0x0056E54A: mov      ecx, dword ptr [esp + 0x10]
0x0056E54E: mov      dword ptr fs:[0], ecx
0x0056E555: pop      ecx
0x0056E556: pop      esi
0x0056E557: pop      ebx
0x0056E558: add      esp, 0x10
0x0056E55B: ret      
0x0056E55C: int3     
0x0056E55D: int3     
0x0056E55E: int3     
0x0056E55F: int3     
0x0056E560: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0056E566: push     esi
0x0056E567: mov      esi, ecx
0x0056E569: fcomp    dword ptr [esi + 0x108]
0x0056E56F: fnstsw   ax
0x0056E571: test     ah, 0x44
0x0056E574: jnp      0x56e588
0x0056E576: fld      dword ptr [0xb76120]
0x0056E57C: fadd     dword ptr [esi + 0x108]
0x0056E582: fstp     dword ptr [esi + 0x108]
0x0056E588: fld1     
0x0056E58A: fcomp    dword ptr [esi + 0x108]
0x0056E590: fnstsw   ax
0x0056E592: test     ah, 5
0x0056E595: jp       0x56e59e
0x0056E597: mov      eax, dword ptr [esi]
0x0056E599: mov      edx, dword ptr [eax + 0x10]
0x0056E59C: call     edx
0x0056E59E: cmp      dword ptr [esi + 0x104], 0
0x0056E5A5: je       0x56e5ba
0x0056E5A7: mov      eax, dword ptr [esi]
0x0056E5A9: mov      edx, dword ptr [eax + 0x14]
0x0056E5AC: mov      ecx, esi
0x0056E5AE: call     edx
0x0056E5B0: mov      dword ptr [esi + 0x104], 0
0x0056E5BA: pop      esi
0x0056E5BB: ret      
0x0056E5BC: int3     
0x0056E5BD: int3     
0x0056E5BE: int3     
0x0056E5BF: int3     
0x0056E5C0: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0056E5C6: xor      eax, eax
0x0056E5C8: fstp     dword ptr [ecx + 0x108]
0x0056E5CE: mov      dword ptr [ecx + 0x104], eax
0x0056E5D4: mov      dword ptr [ecx + 0xfc], eax
0x0056E5DA: mov      dword ptr [ecx + 0x100], eax
0x0056E5E0: ret      
0x0056E5E1: int3     
0x0056E5E2: int3     
0x0056E5E3: int3     
0x0056E5E4: int3     
0x0056E5E5: int3     
0x0056E5E6: int3     
0x0056E5E7: int3     
0x0056E5E8: int3     
0x0056E5E9: int3     
0x0056E5EA: int3     
0x0056E5EB: int3     
0x0056E5EC: int3     
0x0056E5ED: int3     
0x0056E5EE: int3     
0x0056E5EF: int3     
0x0056E5F0: mov      eax, dword ptr [ecx]
0x0056E5F2: mov      edx, dword ptr [eax + 4]
0x0056E5F5: jmp      edx
0x0056E5F7: int3     
0x0056E5F8: int3     
0x0056E5F9: int3     
0x0056E5FA: int3     
0x0056E5FB: int3     
0x0056E5FC: int3     
0x0056E5FD: int3     
0x0056E5FE: int3     
0x0056E5FF: int3     
0x0056E600: mov      edx, dword ptr [esp + 4]
0x0056E604: mov      eax, dword ptr [ecx + 0xd4]
0x0056E60A: mov      edx, dword ptr [edx]
0x0056E60C: cmp      edx, dword ptr [eax + 8]
0x0056E60F: jne      0x56e618
0x0056E611: mov      eax, dword ptr [ecx]
0x0056E613: mov      edx, dword ptr [eax + 0x10]
0x0056E616: call     edx
0x0056E618: ret      4
0x0056E61B: int3     
0x0056E61C: int3     
0x0056E61D: int3     
0x0056E61E: int3     
0x0056E61F: int3     
0x0056E620: mov      edx, dword ptr [esp + 4]
0x0056E624: mov      eax, dword ptr [ecx + 0xd4]
0x0056E62A: mov      edx, dword ptr [edx]
0x0056E62C: cmp      edx, dword ptr [eax + 8]
0x0056E62F: jne      0x56e638
0x0056E631: mov      eax, dword ptr [ecx]
0x0056E633: mov      edx, dword ptr [eax + 0x10]
0x0056E636: call     edx
0x0056E638: ret      4
0x0056E63B: int3     
0x0056E63C: int3     
0x0056E63D: int3     
0x0056E63E: int3     
0x0056E63F: int3     
0x0056E640: push     ebx
0x0056E641: mov      ebx, dword ptr [esp + 8]
0x0056E645: mov      eax, dword ptr [ebx + 8]
0x0056E648: cmp      byte ptr [eax + 0x46], 0
0x0056E64C: push     edi
0x0056E64D: mov      edi, ecx
0x0056E64F: je       0x56e74b
0x0056E655: mov      eax, dword ptr [edi + 0xd4]
0x0056E65B: mov      ecx, dword ptr [ebx]
0x0056E65D: cmp      ecx, dword ptr [eax + 8]
0x0056E660: jne      0x56e74b
0x0056E666: cmp      dword ptr [eax + 0x23c], 0
0x0056E66D: jne      0x56e74b
0x0056E673: push     esi
0x0056E674: mov      esi, dword ptr [ebx + 4]
0x0056E677: push     esi
0x0056E678: call     0x56e8a0
0x0056E67D: add      esp, 4
0x0056E680: test     eax, eax
0x0056E682: je       0x56e74a
0x0056E688: push     esi
0x0056E689: call     0x516190
0x0056E68E: add      esp, 4
0x0056E691: test     eax, eax
0x0056E693: je       0x56e70b
0x0056E695: movzx    eax, byte ptr [esi + 1]
0x0056E699: mov      esi, dword ptr [esi + 4]
0x0056E69C: mov      edx, dword ptr [esi + 8]
0x0056E69F: test     dword ptr [edx + eax*4], 0x40000
0x0056E6A6: je       0x56e6ee
0x0056E6A8: mov      ecx, dword ptr [esi + 0x14]
0x0056E6AB: lea      eax, [eax + eax*8]
0x0056E6AE: lea      eax, [ecx + eax*4]
0x0056E6B1: mov      ecx, 0x1c
0x0056E6B6: cmp      byte ptr [eax + 0x14], cl
0x0056E6B9: jne      0x56e6c0
0x0056E6BB: mov      eax, dword ptr [eax + 4]
0x0056E6BE: jmp      0x56e6f0
0x0056E6C0: cmp      byte ptr [eax + 0x15], cl
0x0056E6C3: jne      0x56e6ca
0x0056E6C5: mov      eax, dword ptr [eax + 8]
0x0056E6C8: jmp      0x56e6f0
0x0056E6CA: cmp      byte ptr [eax + 0x16], cl
0x0056E6CD: jne      0x56e6d4
0x0056E6CF: mov      eax, dword ptr [eax + 0xc]
0x0056E6D2: jmp      0x56e6f0
0x0056E6D4: cmp      byte ptr [eax + 0x17], cl
0x0056E6D7: jne      0x56e6de
0x0056E6D9: mov      eax, dword ptr [eax + 0x10]
0x0056E6DC: jmp      0x56e6f0
0x0056E6DE: mov      eax, dword ptr [eax]
0x0056E6E0: test     eax, eax
0x0056E6E2: je       0x56e6ee
0x0056E6E4: push     ecx
0x0056E6E5: mov      ecx, eax
0x0056E6E7: call     0x461400
0x0056E6EC: jmp      0x56e6f0
0x0056E6EE: xor      eax, eax
0x0056E6F0: mov      ecx, eax
0x0056E6F2: call     0x507d40
0x0056E6F7: cmp      byte ptr [eax], 0
0x0056E6FA: je       0x56e70b
0x0056E6FC: mov      edx, dword ptr [edi]
0x0056E6FE: mov      eax, dword ptr [edx + 0x10]
0x0056E701: mov      ecx, edi
0x0056E703: call     eax
0x0056E705: pop      esi
0x0056E706: pop      edi
0x0056E707: pop      ebx
0x0056E708: ret      4
0x0056E70B: mov      ecx, dword ptr [edi + 0x100]
0x0056E711: cmp      ecx, dword ptr [ebx + 4]
0x0056E714: je       0x56e741
0x0056E716: mov      ecx, 1
0x0056E71B: add      dword ptr [edi + 0xfc], ecx
0x0056E721: mov      eax, dword ptr [edi + 0xfc]
0x0056E727: cmp      eax, ecx
0x0056E729: jne      0x56e733
0x0056E72B: fldz     
0x0056E72D: fstp     dword ptr [edi + 0x108]
0x0056E733: cmp      eax, dword ptr [edi + 0xf8]
0x0056E739: jl       0x56e741
0x0056E73B: mov      dword ptr [edi + 0x104], ecx
0x0056E741: mov      edx, dword ptr [ebx + 4]
0x0056E744: mov      dword ptr [edi + 0x100], edx
0x0056E74A: pop      esi
0x0056E74B: pop      edi
0x0056E74C: pop      ebx
0x0056E74D: ret      4
0x0056E750: mov      ecx, dword ptr [esp + 0x10]
0x0056E754: mov      edx, dword ptr [esp + 0xc]
0x0056E758: mov      eax, dword ptr [ecx + 0xd4]
0x0056E75E: mov      edx, dword ptr [edx]
0x0056E760: cmp      edx, dword ptr [eax + 8]
0x0056E763: jne      0x56e76c
0x0056E765: mov      eax, dword ptr [ecx]
0x0056E767: mov      edx, dword ptr [eax + 0x10]
0x0056E76A: jmp      edx
0x0056E76C: ret      
0x0056E76D: int3     
0x0056E76E: int3     
0x0056E76F: int3     
0x0056E770: mov      eax, dword ptr [esp + 0xc]
0x0056E774: mov      ecx, dword ptr [esp + 0x10]
0x0056E778: push     eax
0x0056E779: call     0x56e640
0x0056E77E: ret      
0x0056E77F: int3     
0x0056E780: mov      ecx, dword ptr [esp + 0x10]
0x0056E784: mov      edx, dword ptr [esp + 0xc]
0x0056E788: mov      eax, dword ptr [ecx + 0xd4]
0x0056E78E: mov      edx, dword ptr [edx]
0x0056E790: cmp      edx, dword ptr [eax + 8]
0x0056E793: jne      0x56e79c
0x0056E795: mov      eax, dword ptr [ecx]
0x0056E797: mov      edx, dword ptr [eax + 0x10]
0x0056E79A: jmp      edx
0x0056E79C: ret      
0x0056E79D: int3     
0x0056E79E: int3     
0x0056E79F: int3     
0x0056E7A0: push     -1
0x0056E7A2: push     0x948181
0x0056E7A7: mov      eax, dword ptr fs:[0]
0x0056E7AD: push     eax
0x0056E7AE: push     ecx
0x0056E7AF: push     ebx
0x0056E7B0: push     ebp
0x0056E7B1: push     esi
0x0056E7B2: push     edi
0x0056E7B3: mov      eax, dword ptr [0xb089c8]
0x0056E7B8: xor      eax, esp
0x0056E7BA: push     eax
0x0056E7BB: lea      eax, [esp + 0x18]
0x0056E7BF: mov      dword ptr fs:[0], eax
0x0056E7C5: mov      esi, ecx
0x0056E7C7: mov      dword ptr [esp + 0x14], esi
0x0056E7CB: mov      eax, dword ptr [esp + 0x28]
0x0056E7CF: push     eax
0x0056E7D0: call     0x521c60
0x0056E7D5: xor      ebp, ebp
0x0056E7D7: lea      eax, [esi + 0x10c]
0x0056E7DD: mov      dword ptr [esi], 0x99242c
0x0056E7E3: mov      dword ptr [esp + 0x20], ebp
0x0056E7E7: mov      dword ptr [eax], ebp
0x0056E7E9: lea      edi, [esi + 0x110]
0x0056E7EF: mov      dword ptr [edi], ebp
0x0056E7F1: lea      ebx, [esi + 0x114]
0x0056E7F7: mov      dword ptr [ebx], ebp
0x0056E7F9: push     esi
0x0056E7FA: push     0x56e750
0x0056E7FF: mov      dword ptr [esi + 0x104], ebp
0x0056E805: mov      dword ptr [esi + 0xf8], 2
0x0056E80F: mov      ecx, dword ptr [0xb1babc]
0x0056E815: push     eax
0x0056E816: push     ecx
0x0056E817: mov      byte ptr [esp + 0x30], 3
0x0056E81C: call     0x52d1d0
0x0056E821: mov      edx, dword ptr [0xb1bac0]
0x0056E827: push     esi
0x0056E828: push     0x56e770
0x0056E82D: push     edi
0x0056E82E: push     edx
0x0056E82F: call     0x52d1d0
0x0056E834: mov      eax, dword ptr [0xb1bac4]
0x0056E839: push     esi
0x0056E83A: push     0x56e780
0x0056E83F: push     ebx
0x0056E840: push     eax
0x0056E841: call     0x52d1d0
0x0056E846: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0056E84C: fstp     dword ptr [esi + 0x108]
0x0056E852: add      esp, 0x30
0x0056E855: mov      dword ptr [esi + 0x104], ebp
0x0056E85B: mov      dword ptr [esi + 0xfc], ebp
0x0056E861: mov      dword ptr [esi + 0x100], ebp
0x0056E867: mov      dword ptr [esi + 0xec], 1
0x0056E871: mov      eax, esi
0x0056E873: mov      ecx, dword ptr [esp + 0x18]
0x0056E877: mov      dword ptr fs:[0], ecx
0x0056E87E: pop      ecx
0x0056E87F: pop      edi
0x0056E880: pop      esi
0x0056E881: pop      ebp
0x0056E882: pop      ebx
0x0056E883: add      esp, 0x10
0x0056E886: ret      4
0x0056E889: int3     
0x0056E88A: int3     
0x0056E88B: int3     
0x0056E88C: int3     
0x0056E88D: int3     
0x0056E88E: int3     
0x0056E88F: int3     
0x0056E890: mov      eax, 0xb49d5c
0x0056E895: ret      
0x0056E896: int3     
0x0056E897: int3     
0x0056E898: int3     
0x0056E899: int3     
0x0056E89A: int3     
0x0056E89B: int3     
0x0056E89C: int3     
0x0056E89D: int3     
0x0056E89E: int3     
0x0056E89F: int3     
0x0056E8A0: mov      eax, dword ptr [esp + 4]
0x0056E8A4: test     eax, eax
0x0056E8A6: je       0x56e8d0
0x0056E8A8: movzx    ecx, byte ptr [eax + 1]
0x0056E8AC: mov      edx, dword ptr [eax + 4]
0x0056E8AF: mov      eax, dword ptr [edx + 0x38]
0x0056E8B2: mov      ecx, dword ptr [eax + ecx*4]
0x0056E8B5: mov      eax, dword ptr [ecx + 0x28]
0x0056E8B8: cmp      eax, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x0056E8BE: je       0x56e8d3
0x0056E8C0: cmp      eax, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x0056E8C6: je       0x56e8d3
0x0056E8C8: cmp      eax, dword ptr [0x95ecf8] ; [u32=0x956151A9]
0x0056E8CE: je       0x56e8d3
0x0056E8D0: xor      eax, eax
0x0056E8D2: ret      
0x0056E8D3: mov      eax, 1
0x0056E8D8: ret      
0x0056E8D9: int3     
0x0056E8DA: int3     
0x0056E8DB: int3     
0x0056E8DC: int3     
0x0056E8DD: int3     
0x0056E8DE: int3     
0x0056E8DF: int3     
0x0056E8E0: push     esi
0x0056E8E1: mov      esi, ecx
0x0056E8E3: call     0x56e4c0
0x0056E8E8: test     byte ptr [esp + 8], 1
0x0056E8ED: je       0x56e8f8
0x0056E8EF: push     esi
0x0056E8F0: call     0x688fb0
0x0056E8F5: add      esp, 4
0x0056E8F8: mov      eax, esi
0x0056E8FA: pop      esi
0x0056E8FB: ret      4
0x0056E8FE: int3     
0x0056E8FF: int3     
0x0056E900: mov      eax, dword ptr [esp + 4]
0x0056E904: push     esi
0x0056E905: push     eax
0x0056E906: mov      esi, ecx
0x0056E908: call     0x521c60
0x0056E90D: xor      eax, eax
0x0056E90F: mov      dword ptr [esi], 0x992450
0x0056E915: mov      dword ptr [esi + 0xfc], eax
0x0056E91B: mov      dword ptr [esi + 0x114], eax
0x0056E921: mov      dword ptr [esi + 0x100], eax
0x0056E927: mov      dword ptr [esi + 0x118], eax
0x0056E92D: mov      dword ptr [esi + 0x104], eax
0x0056E933: mov      dword ptr [esi + 0x11c], eax
0x0056E939: mov      dword ptr [esi + 0x108], eax
0x0056E93F: mov      dword ptr [esi + 0x120], eax
0x0056E945: mov      dword ptr [esi + 0x10c], eax
0x0056E94B: mov      dword ptr [esi + 0x124], eax
0x0056E951: mov      dword ptr [esi + 0x110], 0xffffffff
0x0056E95B: mov      dword ptr [esi + 0xf8], 2
0x0056E965: mov      eax, esi
0x0056E967: pop      esi
0x0056E968: ret      4
0x0056E96B: int3     
0x0056E96C: int3     
0x0056E96D: int3     
0x0056E96E: int3     
0x0056E96F: int3     
0x0056E970: mov      dword ptr [ecx], 0x992450
0x0056E976: jmp      0x521ad0
0x0056E97B: int3     
0x0056E97C: int3     
0x0056E97D: int3     
0x0056E97E: int3     
0x0056E97F: int3     
0x0056E980: push     esi
0x0056E981: mov      esi, ecx
0x0056E983: call     0x521ae0
0x0056E988: xor      eax, eax
0x0056E98A: mov      dword ptr [esi + 0xfc], eax
0x0056E990: mov      dword ptr [esi + 0x114], eax
0x0056E996: mov      dword ptr [esi + 0x100], eax
0x0056E99C: mov      dword ptr [esi + 0x118], eax
0x0056E9A2: mov      dword ptr [esi + 0x104], eax
0x0056E9A8: mov      dword ptr [esi + 0x11c], eax
0x0056E9AE: mov      dword ptr [esi + 0x108], eax
0x0056E9B4: mov      dword ptr [esi + 0x120], eax
0x0056E9BA: mov      dword ptr [esi + 0x10c], eax
0x0056E9C0: mov      dword ptr [esi + 0x124], eax
0x0056E9C6: mov      dword ptr [esi + 0x110], 0xffffffff
0x0056E9D0: pop      esi
0x0056E9D1: ret      
0x0056E9D2: int3     
0x0056E9D3: int3     
0x0056E9D4: int3     
0x0056E9D5: int3     
0x0056E9D6: int3     
0x0056E9D7: int3     
0x0056E9D8: int3     
0x0056E9D9: int3     
0x0056E9DA: int3     
0x0056E9DB: int3     
0x0056E9DC: int3     
0x0056E9DD: int3     
0x0056E9DE: int3     
0x0056E9DF: int3     
0x0056E9E0: lea      eax, [ecx + 0xcc]
0x0056E9E6: cmp      dword ptr [eax], eax
0x0056E9E8: sbb      eax, eax
0x0056E9EA: neg      eax
0x0056E9EC: ret      
0x0056E9ED: int3     
0x0056E9EE: int3     
0x0056E9EF: int3     
0x0056E9F0: push     esi
0x0056E9F1: push     edi
0x0056E9F2: mov      edi, ecx
0x0056E9F4: mov      edx, dword ptr [edi + 0xd4]
0x0056E9FA: mov      ecx, dword ptr [edx + 0xc1c]
0x0056EA00: mov      eax, dword ptr [edi + 0x114]
0x0056EA06: sub      ecx, edx
0x0056EA08: sub      ecx, 0x2bc
0x0056EA0E: sar      ecx, 2
0x0056EA11: dec      ecx
0x0056EA12: cmp      eax, ecx
0x0056EA14: jle      0x56ea3d
0x0056EA16: cmp      eax, 0x258
0x0056EA1B: jge      0x56ea39
0x0056EA1D: lea      edx, [edi + 0xcc]
0x0056EA23: mov      esi, dword ptr [edx]
0x0056EA25: cmp      esi, edx
0x0056EA27: jae      0x56ea39
0x0056EA29: mov      word ptr [esi], ax
0x0056EA2C: add      dword ptr [edx], 2
0x0056EA2F: add      eax, 2
0x0056EA32: cmp      eax, 0x258
0x0056EA37: jl       0x56ea23
0x0056EA39: xor      eax, eax
0x0056EA3B: cmp      eax, ecx
0x0056EA3D: jge      0x56ea58
0x0056EA3F: lea      edx, [edi + 0xcc]
0x0056EA45: mov      esi, dword ptr [edx]
0x0056EA47: cmp      esi, edx
0x0056EA49: jae      0x56ea58
0x0056EA4B: mov      word ptr [esi], ax
0x0056EA4E: add      dword ptr [edx], 2
0x0056EA51: add      eax, 2
0x0056EA54: cmp      eax, ecx
0x0056EA56: jl       0x56ea45
0x0056EA58: mov      ecx, dword ptr [edi + 0xcc]
0x0056EA5E: lea      eax, [edi + 0xcc]
0x0056EA64: cmp      ecx, eax
0x0056EA66: jae      0x56ea75
0x0056EA68: mov      dx, word ptr [edi + 0x114]
0x0056EA6F: mov      word ptr [ecx], dx
0x0056EA72: add      dword ptr [eax], 2
0x0056EA75: mov      eax, dword ptr [edi]
0x0056EA77: mov      edx, dword ptr [eax + 4]
0x0056EA7A: mov      ecx, edi
0x0056EA7C: call     edx
0x0056EA7E: mov      eax, dword ptr [edi]
0x0056EA80: mov      edx, dword ptr [eax + 0x10]
0x0056EA83: mov      ecx, edi
0x0056EA85: pop      edi
0x0056EA86: pop      esi
0x0056EA87: jmp      edx
0x0056EA89: int3     
0x0056EA8A: int3     
0x0056EA8B: int3     
0x0056EA8C: int3     
0x0056EA8D: int3     
0x0056EA8E: int3     
0x0056EA8F: int3     
0x0056EA90: fld      dword ptr [edx]
0x0056EA92: fsub     dword ptr [ecx]
0x0056EA94: fstp     dword ptr [eax]
0x0056EA96: fld      dword ptr [edx + 4]
0x0056EA99: fsub     dword ptr [ecx + 4]
0x0056EA9C: fstp     dword ptr [eax + 4]
0x0056EA9F: fld      dword ptr [edx + 8]
0x0056EAA2: fsub     dword ptr [ecx + 8]
0x0056EAA5: fstp     dword ptr [eax + 8]
0x0056EAA8: fld      dword ptr [edx + 0xc]
0x0056EAAB: fsub     dword ptr [ecx + 0xc]
0x0056EAAE: fstp     dword ptr [eax + 0xc]
0x0056EAB1: ret      
0x0056EAB2: int3     
0x0056EAB3: int3     
0x0056EAB4: int3     
0x0056EAB5: int3     
0x0056EAB6: int3     
0x0056EAB7: int3     
0x0056EAB8: int3     
0x0056EAB9: int3     
0x0056EABA: int3     
0x0056EABB: int3     
0x0056EABC: int3     
0x0056EABD: int3     
0x0056EABE: int3     
0x0056EABF: int3     
0x0056EAC0: sub      esp, 0x54
0x0056EAC3: push     ebx
0x0056EAC4: push     ebp
0x0056EAC5: push     esi
0x0056EAC6: mov      esi, ecx
0x0056EAC8: mov      eax, dword ptr [esi + 0xd4]
0x0056EACE: mov      ebp, dword ptr [eax + 0x23c]
0x0056EAD4: mov      eax, dword ptr [eax + 0x240]
0x0056EADA: push     edi
0x0056EADB: mov      dword ptr [esp + 0x14], ebp
0x0056EADF: mov      dword ptr [esp + 0x18], eax
0x0056EAE3: test     ebp, ebp
0x0056EAE5: je       0x56eb78
0x0056EAEB: test     eax, eax
0x0056EAED: jne      0x56eb78
0x0056EAF3: mov      eax, dword ptr [esi + 0x110]
0x0056EAF9: cmp      eax, dword ptr [esi + 0xf8]
0x0056EAFF: jl       0x56eb08
0x0056EB01: mov      edx, dword ptr [esi]
0x0056EB03: mov      eax, dword ptr [edx + 0x10]
0x0056EB06: call     eax
0x0056EB08: inc      dword ptr [esi + 0x110]
0x0056EB0E: mov      eax, dword ptr [esi + 0x110]
0x0056EB14: mov      dword ptr [esi + eax*4 + 0xfc], ebp
0x0056EB1B: mov      eax, dword ptr [esi + 0xd4]
0x0056EB21: mov      ecx, dword ptr [eax + 0xc1c]
0x0056EB27: mov      edx, dword ptr [esi + 0x110]
0x0056EB2D: sub      ecx, eax
0x0056EB2F: sub      ecx, 0x2bc
0x0056EB35: sar      ecx, 2
0x0056EB38: dec      ecx
0x0056EB39: mov      dword ptr [esi + edx*4 + 0x114], ecx
0x0056EB40: mov      eax, dword ptr [esi + 0x110]
0x0056EB46: cmp      dword ptr [esi + eax*4 + 0x114], 0
0x0056EB4E: jge      0x56eb78
0x0056EB50: mov      ecx, dword ptr [esi + 0x110]
0x0056EB56: add      dword ptr [esi + ecx*4 + 0x114], 0x258
0x0056EB61: mov      edx, dword ptr [esi + 0x110]
0x0056EB67: cmp      dword ptr [esi + edx*4 + 0x114], 0
0x0056EB6F: lea      eax, [esi + ecx*4 + 0x114]
0x0056EB76: jl       0x56eb50
0x0056EB78: cmp      dword ptr [esi + 0x110], 0
0x0056EB7F: jle      0x56ec1a
0x0056EB85: xor      eax, eax
0x0056EB87: cmp      dword ptr [esi + 0xf8], eax
0x0056EB8D: jle      0x56ebf4
0x0056EB8F: lea      ecx, [esi + 0xfc]
0x0056EB95: mov      dword ptr [esp + 0x10], ecx
0x0056EB99: lea      esp, [esp]
0x0056EBA0: cmp      eax, dword ptr [esi + 0x110]
0x0056EBA6: jge      0x56ebf4
0x0056EBA8: lea      ebp, [eax + 1]
0x0056EBAB: cmp      ebp, dword ptr [esi + 0xf8]
0x0056EBB1: mov      edi, ebp
0x0056EBB3: jge      0x56ebdf
0x0056EBB5: lea      ebx, [ecx + 4]
0x0056EBB8: cmp      edi, dword ptr [esi + 0x110]
0x0056EBBE: jg       0x56ebdf
0x0056EBC0: mov      eax, dword ptr [ecx]
0x0056EBC2: cmp      eax, dword ptr [ebx]
0x0056EBC4: jne      0x56ebd3
0x0056EBC6: mov      edx, dword ptr [esi]
0x0056EBC8: mov      eax, dword ptr [edx + 0x10]
0x0056EBCB: mov      ecx, esi
0x0056EBCD: call     eax
0x0056EBCF: mov      ecx, dword ptr [esp + 0x10]
0x0056EBD3: inc      edi
0x0056EBD4: add      ebx, 4
0x0056EBD7: cmp      edi, dword ptr [esi + 0xf8]
0x0056EBDD: jl       0x56ebb8
0x0056EBDF: mov      eax, ebp
0x0056EBE1: mov      ebp, dword ptr [esp + 0x14]
0x0056EBE5: add      ecx, 4
0x0056EBE8: cmp      eax, dword ptr [esi + 0xf8]
0x0056EBEE: mov      dword ptr [esp + 0x10], ecx
0x0056EBF2: jl       0x56eba0
0x0056EBF4: mov      eax, dword ptr [esi + 0x110]
0x0056EBFA: cmp      eax, dword ptr [esi + 0xf8]
0x0056EC00: jl       0x56ec1a
0x0056EC02: mov      ecx, dword ptr [esi + 0xfc]
0x0056EC08: cmp      ecx, dword ptr [esi + eax*4 + 0xfc]
0x0056EC0F: je       0x56ec1a
0x0056EC11: mov      edx, dword ptr [esi]
0x0056EC13: mov      eax, dword ptr [edx + 0x10]
0x0056EC16: mov      ecx, esi
0x0056EC18: call     eax
0x0056EC1A: test     ebp, ebp
0x0056EC1C: je       0x56ec9f
0x0056EC22: cmp      dword ptr [esi + 0x110], -1
0x0056EC29: jne      0x56ec98
0x0056EC2B: mov      dword ptr [esi + 0x110], 0
0x0056EC35: mov      dword ptr [esi + 0xfc], ebp
0x0056EC3B: mov      eax, dword ptr [esi + 0xd4]
0x0056EC41: mov      ecx, dword ptr [eax + 0xc1c]
0x0056EC47: mov      edx, dword ptr [esi + 0x110]
0x0056EC4D: sub      ecx, eax
0x0056EC4F: sub      ecx, 0x2bc
0x0056EC55: sar      ecx, 2
0x0056EC58: dec      ecx
0x0056EC59: mov      dword ptr [esi + edx*4 + 0x114], ecx
0x0056EC60: mov      eax, dword ptr [esi + 0x110]
0x0056EC66: cmp      dword ptr [esi + eax*4 + 0x114], 0
0x0056EC6E: jge      0x56ec98
0x0056EC70: mov      ecx, dword ptr [esi + 0x110]
0x0056EC76: add      dword ptr [esi + ecx*4 + 0x114], 0x258
0x0056EC81: mov      edx, dword ptr [esi + 0x110]
0x0056EC87: cmp      dword ptr [esi + edx*4 + 0x114], 0
0x0056EC8F: lea      eax, [esi + ecx*4 + 0x114]
0x0056EC96: jl       0x56ec70
0x0056EC98: cmp      dword ptr [esp + 0x18], 0
0x0056EC9D: je       0x56ecb2
0x0056EC9F: mov      eax, dword ptr [esi + 0xf8]
0x0056ECA5: dec      eax
0x0056ECA6: cmp      dword ptr [esi + 0x110], eax
0x0056ECAC: jl       0x56f164
0x0056ECB2: mov      ebx, dword ptr [esi + 0x110]
0x0056ECB8: mov      edi, dword ptr [esi + ebx*4 + 0x110]
0x0056ECBF: mov      edx, ebx
0x0056ECC1: mov      ecx, dword ptr [esi + edx*4 + 0x114]
0x0056ECC8: lea      eax, [ebx - 1]
0x0056ECCB: mov      dword ptr [esp + 0x10], edx
0x0056ECCF: test     ebp, ebp
0x0056ECD1: je       0x56ecda
0x0056ECD3: cmp      dword ptr [esp + 0x18], 0
0x0056ECD8: je       0x56ed0c
0x0056ECDA: mov      edx, dword ptr [esi + 0xd4]
0x0056ECE0: mov      ecx, dword ptr [edx + 0xc1c]
0x0056ECE6: mov      eax, dword ptr [esi + 0xf8]
0x0056ECEC: mov      edi, dword ptr [esi + 0x114]
0x0056ECF2: sub      ecx, edx
0x0056ECF4: sub      ecx, 0x2bc
0x0056ECFA: sar      ecx, 2
0x0056ECFD: mov      dword ptr [esp + 0x10], 0
0x0056ED05: mov      edx, dword ptr [esp + 0x10]
0x0056ED09: dec      eax
0x0056ED0A: dec      ecx
0x0056ED0B: dec      edi
0x0056ED0C: test     ebx, ebx
0x0056ED0E: jle      0x56f164
0x0056ED14: mov      ebx, dword ptr [esi + eax*4 + 0xfc]
0x0056ED1B: fldz     
0x0056ED1D: movzx    eax, byte ptr [ebx + 1]
0x0056ED21: fstp     dword ptr [esp + 0x18]
0x0056ED25: mov      ebp, dword ptr [ebx + 4]
0x0056ED28: mov      ebp, dword ptr [ebp + 0x1c]
0x0056ED2B: mov      eax, dword ptr [ebp + eax*4]
0x0056ED2F: add      eax, 0xc
0x0056ED32: fld      dword ptr [eax]
0x0056ED34: fstp     dword ptr [esp + 0x24]
0x0056ED38: fld      dword ptr [eax + 4]
0x0056ED3B: fstp     dword ptr [esp + 0x28]
0x0056ED3F: fld      dword ptr [eax + 8]
0x0056ED42: mov      eax, dword ptr [esi + edx*4 + 0xfc]
0x0056ED49: movzx    edx, byte ptr [eax + 1]
0x0056ED4D: fstp     dword ptr [esp + 0x2c]
0x0056ED51: mov      eax, dword ptr [eax + 4]
0x0056ED54: mov      eax, dword ptr [eax + 0x1c]
0x0056ED57: mov      eax, dword ptr [eax + edx*4]
0x0056ED5A: add      eax, 0xc
0x0056ED5D: fld      dword ptr [eax]
0x0056ED5F: fstp     dword ptr [esp + 0x34]
0x0056ED63: fld      dword ptr [eax + 4]
0x0056ED66: fstp     dword ptr [esp + 0x38]
0x0056ED6A: fld      dword ptr [eax + 8]
0x0056ED6D: fstp     dword ptr [esp + 0x3c]
0x0056ED71: fld      dword ptr [esp + 0x34]
0x0056ED75: fsub     dword ptr [esp + 0x24]
0x0056ED79: fstp     dword ptr [esp + 0x44]
0x0056ED7D: fld      dword ptr [esp + 0x38]
0x0056ED81: fsub     dword ptr [esp + 0x28]
0x0056ED85: fstp     dword ptr [esp + 0x48]
0x0056ED89: fld      dword ptr [esp + 0x3c]
0x0056ED8D: fsub     dword ptr [esp + 0x2c]
0x0056ED91: fstp     dword ptr [esp + 0x4c]
0x0056ED95: fld      dword ptr [esp + 0x44]
0x0056ED99: fld      st(0)
0x0056ED9B: fld      dword ptr [esp + 0x48]
0x0056ED9F: fld      st(0)
0x0056EDA1: fld      dword ptr [esp + 0x4c]
0x0056EDA5: fld      st(1)
0x0056EDA7: fmulp    st(2)
0x0056EDA9: fld      st(3)
0x0056EDAB: fmulp    st(4)
0x0056EDAD: fxch     st(1)
0x0056EDAF: faddp    st(3)
0x0056EDB1: fmul     st(0), st(0)
0x0056EDB3: faddp    st(2)
0x0056EDB5: fxch     st(1)
0x0056EDB7: fstp     dword ptr [esp + 0x20]
0x0056EDBB: test     edi, edi
0x0056EDBD: jge      0x56eddb
0x0056EDBF: or       edx, 0xffffffff
0x0056EDC2: sub      edx, edi
0x0056EDC4: mov      eax, 0x1b4e81b5
0x0056EDC9: mul      edx
0x0056EDCB: shr      edx, 6
0x0056EDCE: imul     edx, edx, 0x258
0x0056EDD4: lea      edi, [edi + edx + 0x258]
0x0056EDDB: test     ecx, ecx
0x0056EDDD: jge      0x56edfb
0x0056EDDF: or       edx, 0xffffffff
0x0056EDE2: sub      edx, ecx
0x0056EDE4: mov      eax, 0x1b4e81b5
0x0056EDE9: mul      edx
0x0056EDEB: shr      edx, 6
0x0056EDEE: imul     edx, edx, 0x258
0x0056EDF4: lea      ecx, [ecx + edx + 0x258]
0x0056EDFB: cmp      ecx, edi
0x0056EDFD: jge      0x56ee1b
0x0056EDFF: mov      edx, edi
0x0056EE01: sub      edx, ecx
0x0056EE03: dec      edx
0x0056EE04: mov      eax, 0x1b4e81b5
0x0056EE09: mul      edx
0x0056EE0B: shr      edx, 6
0x0056EE0E: imul     edx, edx, 0x258
0x0056EE14: lea      ecx, [ecx + edx + 0x258]
0x0056EE1B: movzx    eax, byte ptr [ebx + 1]
0x0056EE1F: mov      edx, dword ptr [ebx + 4]
0x0056EE22: mov      edx, dword ptr [edx + 0x1c]
0x0056EE25: mov      eax, dword ptr [edx + eax*4]
0x0056EE28: mov      ebp, dword ptr [esi + 0xd4]
0x0056EE2E: add      eax, 0xc
0x0056EE31: fld      dword ptr [eax]
0x0056EE33: fstp     dword ptr [esp + 0x34]
0x0056EE37: fld      dword ptr [eax + 4]
0x0056EE3A: fstp     dword ptr [esp + 0x38]
0x0056EE3E: fldz     
0x0056EE40: mov      eax, 0x1b4e81b5
0x0056EE45: imul     ecx
0x0056EE47: sar      edx, 6
0x0056EE4A: mov      eax, edx
0x0056EE4C: shr      eax, 0x1f
0x0056EE4F: add      eax, edx
0x0056EE51: imul     eax, eax, 0x258
0x0056EE57: mov      edx, ecx
0x0056EE59: sub      edx, eax
0x0056EE5B: movsx    eax, word ptr [ebp + edx*4 + 0x2bc]
0x0056EE63: mov      dword ptr [esp + 0x1c], eax
0x0056EE67: movsx    eax, word ptr [ebp + edx*4 + 0x2be]
0x0056EE6F: fild     dword ptr [esp + 0x1c]
0x0056EE73: mov      dword ptr [esp + 0x1c], eax
0x0056EE77: fstp     dword ptr [esp + 0x54]
0x0056EE7B: fild     dword ptr [esp + 0x1c]
0x0056EE7F: fstp     dword ptr [esp + 0x58]
0x0056EE83: fld      dword ptr [esp + 0x54]
0x0056EE87: fsub     dword ptr [esp + 0x34]
0x0056EE8B: fstp     dword ptr [esp + 0x24]
0x0056EE8F: fld      dword ptr [esp + 0x58]
0x0056EE93: fsub     dword ptr [esp + 0x38]
0x0056EE97: fstp     dword ptr [esp + 0x28]
0x0056EE9B: fld      st(1)
0x0056EE9D: fld      dword ptr [esp + 0x24]
0x0056EEA1: fld      st(0)
0x0056EEA3: fmulp    st(2)
0x0056EEA5: fld      dword ptr [esp + 0x28]
0x0056EEA9: fld      st(0)
0x0056EEAB: fmul     st(6)
0x0056EEAD: fsubp    st(3)
0x0056EEAF: fxch     st(2)
0x0056EEB1: fstp     dword ptr [esp + 0x1c]
0x0056EEB5: fld      dword ptr [esp + 0x1c]
0x0056EEB9: fld      st(0)
0x0056EEBB: fmul     dword ptr [esp + 0x18]
0x0056EEBF: fcomp    st(4)
0x0056EEC1: fnstsw   ax
0x0056EEC3: test     ah, 5
0x0056EEC6: jp       0x56ef20
0x0056EEC8: fld      st(5)
0x0056EECA: fmulp    st(2)
0x0056EECC: fld      st(4)
0x0056EECE: fmulp    st(3)
0x0056EED0: fxch     st(1)
0x0056EED2: faddp    st(2)
0x0056EED4: fld      dword ptr [esp + 0x4c]
0x0056EED8: fmul     st(3)
0x0056EEDA: faddp    st(2)
0x0056EEDC: fxch     st(1)
0x0056EEDE: fstp     dword ptr [esp + 0x1c]
0x0056EEE2: fldz     
0x0056EEE4: fld      dword ptr [esp + 0x1c]
0x0056EEE8: fcom     st(1)
0x0056EEEA: fnstsw   ax
0x0056EEEC: test     ah, 0x41
0x0056EEEF: jne      0x56ef02
0x0056EEF1: fld      dword ptr [esp + 0x20]
0x0056EEF5: fcomp    st(1)
0x0056EEF7: fnstsw   ax
0x0056EEF9: test     ah, 0x41
0x0056EEFC: je       0x56f142
0x0056EF02: cmp      dword ptr [esp + 0x10], 1
0x0056EF07: jne      0x56ef26
0x0056EF09: fcompp   
0x0056EF0B: fnstsw   ax
0x0056EF0D: test     ah, 5
0x0056EF10: jp       0x56ef2a
0x0056EF12: fstp     st(3)
0x0056EF14: mov      dword ptr [esi + 0x114], edx
0x0056EF1A: fstp     st(1)
0x0056EF1C: fstp     st(1)
0x0056EF1E: jmp      0x56ef3b
0x0056EF20: fstp     st(1)
0x0056EF22: fstp     st(1)
0x0056EF24: jmp      0x56ef2a
0x0056EF26: fstp     st(0)
0x0056EF28: fstp     st(0)
0x0056EF2A: dec      ecx
0x0056EF2B: fstp     dword ptr [esp + 0x18]
0x0056EF2F: cmp      ecx, edi
0x0056EF31: jge      0x56ee40
0x0056EF37: fstp     st(2)
0x0056EF39: fstp     st(0)
0x0056EF3B: mov      ecx, dword ptr [esi + 0xf8]
0x0056EF41: mov      eax, dword ptr [esi + 0x110]
0x0056EF47: lea      edx, [ecx - 1]
0x0056EF4A: cmp      eax, edx
0x0056EF4C: jne      0x56ef55
0x0056EF4E: cmp      dword ptr [esp + 0x14], 0
0x0056EF53: je       0x56ef5d
0x0056EF55: cmp      eax, ecx
0x0056EF57: jl       0x56f162
0x0056EF5D: mov      eax, dword ptr [esi + 0x114]
0x0056EF63: movsx    ecx, word ptr [ebp + eax*4 + 0x2bc]
0x0056EF6B: movsx    edx, word ptr [ebp + eax*4 + 0x2be]
0x0056EF73: mov      ebp, dword ptr [ebp + 8]
0x0056EF76: movzx    eax, byte ptr [ebp + 1]
0x0056EF7A: mov      dword ptr [esp + 0x20], ecx
0x0056EF7E: mov      ecx, dword ptr [ebp + 4]
0x0056EF81: fild     dword ptr [esp + 0x20]
0x0056EF85: mov      dword ptr [esp + 0x20], edx
0x0056EF89: mov      edx, dword ptr [ecx + 0x1c]
0x0056EF8C: mov      eax, dword ptr [edx + eax*4]
0x0056EF8F: fstp     dword ptr [esp + 0x54]
0x0056EF93: add      eax, 0xc
0x0056EF96: fild     dword ptr [esp + 0x20]
0x0056EF9A: fstp     dword ptr [esp + 0x58]
0x0056EF9E: fld      dword ptr [eax]
0x0056EFA0: fstp     dword ptr [esp + 0x24]
0x0056EFA4: fld      dword ptr [eax + 4]
0x0056EFA7: fstp     dword ptr [esp + 0x28]
0x0056EFAB: fld      dword ptr [eax + 8]
0x0056EFAE: fstp     dword ptr [esp + 0x2c]
0x0056EFB2: fld      dword ptr [eax + 0xc]
0x0056EFB5: fstp     dword ptr [esp + 0x30]
0x0056EFB9: fld      dword ptr [esp + 0x24]
0x0056EFBD: fld      st(0)
0x0056EFBF: fsub     dword ptr [esp + 0x54]
0x0056EFC3: fstp     dword ptr [esp + 0x44]
0x0056EFC7: fld      dword ptr [esp + 0x28]
0x0056EFCB: fld      st(0)
0x0056EFCD: fsub     dword ptr [esp + 0x58]
0x0056EFD1: fstp     dword ptr [esp + 0x48]
0x0056EFD5: fld      dword ptr [esp + 0x2c]
0x0056EFD9: fld      st(0)
0x0056EFDB: fsubrp   st(4)
0x0056EFDD: fxch     st(3)
0x0056EFDF: fstp     dword ptr [esp + 0x4c]
0x0056EFE3: fld      dword ptr [esp + 0x48]
0x0056EFE7: fld      dword ptr [esp + 0x44]
0x0056EFEB: fld      dword ptr [esp + 0x4c]
0x0056EFEF: fld      st(1)
0x0056EFF1: fmulp    st(2)
0x0056EFF3: fld      st(2)
0x0056EFF5: fmulp    st(3)
0x0056EFF7: fxch     st(1)
0x0056EFF9: faddp    st(2)
0x0056EFFB: fmul     st(0), st(0)
0x0056EFFD: faddp    st(1)
0x0056EFFF: fstp     dword ptr [esp + 0x20]
0x0056F003: fld      dword ptr [esp + 0x20]
0x0056F007: fcomp    dword ptr [0x9912d8] ; [f32=90000, u32=0x47AFC800]
0x0056F00D: fnstsw   ax
0x0056F00F: test     ah, 5
0x0056F012: jp       0x56f15e
0x0056F018: mov      eax, dword ptr [esi + 0xfc]
0x0056F01E: movzx    ecx, byte ptr [eax + 1]
0x0056F022: mov      edx, dword ptr [eax + 4]
0x0056F025: mov      eax, dword ptr [edx + 0x1c]
0x0056F028: mov      eax, dword ptr [eax + ecx*4]
0x0056F02B: add      eax, 0xc
0x0056F02E: lea      ecx, [esp + 0x34]
0x0056F032: push     ecx
0x0056F033: fld      dword ptr [eax]
0x0056F035: mov      edx, ecx
0x0056F037: fstp     dword ptr [esp + 0x48]
0x0056F03B: push     edx
0x0056F03C: fld      dword ptr [eax + 4]
0x0056F03F: fstp     dword ptr [esp + 0x50]
0x0056F043: fld      dword ptr [eax + 8]
0x0056F046: fstp     dword ptr [esp + 0x54]
0x0056F04A: fld      dword ptr [eax + 0xc]
0x0056F04D: fstp     dword ptr [esp + 0x58]
0x0056F051: fld      dword ptr [esp + 0x4c]
0x0056F055: fsubp    st(2)
0x0056F057: fxch     st(1)
0x0056F059: fstp     dword ptr [esp + 0x3c]
0x0056F05D: fsub     dword ptr [esp + 0x50]
0x0056F061: fstp     dword ptr [esp + 0x40]
0x0056F065: fsub     dword ptr [esp + 0x54]
0x0056F069: fstp     dword ptr [esp + 0x44]
0x0056F06D: fld      dword ptr [esp + 0x38]
0x0056F071: fsub     dword ptr [esp + 0x58]
0x0056F075: fstp     dword ptr [esp + 0x48]
0x0056F079: call     0x6b2160
0x0056F07E: mov      eax, dword ptr [esi + 0xfc]
0x0056F084: fstp     st(0)
0x0056F086: movzx    ecx, byte ptr [eax + 1]
0x0056F08A: mov      edx, dword ptr [eax + 4]
0x0056F08D: mov      eax, dword ptr [edx + 0x1c]
0x0056F090: mov      eax, dword ptr [eax + ecx*4]
0x0056F093: add      eax, 0xc
0x0056F096: lea      ecx, [esp + 0x2c]
0x0056F09A: push     ecx
0x0056F09B: fld      dword ptr [eax]
0x0056F09D: mov      edx, ecx
0x0056F09F: fstp     dword ptr [esp + 0x50]
0x0056F0A3: push     edx
0x0056F0A4: fld      dword ptr [eax + 4]
0x0056F0A7: fstp     dword ptr [esp + 0x58]
0x0056F0AB: fld      dword ptr [eax + 8]
0x0056F0AE: fstp     dword ptr [esp + 0x5c]
0x0056F0B2: fld      dword ptr [eax + 0xc]
0x0056F0B5: fstp     dword ptr [esp + 0x60]
0x0056F0B9: fld      dword ptr [esp + 0x64]
0x0056F0BD: fsub     dword ptr [esp + 0x54]
0x0056F0C1: fstp     dword ptr [esp + 0x34]
0x0056F0C5: fld      dword ptr [esp + 0x68]
0x0056F0C9: fsub     dword ptr [esp + 0x58]
0x0056F0CD: fstp     dword ptr [esp + 0x38]
0x0056F0D1: fld      dword ptr [esp + 0x5c]
0x0056F0D5: fldz     
0x0056F0D7: fsubrp   st(1)
0x0056F0D9: fstp     dword ptr [esp + 0x3c]
0x0056F0DD: fld      dword ptr [esp + 0x60]
0x0056F0E1: fld1     
0x0056F0E3: fsubrp   st(1)
0x0056F0E5: fstp     dword ptr [esp + 0x40]
0x0056F0E9: call     0x6b2160
0x0056F0EE: fstp     st(0)
0x0056F0F0: add      esp, 0x10
0x0056F0F3: fld      dword ptr [esp + 0x28]
0x0056F0F7: fmul     dword ptr [esp + 0x38]
0x0056F0FB: fld      dword ptr [esp + 0x24]
0x0056F0FF: fmul     dword ptr [esp + 0x34]
0x0056F103: faddp    st(1)
0x0056F105: fld      dword ptr [esp + 0x2c]
0x0056F109: fmul     dword ptr [esp + 0x3c]
0x0056F10D: faddp    st(1)
0x0056F10F: fstp     dword ptr [esp + 0x20]
0x0056F113: fld      dword ptr [esp + 0x20]
0x0056F117: fcomp    qword ptr [0x992470] ; [f64=0.94, u32=0xE0000000]
0x0056F11D: fnstsw   ax
0x0056F11F: test     ah, 0x41
0x0056F122: jne      0x56f164
0x0056F124: mov      eax, dword ptr [esi]
0x0056F126: mov      edx, dword ptr [eax + 0x18]
0x0056F129: mov      ecx, esi
0x0056F12B: call     edx
0x0056F12D: test     eax, eax
0x0056F12F: je       0x56f164
0x0056F131: mov      eax, dword ptr [esi]
0x0056F133: mov      edx, dword ptr [eax + 0x14]
0x0056F136: mov      ecx, esi
0x0056F138: call     edx
0x0056F13A: pop      edi
0x0056F13B: pop      esi
0x0056F13C: pop      ebp
0x0056F13D: pop      ebx
0x0056F13E: add      esp, 0x54
0x0056F141: ret      
0x0056F142: mov      edx, dword ptr [esi]
0x0056F144: fstp     st(3)
0x0056F146: mov      eax, dword ptr [edx + 0x10]
0x0056F149: fstp     st(2)
0x0056F14B: fstp     st(1)
0x0056F14D: pop      edi
0x0056F14E: fstp     st(2)
0x0056F150: mov      ecx, esi
0x0056F152: pop      esi
0x0056F153: fstp     st(0)
0x0056F155: pop      ebp
0x0056F156: fstp     st(0)
0x0056F158: pop      ebx
0x0056F159: add      esp, 0x54
0x0056F15C: jmp      eax
0x0056F15E: fstp     st(1)
0x0056F160: fstp     st(0)
0x0056F162: fstp     st(0)
0x0056F164: pop      edi
0x0056F165: pop      esi
0x0056F166: pop      ebp
0x0056F167: pop      ebx
0x0056F168: add      esp, 0x54
0x0056F16B: ret      
0x0056F16C: int3     
0x0056F16D: int3     
0x0056F16E: int3     
0x0056F16F: int3     
0x0056F170: mov      eax, 0xb49d78
0x0056F175: ret      
0x0056F176: int3     
0x0056F177: int3     
0x0056F178: int3     
0x0056F179: int3     
0x0056F17A: int3     
0x0056F17B: int3     
0x0056F17C: int3     
0x0056F17D: int3     
0x0056F17E: int3     
0x0056F17F: int3     
0x0056F180: push     esi
0x0056F181: mov      esi, ecx
0x0056F183: mov      dword ptr [esi], 0x992450
0x0056F189: call     0x521ad0
0x0056F18E: test     byte ptr [esp + 8], 1
0x0056F193: je       0x56f19e
0x0056F195: push     esi
0x0056F196: call     0x688fb0
0x0056F19B: add      esp, 4
0x0056F19E: mov      eax, esi
0x0056F1A0: pop      esi
0x0056F1A1: ret      4
0x0056F1A4: int3     
0x0056F1A5: int3     
0x0056F1A6: int3     
0x0056F1A7: int3     
0x0056F1A8: int3     
0x0056F1A9: int3     
0x0056F1AA: int3     
0x0056F1AB: int3     
0x0056F1AC: int3     
0x0056F1AD: int3     
0x0056F1AE: int3     
0x0056F1AF: int3     
0x0056F1B0: mov      eax, dword ptr [esp + 4]
0x0056F1B4: push     esi
0x0056F1B5: push     eax
0x0056F1B6: mov      esi, ecx
0x0056F1B8: call     0x521c60
0x0056F1BD: fldz     
0x0056F1BF: fst      dword ptr [esi + 0xfc]
0x0056F1C5: xor      eax, eax
0x0056F1C7: fst      dword ptr [esi + 0x100]
0x0056F1CD: mov      dword ptr [esi + 0xf8], eax
0x0056F1D3: fst      dword ptr [esi + 0x104]
0x0056F1D9: mov      dword ptr [esi + 0x12c], eax
0x0056F1DF: fst      dword ptr [esi + 0x10c]
0x0056F1E5: mov      dword ptr [esi + 0x108], eax
0x0056F1EB: fst      dword ptr [esi + 0x110]
0x0056F1F1: mov      dword ptr [esi + 0x130], eax
0x0056F1F7: fst      dword ptr [esi + 0x114]
0x0056F1FD: mov      dword ptr [esi + 0x118], eax
0x0056F203: fst      dword ptr [esi + 0x11c]
0x0056F209: mov      dword ptr [esi + 0x134], eax
0x0056F20F: fst      dword ptr [esi + 0x120]
0x0056F215: mov      dword ptr [esi + 0x124], eax
0x0056F21B: fst      dword ptr [esi + 0x128]
0x0056F221: mov      dword ptr [esi], 0x992488
0x0056F227: fst      dword ptr [esi + 0x138]
0x0056F22D: mov      eax, esi
0x0056F22F: fst      dword ptr [esi + 0x13c]
0x0056F235: fst      dword ptr [esi + 0x140]
0x0056F23B: fst      dword ptr [esi + 0x144]
0x0056F241: fst      dword ptr [esi + 0x148]
0x0056F247: fst      dword ptr [esi + 0x14c]
0x0056F24D: fst      dword ptr [esi + 0x150]
0x0056F253: fstp     dword ptr [esi + 0x154]
0x0056F259: pop      esi
0x0056F25A: ret      4
0x0056F25D: int3     
0x0056F25E: int3     
0x0056F25F: int3     
0x0056F260: mov      dword ptr [ecx], 0x992488
0x0056F266: jmp      0x521ad0
0x0056F26B: int3     
0x0056F26C: int3     
0x0056F26D: int3     
0x0056F26E: int3     
0x0056F26F: int3     
0x0056F270: push     esi
0x0056F271: mov      esi, ecx
0x0056F273: call     0x521ae0
0x0056F278: xor      eax, eax
0x0056F27A: mov      dword ptr [esi + 0xf8], eax
0x0056F280: mov      dword ptr [esi + 0x12c], eax
0x0056F286: mov      dword ptr [esi + 0x130], eax
0x0056F28C: mov      dword ptr [esi + 0x134], eax
0x0056F292: pop      esi
0x0056F293: ret      
0x0056F294: int3     
0x0056F295: int3     
0x0056F296: int3     
0x0056F297: int3     
0x0056F298: int3     
0x0056F299: int3     
0x0056F29A: int3     
0x0056F29B: int3     
0x0056F29C: int3     
0x0056F29D: int3     
0x0056F29E: int3     
0x0056F29F: int3     
0x0056F2A0: fld      dword ptr [edx]
0x0056F2A2: fadd     dword ptr [ecx]
0x0056F2A4: fstp     dword ptr [eax]
0x0056F2A6: fld      dword ptr [edx + 4]
0x0056F2A9: fadd     dword ptr [ecx + 4]
0x0056F2AC: fstp     dword ptr [eax + 4]
0x0056F2AF: fld      dword ptr [edx + 8]
0x0056F2B2: fadd     dword ptr [ecx + 8]
0x0056F2B5: fstp     dword ptr [eax + 8]
0x0056F2B8: fld      dword ptr [edx + 0xc]
0x0056F2BB: fadd     dword ptr [ecx + 0xc]
0x0056F2BE: fstp     dword ptr [eax + 0xc]
0x0056F2C1: ret      
0x0056F2C2: int3     
0x0056F2C3: int3     
0x0056F2C4: int3     
0x0056F2C5: int3     
0x0056F2C6: int3     
0x0056F2C7: int3     
0x0056F2C8: int3     
0x0056F2C9: int3     
0x0056F2CA: int3     
0x0056F2CB: int3     
0x0056F2CC: int3     
0x0056F2CD: int3     
0x0056F2CE: int3     
0x0056F2CF: int3     
0x0056F2D0: fld      dword ptr [edx]
0x0056F2D2: fsub     dword ptr [ecx]
0x0056F2D4: fstp     dword ptr [eax]
0x0056F2D6: fld      dword ptr [edx + 4]
0x0056F2D9: fsub     dword ptr [ecx + 4]
0x0056F2DC: fstp     dword ptr [eax + 4]
0x0056F2DF: fld      dword ptr [edx + 8]
0x0056F2E2: fsub     dword ptr [ecx + 8]
0x0056F2E5: fstp     dword ptr [eax + 8]
0x0056F2E8: fld      dword ptr [edx + 0xc]
0x0056F2EB: fsub     dword ptr [ecx + 0xc]
0x0056F2EE: fstp     dword ptr [eax + 0xc]
0x0056F2F1: ret      
0x0056F2F2: int3     
0x0056F2F3: int3     
0x0056F2F4: int3     
0x0056F2F5: int3     
0x0056F2F6: int3     
0x0056F2F7: int3     
0x0056F2F8: int3     
0x0056F2F9: int3     
0x0056F2FA: int3     
0x0056F2FB: int3     
0x0056F2FC: int3     
0x0056F2FD: int3     
0x0056F2FE: int3     
0x0056F2FF: int3     
0x0056F300: fld      dword ptr [ecx]
0x0056F302: fld      dword ptr [esp + 4]
0x0056F306: fld      st(0)
0x0056F308: fmulp    st(2)
0x0056F30A: fxch     st(1)
0x0056F30C: fstp     dword ptr [eax]
0x0056F30E: fld      dword ptr [ecx + 4]
0x0056F311: fmul     st(1)
0x0056F313: fstp     dword ptr [eax + 4]
0x0056F316: fld      dword ptr [ecx + 8]
0x0056F319: fmul     st(1)
0x0056F31B: fstp     dword ptr [eax + 8]
0x0056F31E: fmul     dword ptr [ecx + 0xc]
0x0056F321: fstp     dword ptr [eax + 0xc]
0x0056F324: ret      
0x0056F325: int3     
0x0056F326: int3     
0x0056F327: int3     
0x0056F328: int3     
0x0056F329: int3     
0x0056F32A: int3     
0x0056F32B: int3     
0x0056F32C: int3     
0x0056F32D: int3     
0x0056F32E: int3     
0x0056F32F: int3     
0x0056F330: sub      esp, 0x34
0x0056F333: push     esi
0x0056F334: mov      esi, ecx
0x0056F336: mov      eax, dword ptr [esi + 0xd4]
0x0056F33C: push     edi
0x0056F33D: mov      edi, dword ptr [eax + 0x23c]
0x0056F343: test     edi, edi
0x0056F345: je       0x56f7d8
0x0056F34B: push     0
0x0056F34D: call     0x521b00
0x0056F352: mov      ecx, dword ptr [esi + 0x12c]
0x0056F358: test     ecx, ecx
0x0056F35A: jne      0x56f46a
0x0056F360: mov      eax, 1
0x0056F365: mov      byte ptr [esi + 0xe0], al
0x0056F36B: mov      dword ptr [esi + 0xf8], eax
0x0056F371: mov      eax, dword ptr [esi + 0xd4]
0x0056F377: push     eax
0x0056F378: mov      dword ptr [esi + 0x12c], edi
0x0056F37E: call     0x522160
0x0056F383: fstp     dword ptr [esp + 0xc]
0x0056F387: fld      dword ptr [esp + 0xc]
0x0056F38B: mov      ecx, dword ptr [esi + 0xd4]
0x0056F391: fst      dword ptr [esi + 0xfc]
0x0056F397: push     ecx
0x0056F398: fstp     dword ptr [esi + 0x100]
0x0056F39E: call     0x522370
0x0056F3A3: mov      dword ptr [esi + 0x108], eax
0x0056F3A9: movzx    edx, byte ptr [edi + 1]
0x0056F3AD: mov      eax, dword ptr [edi + 4]
0x0056F3B0: mov      ecx, dword ptr [eax + 0x1c]
0x0056F3B3: mov      eax, dword ptr [ecx + edx*4]
0x0056F3B6: mov      edx, dword ptr [esi + 0xd4]
0x0056F3BC: add      eax, 0xc
0x0056F3BF: add      esp, 8
0x0056F3C2: fld      dword ptr [eax]
0x0056F3C4: fstp     dword ptr [esp + 0xc]
0x0056F3C8: fld      dword ptr [eax + 4]
0x0056F3CB: fstp     dword ptr [esp + 0x10]
0x0056F3CF: fld      dword ptr [eax + 8]
0x0056F3D2: mov      eax, dword ptr [edx + 8]
0x0056F3D5: movzx    ecx, byte ptr [eax + 1]
0x0056F3D9: fstp     dword ptr [esp + 0x14]
0x0056F3DD: mov      edx, dword ptr [eax + 4]
0x0056F3E0: mov      eax, dword ptr [edx + 0x1c]
0x0056F3E3: mov      eax, dword ptr [eax + ecx*4]
0x0056F3E6: add      eax, 0xc
0x0056F3E9: fld      dword ptr [eax]
0x0056F3EB: fstp     dword ptr [esp + 0x1c]
0x0056F3EF: fld      dword ptr [eax + 4]
0x0056F3F2: fstp     dword ptr [esp + 0x20]
0x0056F3F6: fld      dword ptr [eax + 8]
0x0056F3F9: fstp     dword ptr [esp + 0x24]
0x0056F3FD: fld      dword ptr [esp + 0x1c]
0x0056F401: fsub     dword ptr [esp + 0xc]
0x0056F405: fstp     dword ptr [esp + 0x2c]
0x0056F409: fld      dword ptr [esp + 0x20]
0x0056F40D: fsub     dword ptr [esp + 0x10]
0x0056F411: fstp     dword ptr [esp + 0x30]
0x0056F415: fld      dword ptr [esp + 0x24]
0x0056F419: fsub     dword ptr [esp + 0x14]
0x0056F41D: fstp     dword ptr [esp + 0x34]
0x0056F421: fld      dword ptr [esp + 0x30]
0x0056F425: fld      dword ptr [esp + 0x2c]
0x0056F429: fld      dword ptr [esp + 0x34]
0x0056F42D: fld      st(1)
0x0056F42F: fmulp    st(2)
0x0056F431: fld      st(2)
0x0056F433: fmulp    st(3)
0x0056F435: fxch     st(1)
0x0056F437: faddp    st(2)
0x0056F439: fmul     st(0), st(0)
0x0056F43B: faddp    st(1)
0x0056F43D: fstp     dword ptr [esp + 8]
0x0056F441: fld      dword ptr [esp + 8]
0x0056F445: call     0x8eb930
0x0056F44A: fstp     dword ptr [esp + 8]
0x0056F44E: fld      dword ptr [esp + 8]
0x0056F452: pop      edi
0x0056F453: fstp     dword ptr [esi + 0x104]
0x0056F459: fld      qword ptr [0xb75ff0]
0x0056F45F: fstp     dword ptr [esi + 0x138]
0x0056F465: pop      esi
0x0056F466: add      esp, 0x34
0x0056F469: ret      
0x0056F46A: cmp      edi, ecx
0x0056F46C: jne      0x56f650
0x0056F472: cmp      dword ptr [esi + 0x130], 0
0x0056F479: jne      0x56f4d7
0x0056F47B: mov      eax, dword ptr [esi + 0xd4]
0x0056F481: cmp      dword ptr [eax + 0x240], 0
0x0056F488: jne      0x56f498
0x0056F48A: mov      edx, dword ptr [esi]
0x0056F48C: mov      eax, dword ptr [edx + 0x10]
0x0056F48F: pop      edi
0x0056F490: mov      ecx, esi
0x0056F492: pop      esi
0x0056F493: add      esp, 0x34
0x0056F496: jmp      eax
0x0056F498: push     eax
0x0056F499: call     0x522160
0x0056F49E: fstp     dword ptr [esi + 0x100]
0x0056F4A4: mov      ecx, dword ptr [esi + 0xd4]
0x0056F4AA: push     ecx
0x0056F4AB: call     0x522370
0x0056F4B0: add      esp, 8
0x0056F4B3: cmp      eax, dword ptr [esi + 0x108]
0x0056F4B9: je       0x56f7f0
0x0056F4BF: fld      dword ptr [esi + 0x100]
0x0056F4C5: pop      edi
0x0056F4C6: fstp     dword ptr [esi + 0xfc]
0x0056F4CC: mov      dword ptr [esi + 0x108], eax
0x0056F4D2: pop      esi
0x0056F4D3: add      esp, 0x34
0x0056F4D6: ret      
0x0056F4D7: mov      eax, dword ptr [esi + 0x134]
0x0056F4DD: test     eax, eax
0x0056F4DF: jne      0x56f5d6
0x0056F4E5: mov      edx, dword ptr [esi + 0xd4]
0x0056F4EB: push     edx
0x0056F4EC: mov      byte ptr [esi + 0xe0], 5
0x0056F4F3: mov      dword ptr [esi + 0xf8], 3
0x0056F4FD: mov      dword ptr [esi + 0x134], edi
0x0056F503: call     0x522160
0x0056F508: fstp     dword ptr [esp + 0xc]
0x0056F50C: fld      dword ptr [esp + 0xc]
0x0056F510: mov      eax, dword ptr [esi + 0xd4]
0x0056F516: fst      dword ptr [esi + 0x11c]
0x0056F51C: push     eax
0x0056F51D: fstp     dword ptr [esi + 0x120]
0x0056F523: call     0x522370
0x0056F528: mov      dword ptr [esi + 0x124], eax
0x0056F52E: movzx    ecx, byte ptr [edi + 1]
0x0056F532: mov      edx, dword ptr [edi + 4]
0x0056F535: mov      eax, dword ptr [edx + 0x1c]
0x0056F538: mov      eax, dword ptr [eax + ecx*4]
0x0056F53B: mov      ecx, dword ptr [esi + 0xd4]
0x0056F541: add      eax, 0xc
0x0056F544: fld      dword ptr [eax]
0x0056F546: fstp     dword ptr [esp + 0x24]
0x0056F54A: fld      dword ptr [eax + 4]
0x0056F54D: fstp     dword ptr [esp + 0x28]
0x0056F551: fld      dword ptr [eax + 8]
0x0056F554: fstp     dword ptr [esp + 0x2c]
0x0056F558: fld      dword ptr [eax + 0xc]
0x0056F55B: mov      eax, dword ptr [ecx + 8]
0x0056F55E: movzx    edx, byte ptr [eax + 1]
0x0056F562: fstp     dword ptr [esp + 0x30]
0x0056F566: mov      eax, dword ptr [eax + 4]
0x0056F569: mov      ecx, dword ptr [eax + 0x1c]
0x0056F56C: mov      eax, dword ptr [ecx + edx*4]
0x0056F56F: add      eax, 0xc
0x0056F572: lea      edx, [esp + 0x34]
0x0056F576: push     edx
0x0056F577: fld      dword ptr [eax]
0x0056F579: fstp     dword ptr [esp + 0x18]
0x0056F57D: fld      dword ptr [eax + 4]
0x0056F580: fstp     dword ptr [esp + 0x1c]
0x0056F584: fld      dword ptr [eax + 8]
0x0056F587: fstp     dword ptr [esp + 0x20]
0x0056F58B: fld      dword ptr [eax + 0xc]
0x0056F58E: fstp     dword ptr [esp + 0x24]
0x0056F592: fld      dword ptr [esp + 0x18]
0x0056F596: fsub     dword ptr [esp + 0x28]
0x0056F59A: fstp     dword ptr [esp + 0x38]
0x0056F59E: fld      dword ptr [esp + 0x1c]
0x0056F5A2: fsub     dword ptr [esp + 0x2c]
0x0056F5A6: fstp     dword ptr [esp + 0x3c]
0x0056F5AA: fld      dword ptr [esp + 0x20]
0x0056F5AE: fsub     dword ptr [esp + 0x30]
0x0056F5B2: fstp     dword ptr [esp + 0x40]
0x0056F5B6: fld      dword ptr [esp + 0x24]
0x0056F5BA: fsub     dword ptr [esp + 0x34]
0x0056F5BE: fstp     dword ptr [esp + 0x44]
0x0056F5C2: call     0x521380
0x0056F5C7: add      esp, 0xc
0x0056F5CA: fstp     dword ptr [esi + 0x128]
0x0056F5D0: pop      edi
0x0056F5D1: pop      esi
0x0056F5D2: add      esp, 0x34
0x0056F5D5: ret      
0x0056F5D6: cmp      eax, ecx
0x0056F5D8: jne      0x56f642
0x0056F5DA: mov      eax, dword ptr [esi + 0xd4]
0x0056F5E0: push     eax
0x0056F5E1: call     0x522370
0x0056F5E6: add      esp, 4
0x0056F5E9: cmp      eax, dword ptr [esi + 0x108]
0x0056F5EF: je       0x56f5ff
0x0056F5F1: mov      edx, dword ptr [esi]
0x0056F5F3: mov      eax, dword ptr [edx + 0x10]
0x0056F5F6: pop      edi
0x0056F5F7: mov      ecx, esi
0x0056F5F9: pop      esi
0x0056F5FA: add      esp, 0x34
0x0056F5FD: jmp      eax
0x0056F5FF: mov      eax, dword ptr [esi + 0xd4]
0x0056F605: cmp      dword ptr [eax + 0x240], 0
0x0056F60C: jne      0x56f625
0x0056F60E: cmp      dword ptr [esi + 0xf8], 2
0x0056F615: je       0x56f625
0x0056F617: mov      edx, dword ptr [esi]
0x0056F619: mov      eax, dword ptr [edx + 0x10]
0x0056F61C: pop      edi
0x0056F61D: mov      ecx, esi
0x0056F61F: pop      esi
0x0056F620: add      esp, 0x34
0x0056F623: jmp      eax
0x0056F625: push     eax
0x0056F626: call     0x522160
0x0056F62B: fstp     dword ptr [esi + 0x120]
0x0056F631: mov      edx, dword ptr [esi]
0x0056F633: mov      eax, dword ptr [edx + 0x14]
0x0056F636: add      esp, 4
0x0056F639: pop      edi
0x0056F63A: mov      ecx, esi
0x0056F63C: pop      esi
0x0056F63D: add      esp, 0x34
0x0056F640: jmp      eax
0x0056F642: mov      edx, dword ptr [esi]
0x0056F644: mov      eax, dword ptr [edx + 0x10]
0x0056F647: pop      edi
0x0056F648: mov      ecx, esi
0x0056F64A: pop      esi
0x0056F64B: add      esp, 0x34
0x0056F64E: jmp      eax
0x0056F650: cmp      dword ptr [esi + 0x134], 0
0x0056F657: je       0x56f667
0x0056F659: mov      edx, dword ptr [esi]
0x0056F65B: mov      eax, dword ptr [edx + 0x10]
0x0056F65E: pop      edi
0x0056F65F: mov      ecx, esi
0x0056F661: pop      esi
0x0056F662: add      esp, 0x34
0x0056F665: jmp      eax
0x0056F667: mov      eax, dword ptr [esi + 0x130]
0x0056F66D: test     eax, eax
0x0056F66F: jne      0x56f766
0x0056F675: mov      ecx, dword ptr [esi + 0xd4]
0x0056F67B: push     ecx
0x0056F67C: mov      byte ptr [esi + 0xe0], 3
0x0056F683: mov      dword ptr [esi + 0xf8], 2
0x0056F68D: mov      dword ptr [esi + 0x130], edi
0x0056F693: call     0x522160
0x0056F698: fstp     dword ptr [esp + 0xc]
0x0056F69C: fld      dword ptr [esp + 0xc]
0x0056F6A0: mov      edx, dword ptr [esi + 0xd4]
0x0056F6A6: fst      dword ptr [esi + 0x10c]
0x0056F6AC: push     edx
0x0056F6AD: fstp     dword ptr [esi + 0x110]
0x0056F6B3: call     0x522370
0x0056F6B8: mov      dword ptr [esi + 0x118], eax
0x0056F6BE: mov      ecx, dword ptr [edi + 4]
0x0056F6C1: mov      edx, dword ptr [ecx + 0x1c]
0x0056F6C4: movzx    eax, byte ptr [edi + 1]
0x0056F6C8: mov      eax, dword ptr [edx + eax*4]
0x0056F6CB: add      eax, 0xc
0x0056F6CE: fld      dword ptr [eax]
0x0056F6D0: fstp     dword ptr [esp + 0x14]
0x0056F6D4: fld      dword ptr [eax + 4]
0x0056F6D7: fstp     dword ptr [esp + 0x18]
0x0056F6DB: fld      dword ptr [eax + 8]
0x0056F6DE: fstp     dword ptr [esp + 0x1c]
0x0056F6E2: fld      dword ptr [eax + 0xc]
0x0056F6E5: mov      eax, dword ptr [esi + 0xd4]
0x0056F6EB: mov      eax, dword ptr [eax + 8]
0x0056F6EE: fstp     dword ptr [esp + 0x20]
0x0056F6F2: movzx    ecx, byte ptr [eax + 1]
0x0056F6F6: mov      edx, dword ptr [eax + 4]
0x0056F6F9: mov      eax, dword ptr [edx + 0x1c]
0x0056F6FC: mov      eax, dword ptr [eax + ecx*4]
0x0056F6FF: add      eax, 0xc
0x0056F702: lea      ecx, [esp + 0x34]
0x0056F706: push     ecx
0x0056F707: fld      dword ptr [eax]
0x0056F709: fstp     dword ptr [esp + 0x28]
0x0056F70D: fld      dword ptr [eax + 4]
0x0056F710: fstp     dword ptr [esp + 0x2c]
0x0056F714: fld      dword ptr [eax + 8]
0x0056F717: fstp     dword ptr [esp + 0x30]
0x0056F71B: fld      dword ptr [eax + 0xc]
0x0056F71E: fstp     dword ptr [esp + 0x34]
0x0056F722: fld      dword ptr [esp + 0x28]
0x0056F726: fsub     dword ptr [esp + 0x18]
0x0056F72A: fstp     dword ptr [esp + 0x38]
0x0056F72E: fld      dword ptr [esp + 0x2c]
0x0056F732: fsub     dword ptr [esp + 0x1c]
0x0056F736: fstp     dword ptr [esp + 0x3c]
0x0056F73A: fld      dword ptr [esp + 0x30]
0x0056F73E: fsub     dword ptr [esp + 0x20]
0x0056F742: fstp     dword ptr [esp + 0x40]
0x0056F746: fld      dword ptr [esp + 0x34]
0x0056F74A: fsub     dword ptr [esp + 0x24]
0x0056F74E: fstp     dword ptr [esp + 0x44]
0x0056F752: call     0x521380
0x0056F757: add      esp, 0xc
0x0056F75A: fstp     dword ptr [esi + 0x114]
0x0056F760: pop      edi
0x0056F761: pop      esi
0x0056F762: add      esp, 0x34
0x0056F765: ret      
0x0056F766: cmp      eax, edi
0x0056F768: jne      0x56f7ca
0x0056F76A: mov      edx, dword ptr [esi + 0xd4]
0x0056F770: push     edx
0x0056F771: call     0x522370
0x0056F776: add      esp, 4
0x0056F779: cmp      eax, dword ptr [esi + 0x108]
0x0056F77F: jne      0x56f78f
0x0056F781: mov      eax, dword ptr [esi]
0x0056F783: mov      edx, dword ptr [eax + 0x10]
0x0056F786: pop      edi
0x0056F787: mov      ecx, esi
0x0056F789: pop      esi
0x0056F78A: add      esp, 0x34
0x0056F78D: jmp      edx
0x0056F78F: mov      eax, dword ptr [esi + 0xd4]
0x0056F795: cmp      dword ptr [eax + 0x240], 0
0x0056F79C: jne      0x56f7b5
0x0056F79E: cmp      dword ptr [esi + 0xf8], 1
0x0056F7A5: je       0x56f7b5
0x0056F7A7: mov      eax, dword ptr [esi]
0x0056F7A9: mov      edx, dword ptr [eax + 0x10]
0x0056F7AC: pop      edi
0x0056F7AD: mov      ecx, esi
0x0056F7AF: pop      esi
0x0056F7B0: add      esp, 0x34
0x0056F7B3: jmp      edx
0x0056F7B5: push     eax
0x0056F7B6: call     0x522160
0x0056F7BB: fstp     dword ptr [esi + 0x110]
0x0056F7C1: add      esp, 4
0x0056F7C4: pop      edi
0x0056F7C5: pop      esi
0x0056F7C6: add      esp, 0x34
0x0056F7C9: ret      
0x0056F7CA: mov      eax, dword ptr [esi]
0x0056F7CC: mov      edx, dword ptr [eax + 0x10]
0x0056F7CF: pop      edi
0x0056F7D0: mov      ecx, esi
0x0056F7D2: pop      esi
0x0056F7D3: add      esp, 0x34
0x0056F7D6: jmp      edx
0x0056F7D8: cmp      dword ptr [eax + 0x240], 0
0x0056F7DF: je       0x56f7f0
0x0056F7E1: cmp      dword ptr [esi + 0xf8], 0
0x0056F7E8: jle      0x56f7f0
0x0056F7EA: inc      byte ptr [esi + 0xe0]
0x0056F7F0: pop      edi
0x0056F7F1: pop      esi
0x0056F7F2: add      esp, 0x34
0x0056F7F5: ret      
0x0056F7F6: int3     
0x0056F7F7: int3     
0x0056F7F8: int3     
0x0056F7F9: int3     
0x0056F7FA: int3     
0x0056F7FB: int3     
0x0056F7FC: int3     
0x0056F7FD: int3     
0x0056F7FE: int3     
0x0056F7FF: int3     
0x0056F800: sub      esp, 0x44
0x0056F803: push     esi
0x0056F804: mov      esi, ecx
0x0056F806: mov      ecx, dword ptr [esi + 0x12c]
0x0056F80C: test     ecx, ecx
0x0056F80E: je       0x56fa62
0x0056F814: mov      edx, dword ptr [esi + 0x130]
0x0056F81A: test     edx, edx
0x0056F81C: je       0x56fa62
0x0056F822: mov      eax, dword ptr [esi + 0x134]
0x0056F828: test     eax, eax
0x0056F82A: je       0x56fa62
0x0056F830: cmp      ecx, eax
0x0056F832: jne      0x56fa67
0x0056F838: cmp      edx, ecx
0x0056F83A: je       0x56fa67
0x0056F840: fld      dword ptr [esi + 0xfc]
0x0056F846: sub      esp, 8
0x0056F849: fstp     dword ptr [esp + 4]
0x0056F84D: fld      dword ptr [esi + 0x120]
0x0056F853: fstp     dword ptr [esp]
0x0056F856: call     0x521d80
0x0056F85B: fabs     
0x0056F85D: add      esp, 8
0x0056F860: fstp     dword ptr [esp + 4]
0x0056F864: fld      dword ptr [esp + 4]
0x0056F868: fcomp    qword ptr [0x9924a8] ; [f64=0.785398, u32=0x60000000]
0x0056F86E: fnstsw   ax
0x0056F870: test     ah, 0x41
0x0056F873: jp       0x56fa62
0x0056F879: mov      eax, dword ptr [esi + 0x12c]
0x0056F87F: movzx    ecx, byte ptr [eax + 1]
0x0056F883: mov      edx, dword ptr [eax + 4]
0x0056F886: mov      eax, dword ptr [edx + 0x1c]
0x0056F889: mov      eax, dword ptr [eax + ecx*4]
0x0056F88C: add      eax, 0xc
0x0056F88F: fld      dword ptr [eax]
0x0056F891: fstp     dword ptr [esp + 0x28]
0x0056F895: fld      dword ptr [eax + 4]
0x0056F898: fstp     dword ptr [esp + 0x2c]
0x0056F89C: fld      dword ptr [eax + 8]
0x0056F89F: fstp     dword ptr [esp + 0x30]
0x0056F8A3: fld      dword ptr [eax + 0xc]
0x0056F8A6: mov      eax, dword ptr [esi + 0x130]
0x0056F8AC: movzx    ecx, byte ptr [eax + 1]
0x0056F8B0: fstp     dword ptr [esp + 0x34]
0x0056F8B4: mov      edx, dword ptr [eax + 4]
0x0056F8B7: mov      eax, dword ptr [edx + 0x1c]
0x0056F8BA: mov      eax, dword ptr [eax + ecx*4]
0x0056F8BD: add      eax, 0xc
0x0056F8C0: fld      dword ptr [eax]
0x0056F8C2: fstp     dword ptr [esp + 0x18]
0x0056F8C6: fld      dword ptr [eax + 4]
0x0056F8C9: fstp     dword ptr [esp + 0x1c]
0x0056F8CD: fld      dword ptr [eax + 8]
0x0056F8D0: fstp     dword ptr [esp + 0x20]
0x0056F8D4: fld      dword ptr [eax + 0xc]
0x0056F8D7: fstp     dword ptr [esp + 0x24]
0x0056F8DB: fld      dword ptr [esp + 0x18]
0x0056F8DF: fsub     dword ptr [esp + 0x28]
0x0056F8E3: fstp     dword ptr [esp + 8]
0x0056F8E7: fld      dword ptr [esp + 0x1c]
0x0056F8EB: fsub     dword ptr [esp + 0x2c]
0x0056F8EF: fstp     dword ptr [esp + 0xc]
0x0056F8F3: fld      dword ptr [esp + 0x20]
0x0056F8F7: fsub     dword ptr [esp + 0x30]
0x0056F8FB: fstp     dword ptr [esp + 0x10]
0x0056F8FF: fld      dword ptr [esp + 0x24]
0x0056F903: fsub     dword ptr [esp + 0x34]
0x0056F907: fstp     dword ptr [esp + 0x14]
0x0056F90B: fld      dword ptr [esi + 0x128]
0x0056F911: fld      dword ptr [esi + 0x104]
0x0056F917: fcompp   
0x0056F919: fnstsw   ax
0x0056F91B: test     ah, 5
0x0056F91E: jp       0x56f928
0x0056F920: fld      dword ptr [esi + 0x128]
0x0056F926: jmp      0x56f92e
0x0056F928: fld      dword ptr [esi + 0x104]
0x0056F92E: fstp     dword ptr [esp + 4]
0x0056F932: push     ecx
0x0056F933: fld      dword ptr [esp + 8]
0x0056F937: lea      ecx, [esp + 0xc]
0x0056F93B: fadd     dword ptr [esi + 0x114]
0x0056F941: lea      edx, [esp + 0x1c]
0x0056F945: fstp     dword ptr [esp + 8]
0x0056F949: fld      dword ptr [esp + 8]
0x0056F94D: fstp     dword ptr [esp]
0x0056F950: push     ecx
0x0056F951: push     edx
0x0056F952: call     0x51ac00
0x0056F957: mov      ecx, eax
0x0056F959: add      esp, 8
0x0056F95C: lea      eax, [esp + 0x3c]
0x0056F960: call     0x56f300
0x0056F965: fld      dword ptr [eax]
0x0056F967: fadd     dword ptr [esp + 0xc]
0x0056F96B: fstp     dword ptr [esp + 0x2c]
0x0056F96F: fld      dword ptr [eax + 4]
0x0056F972: fadd     dword ptr [esp + 0x10]
0x0056F976: fstp     dword ptr [esp + 0x30]
0x0056F97A: fld      dword ptr [eax + 8]
0x0056F97D: fadd     dword ptr [esp + 0x14]
0x0056F981: fstp     dword ptr [esp + 0x34]
0x0056F985: fld      dword ptr [eax + 0xc]
0x0056F988: lea      eax, [esp + 0x2c]
0x0056F98C: fadd     dword ptr [esp + 0x18]
0x0056F990: push     eax
0x0056F991: fstp     dword ptr [esp + 0x3c]
0x0056F995: call     0x521380
0x0056F99A: fstp     dword ptr [esi + 0x150]
0x0056F9A0: add      esp, 8
0x0056F9A3: fld      dword ptr [esi + 0x104]
0x0056F9A9: fstp     dword ptr [esp + 4]
0x0056F9AD: fld      dword ptr [esp + 4]
0x0056F9B1: fst      dword ptr [esi + 0x13c]
0x0056F9B7: fld      dword ptr [esi + 0x114]
0x0056F9BD: fstp     dword ptr [esp + 4]
0x0056F9C1: fld      dword ptr [esp + 4]
0x0056F9C5: fst      dword ptr [esi + 0x140]
0x0056F9CB: fld      dword ptr [esi + 0x128]
0x0056F9D1: fstp     dword ptr [esp + 4]
0x0056F9D5: fld      dword ptr [esp + 4]
0x0056F9D9: fst      dword ptr [esi + 0x144]
0x0056F9DF: fld      st(1)
0x0056F9E1: fadd     st(3)
0x0056F9E3: fadd     st(1)
0x0056F9E5: fdiv     qword ptr [0x97ea78] ; [f32=0, f64=3, u32=0x00000000]
0x0056F9EB: fstp     dword ptr [esp + 4]
0x0056F9EF: fld      dword ptr [esp + 4]
0x0056F9F3: fst      dword ptr [esi + 0x148]
0x0056F9F9: fld      st(0)
0x0056F9FB: fsubp    st(3)
0x0056F9FD: fld      st(0)
0x0056F9FF: fsubp    st(4)
0x0056FA01: fsubp    st(1)
0x0056FA03: fld      st(2)
0x0056FA05: fmulp    st(3)
0x0056FA07: fld      st(1)
0x0056FA09: fmulp    st(2)
0x0056FA0B: fxch     st(2)
0x0056FA0D: faddp    st(1)
0x0056FA0F: fld      st(1)
0x0056FA11: fmulp    st(2)
0x0056FA13: faddp    st(1)
0x0056FA15: fmul     qword ptr [0x9924a0] ; [f64=0.333333, u32=0x60000000]
0x0056FA1B: fstp     dword ptr [esp + 4]
0x0056FA1F: fld      dword ptr [esp + 4]
0x0056FA23: call     0x8eb930
0x0056FA28: fstp     dword ptr [esp + 4]
0x0056FA2C: fld      dword ptr [esp + 4]
0x0056FA30: mov      edx, dword ptr [esi]
0x0056FA32: mov      eax, dword ptr [edx + 4]
0x0056FA35: fstp     dword ptr [esi + 0x14c]
0x0056FA3B: fld      qword ptr [0xb75ff0]
0x0056FA41: mov      ecx, esi
0x0056FA43: fstp     dword ptr [esp + 4]
0x0056FA47: fld      dword ptr [esp + 4]
0x0056FA4B: fsub     dword ptr [esi + 0x138]
0x0056FA51: fstp     dword ptr [esi + 0x154]
0x0056FA57: call     eax
0x0056FA59: mov      edx, dword ptr [esi]
0x0056FA5B: mov      eax, dword ptr [edx + 0x10]
0x0056FA5E: mov      ecx, esi
0x0056FA60: call     eax
0x0056FA62: pop      esi
0x0056FA63: add      esp, 0x44
0x0056FA66: ret      
0x0056FA67: mov      edx, dword ptr [esi]
0x0056FA69: mov      eax, dword ptr [edx + 0x10]
0x0056FA6C: mov      ecx, esi
0x0056FA6E: pop      esi
0x0056FA6F: add      esp, 0x44
0x0056FA72: jmp      eax
0x0056FA74: int3     
0x0056FA75: int3     
0x0056FA76: int3     
0x0056FA77: int3     
0x0056FA78: int3     
0x0056FA79: int3     
0x0056FA7A: int3     
0x0056FA7B: int3     
0x0056FA7C: int3     
0x0056FA7D: int3     
0x0056FA7E: int3     
0x0056FA7F: int3     
0x0056FA80: mov      eax, 0xb49d94
0x0056FA85: ret      
0x0056FA86: int3     
0x0056FA87: int3     
0x0056FA88: int3     
0x0056FA89: int3     
0x0056FA8A: int3     
0x0056FA8B: int3     
0x0056FA8C: int3     
0x0056FA8D: int3     
0x0056FA8E: int3     
0x0056FA8F: int3     
0x0056FA90: push     esi
0x0056FA91: mov      esi, ecx
0x0056FA93: mov      dword ptr [esi], 0x992488
0x0056FA99: call     0x521ad0
0x0056FA9E: test     byte ptr [esp + 8], 1
0x0056FAA3: je       0x56faae
0x0056FAA5: push     esi
0x0056FAA6: call     0x688fb0
0x0056FAAB: add      esp, 4
0x0056FAAE: mov      eax, esi
0x0056FAB0: pop      esi
0x0056FAB1: ret      4
0x0056FAB4: int3     
0x0056FAB5: int3     
0x0056FAB6: int3     
0x0056FAB7: int3     
0x0056FAB8: int3     
0x0056FAB9: int3     
0x0056FABA: int3     
0x0056FABB: int3     
0x0056FABC: int3     
0x0056FABD: int3     
0x0056FABE: int3     
0x0056FABF: int3     
0x0056FAC0: mov      dword ptr [ecx], 0x9924c0
0x0056FAC6: jmp      0x521ad0
0x0056FACB: int3     
0x0056FACC: int3     
0x0056FACD: int3     
0x0056FACE: int3     
0x0056FACF: int3     
0x0056FAD0: push     esi
0x0056FAD1: mov      esi, ecx
0x0056FAD3: call     0x521ae0
0x0056FAD8: xor      eax, eax
0x0056FADA: mov      dword ptr [esi + 0xf8], eax
0x0056FAE0: mov      dword ptr [esi + 0xfc], eax
0x0056FAE6: mov      dword ptr [esi + 0x120], eax
0x0056FAEC: mov      dword ptr [esi + 0x100], eax
0x0056FAF2: pop      esi
0x0056FAF3: ret      
0x0056FAF4: int3     
0x0056FAF5: int3     
0x0056FAF6: int3     
0x0056FAF7: int3     
0x0056FAF8: int3     
0x0056FAF9: int3     
0x0056FAFA: int3     
0x0056FAFB: int3     
0x0056FAFC: int3     
0x0056FAFD: int3     
0x0056FAFE: int3     
0x0056FAFF: int3     
0x0056FB00: push     esi
0x0056FB01: mov      esi, ecx
0x0056FB03: mov      eax, dword ptr [esi]
0x0056FB05: mov      edx, dword ptr [eax + 4]
0x0056FB08: call     edx
0x0056FB0A: mov      eax, dword ptr [esi]
0x0056FB0C: mov      edx, dword ptr [eax + 0x10]
0x0056FB0F: mov      ecx, esi
0x0056FB11: pop      esi
0x0056FB12: jmp      edx
0x0056FB14: int3     
0x0056FB15: int3     
0x0056FB16: int3     
0x0056FB17: int3     
0x0056FB18: int3     
0x0056FB19: int3     
0x0056FB1A: int3     
0x0056FB1B: int3     
0x0056FB1C: int3     
0x0056FB1D: int3     
0x0056FB1E: int3     
0x0056FB1F: int3     
0x0056FB20: fld      dword ptr [esp + 4]
0x0056FB24: fld      dword ptr [0xafceb0]
0x0056FB2A: fld      st(0)
0x0056FB2C: fchs     
0x0056FB2E: fcomp    st(2)
0x0056FB30: fnstsw   ax
0x0056FB32: test     ah, 5
0x0056FB35: jp       0x56fb48
0x0056FB37: fcompp   
0x0056FB39: fnstsw   ax
0x0056FB3B: test     ah, 0x41
0x0056FB3E: jne      0x56fb4c
0x0056FB40: mov      eax, 1
0x0056FB45: ret      4
0x0056FB48: fstp     st(1)
0x0056FB4A: fstp     st(0)
0x0056FB4C: xor      eax, eax
0x0056FB4E: ret      4
0x0056FB51: int3     
0x0056FB52: int3     
0x0056FB53: int3     
0x0056FB54: int3     
0x0056FB55: int3     
0x0056FB56: int3     
0x0056FB57: int3     
0x0056FB58: int3     
0x0056FB59: int3     
0x0056FB5A: int3     
0x0056FB5B: int3     
0x0056FB5C: int3     
0x0056FB5D: int3     
0x0056FB5E: int3     
0x0056FB5F: int3     
0x0056FB60: mov      eax, dword ptr [esp + 4]
0x0056FB64: push     esi
0x0056FB65: push     eax
0x0056FB66: mov      esi, ecx
0x0056FB68: call     0x521c60
0x0056FB6D: fldz     
0x0056FB6F: mov      dword ptr [esi], 0x9924c0
0x0056FB75: fst      dword ptr [esi + 0x104]
0x0056FB7B: fst      dword ptr [esi + 0x108]
0x0056FB81: xor      eax, eax
0x0056FB83: fstp     dword ptr [esi + 0x10c]
0x0056FB89: fld1     
0x0056FB8B: fst      dword ptr [esi + 0x110]
0x0056FB91: fld      dword ptr [0x9924d8] ; [f32=0.19635, u32=0x3E490FDB]
0x0056FB97: fstp     dword ptr [esi + 0x124]
0x0056FB9D: mov      dword ptr [esi + 0xf8], eax
0x0056FBA3: fld      dword ptr [0x9837e0] ; [f32=1.5708, f64=-0.195796, u32=0x3FC90FDB]
0x0056FBA9: mov      dword ptr [esi + 0xfc], eax
0x0056FBAF: fstp     dword ptr [esi + 0x128]
0x0056FBB5: mov      dword ptr [esi + 0x100], eax
0x0056FBBB: mov      dword ptr [esi + 0x120], eax
0x0056FBC1: mov      dword ptr [esi + 0xec], 1
0x0056FBCB: mov      eax, esi
0x0056FBCD: fst      dword ptr [esi + 0x114]
0x0056FBD3: fst      dword ptr [esi + 0x118]
0x0056FBD9: fstp     dword ptr [esi + 0x11c]
0x0056FBDF: pop      esi
0x0056FBE0: ret      4
0x0056FBE3: int3     
0x0056FBE4: int3     
0x0056FBE5: int3     
0x0056FBE6: int3     
0x0056FBE7: int3     
0x0056FBE8: int3     
0x0056FBE9: int3     
0x0056FBEA: int3     
0x0056FBEB: int3     
0x0056FBEC: int3     
0x0056FBED: int3     
0x0056FBEE: int3     
0x0056FBEF: int3     
0x0056FBF0: fld      dword ptr [edx]
0x0056FBF2: fsub     dword ptr [ecx]
0x0056FBF4: fstp     dword ptr [eax]
0x0056FBF6: fld      dword ptr [edx + 4]
0x0056FBF9: fsub     dword ptr [ecx + 4]
0x0056FBFC: fstp     dword ptr [eax + 4]
0x0056FBFF: fld      dword ptr [edx + 8]
0x0056FC02: fsub     dword ptr [ecx + 8]
0x0056FC05: fstp     dword ptr [eax + 8]
0x0056FC08: fld      dword ptr [edx + 0xc]
0x0056FC0B: fsub     dword ptr [ecx + 0xc]
0x0056FC0E: fstp     dword ptr [eax + 0xc]
0x0056FC11: ret      
0x0056FC12: int3     
0x0056FC13: int3     
0x0056FC14: int3     
0x0056FC15: int3     
0x0056FC16: int3     
0x0056FC17: int3     
0x0056FC18: int3     
0x0056FC19: int3     
0x0056FC1A: int3     
0x0056FC1B: int3     
0x0056FC1C: int3     
0x0056FC1D: int3     
0x0056FC1E: int3     
0x0056FC1F: int3     
0x0056FC20: sub      esp, 0x44
0x0056FC23: push     esi
0x0056FC24: mov      esi, ecx
0x0056FC26: mov      ecx, dword ptr [esi + 0xd4]
0x0056FC2C: lea      eax, [esp + 8]
0x0056FC30: push     eax
0x0056FC31: call     0x540780
0x0056FC36: lea      ecx, [esp + 8]
0x0056FC3A: push     ecx
0x0056FC3B: mov      edx, ecx
0x0056FC3D: push     edx
0x0056FC3E: call     0x6b2160
0x0056FC43: fstp     st(0)
0x0056FC45: mov      ecx, dword ptr [esi + 0xd4]
0x0056FC4B: add      esp, 8
0x0056FC4E: cmp      dword ptr [ecx + 0x23c], 0
0x0056FC55: je       0x570149
0x0056FC5B: cmp      dword ptr [esi + 0x100], 0
0x0056FC62: je       0x56fc6d
0x0056FC64: push     0
0x0056FC66: mov      ecx, esi
0x0056FC68: call     0x521b00
0x0056FC6D: mov      eax, dword ptr [esi + 0x100]
0x0056FC73: fldz     
0x0056FC75: push     edi
0x0056FC76: test     eax, eax
0x0056FC78: jne      0x56fdf3
0x0056FC7E: cmp      dword ptr [esi + 0x120], 0
0x0056FC85: jne      0x56fdf3
0x0056FC8B: mov      ecx, dword ptr [esi + 0xd4]
0x0056FC91: mov      eax, dword ptr [ecx + 0x23c]
0x0056FC97: movzx    edx, byte ptr [eax + 1]
0x0056FC9B: mov      eax, dword ptr [eax + 4]
0x0056FC9E: mov      eax, dword ptr [eax + 0x1c]
0x0056FCA1: mov      eax, dword ptr [eax + edx*4]
0x0056FCA4: mov      ecx, dword ptr [ecx + 8]
0x0056FCA7: movzx    edx, byte ptr [ecx + 1]
0x0056FCAB: fld      dword ptr [eax + 0xc]
0x0056FCAE: fstp     dword ptr [esp + 0x2c]
0x0056FCB2: fld      dword ptr [eax + 0x10]
0x0056FCB5: add      eax, 0xc
0x0056FCB8: fstp     dword ptr [esp + 0x30]
0x0056FCBC: lea      edi, [esi + 0x104]
0x0056FCC2: push     edi
0x0056FCC3: fld      dword ptr [eax + 8]
0x0056FCC6: push     edi
0x0056FCC7: fstp     dword ptr [esp + 0x3c]
0x0056FCCB: fld      dword ptr [eax + 0xc]
0x0056FCCE: mov      eax, dword ptr [ecx + 4]
0x0056FCD1: mov      ecx, dword ptr [eax + 0x1c]
0x0056FCD4: fstp     dword ptr [esp + 0x40]
0x0056FCD8: mov      eax, dword ptr [ecx + edx*4]
0x0056FCDB: add      eax, 0xc
0x0056FCDE: fld      dword ptr [eax]
0x0056FCE0: fstp     dword ptr [esp + 0x24]
0x0056FCE4: fld      dword ptr [eax + 4]
0x0056FCE7: fstp     dword ptr [esp + 0x28]
0x0056FCEB: fld      dword ptr [eax + 8]
0x0056FCEE: fstp     dword ptr [esp + 0x2c]
0x0056FCF2: fld      dword ptr [eax + 0xc]
0x0056FCF5: fstp     dword ptr [esp + 0x30]
0x0056FCF9: fld      dword ptr [esp + 0x24]
0x0056FCFD: fsub     dword ptr [esp + 0x34]
0x0056FD01: fstp     dword ptr [esp + 0x44]
0x0056FD05: fld      dword ptr [esp + 0x28]
0x0056FD09: fsub     dword ptr [esp + 0x38]
0x0056FD0D: fstp     dword ptr [esp + 0x48]
0x0056FD11: fld      dword ptr [esp + 0x2c]
0x0056FD15: fsub     dword ptr [esp + 0x3c]
0x0056FD19: fstp     dword ptr [esp + 0x4c]
0x0056FD1D: fld      dword ptr [esp + 0x30]
0x0056FD21: fsub     dword ptr [esp + 0x40]
0x0056FD25: fstp     dword ptr [esp + 0x50]
0x0056FD29: fld      dword ptr [esp + 0x44]
0x0056FD2D: fstp     dword ptr [edi]
0x0056FD2F: fld      dword ptr [esp + 0x48]
0x0056FD33: fstp     dword ptr [edi + 4]
0x0056FD36: fld      dword ptr [esp + 0x4c]
0x0056FD3A: fstp     dword ptr [edi + 8]
0x0056FD3D: fld      dword ptr [esp + 0x50]
0x0056FD41: fstp     dword ptr [edi + 0xc]
0x0056FD44: fstp     dword ptr [esi + 0x10c]
0x0056FD4A: call     0x6b2160
0x0056FD4F: fstp     st(0)
0x0056FD51: add      esp, 4
0x0056FD54: fld      dword ptr [edi + 4]
0x0056FD57: mov      ecx, esi
0x0056FD59: fmul     dword ptr [esp + 0x14]
0x0056FD5D: fld      dword ptr [edi]
0x0056FD5F: fmul     dword ptr [esp + 0x10]
0x0056FD63: faddp    st(1)
0x0056FD65: fld      dword ptr [edi + 8]
0x0056FD68: fmul     dword ptr [esp + 0x18]
0x0056FD6C: faddp    st(1)
0x0056FD6E: fstp     dword ptr [esp + 0xc]
0x0056FD72: fld      dword ptr [esp + 0xc]
0x0056FD76: fstp     dword ptr [esp]
0x0056FD79: call     0x56fb20
0x0056FD7E: test     eax, eax
0x0056FD80: je       0x56fd9e
0x0056FD82: mov      edx, dword ptr [esi + 0xd4]
0x0056FD88: mov      dword ptr [esi + 0x100], 1
0x0056FD92: mov      eax, dword ptr [edx + 0x23c]
0x0056FD98: mov      dword ptr [esi + 0xfc], eax
0x0056FD9E: fldz     
0x0056FDA0: mov      ecx, dword ptr [esi + 0xd4]
0x0056FDA6: mov      edi, dword ptr [ecx + 0x240]
0x0056FDAC: test     edi, edi
0x0056FDAE: jne      0x56fdc2
0x0056FDB0: mov      eax, dword ptr [esi + 0xfc]
0x0056FDB6: cmp      dword ptr [ecx + 0x23c], eax
0x0056FDBC: jne      0x56fdc2
0x0056FDBE: test     eax, eax
0x0056FDC0: jne      0x56fde2
0x0056FDC2: mov      edx, dword ptr [ecx + 0x23c]
0x0056FDC8: mov      eax, dword ptr [esi + 0xfc]
0x0056FDCE: cmp      eax, edx
0x0056FDD0: je       0x57002b
0x0056FDD6: cmp      dword ptr [esi + 0xf8], edx
0x0056FDDC: jne      0x56feff
0x0056FDE2: mov      eax, dword ptr [esi]
0x0056FDE4: fstp     st(0)
0x0056FDE6: mov      edx, dword ptr [eax + 0x10]
0x0056FDE9: mov      ecx, esi
0x0056FDEB: call     edx
0x0056FDED: pop      edi
0x0056FDEE: pop      esi
0x0056FDEF: add      esp, 0x44
0x0056FDF2: ret      
0x0056FDF3: cmp      dword ptr [esi + 0x120], 2
0x0056FDFA: jne      0x56fda0
0x0056FDFC: test     eax, eax
0x0056FDFE: je       0x56fda0
0x0056FE00: mov      ecx, dword ptr [esi + 0xd4]
0x0056FE06: mov      eax, dword ptr [ecx + 0x23c]
0x0056FE0C: movzx    edx, byte ptr [eax + 1]
0x0056FE10: mov      eax, dword ptr [eax + 4]
0x0056FE13: mov      eax, dword ptr [eax + 0x1c]
0x0056FE16: mov      eax, dword ptr [eax + edx*4]
0x0056FE19: mov      ecx, dword ptr [ecx + 8]
0x0056FE1C: movzx    edx, byte ptr [ecx + 1]
0x0056FE20: fld      dword ptr [eax + 0xc]
0x0056FE23: fstp     dword ptr [esp + 0x2c]
0x0056FE27: fld      dword ptr [eax + 0x10]
0x0056FE2A: add      eax, 0xc
0x0056FE2D: fstp     dword ptr [esp + 0x30]
0x0056FE31: fld      dword ptr [eax + 0xc]
0x0056FE34: mov      eax, dword ptr [ecx + 4]
0x0056FE37: mov      ecx, dword ptr [eax + 0x1c]
0x0056FE3A: fstp     dword ptr [esp + 0x38]
0x0056FE3E: mov      eax, dword ptr [ecx + edx*4]
0x0056FE41: fld      dword ptr [eax + 0xc]
0x0056FE44: add      eax, 0xc
0x0056FE47: fstp     dword ptr [esp + 0x3c]
0x0056FE4B: lea      edx, [esp + 0x1c]
0x0056FE4F: fld      dword ptr [eax + 4]
0x0056FE52: push     edx
0x0056FE53: fstp     dword ptr [esp + 0x44]
0x0056FE57: fld      dword ptr [eax + 0xc]
0x0056FE5A: mov      eax, edx
0x0056FE5C: fstp     dword ptr [esp + 0x4c]
0x0056FE60: push     eax
0x0056FE61: fld      dword ptr [esp + 0x44]
0x0056FE65: fsub     dword ptr [esp + 0x34]
0x0056FE69: fstp     dword ptr [esp + 0x24]
0x0056FE6D: fld      dword ptr [esp + 0x48]
0x0056FE71: fsub     dword ptr [esp + 0x38]
0x0056FE75: fstp     dword ptr [esp + 0x28]
0x0056FE79: fld      dword ptr [esp + 0x50]
0x0056FE7D: fsub     dword ptr [esp + 0x40]
0x0056FE81: fstp     dword ptr [esp + 0x30]
0x0056FE85: fstp     dword ptr [esp + 0x2c]
0x0056FE89: call     0x6b2160
0x0056FE8E: fstp     st(0)
0x0056FE90: add      esp, 4
0x0056FE93: fld      dword ptr [esp + 0x20]
0x0056FE97: mov      ecx, esi
0x0056FE99: fmul     dword ptr [esp + 0x10]
0x0056FE9D: fld      dword ptr [esp + 0x24]
0x0056FEA1: fmul     dword ptr [esp + 0x14]
0x0056FEA5: faddp    st(1)
0x0056FEA7: fld      dword ptr [esp + 0x18]
0x0056FEAB: fmul     dword ptr [esp + 0x28]
0x0056FEAF: faddp    st(1)
0x0056FEB1: fstp     dword ptr [esp + 0xc]
0x0056FEB5: fld      dword ptr [esp + 0xc]
0x0056FEB9: fstp     dword ptr [esp]
0x0056FEBC: call     0x56fb20
0x0056FEC1: test     eax, eax
0x0056FEC3: je       0x56fd9e
0x0056FEC9: lea      ecx, [esp + 0x1c]
0x0056FECD: push     ecx
0x0056FECE: lea      edx, [esi + 0x104]
0x0056FED4: push     edx
0x0056FED5: call     0x509710
0x0056FEDA: fldz     
0x0056FEDC: fcom     st(1)
0x0056FEDE: add      esp, 8
0x0056FEE1: fnstsw   ax
0x0056FEE3: fstp     st(1)
0x0056FEE5: test     ah, 0x41
0x0056FEE8: jne      0x56fda0
0x0056FEEE: mov      eax, dword ptr [esi]
0x0056FEF0: fstp     st(0)
0x0056FEF2: mov      edx, dword ptr [eax + 0x14]
0x0056FEF5: mov      ecx, esi
0x0056FEF7: call     edx
0x0056FEF9: pop      edi
0x0056FEFA: pop      esi
0x0056FEFB: add      esp, 0x44
0x0056FEFE: ret      
0x0056FEFF: test     edi, edi
0x0056FF01: jne      0x57001a
0x0056FF07: mov      dword ptr [esi + 0xf8], eax
0x0056FF0D: mov      eax, dword ptr [ecx + 0x23c]
0x0056FF13: mov      dword ptr [esi + 0xfc], eax
0x0056FF19: mov      eax, dword ptr [ecx + 0x23c]
0x0056FF1F: movzx    edx, byte ptr [eax + 1]
0x0056FF23: mov      eax, dword ptr [eax + 4]
0x0056FF26: mov      eax, dword ptr [eax + 0x1c]
0x0056FF29: mov      eax, dword ptr [eax + edx*4]
0x0056FF2C: mov      ecx, dword ptr [ecx + 8]
0x0056FF2F: movzx    edx, byte ptr [ecx + 1]
0x0056FF33: fld      dword ptr [eax + 0xc]
0x0056FF36: fstp     dword ptr [esp + 0x2c]
0x0056FF3A: fld      dword ptr [eax + 0x10]
0x0056FF3D: add      eax, 0xc
0x0056FF40: fstp     dword ptr [esp + 0x30]
0x0056FF44: lea      edi, [esi + 0x104]
0x0056FF4A: push     edi
0x0056FF4B: fld      dword ptr [eax + 8]
0x0056FF4E: push     edi
0x0056FF4F: fstp     dword ptr [esp + 0x3c]
0x0056FF53: fld      dword ptr [eax + 0xc]
0x0056FF56: mov      eax, dword ptr [ecx + 4]
0x0056FF59: mov      ecx, dword ptr [eax + 0x1c]
0x0056FF5C: fstp     dword ptr [esp + 0x40]
0x0056FF60: mov      eax, dword ptr [ecx + edx*4]
0x0056FF63: add      eax, 0xc
0x0056FF66: fld      dword ptr [eax]
0x0056FF68: fstp     dword ptr [esp + 0x44]
0x0056FF6C: fld      dword ptr [eax + 4]
0x0056FF6F: fstp     dword ptr [esp + 0x48]
0x0056FF73: fld      dword ptr [eax + 8]
0x0056FF76: fstp     dword ptr [esp + 0x4c]
0x0056FF7A: fld      dword ptr [eax + 0xc]
0x0056FF7D: fstp     dword ptr [esp + 0x50]
0x0056FF81: fld      dword ptr [esp + 0x44]
0x0056FF85: fsub     dword ptr [esp + 0x34]
0x0056FF89: fstp     dword ptr [esp + 0x24]
0x0056FF8D: fld      dword ptr [esp + 0x48]
0x0056FF91: fsub     dword ptr [esp + 0x38]
0x0056FF95: fstp     dword ptr [esp + 0x28]
0x0056FF99: fld      dword ptr [esp + 0x4c]
0x0056FF9D: fsub     dword ptr [esp + 0x3c]
0x0056FFA1: fstp     dword ptr [esp + 0x2c]
0x0056FFA5: fld      dword ptr [esp + 0x50]
0x0056FFA9: fsub     dword ptr [esp + 0x40]
0x0056FFAD: fstp     dword ptr [esp + 0x30]
0x0056FFB1: fld      dword ptr [esp + 0x24]
0x0056FFB5: fstp     dword ptr [edi]
0x0056FFB7: fld      dword ptr [esp + 0x28]
0x0056FFBB: fstp     dword ptr [edi + 4]
0x0056FFBE: fld      dword ptr [esp + 0x2c]
0x0056FFC2: fstp     dword ptr [edi + 8]
0x0056FFC5: fld      dword ptr [esp + 0x30]
0x0056FFC9: fstp     dword ptr [edi + 0xc]
0x0056FFCC: fstp     dword ptr [esi + 0x10c]
0x0056FFD2: call     0x6b2160
0x0056FFD7: fstp     st(0)
0x0056FFD9: add      esp, 4
0x0056FFDC: fld      dword ptr [edi + 4]
0x0056FFDF: mov      ecx, esi
0x0056FFE1: fmul     dword ptr [esp + 0x14]
0x0056FFE5: fld      dword ptr [edi]
0x0056FFE7: fmul     dword ptr [esp + 0x10]
0x0056FFEB: faddp    st(1)
0x0056FFED: fld      dword ptr [edi + 8]
0x0056FFF0: fmul     dword ptr [esp + 0x18]
0x0056FFF4: faddp    st(1)
0x0056FFF6: fstp     dword ptr [esp + 0xc]
0x0056FFFA: fld      dword ptr [esp + 0xc]
0x0056FFFE: fstp     dword ptr [esp]
0x00570001: call     0x56fb20
0x00570006: test     eax, eax
0x00570008: je       0x57001e
0x0057000A: pop      edi
0x0057000B: mov      dword ptr [esi + 0x100], 1
0x00570015: pop      esi
0x00570016: add      esp, 0x44
0x00570019: ret      
0x0057001A: fstp     st(0)
0x0057001C: mov      ecx, esi
0x0057001E: mov      edx, dword ptr [esi]
0x00570020: mov      eax, dword ptr [edx + 0x10]
0x00570023: call     eax
0x00570025: pop      edi
0x00570026: pop      esi
0x00570027: add      esp, 0x44
0x0057002A: ret      
0x0057002B: mov      ecx, dword ptr [ecx + 8]
0x0057002E: mov      eax, edx
0x00570030: movzx    edx, byte ptr [eax + 1]
0x00570034: mov      eax, dword ptr [eax + 4]
0x00570037: mov      eax, dword ptr [eax + 0x1c]
0x0057003A: mov      eax, dword ptr [eax + edx*4]
0x0057003D: movzx    edx, byte ptr [ecx + 1]
0x00570041: fld      dword ptr [eax + 0xc]
0x00570044: fstp     dword ptr [esp + 0x2c]
0x00570048: add      eax, 0xc
0x0057004B: fld      dword ptr [eax + 4]
0x0057004E: fstp     dword ptr [esp + 0x30]
0x00570052: fld      dword ptr [eax + 0xc]
0x00570055: mov      eax, dword ptr [ecx + 4]
0x00570058: mov      ecx, dword ptr [eax + 0x1c]
0x0057005B: fstp     dword ptr [esp + 0x38]
0x0057005F: mov      eax, dword ptr [ecx + edx*4]
0x00570062: fld      dword ptr [eax + 0xc]
0x00570065: add      eax, 0xc
0x00570068: fstp     dword ptr [esp + 0x3c]
0x0057006C: lea      edx, [esp + 0x1c]
0x00570070: fld      dword ptr [eax + 4]
0x00570073: push     edx
0x00570074: fstp     dword ptr [esp + 0x44]
0x00570078: fld      dword ptr [eax + 0xc]
0x0057007B: mov      eax, edx
0x0057007D: fstp     dword ptr [esp + 0x4c]
0x00570081: push     eax
0x00570082: fld      dword ptr [esp + 0x44]
0x00570086: fsub     dword ptr [esp + 0x34]
0x0057008A: fstp     dword ptr [esp + 0x24]
0x0057008E: fld      dword ptr [esp + 0x48]
0x00570092: fsub     dword ptr [esp + 0x38]
0x00570096: fstp     dword ptr [esp + 0x28]
0x0057009A: fld      dword ptr [esp + 0x50]
0x0057009E: fsub     dword ptr [esp + 0x40]
0x005700A2: fstp     dword ptr [esp + 0x30]
0x005700A6: fstp     dword ptr [esp + 0x2c]
0x005700AA: call     0x6b2160
0x005700AF: mov      ecx, dword ptr [esi + 0x120]
0x005700B5: fstp     st(0)
0x005700B7: fld      dword ptr [esp + 0x24]
0x005700BB: lea      ecx, [esi + ecx*4 + 0x114]
0x005700C2: fmul     dword ptr [esp + 0x14]
0x005700C6: add      esp, 8
0x005700C9: fld      dword ptr [esp + 0x20]
0x005700CD: fmul     dword ptr [esp + 0x10]
0x005700D1: faddp    st(1)
0x005700D3: fld      dword ptr [esp + 0x14]
0x005700D7: fmul     dword ptr [esp + 0x24]
0x005700DB: faddp    st(1)
0x005700DD: fstp     dword ptr [esp + 8]
0x005700E1: fldz     
0x005700E3: fcom     dword ptr [ecx]
0x005700E5: fnstsw   ax
0x005700E7: test     ah, 5
0x005700EA: jp       0x570116
0x005700EC: fstp     st(0)
0x005700EE: fld      dword ptr [esp + 8]
0x005700F2: fld      dword ptr [0xafceb0]
0x005700F8: fchs     
0x005700FA: fcompp   
0x005700FC: fnstsw   ax
0x005700FE: test     ah, 1
0x00570101: jne      0x570025
0x00570107: mov      edx, dword ptr [esi]
0x00570109: mov      eax, dword ptr [edx + 0x10]
0x0057010C: mov      ecx, esi
0x0057010E: call     eax
0x00570110: pop      edi
0x00570111: pop      esi
0x00570112: add      esp, 0x44
0x00570115: ret      
0x00570116: fcomp    dword ptr [ecx]
0x00570118: fnstsw   ax
0x0057011A: test     ah, 0x41
0x0057011D: jne      0x570025
0x00570123: fld      dword ptr [esp + 8]
0x00570127: fld      dword ptr [0xafceb0]
0x0057012D: fcompp   
0x0057012F: fnstsw   ax
0x00570131: test     ah, 0x41
0x00570134: jp       0x570025
0x0057013A: mov      edx, dword ptr [esi]
0x0057013C: mov      eax, dword ptr [edx + 0x10]
0x0057013F: mov      ecx, esi
0x00570141: call     eax
0x00570143: pop      edi
0x00570144: pop      esi
0x00570145: add      esp, 0x44
0x00570148: ret      
0x00570149: cmp      dword ptr [ecx + 0x240], 0
0x00570150: je       0x570026
0x00570156: cmp      dword ptr [esi + 0x100], 0
0x0057015D: je       0x570026
0x00570163: cmp      dword ptr [esi + 0x120], 0
0x0057016A: jle      0x570172
0x0057016C: inc      byte ptr [esi + 0xe0]
0x00570172: mov      eax, dword ptr [ecx + 0x240]
0x00570178: movzx    edx, byte ptr [eax + 1]
0x0057017C: mov      eax, dword ptr [eax + 4]
0x0057017F: mov      eax, dword ptr [eax + 0x1c]
0x00570182: mov      eax, dword ptr [eax + edx*4]
0x00570185: add      eax, 0xc
0x00570188: fld      dword ptr [eax]
0x0057018A: fstp     dword ptr [esp + 0x28]
0x0057018E: fld      dword ptr [eax + 4]
0x00570191: fstp     dword ptr [esp + 0x2c]
0x00570195: fld      dword ptr [eax + 0xc]
0x00570198: mov      eax, dword ptr [ecx + 8]
0x0057019B: movzx    ecx, byte ptr [eax + 1]
0x0057019F: fstp     dword ptr [esp + 0x34]
0x005701A3: mov      edx, dword ptr [eax + 4]
0x005701A6: mov      eax, dword ptr [edx + 0x1c]
0x005701A9: mov      eax, dword ptr [eax + ecx*4]
0x005701AC: add      eax, 0xc
0x005701AF: lea      ecx, [esp + 0x18]
0x005701B3: push     ecx
0x005701B4: fld      dword ptr [eax]
0x005701B6: mov      edx, ecx
0x005701B8: fstp     dword ptr [esp + 0x3c]
0x005701BC: push     edx
0x005701BD: fld      dword ptr [eax + 4]
0x005701C0: fstp     dword ptr [esp + 0x44]
0x005701C4: fld      dword ptr [eax + 0xc]
0x005701C7: fstp     dword ptr [esp + 0x4c]
0x005701CB: fld      dword ptr [esp + 0x40]
0x005701CF: fsub     dword ptr [esp + 0x30]
0x005701D3: fstp     dword ptr [esp + 0x20]
0x005701D7: fld      dword ptr [esp + 0x44]
0x005701DB: fsub     dword ptr [esp + 0x34]
0x005701DF: fstp     dword ptr [esp + 0x24]
0x005701E3: fld      dword ptr [esp + 0x4c]
0x005701E7: fsub     dword ptr [esp + 0x3c]
0x005701EB: fstp     dword ptr [esp + 0x2c]
0x005701EF: fldz     
0x005701F1: fstp     dword ptr [esp + 0x28]
0x005701F5: call     0x6b2160
0x005701FA: fstp     st(0)
0x005701FC: fld      dword ptr [esp + 0x24]
0x00570200: add      esp, 4
0x00570203: fmul     dword ptr [esp + 0x10]
0x00570207: mov      ecx, esi
0x00570209: fld      dword ptr [esp + 0x1c]
0x0057020D: fmul     dword ptr [esp + 0xc]
0x00570211: faddp    st(1)
0x00570213: fld      dword ptr [esp + 0x14]
0x00570217: fmul     dword ptr [esp + 0x24]
0x0057021B: faddp    st(1)
0x0057021D: fstp     dword ptr [esp + 8]
0x00570221: fld      dword ptr [esp + 8]
0x00570225: fstp     dword ptr [esp]
0x00570228: call     0x56fb20
0x0057022D: test     eax, eax
0x0057022F: je       0x57029a
0x00570231: fld      dword ptr [esi + 0x108]
0x00570237: fmul     dword ptr [esp + 0x1c]
0x0057023B: fld      dword ptr [esi + 0x104]
0x00570241: fmul     dword ptr [esp + 0x18]
0x00570245: faddp    st(1)
0x00570247: fld      dword ptr [esi + 0x10c]
0x0057024D: fmul     dword ptr [esp + 0x20]
0x00570251: faddp    st(1)
0x00570253: fstp     dword ptr [esp + 4]
0x00570257: fld      dword ptr [esp + 4]
0x0057025B: fcomp    dword ptr [0x96665c] ; [f32=0, u32=0x00000000]
0x00570261: fnstsw   ax
0x00570263: test     ah, 5
0x00570266: jp       0x57029a
0x00570268: inc      dword ptr [esi + 0x120]
0x0057026E: push     1
0x00570270: call     0x521b00
0x00570275: cmp      dword ptr [esi + 0x120], 3
0x0057027C: mov      dword ptr [esi + 0x100], 0
0x00570286: jl       0x570026
0x0057028C: mov      eax, dword ptr [esi]
0x0057028E: mov      edx, dword ptr [eax + 0x14]
0x00570291: mov      ecx, esi
0x00570293: call     edx
0x00570295: pop      esi
0x00570296: add      esp, 0x44
0x00570299: ret      
0x0057029A: mov      eax, dword ptr [esi]
0x0057029C: mov      edx, dword ptr [eax + 0x10]
0x0057029F: call     edx
0x005702A1: pop      esi
0x005702A2: add      esp, 0x44
0x005702A5: ret      
0x005702A6: int3     
0x005702A7: int3     
0x005702A8: int3     
0x005702A9: int3     
0x005702AA: int3     
0x005702AB: int3     
0x005702AC: int3     
0x005702AD: int3     
0x005702AE: int3     
0x005702AF: int3     
0x005702B0: mov      eax, 0xb49db0
0x005702B5: ret      
0x005702B6: int3     
0x005702B7: int3     
0x005702B8: int3     
0x005702B9: int3     
0x005702BA: int3     
0x005702BB: int3     
0x005702BC: int3     
0x005702BD: int3     
0x005702BE: int3     
0x005702BF: int3     
0x005702C0: push     esi
0x005702C1: mov      esi, ecx
0x005702C3: mov      dword ptr [esi], 0x9924c0
0x005702C9: call     0x521ad0
0x005702CE: test     byte ptr [esp + 8], 1
0x005702D3: je       0x5702de
0x005702D5: push     esi
0x005702D6: call     0x688fb0
0x005702DB: add      esp, 4
0x005702DE: mov      eax, esi
0x005702E0: pop      esi
0x005702E1: ret      4
0x005702E4: int3     
0x005702E5: int3     
0x005702E6: int3     
0x005702E7: int3     
0x005702E8: int3     
0x005702E9: int3     
0x005702EA: int3     
0x005702EB: int3     
0x005702EC: int3     
0x005702ED: int3     
0x005702EE: int3     
0x005702EF: int3     
0x005702F0: mov      dword ptr [ecx], 0x9924e8
0x005702F6: jmp      0x521ad0
0x005702FB: int3     
0x005702FC: int3     
0x005702FD: int3     
0x005702FE: int3     
0x005702FF: int3     
0x00570300: push     esi
0x00570301: mov      esi, ecx
0x00570303: call     0x521ae0
0x00570308: fldz     
0x0057030A: fst      dword ptr [esi + 0xfc]
0x00570310: mov      dword ptr [esi + 0xf8], 0
0x0057031A: fstp     dword ptr [esi + 0x110]
0x00570320: pop      esi
0x00570321: ret      
0x00570322: int3     
0x00570323: int3     
0x00570324: int3     
0x00570325: int3     
0x00570326: int3     
0x00570327: int3     
0x00570328: int3     
0x00570329: int3     
0x0057032A: int3     
0x0057032B: int3     
0x0057032C: int3     
0x0057032D: int3     
0x0057032E: int3     
0x0057032F: int3     
0x00570330: ret      
0x00570331: int3     
0x00570332: int3     
0x00570333: int3     
0x00570334: int3     
0x00570335: int3     
0x00570336: int3     
0x00570337: int3     
0x00570338: int3     
0x00570339: int3     
0x0057033A: int3     
0x0057033B: int3     
0x0057033C: int3     
0x0057033D: int3     
0x0057033E: int3     
0x0057033F: int3     
0x00570340: mov      eax, dword ptr [esp + 4]
0x00570344: push     esi
0x00570345: push     eax
0x00570346: mov      esi, ecx
0x00570348: call     0x521c60
0x0057034D: fldz     
0x0057034F: mov      dword ptr [esi], 0x9924e8
0x00570355: fst      dword ptr [esi + 0x100]
0x0057035B: fst      dword ptr [esi + 0x104]
0x00570361: mov      eax, esi
0x00570363: fst      dword ptr [esi + 0x108]
0x00570369: fld1     
0x0057036B: fstp     dword ptr [esi + 0x10c]
0x00570371: mov      dword ptr [esi + 0xf8], 0
0x0057037B: mov      dword ptr [esi + 0xec], 1
0x00570385: fstp     dword ptr [esi + 0x110]
0x0057038B: pop      esi
0x0057038C: ret      4
0x0057038F: int3     
0x00570390: fld      dword ptr [edx]
0x00570392: fsub     dword ptr [ecx]
0x00570394: fstp     dword ptr [eax]
0x00570396: fld      dword ptr [edx + 4]
0x00570399: fsub     dword ptr [ecx + 4]
0x0057039C: fstp     dword ptr [eax + 4]
0x0057039F: fld      dword ptr [edx + 8]
0x005703A2: fsub     dword ptr [ecx + 8]
0x005703A5: fstp     dword ptr [eax + 8]
0x005703A8: fld      dword ptr [edx + 0xc]
0x005703AB: fsub     dword ptr [ecx + 0xc]
0x005703AE: fstp     dword ptr [eax + 0xc]
0x005703B1: ret      
0x005703B2: int3     
0x005703B3: int3     
0x005703B4: int3     
0x005703B5: int3     
0x005703B6: int3     
0x005703B7: int3     
0x005703B8: int3     
0x005703B9: int3     
0x005703BA: int3     
0x005703BB: int3     
0x005703BC: int3     
0x005703BD: int3     
0x005703BE: int3     
0x005703BF: int3     
0x005703C0: sub      esp, 0x44
0x005703C3: push     esi
0x005703C4: mov      esi, ecx
0x005703C6: mov      ecx, dword ptr [esi + 0xd4]
0x005703CC: mov      eax, dword ptr [ecx + 0x23c]
0x005703D2: push     edi
0x005703D3: mov      edi, dword ptr [ecx + 0x240]
0x005703D9: test     eax, eax
0x005703DB: jne      0x57048c
0x005703E1: test     edi, edi
0x005703E3: je       0x5705f8
0x005703E9: mov      ecx, dword ptr [ecx + 8]
0x005703EC: movzx    eax, byte ptr [ecx + 1]
0x005703F0: mov      ecx, dword ptr [ecx + 4]
0x005703F3: mov      edx, dword ptr [ecx + 0x1c]
0x005703F6: mov      eax, dword ptr [edx + eax*4]
0x005703F9: add      eax, 0xc
0x005703FC: fld      dword ptr [eax]
0x005703FE: fstp     dword ptr [esp + 0xc]
0x00570402: fld      dword ptr [eax + 4]
0x00570405: fstp     dword ptr [esp + 0x10]
0x00570409: fld      dword ptr [eax + 8]
0x0057040C: fstp     dword ptr [esp + 0x14]
0x00570410: fld      dword ptr [eax + 0xc]
0x00570413: fstp     dword ptr [esp + 0x18]
0x00570417: fld      dword ptr [esp + 0xc]
0x0057041B: fstp     dword ptr [esi + 0x100]
0x00570421: fld      dword ptr [esp + 0x10]
0x00570425: fstp     dword ptr [esi + 0x104]
0x0057042B: fld      dword ptr [esp + 0x14]
0x0057042F: fstp     dword ptr [esi + 0x108]
0x00570435: fld      dword ptr [esp + 0x18]
0x00570439: fstp     dword ptr [esi + 0x10c]
0x0057043F: mov      eax, dword ptr [esi + 0xd4]
0x00570445: fld      dword ptr [eax + 0x290]
0x0057044B: add      eax, 0x28c
0x00570450: fld      dword ptr [eax]
0x00570452: fld      dword ptr [eax + 8]
0x00570455: fld      st(1)
0x00570457: fmulp    st(2)
0x00570459: fld      st(2)
0x0057045B: fmulp    st(3)
0x0057045D: fxch     st(1)
0x0057045F: faddp    st(2)
0x00570461: fmul     st(0), st(0)
0x00570463: faddp    st(1)
0x00570465: fstp     dword ptr [esp + 8]
0x00570469: fld      dword ptr [esp + 8]
0x0057046D: call     0x8eb930
0x00570472: fstp     dword ptr [esp + 8]
0x00570476: fld      dword ptr [esp + 8]
0x0057047A: mov      dword ptr [esi + 0xf8], edi
0x00570480: pop      edi
0x00570481: fstp     dword ptr [esi + 0xfc]
0x00570487: pop      esi
0x00570488: add      esp, 0x44
0x0057048B: ret      
0x0057048C: test     edi, edi
0x0057048E: jne      0x5705f8
0x00570494: mov      edx, dword ptr [esi + 0xf8]
0x0057049A: test     edx, edx
0x0057049C: je       0x5705f8
0x005704A2: cmp      eax, edx
0x005704A4: je       0x5704b5
0x005704A6: mov      eax, dword ptr [esi]
0x005704A8: mov      edx, dword ptr [eax + 0x10]
0x005704AB: mov      ecx, esi
0x005704AD: call     edx
0x005704AF: pop      edi
0x005704B0: pop      esi
0x005704B1: add      esp, 0x44
0x005704B4: ret      
0x005704B5: fld      dword ptr [0x9ac388] ; [f32=0.5, u32=0x3F000000]
0x005704BB: fcomp    dword ptr [esi + 0x110]
0x005704C1: fnstsw   ax
0x005704C3: test     ah, 1
0x005704C6: je       0x5704a6
0x005704C8: mov      ecx, dword ptr [ecx + 8]
0x005704CB: movzx    eax, byte ptr [ecx + 1]
0x005704CF: mov      ecx, dword ptr [ecx + 4]
0x005704D2: mov      edx, dword ptr [ecx + 0x1c]
0x005704D5: mov      eax, dword ptr [edx + eax*4]
0x005704D8: add      eax, 0xc
0x005704DB: lea      edi, [esi + 0x100]
0x005704E1: fld      dword ptr [eax]
0x005704E3: fstp     dword ptr [esp + 0xc]
0x005704E7: fld      dword ptr [eax + 4]
0x005704EA: fstp     dword ptr [esp + 0x10]
0x005704EE: fld      dword ptr [eax + 8]
0x005704F1: fstp     dword ptr [esp + 0x14]
0x005704F5: fld      dword ptr [eax + 0xc]
0x005704F8: lea      eax, [esp + 0xc]
0x005704FC: push     eax
0x005704FD: fstp     dword ptr [esp + 0x1c]
0x00570501: push     edi
0x00570502: call     0x6b22f0
0x00570507: fstp     dword ptr [esp + 0x10]
0x0057050B: fld      dword ptr [esp + 0x10]
0x0057050F: add      esp, 8
0x00570512: fld      dword ptr [0xafceb8]
0x00570518: fcompp   
0x0057051A: fnstsw   ax
0x0057051C: test     ah, 0x41
0x0057051F: jnp      0x5705e9
0x00570525: mov      ecx, dword ptr [esi + 0xf8]
0x0057052B: movzx    edx, byte ptr [ecx + 1]
0x0057052F: mov      eax, dword ptr [ecx + 4]
0x00570532: mov      eax, dword ptr [eax + 0x1c]
0x00570535: mov      eax, dword ptr [eax + edx*4]
0x00570538: add      eax, 0xc
0x0057053B: movzx    edx, byte ptr [ecx + 1]
0x0057053F: fld      dword ptr [eax]
0x00570541: fstp     dword ptr [esp + 0x1c]
0x00570545: fld      dword ptr [eax + 4]
0x00570548: fstp     dword ptr [esp + 0x20]
0x0057054C: fld      dword ptr [eax + 0xc]
0x0057054F: mov      eax, dword ptr [ecx + 4]
0x00570552: fstp     dword ptr [esp + 0x28]
0x00570556: mov      ecx, dword ptr [eax + 0x1c]
0x00570559: fld      dword ptr [esp + 0xc]
0x0057055D: mov      eax, dword ptr [ecx + edx*4]
0x00570560: fsub     dword ptr [esp + 0x1c]
0x00570564: add      eax, 0xc
0x00570567: lea      edx, [esp + 0x2c]
0x0057056B: push     edx
0x0057056C: fstp     dword ptr [esp + 0x40]
0x00570570: fld      dword ptr [esp + 0x14]
0x00570574: fsub     dword ptr [esp + 0x24]
0x00570578: fstp     dword ptr [esp + 0x44]
0x0057057C: fld      dword ptr [esp + 0x1c]
0x00570580: fsub     dword ptr [esp + 0x2c]
0x00570584: fstp     dword ptr [esp + 0x4c]
0x00570588: fldz     
0x0057058A: fst      dword ptr [esp + 0x48]
0x0057058E: fld      dword ptr [eax]
0x00570590: fstp     dword ptr [esp + 0x20]
0x00570594: fld      dword ptr [eax + 4]
0x00570597: fstp     dword ptr [esp + 0x24]
0x0057059B: fld      dword ptr [eax + 0xc]
0x0057059E: fstp     dword ptr [esp + 0x2c]
0x005705A2: lea      eax, [esp + 0x40]
0x005705A6: fld      dword ptr [edi]
0x005705A8: push     eax
0x005705A9: fsub     dword ptr [esp + 0x24]
0x005705AD: fstp     dword ptr [esp + 0x34]
0x005705B1: fld      dword ptr [edi + 4]
0x005705B4: fsub     dword ptr [esp + 0x28]
0x005705B8: fstp     dword ptr [esp + 0x38]
0x005705BC: fld      dword ptr [edi + 0xc]
0x005705BF: fsub     dword ptr [esp + 0x30]
0x005705C3: fstp     dword ptr [esp + 0x40]
0x005705C7: fstp     dword ptr [esp + 0x3c]
0x005705CB: call     0x509710
0x005705D0: fcomp    dword ptr [0x96665c] ; [f32=0, u32=0x00000000]
0x005705D6: mov      edx, dword ptr [esi]
0x005705D8: add      esp, 8
0x005705DB: mov      ecx, esi
0x005705DD: fnstsw   ax
0x005705DF: test     ah, 5
0x005705E2: jnp      0x5705ed
0x005705E4: mov      eax, dword ptr [edx + 4]
0x005705E7: call     eax
0x005705E9: mov      edx, dword ptr [esi]
0x005705EB: mov      ecx, esi
0x005705ED: mov      eax, dword ptr [edx + 0x10]
0x005705F0: call     eax
0x005705F2: pop      edi
0x005705F3: pop      esi
0x005705F4: add      esp, 0x44
0x005705F7: ret      
0x005705F8: cmp      dword ptr [esi + 0xf8], 0
0x005705FF: je       0x5706ef
0x00570605: test     eax, eax
0x00570607: jne      0x5706f7
0x0057060D: push     eax
0x0057060E: mov      ecx, esi
0x00570610: call     0x521b00
0x00570615: mov      eax, dword ptr [esi + 0xd4]
0x0057061B: fld      dword ptr [eax + 0x290]
0x00570621: lea      ecx, [esp + 0xc]
0x00570625: fstp     dword ptr [esp + 8]
0x00570629: push     ecx
0x0057062A: fld      dword ptr [eax + 0x28c]
0x00570630: mov      edx, ecx
0x00570632: fstp     dword ptr [esp + 0x10]
0x00570636: push     edx
0x00570637: fld      dword ptr [esp + 0x10]
0x0057063B: fstp     dword ptr [esp + 0x18]
0x0057063F: fldz     
0x00570641: fstp     dword ptr [esp + 0x1c]
0x00570645: fld1     
0x00570647: fstp     dword ptr [esp + 0x20]
0x0057064B: call     0x6b2160
0x00570650: fstp     dword ptr [esp + 0x10]
0x00570654: fld      dword ptr [esp + 0x10]
0x00570658: add      esp, 8
0x0057065B: fld      dword ptr [esi + 0xfc]
0x00570661: fmul     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x00570667: fcompp   
0x00570669: fnstsw   ax
0x0057066B: test     ah, 5
0x0057066E: jp       0x57079e
0x00570674: mov      ecx, dword ptr [esi + 0xd4]
0x0057067A: lea      eax, [esp + 0x1c]
0x0057067E: push     eax
0x0057067F: call     0x540780
0x00570684: lea      ecx, [esp + 0x1c]
0x00570688: push     ecx
0x00570689: mov      edx, ecx
0x0057068B: push     edx
0x0057068C: call     0x6b2160
0x00570691: fstp     st(0)
0x00570693: fld      dword ptr [esp + 0x28]
0x00570697: add      esp, 8
0x0057069A: fmul     dword ptr [esp + 0x10]
0x0057069E: fld      dword ptr [esp + 0x1c]
0x005706A2: fmul     dword ptr [esp + 0xc]
0x005706A6: faddp    st(1)
0x005706A8: fld      dword ptr [esp + 0x24]
0x005706AC: fmul     dword ptr [esp + 0x14]
0x005706B0: faddp    st(1)
0x005706B2: fstp     dword ptr [esp + 8]
0x005706B6: fld      dword ptr [esp + 8]
0x005706BA: fabs     
0x005706BC: fstp     dword ptr [esp + 8]
0x005706C0: fld      dword ptr [esp + 8]
0x005706C4: fld      dword ptr [0xafceb4]
0x005706CA: fcompp   
0x005706CC: fnstsw   ax
0x005706CE: test     ah, 0x41
0x005706D1: je       0x5704a6
0x005706D7: fld      dword ptr [esi + 0x110]
0x005706DD: pop      edi
0x005706DE: fadd     dword ptr [0xb76120]
0x005706E4: fstp     dword ptr [esi + 0x110]
0x005706EA: pop      esi
0x005706EB: add      esp, 0x44
0x005706EE: ret      
0x005706EF: test     eax, eax
0x005706F1: je       0x57079e
0x005706F7: fld      dword ptr [ecx + 0x290]
0x005706FD: lea      eax, [esp + 0xc]
0x00570701: fstp     dword ptr [esp + 8]
0x00570705: push     eax
0x00570706: fld      dword ptr [ecx + 0x28c]
0x0057070C: mov      ecx, eax
0x0057070E: fstp     dword ptr [esp + 0x10]
0x00570712: push     ecx
0x00570713: fld      dword ptr [esp + 0x10]
0x00570717: fstp     dword ptr [esp + 0x18]
0x0057071B: fldz     
0x0057071D: fstp     dword ptr [esp + 0x1c]
0x00570721: fld1     
0x00570723: fstp     dword ptr [esp + 0x20]
0x00570727: call     0x6b2160
0x0057072C: fstp     st(0)
0x0057072E: mov      ecx, dword ptr [esi + 0xd4]
0x00570734: add      esp, 8
0x00570737: lea      edx, [esp + 0x1c]
0x0057073B: push     edx
0x0057073C: call     0x540780
0x00570741: lea      eax, [esp + 0x1c]
0x00570745: push     eax
0x00570746: mov      ecx, eax
0x00570748: push     ecx
0x00570749: call     0x6b2160
0x0057074E: fstp     st(0)
0x00570750: fld      dword ptr [esp + 0x28]
0x00570754: add      esp, 8
0x00570757: fmul     dword ptr [esp + 0x10]
0x0057075B: fld      dword ptr [esp + 0x1c]
0x0057075F: fmul     dword ptr [esp + 0xc]
0x00570763: faddp    st(1)
0x00570765: fld      dword ptr [esp + 0x24]
0x00570769: fmul     dword ptr [esp + 0x14]
0x0057076D: faddp    st(1)
0x0057076F: fstp     dword ptr [esp + 8]
0x00570773: fld      dword ptr [esp + 8]
0x00570777: fcomp    qword ptr [0x992500] ; [f32=-2, f64=0.9, u32=0xC0000000]
0x0057077D: fnstsw   ax
0x0057077F: test     ah, 0x41
0x00570782: jne      0x570795
0x00570784: fldz     
0x00570786: lea      edx, [esi + 4]
0x00570789: fstp     dword ptr [esi + 0xd0]
0x0057078F: mov      dword ptr [esi + 0xcc], edx
0x00570795: push     0
0x00570797: mov      ecx, esi
0x00570799: call     0x521b00
0x0057079E: pop      edi
0x0057079F: pop      esi
0x005707A0: add      esp, 0x44
0x005707A3: ret      
0x005707A4: int3     
0x005707A5: int3     
0x005707A6: int3     
0x005707A7: int3     
0x005707A8: int3     
0x005707A9: int3     
0x005707AA: int3     
0x005707AB: int3     
0x005707AC: int3     
0x005707AD: int3     
0x005707AE: int3     
0x005707AF: int3     
0x005707B0: mov      eax, 0xb49dcc
0x005707B5: ret      
0x005707B6: int3     
0x005707B7: int3     
0x005707B8: int3     
0x005707B9: int3     
0x005707BA: int3     
0x005707BB: int3     
0x005707BC: int3     
0x005707BD: int3     
0x005707BE: int3     
0x005707BF: int3     
0x005707C0: push     esi
0x005707C1: mov      esi, ecx
0x005707C3: mov      dword ptr [esi], 0x9924e8
0x005707C9: call     0x521ad0
0x005707CE: test     byte ptr [esp + 8], 1
0x005707D3: je       0x5707de
0x005707D5: push     esi
0x005707D6: call     0x688fb0
0x005707DB: add      esp, 4
0x005707DE: mov      eax, esi
0x005707E0: pop      esi
0x005707E1: ret      4
0x005707E4: int3     
0x005707E5: int3     
0x005707E6: int3     
0x005707E7: int3     
0x005707E8: int3     
0x005707E9: int3     
0x005707EA: int3     
0x005707EB: int3     
0x005707EC: int3     
0x005707ED: int3     
0x005707EE: int3     
0x005707EF: int3     
0x005707F0: mov      eax, dword ptr [esp + 4]
0x005707F4: push     esi
0x005707F5: push     eax
0x005707F6: mov      esi, ecx
0x005707F8: call     0x56e900
0x005707FD: mov      dword ptr [esi], 0x992518
0x00570803: mov      dword ptr [esi + 0xf8], 3
0x0057080D: mov      eax, esi
0x0057080F: pop      esi
0x00570810: ret      4
0x00570813: int3     
0x00570814: int3     
0x00570815: int3     
0x00570816: int3     
0x00570817: int3     
0x00570818: int3     
0x00570819: int3     
0x0057081A: int3     
0x0057081B: int3     
0x0057081C: int3     
0x0057081D: int3     
0x0057081E: int3     
0x0057081F: int3     
0x00570820: mov      eax, 0xb49de8
0x00570825: ret      
0x00570826: int3     
0x00570827: int3     
0x00570828: int3     
0x00570829: int3     
0x0057082A: int3     
0x0057082B: int3     
0x0057082C: int3     
0x0057082D: int3     
0x0057082E: int3     
0x0057082F: int3     
0x00570830: mov      eax, dword ptr [esp + 4]
0x00570834: push     esi
0x00570835: push     eax
0x00570836: mov      esi, ecx
0x00570838: call     0x56e900
0x0057083D: mov      dword ptr [esi], 0x992540
0x00570843: mov      dword ptr [esi + 0xf8], 4
0x0057084D: mov      eax, esi
0x0057084F: pop      esi
0x00570850: ret      4
0x00570853: int3     
0x00570854: int3     
0x00570855: int3     
0x00570856: int3     
0x00570857: int3     
0x00570858: int3     
0x00570859: int3     
0x0057085A: int3     
0x0057085B: int3     
0x0057085C: int3     
0x0057085D: int3     
0x0057085E: int3     
0x0057085F: int3     
0x00570860: mov      eax, 0xb49e04
0x00570865: ret      
0x00570866: int3     
0x00570867: int3     
0x00570868: int3     
0x00570869: int3     
0x0057086A: int3     
0x0057086B: int3     
0x0057086C: int3     
0x0057086D: int3     
0x0057086E: int3     
0x0057086F: int3     
0x00570870: mov      eax, dword ptr [esp + 4]
0x00570874: push     esi
0x00570875: push     eax
0x00570876: mov      esi, ecx
0x00570878: call     0x56e900
0x0057087D: mov      dword ptr [esi], 0x992568
0x00570883: mov      dword ptr [esi + 0xf8], 4
0x0057088D: mov      eax, esi
0x0057088F: pop      esi
0x00570890: ret      4
0x00570893: int3     
0x00570894: int3     
0x00570895: int3     
0x00570896: int3     
0x00570897: int3     
0x00570898: int3     
0x00570899: int3     
0x0057089A: int3     
0x0057089B: int3     
0x0057089C: int3     
0x0057089D: int3     
0x0057089E: int3     
0x0057089F: int3     
0x005708A0: sub      esp, 0x68
0x005708A3: push     ebp
0x005708A4: push     esi
0x005708A5: push     edi
0x005708A6: mov      edi, ecx
0x005708A8: mov      ecx, dword ptr [edi + 0x110]
0x005708AE: xor      ebp, ebp
0x005708B0: cmp      ecx, ebp
0x005708B2: mov      dword ptr [esp + 0x14], edi
0x005708B6: mov      dword ptr [esp + 0x28], ebp
0x005708BA: mov      dword ptr [esp + 0x10], ebp
0x005708BE: mov      dword ptr [esp + 0xc], ebp
0x005708C2: mov      dword ptr [esp + 0x24], ecx
0x005708C6: jl       0x570ae0
0x005708CC: fld      qword ptr [0x984040] ; [f64=0.1, u32=0xA0000000]
0x005708D2: push     ebx
0x005708D3: mov      ebx, 1
0x005708D8: add      edi, 0xfc
0x005708DE: inc      ecx
0x005708DF: mov      eax, ebx
0x005708E1: cdq      
0x005708E2: idiv     ecx
0x005708E4: mov      eax, dword ptr [esp + 0x18]
0x005708E8: mov      esi, dword ptr [edi]
0x005708EA: movzx    ecx, byte ptr [esi + 1]
0x005708EE: mov      edx, dword ptr [eax + edx*4 + 0xfc]
0x005708F5: mov      eax, dword ptr [esi + 4]
0x005708F8: mov      eax, dword ptr [eax + 0x1c]
0x005708FB: mov      eax, dword ptr [eax + ecx*4]
0x005708FE: fld      dword ptr [eax + 0xc]
0x00570901: movzx    ecx, byte ptr [edx + 1]
0x00570905: mov      dword ptr [esp + 0x24], eax
0x00570909: fstp     dword ptr [esp + 0x1c]
0x0057090D: mov      eax, dword ptr [edx + 4]
0x00570910: mov      eax, dword ptr [eax + 0x1c]
0x00570913: mov      ecx, dword ptr [eax + ecx*4]
0x00570916: fld      dword ptr [ecx + 0xc]
0x00570919: fstp     dword ptr [esp + 0x20]
0x0057091D: fld      dword ptr [esp + 0x1c]
0x00570921: fld      st(0)
0x00570923: fld      dword ptr [esp + 0x20]
0x00570927: fld      st(0)
0x00570929: fucomp   st(2)
0x0057092B: fnstsw   ax
0x0057092D: fstp     st(1)
0x0057092F: test     ah, 0x44
0x00570932: jnp      0x570973
0x00570934: mov      eax, dword ptr [esp + 0x24]
0x00570938: fld      dword ptr [eax + 0x10]
0x0057093B: fsub     dword ptr [ecx + 0x10]
0x0057093E: fxch     st(2)
0x00570940: fsubrp   st(1)
0x00570942: fdivp    st(1)
0x00570944: fstp     dword ptr [esp + 0x24]
0x00570948: fld      dword ptr [esp + 0x24]
0x0057094C: fabs     
0x0057094E: fstp     dword ptr [esp + 0x24]
0x00570952: fld      dword ptr [esp + 0x24]
0x00570956: fcomp    st(1)
0x00570958: fnstsw   ax
0x0057095A: test     ah, 0x41
0x0057095D: jp       0x570977
0x0057095F: test     ebp, ebp
0x00570961: jne      0x57099c
0x00570963: inc      dword ptr [esp + 0x10]
0x00570967: add      edi, 4
0x0057096A: mov      dword ptr [esp + 0x14], edx
0x0057096E: mov      ebp, esi
0x00570970: inc      ebx
0x00570971: jmp      0x57097b
0x00570973: fstp     st(1)
0x00570975: fstp     st(0)
0x00570977: mov      edx, dword ptr [esp + 0x14]
0x0057097B: mov      eax, dword ptr [esp + 0x10]
0x0057097F: mov      ecx, dword ptr [esp + 0x28]
0x00570983: inc      eax
0x00570984: add      edi, 4
0x00570987: inc      ebx
0x00570988: cmp      eax, ecx
0x0057098A: mov      dword ptr [esp + 0x10], eax
0x0057098E: jle      0x5708de
0x00570994: mov      ecx, dword ptr [esp + 0x2c]
0x00570998: mov      esi, ecx
0x0057099A: jmp      0x5709a2
0x0057099C: mov      ecx, edx
0x0057099E: mov      edx, dword ptr [esp + 0x14]
0x005709A2: fstp     st(0)
0x005709A4: pop      ebx
0x005709A5: test     ebp, ebp
0x005709A7: je       0x570ae0
0x005709AD: test     ecx, ecx
0x005709AF: je       0x570ae0
0x005709B5: movzx    eax, byte ptr [ebp + 1]
0x005709B9: mov      edi, dword ptr [ebp + 4]
0x005709BC: mov      edi, dword ptr [edi + 0x1c]
0x005709BF: mov      eax, dword ptr [edi + eax*4]
0x005709C2: mov      edi, dword ptr [ecx + 4]
0x005709C5: mov      edi, dword ptr [edi + 0x1c]
0x005709C8: fld      dword ptr [eax + 0x10]
0x005709CB: movzx    eax, byte ptr [ecx + 1]
0x005709CF: mov      eax, dword ptr [edi + eax*4]
0x005709D2: fld      dword ptr [eax + 0x10]
0x005709D5: fcompp   
0x005709D7: fnstsw   ax
0x005709D9: test     ah, 0x41
0x005709DC: jne      0x5709ea
0x005709DE: mov      eax, ebp
0x005709E0: mov      ebp, ecx
0x005709E2: mov      ecx, eax
0x005709E4: mov      eax, edx
0x005709E6: mov      edx, esi
0x005709E8: mov      esi, eax
0x005709EA: movzx    eax, byte ptr [ebp + 1]
0x005709EE: mov      edi, dword ptr [ebp + 4]
0x005709F1: mov      edi, dword ptr [edi + 0x1c]
0x005709F4: mov      eax, dword ptr [edi + eax*4]
0x005709F7: add      eax, 0xc
0x005709FA: fld      dword ptr [eax]
0x005709FC: fstp     dword ptr [esp + 0x34]
0x00570A00: fld      dword ptr [eax + 4]
0x00570A03: fstp     dword ptr [esp + 0x38]
0x00570A07: fld      dword ptr [eax + 8]
0x00570A0A: fstp     dword ptr [esp + 0x3c]
0x00570A0E: fld      dword ptr [eax + 0xc]
0x00570A11: movzx    eax, byte ptr [edx + 1]
0x00570A15: mov      edx, dword ptr [edx + 4]
0x00570A18: fstp     dword ptr [esp + 0x40]
0x00570A1C: mov      edx, dword ptr [edx + 0x1c]
0x00570A1F: mov      eax, dword ptr [edx + eax*4]
0x00570A22: add      eax, 0xc
0x00570A25: fld      dword ptr [eax]
0x00570A27: fstp     dword ptr [esp + 0x44]
0x00570A2B: fld      dword ptr [eax + 4]
0x00570A2E: fstp     dword ptr [esp + 0x48]
0x00570A32: fld      dword ptr [eax + 8]
0x00570A35: fstp     dword ptr [esp + 0x4c]
0x00570A39: fld      dword ptr [eax + 0xc]
0x00570A3C: movzx    eax, byte ptr [ecx + 1]
0x00570A40: mov      ecx, dword ptr [ecx + 4]
0x00570A43: fstp     dword ptr [esp + 0x50]
0x00570A47: mov      edx, dword ptr [ecx + 0x1c]
0x00570A4A: mov      eax, dword ptr [edx + eax*4]
0x00570A4D: mov      ecx, dword ptr [esi + 4]
0x00570A50: add      eax, 0xc
0x00570A53: fld      dword ptr [eax]
0x00570A55: fstp     dword ptr [esp + 0x54]
0x00570A59: fld      dword ptr [eax + 4]
0x00570A5C: fstp     dword ptr [esp + 0x58]
0x00570A60: fld      dword ptr [eax + 8]
0x00570A63: fstp     dword ptr [esp + 0x5c]
0x00570A67: fld      dword ptr [eax + 0xc]
0x00570A6A: movzx    eax, byte ptr [esi + 1]
0x00570A6E: fstp     dword ptr [esp + 0x60]
0x00570A72: mov      edx, dword ptr [ecx + 0x1c]
0x00570A75: mov      eax, dword ptr [edx + eax*4]
0x00570A78: add      eax, 0xc
0x00570A7B: lea      ecx, [esp + 0x44]
0x00570A7F: fld      dword ptr [eax]
0x00570A81: fstp     dword ptr [esp + 0x64]
0x00570A85: fld      dword ptr [eax + 4]
0x00570A88: fstp     dword ptr [esp + 0x68]
0x00570A8C: fld      dword ptr [eax + 8]
0x00570A8F: fstp     dword ptr [esp + 0x6c]
0x00570A93: fld      dword ptr [eax + 0xc]
0x00570A96: lea      eax, [esp + 0x34]
0x00570A9A: push     eax
0x00570A9B: fstp     dword ptr [esp + 0x74]
0x00570A9F: push     ecx
0x00570AA0: call     0x6b22f0
0x00570AA5: fstp     dword ptr [esp + 0x34]
0x00570AA9: fld      dword ptr [esp + 0x34]
0x00570AAD: lea      edx, [esp + 0x5c]
0x00570AB1: push     edx
0x00570AB2: fstp     qword ptr [esp + 0x38]
0x00570AB6: lea      eax, [esp + 0x70]
0x00570ABA: push     eax
0x00570ABB: call     0x6b22f0
0x00570AC0: fdivr    qword ptr [esp + 0x3c]
0x00570AC4: add      esp, 0x10
0x00570AC7: fcomp    qword ptr [0x992588] ; [f32=-2, f64=1.3, u32=0xC0000000]
0x00570ACD: fnstsw   ax
0x00570ACF: test     ah, 0x41
0x00570AD2: jne      0x570ae0
0x00570AD4: pop      edi
0x00570AD5: pop      esi
0x00570AD6: mov      eax, 1
0x00570ADB: pop      ebp
0x00570ADC: add      esp, 0x68
0x00570ADF: ret      
0x00570AE0: pop      edi
0x00570AE1: pop      esi
0x00570AE2: xor      eax, eax
0x00570AE4: pop      ebp
0x00570AE5: add      esp, 0x68
0x00570AE8: ret      
0x00570AE9: int3     
0x00570AEA: int3     
0x00570AEB: int3     
0x00570AEC: int3     
0x00570AED: int3     
0x00570AEE: int3     
0x00570AEF: int3     
0x00570AF0: mov      eax, 0xb49e20
0x00570AF5: ret      
0x00570AF6: int3     
0x00570AF7: int3     
0x00570AF8: int3     
0x00570AF9: int3     
0x00570AFA: int3     
0x00570AFB: int3     
0x00570AFC: int3     
0x00570AFD: int3     
0x00570AFE: int3     
0x00570AFF: int3     
0x00570B00: push     esi
0x00570B01: mov      esi, ecx
0x00570B03: call     0x56e970
0x00570B08: test     byte ptr [esp + 8], 1
0x00570B0D: je       0x570b18
0x00570B0F: push     esi
0x00570B10: call     0x688fb0
0x00570B15: add      esp, 4
0x00570B18: mov      eax, esi
0x00570B1A: pop      esi
0x00570B1B: ret      4
0x00570B1E: int3     
0x00570B1F: int3     
0x00570B20: mov      eax, dword ptr [esp + 4]
0x00570B24: push     esi
0x00570B25: push     eax
0x00570B26: mov      esi, ecx
0x00570B28: call     0x56fb60
0x00570B2D: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00570B33: fstp     dword ptr [esi + 0x118]
0x00570B39: mov      dword ptr [esi], 0x9925a0
0x00570B3F: mov      eax, esi
0x00570B41: pop      esi
0x00570B42: ret      4
0x00570B45: int3     
0x00570B46: int3     
0x00570B47: int3     
0x00570B48: int3     
0x00570B49: int3     
0x00570B4A: int3     
0x00570B4B: int3     
0x00570B4C: int3     
0x00570B4D: int3     
0x00570B4E: int3     
0x00570B4F: int3     
0x00570B50: mov      dword ptr [ecx], 0x9925a0
0x00570B56: jmp      0x56fac0
0x00570B5B: int3     
0x00570B5C: int3     
0x00570B5D: int3     
0x00570B5E: int3     
0x00570B5F: int3     
0x00570B60: mov      eax, 0xb49e3c
0x00570B65: ret      
0x00570B66: int3     
0x00570B67: int3     
0x00570B68: int3     
0x00570B69: int3     
0x00570B6A: int3     
0x00570B6B: int3     
0x00570B6C: int3     
0x00570B6D: int3     
0x00570B6E: int3     
0x00570B6F: int3     
0x00570B70: push     esi
0x00570B71: mov      esi, ecx
0x00570B73: mov      dword ptr [esi], 0x9925a0
0x00570B79: call     0x56fac0
0x00570B7E: test     byte ptr [esp + 8], 1
0x00570B83: je       0x570b8e
0x00570B85: push     esi
0x00570B86: call     0x688fb0
0x00570B8B: add      esp, 4
0x00570B8E: mov      eax, esi
0x00570B90: pop      esi
0x00570B91: ret      4
0x00570B94: int3     
0x00570B95: int3     
0x00570B96: int3     
0x00570B97: int3     
0x00570B98: int3     
0x00570B99: int3     
0x00570B9A: int3     
0x00570B9B: int3     
0x00570B9C: int3     
0x00570B9D: int3     
0x00570B9E: int3     
0x00570B9F: int3     
0x00570BA0: mov      eax, dword ptr [esp + 4]
0x00570BA4: push     esi
0x00570BA5: push     eax
0x00570BA6: mov      esi, ecx
0x00570BA8: call     0x521c60
0x00570BAD: xor      eax, eax
0x00570BAF: mov      dword ptr [esi + 0x100], eax
0x00570BB5: mov      dword ptr [esi + 0xfc], eax
0x00570BBB: mov      dword ptr [esi + 0xf8], eax
0x00570BC1: mov      dword ptr [esi + 0x104], eax
0x00570BC7: mov      dword ptr [esi], 0x9925c8
0x00570BCD: mov      dword ptr [esi + 0xec], 1
0x00570BD7: mov      eax, esi
0x00570BD9: pop      esi
0x00570BDA: ret      4
0x00570BDD: int3     
0x00570BDE: int3     
0x00570BDF: int3     
0x00570BE0: mov      dword ptr [ecx], 0x9925c8
0x00570BE6: jmp      0x521ad0
0x00570BEB: int3     
0x00570BEC: int3     
0x00570BED: int3     
0x00570BEE: int3     
0x00570BEF: int3     
0x00570BF0: push     esi
0x00570BF1: mov      esi, ecx
0x00570BF3: call     0x521ae0
0x00570BF8: xor      eax, eax
0x00570BFA: mov      dword ptr [esi + 0x100], eax
0x00570C00: mov      dword ptr [esi + 0xfc], eax
0x00570C06: mov      dword ptr [esi + 0xf8], eax
0x00570C0C: mov      dword ptr [esi + 0x104], eax
0x00570C12: pop      esi
0x00570C13: ret      
0x00570C14: int3     
0x00570C15: int3     
0x00570C16: int3     
0x00570C17: int3     
0x00570C18: int3     
0x00570C19: int3     
0x00570C1A: int3     
0x00570C1B: int3     
0x00570C1C: int3     
0x00570C1D: int3     
0x00570C1E: int3     
0x00570C1F: int3     
0x00570C20: push     esi
0x00570C21: mov      esi, ecx
0x00570C23: mov      eax, dword ptr [esi]
0x00570C25: mov      edx, dword ptr [eax + 4]
0x00570C28: call     edx
0x00570C2A: mov      eax, dword ptr [esi]
0x00570C2C: mov      edx, dword ptr [eax + 0x10]
0x00570C2F: mov      ecx, esi
0x00570C31: pop      esi
0x00570C32: jmp      edx
0x00570C34: int3     
0x00570C35: int3     
0x00570C36: int3     
0x00570C37: int3     
0x00570C38: int3     
0x00570C39: int3     
0x00570C3A: int3     
0x00570C3B: int3     
0x00570C3C: int3     
0x00570C3D: int3     
0x00570C3E: int3     
0x00570C3F: int3     
0x00570C40: push     ecx
0x00570C41: push     ebx
0x00570C42: push     ebp
0x00570C43: push     esi
0x00570C44: mov      esi, ecx
0x00570C46: mov      eax, dword ptr [esi + 0xd4]
0x00570C4C: mov      ebp, dword ptr [eax + 0x240]
0x00570C52: push     edi
0x00570C53: mov      edi, dword ptr [eax + 0x23c]
0x00570C59: push     eax
0x00570C5A: call     0x522160
0x00570C5F: fstp     dword ptr [esp + 0x14]
0x00570C63: mov      eax, dword ptr [esi + 0xd4]
0x00570C69: push     eax
0x00570C6A: call     0x522370
0x00570C6F: add      esp, 8
0x00570C72: cmp      dword ptr [esi + 0x104], 0
0x00570C79: mov      ebx, eax
0x00570C7B: je       0x570c86
0x00570C7D: push     0
0x00570C7F: mov      ecx, esi
0x00570C81: call     0x521b00
0x00570C86: mov      eax, dword ptr [esi + 0x104]
0x00570C8C: cmp      eax, 3
0x00570C8F: ja       0x571021
0x00570C95: jmp      dword ptr [eax*4 + 0x571028]
0x00570C9C: test     edi, edi
0x00570C9E: je       0x571021
0x00570CA4: fld      dword ptr [0x992600] ; [f32=4.71239, u32=0x4096CBE4]
0x00570CAA: sub      esp, 8
0x00570CAD: fstp     dword ptr [esp + 4]
0x00570CB1: fld      dword ptr [esp + 0x18]
0x00570CB5: fstp     dword ptr [esp]
0x00570CB8: call     0x521d80
0x00570CBD: fabs     
0x00570CBF: add      esp, 8
0x00570CC2: fstp     dword ptr [esp + 0x10]
0x00570CC6: fld      dword ptr [esp + 0x10]
0x00570CCA: fcomp    dword ptr [0x9925fc] ; [f32=1.428, f64=1458.97, u32=0x3FB6C898]
0x00570CD0: fnstsw   ax
0x00570CD2: test     ah, 0x41
0x00570CD5: jp       0x571021
0x00570CDB: cmp      ebx, 2
0x00570CDE: jne      0x571021
0x00570CE4: mov      dword ptr [esi + 0xf8], edi
0x00570CEA: mov      eax, 1
0x00570CEF: pop      edi
0x00570CF0: mov      dword ptr [esi + 0x104], eax
0x00570CF6: mov      byte ptr [esi + 0xe0], al
0x00570CFC: pop      esi
0x00570CFD: pop      ebp
0x00570CFE: pop      ebx
0x00570CFF: pop      ecx
0x00570D00: ret      
0x00570D01: test     edi, edi
0x00570D03: je       0x570e2c
0x00570D09: test     ebp, ebp
0x00570D0B: jne      0x570ddd
0x00570D11: cmp      edi, dword ptr [esi + 0xf8]
0x00570D17: jne      0x570d29
0x00570D19: mov      edx, dword ptr [esi]
0x00570D1B: mov      eax, dword ptr [edx + 0x10]
0x00570D1E: pop      edi
0x00570D1F: mov      ecx, esi
0x00570D21: pop      esi
0x00570D22: pop      ebp
0x00570D23: pop      ebx
0x00570D24: add      esp, 4
0x00570D27: jmp      eax
0x00570D29: fld      dword ptr [0x9836b8] ; [f32=3.14159, u32=0x40490FDB]
0x00570D2F: sub      esp, 8
0x00570D32: fstp     dword ptr [esp + 4]
0x00570D36: fld      dword ptr [esp + 0x18]
0x00570D3A: fstp     dword ptr [esp]
0x00570D3D: call     0x521d80
0x00570D42: fabs     
0x00570D44: add      esp, 8
0x00570D47: fstp     dword ptr [esp + 0x10]
0x00570D4B: fld      dword ptr [esp + 0x10]
0x00570D4F: fcomp    dword ptr [0x9925fc] ; [f32=1.428, f64=1458.97, u32=0x3FB6C898]
0x00570D55: fnstsw   ax
0x00570D57: test     ah, 0x41
0x00570D5A: jne      0x570d6c
0x00570D5C: mov      edx, dword ptr [esi]
0x00570D5E: mov      eax, dword ptr [edx + 0x10]
0x00570D61: pop      edi
0x00570D62: mov      ecx, esi
0x00570D64: pop      esi
0x00570D65: pop      ebp
0x00570D66: pop      ebx
0x00570D67: add      esp, 4
0x00570D6A: jmp      eax
0x00570D6C: movzx    ecx, byte ptr [edi + 1]
0x00570D70: mov      edx, dword ptr [edi + 4]
0x00570D73: mov      edx, dword ptr [edx + 0x1c]
0x00570D76: mov      ecx, dword ptr [edx + ecx*4]
0x00570D79: mov      eax, dword ptr [esi + 0xf8]
0x00570D7F: movzx    edx, byte ptr [eax + 1]
0x00570D83: fld      dword ptr [ecx + 0xc]
0x00570D86: mov      eax, dword ptr [eax + 4]
0x00570D89: mov      ecx, dword ptr [eax + 0x1c]
0x00570D8C: mov      edx, dword ptr [ecx + edx*4]
0x00570D8F: fld      dword ptr [edx + 0xc]
0x00570D92: fcompp   
0x00570D94: fnstsw   ax
0x00570D96: test     ah, 1
0x00570D99: jne      0x570dab
0x00570D9B: mov      eax, dword ptr [esi]
0x00570D9D: mov      edx, dword ptr [eax + 0x10]
0x00570DA0: pop      edi
0x00570DA1: mov      ecx, esi
0x00570DA3: pop      esi
0x00570DA4: pop      ebp
0x00570DA5: pop      ebx
0x00570DA6: add      esp, 4
0x00570DA9: jmp      edx
0x00570DAB: cmp      ebx, 1
0x00570DAE: jne      0x570dc0
0x00570DB0: mov      eax, dword ptr [esi]
0x00570DB2: mov      edx, dword ptr [eax + 0x10]
0x00570DB5: pop      edi
0x00570DB6: mov      ecx, esi
0x00570DB8: pop      esi
0x00570DB9: pop      ebp
0x00570DBA: pop      ebx
0x00570DBB: add      esp, 4
0x00570DBE: jmp      edx
0x00570DC0: mov      dword ptr [esi + 0xfc], edi
0x00570DC6: pop      edi
0x00570DC7: mov      dword ptr [esi + 0x104], 2
0x00570DD1: mov      byte ptr [esi + 0xe0], 3
0x00570DD8: pop      esi
0x00570DD9: pop      ebp
0x00570DDA: pop      ebx
0x00570DDB: pop      ecx
0x00570DDC: ret      
0x00570DDD: cmp      ebx, 1
0x00570DE0: jne      0x570df2
0x00570DE2: mov      eax, dword ptr [esi]
0x00570DE4: mov      edx, dword ptr [eax + 0x10]
0x00570DE7: pop      edi
0x00570DE8: mov      ecx, esi
0x00570DEA: pop      esi
0x00570DEB: pop      ebp
0x00570DEC: pop      ebx
0x00570DED: add      esp, 4
0x00570DF0: jmp      edx
0x00570DF2: fld      dword ptr [0x9925f8] ; [f32=2.99879, f64=0.0889983, u32=0x403FEC3A]
0x00570DF8: fld      dword ptr [esp + 0x10]
0x00570DFC: fcom     st(1)
0x00570DFE: fnstsw   ax
0x00570E00: fstp     st(1)
0x00570E02: test     ah, 0x41
0x00570E05: jne      0x57101f
0x00570E0B: fcomp    qword ptr [0x9925f0] ; [f32=-0, f64=3.28439, u32=0x80000000]
0x00570E11: fnstsw   ax
0x00570E13: test     ah, 5
0x00570E16: jp       0x571021
0x00570E1C: mov      eax, dword ptr [esi]
0x00570E1E: mov      edx, dword ptr [eax + 0x10]
0x00570E21: pop      edi
0x00570E22: mov      ecx, esi
0x00570E24: pop      esi
0x00570E25: pop      ebp
0x00570E26: pop      ebx
0x00570E27: add      esp, 4
0x00570E2A: jmp      edx
0x00570E2C: pop      edi
0x00570E2D: mov      byte ptr [esi + 0xe0], 2
0x00570E34: pop      esi
0x00570E35: pop      ebp
0x00570E36: pop      ebx
0x00570E37: pop      ecx
0x00570E38: ret      
0x00570E39: test     edi, edi
0x00570E3B: je       0x570f74
0x00570E41: test     ebp, ebp
0x00570E43: jne      0x570f25
0x00570E49: cmp      edi, dword ptr [esi + 0xf8]
0x00570E4F: je       0x570f15
0x00570E55: cmp      edi, dword ptr [esi + 0xfc]
0x00570E5B: je       0x570f15
0x00570E61: fld      dword ptr [0x9837e0] ; [f32=1.5708, f64=-0.195796, u32=0x3FC90FDB]
0x00570E67: sub      esp, 8
0x00570E6A: fstp     dword ptr [esp + 4]
0x00570E6E: fld      dword ptr [esp + 0x18]
0x00570E72: fstp     dword ptr [esp]
0x00570E75: call     0x521d80
0x00570E7A: fabs     
0x00570E7C: add      esp, 8
0x00570E7F: fstp     dword ptr [esp + 0x10]
0x00570E83: fld      dword ptr [esp + 0x10]
0x00570E87: fcomp    dword ptr [0x9925fc] ; [f32=1.428, f64=1458.97, u32=0x3FB6C898]
0x00570E8D: fnstsw   ax
0x00570E8F: test     ah, 0x41
0x00570E92: jne      0x570ea4
0x00570E94: mov      eax, dword ptr [esi]
0x00570E96: mov      edx, dword ptr [eax + 0x10]
0x00570E99: pop      edi
0x00570E9A: mov      ecx, esi
0x00570E9C: pop      esi
0x00570E9D: pop      ebp
0x00570E9E: pop      ebx
0x00570E9F: add      esp, 4
0x00570EA2: jmp      edx
0x00570EA4: movzx    ecx, byte ptr [edi + 1]
0x00570EA8: mov      edx, dword ptr [edi + 4]
0x00570EAB: mov      edx, dword ptr [edx + 0x1c]
0x00570EAE: mov      ecx, dword ptr [edx + ecx*4]
0x00570EB1: mov      eax, dword ptr [esi + 0xfc]
0x00570EB7: movzx    edx, byte ptr [eax + 1]
0x00570EBB: fld      dword ptr [ecx + 0xc]
0x00570EBE: mov      eax, dword ptr [eax + 4]
0x00570EC1: mov      ecx, dword ptr [eax + 0x1c]
0x00570EC4: mov      edx, dword ptr [ecx + edx*4]
0x00570EC7: fld      dword ptr [edx + 0xc]
0x00570ECA: fcompp   
0x00570ECC: fnstsw   ax
0x00570ECE: test     ah, 1
0x00570ED1: jne      0x570ee3
0x00570ED3: mov      eax, dword ptr [esi]
0x00570ED5: mov      edx, dword ptr [eax + 0x10]
0x00570ED8: pop      edi
0x00570ED9: mov      ecx, esi
0x00570EDB: pop      esi
0x00570EDC: pop      ebp
0x00570EDD: pop      ebx
0x00570EDE: add      esp, 4
0x00570EE1: jmp      edx
0x00570EE3: cmp      ebx, 1
0x00570EE6: jne      0x570ef8
0x00570EE8: mov      eax, dword ptr [esi]
0x00570EEA: mov      edx, dword ptr [eax + 0x10]
0x00570EED: pop      edi
0x00570EEE: mov      ecx, esi
0x00570EF0: pop      esi
0x00570EF1: pop      ebp
0x00570EF2: pop      ebx
0x00570EF3: add      esp, 4
0x00570EF6: jmp      edx
0x00570EF8: mov      dword ptr [esi + 0x100], edi
0x00570EFE: pop      edi
0x00570EFF: mov      dword ptr [esi + 0x104], 3
0x00570F09: mov      byte ptr [esi + 0xe0], 5
0x00570F10: pop      esi
0x00570F11: pop      ebp
0x00570F12: pop      ebx
0x00570F13: pop      ecx
0x00570F14: ret      
0x00570F15: mov      eax, dword ptr [esi]
0x00570F17: mov      edx, dword ptr [eax + 0x10]
0x00570F1A: pop      edi
0x00570F1B: mov      ecx, esi
0x00570F1D: pop      esi
0x00570F1E: pop      ebp
0x00570F1F: pop      ebx
0x00570F20: add      esp, 4
0x00570F23: jmp      edx
0x00570F25: cmp      ebx, 1
0x00570F28: jne      0x570f3a
0x00570F2A: mov      eax, dword ptr [esi]
0x00570F2C: mov      edx, dword ptr [eax + 0x10]
0x00570F2F: pop      edi
0x00570F30: mov      ecx, esi
0x00570F32: pop      esi
0x00570F33: pop      ebp
0x00570F34: pop      ebx
0x00570F35: add      esp, 4
0x00570F38: jmp      edx
0x00570F3A: fld      dword ptr [0x9925fc] ; [f32=1.428, f64=1458.97, u32=0x3FB6C898]
0x00570F40: fld      dword ptr [esp + 0x10]
0x00570F44: fcom     st(1)
0x00570F46: fnstsw   ax
0x00570F48: fstp     st(1)
0x00570F4A: test     ah, 0x41
0x00570F4D: jne      0x57101f
0x00570F53: fcomp    qword ptr [0x9925e8] ; [f32=-2, f64=1.7136, u32=0xC0000000]
0x00570F59: fnstsw   ax
0x00570F5B: test     ah, 5
0x00570F5E: jp       0x571021
0x00570F64: mov      eax, dword ptr [esi]
0x00570F66: mov      edx, dword ptr [eax + 0x10]
0x00570F69: pop      edi
0x00570F6A: mov      ecx, esi
0x00570F6C: pop      esi
0x00570F6D: pop      ebp
0x00570F6E: pop      ebx
0x00570F6F: add      esp, 4
0x00570F72: jmp      edx
0x00570F74: pop      edi
0x00570F75: mov      byte ptr [esi + 0xe0], 4
0x00570F7C: pop      esi
0x00570F7D: pop      ebp
0x00570F7E: pop      ebx
0x00570F7F: pop      ecx
0x00570F80: ret      
0x00570F81: test     edi, edi
0x00570F83: jne      0x570f95
0x00570F85: mov      eax, dword ptr [esi]
0x00570F87: mov      edx, dword ptr [eax + 0x10]
0x00570F8A: pop      edi
0x00570F8B: mov      ecx, esi
0x00570F8D: pop      esi
0x00570F8E: pop      ebp
0x00570F8F: pop      ebx
0x00570F90: add      esp, 4
0x00570F93: jmp      edx
0x00570F95: cmp      ebx, 1
0x00570F98: jne      0x570faa
0x00570F9A: mov      eax, dword ptr [esi]
0x00570F9C: mov      edx, dword ptr [eax + 0x10]
0x00570F9F: pop      edi
0x00570FA0: mov      ecx, esi
0x00570FA2: pop      esi
0x00570FA3: pop      ebp
0x00570FA4: pop      ebx
0x00570FA5: add      esp, 4
0x00570FA8: jmp      edx
0x00570FAA: fld      dword ptr [0x9925e4] ; [f32=6.14039, f64=-2, u32=0x40C47E0A]
0x00570FB0: fld      dword ptr [esp + 0x10]
0x00570FB4: fcom     st(1)
0x00570FB6: fnstsw   ax
0x00570FB8: fstp     st(1)
0x00570FBA: test     ah, 0x41
0x00570FBD: jne      0x570fe0
0x00570FBF: fld      dword ptr [0x9925e0] ; [f32=0.1428, f64=10492.1, u32=0x3E123A18]
0x00570FC5: fcomp    st(1)
0x00570FC7: fnstsw   ax
0x00570FC9: test     ah, 0x41
0x00570FCC: jne      0x570fe0
0x00570FCE: mov      eax, dword ptr [esi]
0x00570FD0: fstp     st(0)
0x00570FD2: mov      edx, dword ptr [eax + 0x10]
0x00570FD5: pop      edi
0x00570FD6: mov      ecx, esi
0x00570FD8: pop      esi
0x00570FD9: pop      ebp
0x00570FDA: pop      ebx
0x00570FDB: add      esp, 4
0x00570FDE: jmp      edx
0x00570FE0: fld      dword ptr [0x992600] ; [f32=4.71239, u32=0x4096CBE4]
0x00570FE6: sub      esp, 8
0x00570FE9: fstp     dword ptr [esp + 4]
0x00570FED: fstp     dword ptr [esp]
0x00570FF0: call     0x521d80
0x00570FF5: fabs     
0x00570FF7: add      esp, 8
0x00570FFA: fstp     dword ptr [esp + 0x10]
0x00570FFE: fld      dword ptr [esp + 0x10]
0x00571002: fcomp    dword ptr [0x9925fc] ; [f32=1.428, f64=1458.97, u32=0x3FB6C898]
0x00571008: fnstsw   ax
0x0057100A: test     ah, 5
0x0057100D: jp       0x571021
0x0057100F: mov      eax, dword ptr [esi]
0x00571011: mov      edx, dword ptr [eax + 0x14]
0x00571014: pop      edi
0x00571015: mov      ecx, esi
0x00571017: pop      esi
0x00571018: pop      ebp
0x00571019: pop      ebx
0x0057101A: add      esp, 4
0x0057101D: jmp      edx
0x0057101F: fstp     st(0)
0x00571021: pop      edi
0x00571022: pop      esi
0x00571023: pop      ebp
0x00571024: pop      ebx
0x00571025: pop      ecx
0x00571026: ret      
0x00571027: nop      
0x00571028: pushfd   
0x00571029: or       al, 0x57
0x0057102B: add      byte ptr [ecx], al
0x0057102D: or       eax, 0xe390057
0x00571032: push     edi
0x00571033: add      byte ptr [ecx - 0x33ffa8f1], al
0x00571039: int3     
0x0057103A: int3     
0x0057103B: int3     
0x0057103C: int3     
0x0057103D: int3     
0x0057103E: int3     
0x0057103F: int3     
0x00571040: mov      eax, 0xb49e58
0x00571045: ret      
0x00571046: int3     
0x00571047: int3     
0x00571048: int3     
0x00571049: int3     
0x0057104A: int3     
0x0057104B: int3     
0x0057104C: int3     
0x0057104D: int3     
0x0057104E: int3     
0x0057104F: int3     
0x00571050: push     esi
0x00571051: mov      esi, ecx
0x00571053: mov      dword ptr [esi], 0x9925c8
0x00571059: call     0x521ad0
0x0057105E: test     byte ptr [esp + 8], 1
0x00571063: je       0x57106e
0x00571065: push     esi
0x00571066: call     0x688fb0
0x0057106B: add      esp, 4
0x0057106E: mov      eax, esi
0x00571070: pop      esi
0x00571071: ret      4
0x00571074: int3     
0x00571075: int3     
0x00571076: int3     
0x00571077: int3     
0x00571078: int3     
0x00571079: int3     
0x0057107A: int3     
0x0057107B: int3     
0x0057107C: int3     
0x0057107D: int3     
0x0057107E: int3     
0x0057107F: int3     
0x00571080: xor      eax, eax
0x00571082: ret      
0x00571083: int3     
0x00571084: int3     
0x00571085: int3     
0x00571086: int3     
0x00571087: int3     
0x00571088: int3     
0x00571089: int3     
0x0057108A: int3     
0x0057108B: int3     
0x0057108C: int3     
0x0057108D: int3     
0x0057108E: int3     
0x0057108F: int3     
0x00571090: xor      eax, eax
0x00571092: ret      
0x00571093: int3     
0x00571094: int3     
0x00571095: int3     
0x00571096: int3     
0x00571097: int3     
0x00571098: int3     
0x00571099: int3     
0x0057109A: int3     
0x0057109B: int3     
0x0057109C: int3     
0x0057109D: int3     
0x0057109E: int3     
0x0057109F: int3     
0x005710A0: mov      eax, dword ptr [esp + 4]
0x005710A4: test     eax, eax
0x005710A6: je       0x5710bf
0x005710A8: mov      ecx, dword ptr [esp + 8]
0x005710AC: push     ecx
0x005710AD: push     0
0x005710AF: push     0
0x005710B1: push     0xff
0x005710B6: push     eax
0x005710B7: call     0x6ca1e0
0x005710BC: add      esp, 0x14
0x005710BF: ret      
0x005710C0: mov      eax, dword ptr [esp + 4]
0x005710C4: push     -1
0x005710C6: push     0
0x005710C8: push     eax
0x005710C9: call     0x6914e0
0x005710CE: add      esp, 0xc
0x005710D1: xor      eax, eax
0x005710D3: ret      
0x005710D4: int3     
0x005710D5: int3     
0x005710D6: int3     
0x005710D7: int3     
0x005710D8: int3     
0x005710D9: int3     
0x005710DA: int3     
0x005710DB: int3     
0x005710DC: int3     
0x005710DD: int3     
0x005710DE: int3     
0x005710DF: int3     
0x005710E0: ret      
0x005710E1: int3     
0x005710E2: int3     
0x005710E3: int3     
0x005710E4: int3     
0x005710E5: int3     
0x005710E6: int3     
0x005710E7: int3     
0x005710E8: int3     
0x005710E9: int3     
0x005710EA: int3     
0x005710EB: int3     
0x005710EC: int3     
0x005710ED: int3     
0x005710EE: int3     
0x005710EF: int3     
0x005710F0: ret      
0x005710F1: int3     
0x005710F2: int3     
0x005710F3: int3     
0x005710F4: int3     
0x005710F5: int3     
0x005710F6: int3     
0x005710F7: int3     
0x005710F8: int3     
0x005710F9: int3     
0x005710FA: int3     
0x005710FB: int3     
0x005710FC: int3     
0x005710FD: int3     
0x005710FE: int3     
0x005710FF: int3     
0x00571100: push     esi
0x00571101: mov      esi, ecx
0x00571103: cmp      dword ptr [esi + 0x3c], 0
0x00571107: je       0x57111d
0x00571109: mov      eax, dword ptr [esi + 4]
0x0057110C: mov      ecx, dword ptr [eax + 0x1b4]
0x00571112: mov      edx, dword ptr [ecx]
0x00571114: mov      edx, dword ptr [edx + 0x10]
0x00571117: lea      eax, [esi + 0xc]
0x0057111A: push     eax
0x0057111B: call     edx
0x0057111D: mov      dword ptr [esi + 0x3c], 0
0x00571124: pop      esi
0x00571125: ret      
0x00571126: int3     
0x00571127: int3     
0x00571128: int3     
0x00571129: int3     
0x0057112A: int3     
0x0057112B: int3     
0x0057112C: int3     
0x0057112D: int3     
0x0057112E: int3     
0x0057112F: int3     
0x00571130: push     -1
0x00571132: push     0x9481a8
0x00571137: mov      eax, dword ptr fs:[0]
0x0057113D: push     eax
0x0057113E: sub      esp, 0xc
0x00571141: mov      eax, dword ptr [0xb089c8]
0x00571146: xor      eax, esp
0x00571148: push     eax
0x00571149: lea      eax, [esp + 0x10]
0x0057114D: mov      dword ptr fs:[0], eax
0x00571153: call     0x490ae0
0x00571158: test     eax, eax
0x0057115A: je       0x571190
0x0057115C: mov      eax, dword ptr [esp + 0x20]
0x00571160: mov      edx, dword ptr [esp + 0x24]
0x00571164: mov      ecx, dword ptr [0xb1aae8]
0x0057116A: mov      dword ptr [esp + 4], 0x992608
0x00571172: mov      dword ptr [esp + 8], eax
0x00571176: mov      dword ptr [esp + 0xc], edx
0x0057117A: mov      eax, dword ptr [ecx]
0x0057117C: mov      eax, dword ptr [eax + 8]
0x0057117F: push     1
0x00571181: lea      edx, [esp + 8]
0x00571185: push     edx
0x00571186: mov      dword ptr [esp + 0x20], 0
0x0057118E: call     eax
0x00571190: mov      ecx, dword ptr [esp + 0x10]
0x00571194: mov      dword ptr fs:[0], ecx
0x0057119B: pop      ecx
0x0057119C: add      esp, 0x18
0x0057119F: ret      
0x005711A0: mov      eax, ecx
0x005711A2: mov      ecx, dword ptr [eax + 4]
0x005711A5: mov      dword ptr [eax + 0x3c], 1
0x005711AC: mov      dword ptr [eax + 0x40], ecx
0x005711AF: mov      edx, dword ptr [ecx + 0x1bc]
0x005711B5: test     edx, edx
0x005711B7: je       0x5711bf
0x005711B9: mov      edx, dword ptr [edx + 0x10]
0x005711BC: mov      dword ptr [eax + 0x54], edx
0x005711BF: mov      ecx, dword ptr [ecx + 0x1b4]
0x005711C5: mov      edx, dword ptr [ecx]
0x005711C7: add      eax, 0xc
0x005711CA: push     0
0x005711CC: push     eax
0x005711CD: mov      eax, dword ptr [edx + 0xc]
0x005711D0: call     eax
0x005711D2: ret      4
0x005711D5: int3     
0x005711D6: int3     
0x005711D7: int3     
0x005711D8: int3     
0x005711D9: int3     
0x005711DA: int3     
0x005711DB: int3     
0x005711DC: int3     
0x005711DD: int3     
0x005711DE: int3     
0x005711DF: int3     
0x005711E0: mov      eax, dword ptr [esp + 8]
0x005711E4: cmp      dword ptr [eax + 0x54], -1
0x005711E8: jne      0x5711f9
0x005711EA: mov      ecx, dword ptr [eax + 0x40]
0x005711ED: mov      edx, dword ptr [ecx + 0x1bc]
0x005711F3: mov      ecx, dword ptr [edx + 0x10]
0x005711F6: mov      dword ptr [eax + 0x54], ecx
0x005711F9: cmp      dword ptr [0xb49c64], 1
0x00571200: mov      edx, dword ptr [esp + 4]
0x00571204: push     esi
0x00571205: mov      esi, dword ptr [edx + 4]
0x00571208: je       0x57129b
0x0057120E: test     esi, esi
0x00571210: je       0x57129b
0x00571216: mov      eax, dword ptr [esi + 0x1dc]
0x0057121C: cmp      byte ptr [eax + 2], 0
0x00571220: jne      0x57129b
0x00571222: push     ebx
0x00571223: push     0x51b1e251
0x00571228: lea      ecx, [esi + 0x1a8]
0x0057122E: call     0x5691a0
0x00571233: mov      ebx, eax
0x00571235: cmp      dword ptr [ebx + 0xc0], 0xa
0x0057123C: jl       0x571265
0x0057123E: mov      ecx, dword ptr [esi + 0x1bc]
0x00571244: push     edi
0x00571245: mov      edi, dword ptr [ecx + 0x10]
0x00571248: mov      ecx, dword ptr [0xb1ab18]
0x0057124E: call     0x491d80
0x00571253: mov      edx, dword ptr [eax + 0x18]
0x00571256: mov      eax, dword ptr [edx + edi*4]
0x00571259: push     eax
0x0057125A: push     0xa
0x0057125C: call     0x571130
0x00571261: add      esp, 8
0x00571264: pop      edi
0x00571265: cmp      dword ptr [ebx + 0xb0], 2
0x0057126C: pop      ebx
0x0057126D: jl       0x57129b
0x0057126F: mov      ecx, dword ptr [esi + 0x1bc]
0x00571275: mov      esi, dword ptr [ecx + 0x10]
0x00571278: mov      ecx, dword ptr [0xb1ab18]
0x0057127E: call     0x491d80
0x00571283: mov      edx, dword ptr [eax + 0x18]
0x00571286: mov      eax, dword ptr [edx + esi*4]
0x00571289: pop      esi
0x0057128A: mov      dword ptr [esp + 8], eax
0x0057128E: mov      dword ptr [esp + 4], 9
0x00571296: jmp      0x571130
0x0057129B: pop      esi
0x0057129C: ret      
0x0057129D: int3     
0x0057129E: int3     
0x0057129F: int3     
0x005712A0: mov      ecx, dword ptr [esp + 8]
0x005712A4: mov      eax, dword ptr [ecx + 0x40]
0x005712A7: mov      edx, dword ptr [eax + 0x1dc]
0x005712AD: cmp      byte ptr [edx + 2], 0
0x005712B1: jne      0x571317
0x005712B3: cmp      dword ptr [ecx + 0x54], -1
0x005712B7: jne      0x5712c5
0x005712B9: mov      eax, dword ptr [eax + 0x1bc]
0x005712BF: mov      edx, dword ptr [eax + 0x10]
0x005712C2: mov      dword ptr [ecx + 0x54], edx
0x005712C5: mov      eax, dword ptr [ecx + 0x54]
0x005712C8: imul     eax, eax, 0x86e0
0x005712CE: inc      dword ptr [eax + 0xb28728]
0x005712D4: mov      edx, dword ptr [eax + 0xb28728]
0x005712DA: cmp      edx, dword ptr [0xafcebc]
0x005712E0: jb       0x571317
0x005712E2: mov      eax, dword ptr [eax + 0xb2872c]
0x005712E8: cmp      eax, dword ptr [0xb49e74]
0x005712EE: jb       0x571317
0x005712F0: push     esi
0x005712F1: mov      esi, dword ptr [ecx + 0x54]
0x005712F4: mov      ecx, dword ptr [0xb1ab18]
0x005712FA: call     0x491d80
0x005712FF: mov      ecx, dword ptr [eax + 0x18]
0x00571302: mov      edx, dword ptr [ecx + esi*4]
0x00571305: pop      esi
0x00571306: mov      dword ptr [esp + 8], edx
0x0057130A: mov      dword ptr [esp + 4], 6
0x00571312: jmp      0x571130
0x00571317: ret      
0x00571318: int3     
0x00571319: int3     
0x0057131A: int3     
0x0057131B: int3     
0x0057131C: int3     
0x0057131D: int3     
0x0057131E: int3     
0x0057131F: int3     
0x00571320: mov      ecx, dword ptr [esp + 0x10]
0x00571324: mov      eax, dword ptr [ecx + 0x40]
0x00571327: cmp      dword ptr [eax + 0x1ec], 0
0x0057132E: je       0x57138d
0x00571330: mov      edx, dword ptr [eax + 0x1dc]
0x00571336: cmp      byte ptr [edx + 2], 0
0x0057133A: jne      0x57138d
0x0057133C: cmp      dword ptr [ecx + 0x54], -1
0x00571340: jne      0x57134e
0x00571342: mov      eax, dword ptr [eax + 0x1bc]
0x00571348: mov      edx, dword ptr [eax + 0x10]
0x0057134B: mov      dword ptr [ecx + 0x54], edx
0x0057134E: mov      eax, dword ptr [ecx + 0x54]
0x00571351: imul     eax, eax, 0x86e0
0x00571357: inc      dword ptr [eax + 0xb28738]
0x0057135D: cmp      dword ptr [eax + 0xb28738], 0x14
0x00571364: lea      eax, [eax + 0xb28738]
0x0057136A: jb       0x57138d
0x0057136C: push     esi
0x0057136D: mov      esi, dword ptr [ecx + 0x54]
0x00571370: mov      ecx, dword ptr [0xb1ab18]
0x00571376: call     0x491d80
0x0057137B: mov      eax, dword ptr [eax + 0x18]
0x0057137E: mov      ecx, dword ptr [eax + esi*4]
0x00571381: push     ecx
0x00571382: push     0xb
0x00571384: call     0x571130
0x00571389: add      esp, 8
0x0057138C: pop      esi
0x0057138D: ret      
0x0057138E: int3     
0x0057138F: int3     
0x00571390: push     esi
0x00571391: mov      esi, dword ptr [esp + 0x14]
0x00571395: mov      eax, dword ptr [esi + 0x40]
0x00571398: cmp      dword ptr [eax + 0x1ec], 0
0x0057139F: je       0x5713fc
0x005713A1: mov      ecx, dword ptr [eax + 0x1dc]
0x005713A7: cmp      byte ptr [ecx + 2], 0
0x005713AB: jne      0x5713fc
0x005713AD: mov      ecx, dword ptr [esp + 0x10]
0x005713B1: mov      edx, dword ptr [ecx + 4]
0x005713B4: cmp      dword ptr [edx + 0xd4], eax
0x005713BA: jne      0x5713fc
0x005713BC: cmp      dword ptr [esi + 0x54], -1
0x005713C0: jne      0x5713ce
0x005713C2: mov      eax, dword ptr [eax + 0x1bc]
0x005713C8: mov      edx, dword ptr [eax + 0x10]
0x005713CB: mov      dword ptr [esi + 0x54], edx
0x005713CE: mov      ecx, dword ptr [ecx + 4]
0x005713D1: mov      eax, dword ptr [ecx]
0x005713D3: mov      edx, dword ptr [eax]
0x005713D5: call     edx
0x005713D7: cmp      dword ptr [eax + 0x18], 1
0x005713DB: jne      0x5713fc
0x005713DD: mov      ecx, dword ptr [0xb1ab18]
0x005713E3: mov      esi, dword ptr [esi + 0x54]
0x005713E6: call     0x491d80
0x005713EB: mov      eax, dword ptr [eax + 0x18]
0x005713EE: mov      ecx, dword ptr [eax + esi*4]
0x005713F1: push     ecx
0x005713F2: push     0
0x005713F4: call     0x571130
0x005713F9: add      esp, 8
0x005713FC: pop      esi
0x005713FD: ret      
0x005713FE: int3     
0x005713FF: int3     
0x00571400: push     ebx
0x00571401: mov      ebx, dword ptr [esp + 0x10]
0x00571405: push     esi
0x00571406: mov      esi, dword ptr [esp + 0x18]
0x0057140A: mov      eax, dword ptr [esi + 0x40]
0x0057140D: mov      ecx, dword ptr [eax + 0x1bc]
0x00571413: mov      eax, dword ptr [ecx + 0x10]
0x00571416: cmp      eax, dword ptr [ebx + 4]
0x00571419: jne      0x571495
0x0057141B: cmp      dword ptr [esi + 0x54], -1
0x0057141F: jne      0x571424
0x00571421: mov      dword ptr [esi + 0x54], eax
0x00571424: cmp      dword ptr [ebx + 8], 3
0x00571428: push     edi
0x00571429: jne      0x57144a
0x0057142B: mov      ecx, dword ptr [0xb1ab18]
0x00571431: mov      edi, dword ptr [esi + 0x54]
0x00571434: call     0x491d80
0x00571439: mov      edx, dword ptr [eax + 0x18]
0x0057143C: mov      eax, dword ptr [edx + edi*4]
0x0057143F: push     eax
0x00571440: push     2
0x00571442: call     0x571130
0x00571447: add      esp, 8
0x0057144A: cmp      dword ptr [ebx + 8], 5
0x0057144E: jne      0x57146f
0x00571450: mov      ecx, dword ptr [0xb1ab18]
0x00571456: mov      edi, dword ptr [esi + 0x54]
0x00571459: call     0x491d80
0x0057145E: mov      ecx, dword ptr [eax + 0x18]
0x00571461: mov      edx, dword ptr [ecx + edi*4]
0x00571464: push     edx
0x00571465: push     3
0x00571467: call     0x571130
0x0057146C: add      esp, 8
0x0057146F: cmp      dword ptr [ebx + 8], 7
0x00571473: pop      edi
0x00571474: jne      0x571495
0x00571476: mov      ecx, dword ptr [0xb1ab18]
0x0057147C: mov      esi, dword ptr [esi + 0x54]
0x0057147F: call     0x491d80
0x00571484: mov      eax, dword ptr [eax + 0x18]
0x00571487: mov      ecx, dword ptr [eax + esi*4]
0x0057148A: push     ecx
0x0057148B: push     4
0x0057148D: call     0x571130
0x00571492: add      esp, 8
0x00571495: pop      esi
0x00571496: pop      ebx
0x00571497: ret      
0x00571498: int3     
0x00571499: int3     
0x0057149A: int3     
0x0057149B: int3     
0x0057149C: int3     
0x0057149D: int3     
0x0057149E: int3     
0x0057149F: int3     
0x005714A0: push     edi
0x005714A1: mov      edi, dword ptr [esp + 0x14]
0x005714A5: mov      eax, dword ptr [edi + 0x40]
0x005714A8: cmp      dword ptr [eax + 0x1ec], 0
0x005714AF: je       0x571568
0x005714B5: mov      ecx, dword ptr [eax + 0x1dc]
0x005714BB: cmp      byte ptr [ecx + 2], 0
0x005714BF: jne      0x571568
0x005714C5: cmp      dword ptr [edi + 0x54], -1
0x005714C9: jne      0x5714d7
0x005714CB: mov      edx, dword ptr [eax + 0x1bc]
0x005714D1: mov      eax, dword ptr [edx + 0x10]
0x005714D4: mov      dword ptr [edi + 0x54], eax
0x005714D7: mov      ecx, dword ptr [0xb1aa7c]
0x005714DD: mov      ecx, dword ptr [ecx + 0xc]
0x005714E0: push     ebx
0x005714E1: push     ebp
0x005714E2: push     esi
0x005714E3: mov      esi, dword ptr [edi + 0x54]
0x005714E6: push     0x2b
0x005714E8: call     0x4c2bc0
0x005714ED: mov      eax, dword ptr [eax + 0x264]
0x005714F3: mov      eax, dword ptr [eax]
0x005714F5: mov      eax, dword ptr [eax + 4]
0x005714F8: xor      edx, edx
0x005714FA: xor      ecx, ecx
0x005714FC: mov      ebx, 1
0x00571501: test     eax, eax
0x00571503: jle      0x571546
0x00571505: imul     esi, esi, 0x86e0
0x0057150B: add      esi, 0xb28120
0x00571511: cmp      dword ptr [esi], 0
0x00571514: jne      0x571531
0x00571516: cmp      dword ptr [0xb49ca4], ecx
0x0057151C: jne      0x57152d
0x0057151E: mov      ebp, dword ptr [edi + 0x40]
0x00571521: cmp      dword ptr [ebp + 0xd6c], 0
0x00571528: jle      0x57152d
0x0057152A: inc      edx
0x0057152B: jmp      0x57153a
0x0057152D: xor      ebx, ebx
0x0057152F: jmp      0x57153a
0x00571531: inc      edx
0x00571532: cmp      edx, dword ptr [0xafcec0]
0x00571538: jae      0x571546
0x0057153A: inc      ecx
0x0057153B: add      esi, 0xc
0x0057153E: cmp      ecx, eax
0x00571540: jl       0x571511
0x00571542: test     ebx, ebx
0x00571544: je       0x571565
0x00571546: mov      ecx, dword ptr [0xb1ab18]
0x0057154C: mov      esi, dword ptr [edi + 0x54]
0x0057154F: call     0x491d80
0x00571554: mov      ecx, dword ptr [eax + 0x18]
0x00571557: mov      edx, dword ptr [ecx + esi*4]
0x0057155A: push     edx
0x0057155B: push     1
0x0057155D: call     0x571130
0x00571562: add      esp, 8
0x00571565: pop      esi
0x00571566: pop      ebp
0x00571567: pop      ebx
0x00571568: pop      edi
0x00571569: ret      
0x0057156A: int3     
0x0057156B: int3     
0x0057156C: int3     
0x0057156D: int3     
0x0057156E: int3     
0x0057156F: int3     
0x00571570: push     ecx
0x00571571: push     ebx
0x00571572: push     ebp
0x00571573: push     esi
0x00571574: mov      esi, ecx
0x00571576: cmp      dword ptr [esi + 0x54], -1
0x0057157A: push     edi
0x0057157B: jne      0x57158c
0x0057157D: mov      eax, dword ptr [esi + 0x40]
0x00571580: mov      ecx, dword ptr [eax + 0x1bc]
0x00571586: mov      edx, dword ptr [ecx + 0x10]
0x00571589: mov      dword ptr [esi + 0x54], edx
0x0057158C: mov      eax, dword ptr [0xb1aa7c]
0x00571591: mov      ecx, dword ptr [eax + 0xc]
0x00571594: push     0x2b
0x00571596: call     0x4c2bc0
0x0057159B: mov      eax, dword ptr [eax + 0x264]
0x005715A1: mov      ecx, dword ptr [esi + 0x54]
0x005715A4: mov      edx, dword ptr [eax]
0x005715A6: mov      edx, dword ptr [edx + 4]
0x005715A9: mov      dword ptr [esp + 0x10], ecx
0x005715AD: xor      ebx, ebx
0x005715AF: xor      ecx, ecx
0x005715B1: test     edx, edx
0x005715B3: jle      0x5715f5
0x005715B5: mov      eax, dword ptr [eax]
0x005715B7: mov      esi, dword ptr [eax + 8]
0x005715BA: xor      edi, edi
0x005715BC: lea      esp, [esp]
0x005715C0: mov      eax, dword ptr [esi]
0x005715C2: cmp      dword ptr [eax + 0x88], 0
0x005715C9: je       0x5715ea
0x005715CB: mov      ebp, dword ptr [esp + 0x10]
0x005715CF: imul     ebp, ebp, 0x86e0
0x005715D5: mov      ebp, dword ptr [edi + ebp + 0xb28120]
0x005715DC: cmp      ebp, dword ptr [eax + 0x7c]
0x005715DF: jb       0x5715ea
0x005715E1: inc      ebx
0x005715E2: cmp      ebx, dword ptr [0xafcec4]
0x005715E8: jae      0x5715fd
0x005715EA: inc      ecx
0x005715EB: add      esi, 4
0x005715EE: add      edi, 0xc
0x005715F1: cmp      ecx, edx
0x005715F3: jl       0x5715c0
0x005715F5: cmp      ebx, dword ptr [0xafcec4]
0x005715FB: jb       0x57161d
0x005715FD: mov      ecx, dword ptr [0xb1ab18]
0x00571603: call     0x491d80
0x00571608: mov      ecx, dword ptr [eax + 0x18]
0x0057160B: mov      edx, dword ptr [esp + 0x10]
0x0057160F: mov      eax, dword ptr [ecx + edx*4]
0x00571612: push     eax
0x00571613: push     5
0x00571615: call     0x571130
0x0057161A: add      esp, 8
0x0057161D: pop      edi
0x0057161E: pop      esi
0x0057161F: pop      ebp
0x00571620: pop      ebx
0x00571621: pop      ecx
0x00571622: ret      
0x00571623: int3     
0x00571624: int3     
0x00571625: int3     
0x00571626: int3     
0x00571627: int3     
0x00571628: int3     
0x00571629: int3     
0x0057162A: int3     
0x0057162B: int3     
0x0057162C: int3     
0x0057162D: int3     
0x0057162E: int3     
0x0057162F: int3     
0x00571630: push     ebx
0x00571631: push     esi
0x00571632: push     edi
0x00571633: mov      edi, ecx
0x00571635: cmp      dword ptr [edi + 0x54], -1
0x00571639: jne      0x57164a
0x0057163B: mov      eax, dword ptr [edi + 0x40]
0x0057163E: mov      ecx, dword ptr [eax + 0x1bc]
0x00571644: mov      edx, dword ptr [ecx + 0x10]
0x00571647: mov      dword ptr [edi + 0x54], edx
0x0057164A: mov      eax, dword ptr [0xb1aa7c]
0x0057164F: mov      ecx, dword ptr [eax + 0xc]
0x00571652: push     0x2b
0x00571654: call     0x4c2bc0
0x00571659: mov      esi, dword ptr [eax + 0x264]
0x0057165F: mov      ecx, dword ptr [esi]
0x00571661: mov      ecx, dword ptr [ecx + 4]
0x00571664: mov      edi, dword ptr [edi + 0x54]
0x00571667: xor      eax, eax
0x00571669: test     ecx, ecx
0x0057166B: jle      0x57169c
0x0057166D: mov      esi, dword ptr [esi]
0x0057166F: mov      esi, dword ptr [esi + 8]
0x00571672: xor      edx, edx
0x00571674: mov      ebx, dword ptr [esi]
0x00571676: cmp      dword ptr [ebx + 0x88], 0
0x0057167D: je       0x571691
0x0057167F: mov      ebx, edi
0x00571681: imul     ebx, ebx, 0x86e0
0x00571687: cmp      dword ptr [ebx + edx + 0xb28120], 0
0x0057168F: jbe      0x5716b8
0x00571691: inc      eax
0x00571692: add      esi, 4
0x00571695: add      edx, 0xc
0x00571698: cmp      eax, ecx
0x0057169A: jl       0x571674
0x0057169C: mov      ecx, dword ptr [0xb1ab18]
0x005716A2: call     0x491d80
0x005716A7: mov      edx, dword ptr [eax + 0x18]
0x005716AA: mov      eax, dword ptr [edx + edi*4]
0x005716AD: push     eax
0x005716AE: push     7
0x005716B0: call     0x571130
0x005716B5: add      esp, 8
0x005716B8: pop      edi
0x005716B9: pop      esi
0x005716BA: pop      ebx
0x005716BB: ret      
0x005716BC: int3     
0x005716BD: int3     
0x005716BE: int3     
0x005716BF: int3     
0x005716C0: push     ebx
0x005716C1: push     ebp
0x005716C2: push     esi
0x005716C3: mov      esi, ecx
0x005716C5: cmp      dword ptr [esi + 0x54], -1
0x005716C9: push     edi
0x005716CA: jne      0x5716db
0x005716CC: mov      eax, dword ptr [esi + 0x40]
0x005716CF: mov      ecx, dword ptr [eax + 0x1bc]
0x005716D5: mov      edx, dword ptr [ecx + 0x10]
0x005716D8: mov      dword ptr [esi + 0x54], edx
0x005716DB: mov      eax, dword ptr [0xb1aa7c]
0x005716E0: mov      ecx, dword ptr [eax + 0xc]
0x005716E3: push     0x2b
0x005716E5: call     0x4c2bc0
0x005716EA: mov      edx, dword ptr [eax + 0x264]
0x005716F0: mov      ecx, dword ptr [edx]
0x005716F2: mov      ecx, dword ptr [ecx + 4]
0x005716F5: mov      ebx, dword ptr [esi + 0x54]
0x005716F8: xor      eax, eax
0x005716FA: test     ecx, ecx
0x005716FC: jle      0x571732
0x005716FE: mov      edx, dword ptr [edx]
0x00571700: mov      edx, dword ptr [edx + 8]
0x00571703: xor      esi, esi
0x00571705: mov      edi, dword ptr [edx]
0x00571707: cmp      dword ptr [edi + 0x88], 0
0x0057170E: je       0x571727
0x00571710: mov      ebp, ebx
0x00571712: imul     ebp, ebp, 0x86e0
0x00571718: mov      ebp, dword ptr [esi + ebp + 0xb28120]
0x0057171F: cmp      ebp, dword ptr [edi + 0x80]
0x00571725: jb       0x57174e
0x00571727: inc      eax
0x00571728: add      edx, 4
0x0057172B: add      esi, 0xc
0x0057172E: cmp      eax, ecx
0x00571730: jl       0x571705
0x00571732: mov      ecx, dword ptr [0xb1ab18]
0x00571738: call     0x491d80
0x0057173D: mov      eax, dword ptr [eax + 0x18]
0x00571740: mov      ecx, dword ptr [eax + ebx*4]
0x00571743: push     ecx
0x00571744: push     8
0x00571746: call     0x571130
0x0057174B: add      esp, 8
0x0057174E: pop      edi
0x0057174F: pop      esi
0x00571750: pop      ebp
0x00571751: pop      ebx
0x00571752: ret      
0x00571753: int3     
0x00571754: int3     
0x00571755: int3     
0x00571756: int3     
0x00571757: int3     
0x00571758: int3     
0x00571759: int3     
0x0057175A: int3     
0x0057175B: int3     
0x0057175C: int3     
0x0057175D: int3     
0x0057175E: int3     
0x0057175F: int3     
0x00571760: push     esi
0x00571761: push     edi
0x00571762: mov      esi, ecx
0x00571764: mov      eax, dword ptr [esi + 0xc]
0x00571767: mov      edx, dword ptr [eax + 0x18]
0x0057176A: push     esi
0x0057176B: lea      edi, [esi + 0xc]
0x0057176E: push     0x5712a0
0x00571773: push     0xb49e80
0x00571778: mov      ecx, edi
0x0057177A: call     edx
0x0057177C: mov      eax, dword ptr [edi]
0x0057177E: mov      edx, dword ptr [eax + 0x18]
0x00571781: push     esi
0x00571782: push     0x5711e0
0x00571787: push     0xb1bc00
0x0057178C: mov      ecx, edi
0x0057178E: call     edx
0x00571790: mov      ecx, dword ptr [0xb1baa0]
0x00571796: push     esi
0x00571797: push     0x571320
0x0057179C: lea      eax, [esi + 0x44]
0x0057179F: push     eax
0x005717A0: push     ecx
0x005717A1: call     0x52d1d0
0x005717A6: mov      eax, dword ptr [0xb1badc]
0x005717AB: push     esi
0x005717AC: push     0x571390
0x005717B1: lea      edx, [esi + 0x48]
0x005717B4: push     edx
0x005717B5: push     eax
0x005717B6: call     0x52d1d0
0x005717BB: mov      edx, dword ptr [0xb1bafc]
0x005717C1: push     esi
0x005717C2: push     0x571400
0x005717C7: lea      ecx, [esi + 0x4c]
0x005717CA: push     ecx
0x005717CB: push     edx
0x005717CC: call     0x52d1d0
0x005717D1: mov      eax, dword ptr [0xb1bb20]
0x005717D6: push     esi
0x005717D7: push     0x5714a0
0x005717DC: add      esi, 0x50
0x005717DF: push     esi
0x005717E0: push     eax
0x005717E1: call     0x52d1d0
0x005717E6: add      esp, 0x40
0x005717E9: pop      edi
0x005717EA: pop      esi
0x005717EB: ret      
0x005717EC: int3     
0x005717ED: int3     
0x005717EE: int3     
0x005717EF: int3     
0x005717F0: push     esi
0x005717F1: mov      esi, ecx
0x005717F3: call     0x56d6f0
0x005717F8: xor      eax, eax
0x005717FA: mov      dword ptr [esi], 0x99261c
0x00571800: mov      dword ptr [esi + 0x44], eax
0x00571803: mov      dword ptr [esi + 0x48], eax
0x00571806: mov      dword ptr [esi + 0x4c], eax
0x00571809: mov      dword ptr [esi + 0x50], eax
0x0057180C: mov      dword ptr [esi + 0x40], eax
0x0057180F: mov      dword ptr [esi + 0x54], 0xffffffff
0x00571816: mov      eax, esi
0x00571818: pop      esi
0x00571819: ret      
0x0057181A: int3     
0x0057181B: int3     
0x0057181C: int3     
0x0057181D: int3     
0x0057181E: int3     
0x0057181F: int3     
0x00571820: push     -1
0x00571822: push     0x9481f7
0x00571827: mov      eax, dword ptr fs:[0]
0x0057182D: push     eax
0x0057182E: push     ecx
0x0057182F: push     ebx
0x00571830: push     esi
0x00571831: mov      eax, dword ptr [0xb089c8]
0x00571836: xor      eax, esp
0x00571838: push     eax
0x00571839: lea      eax, [esp + 0x10]
0x0057183D: mov      dword ptr fs:[0], eax
0x00571843: mov      esi, ecx
0x00571845: mov      dword ptr [esp + 0xc], esi
0x00571849: mov      dword ptr [esi], 0x99261c
0x0057184F: mov      dword ptr [esp + 0x18], 4
0x00571857: call     dword ptr [0x992648] ; [u32=0x00571100]
0x0057185D: xor      ebx, ebx
0x0057185F: mov      dword ptr [esi + 4], ebx
0x00571862: mov      dword ptr [esi + 8], ebx
0x00571865: mov      eax, dword ptr [esi + 0x50]
0x00571868: push     eax
0x00571869: mov      byte ptr [esp + 0x1c], 3
0x0057186E: call     0x52d1b0
0x00571873: mov      dword ptr [esi + 0x50], ebx
0x00571876: mov      ecx, dword ptr [esi + 0x4c]
0x00571879: push     ecx
0x0057187A: mov      byte ptr [esp + 0x20], 2
0x0057187F: call     0x52d1b0
0x00571884: mov      dword ptr [esi + 0x4c], ebx
0x00571887: mov      edx, dword ptr [esi + 0x48]
0x0057188A: push     edx
0x0057188B: mov      byte ptr [esp + 0x24], 1
0x00571890: call     0x52d1b0
0x00571895: mov      dword ptr [esi + 0x48], ebx
0x00571898: mov      eax, dword ptr [esi + 0x44]
0x0057189B: push     eax
0x0057189C: mov      byte ptr [esp + 0x28], bl
0x005718A0: call     0x52d1b0
0x005718A5: add      esp, 0x10
0x005718A8: mov      ecx, esi
0x005718AA: mov      dword ptr [esi + 0x44], ebx
0x005718AD: mov      dword ptr [esp + 0x18], 0xffffffff
0x005718B5: call     0x56d750
0x005718BA: mov      ecx, dword ptr [esp + 0x10]
0x005718BE: mov      dword ptr fs:[0], ecx
0x005718C5: pop      ecx
0x005718C6: pop      esi
0x005718C7: pop      ebx
0x005718C8: add      esp, 0x10
0x005718CB: ret      
0x005718CC: int3     
0x005718CD: int3     
0x005718CE: int3     
0x005718CF: int3     
0x005718D0: mov      eax, dword ptr [esp + 4]
0x005718D4: push     esi
0x005718D5: push     0
0x005718D7: push     eax
0x005718D8: push     0xc
0x005718DA: mov      esi, ecx
0x005718DC: call     0x689060
0x005718E1: add      esp, 0xc
0x005718E4: test     eax, eax
0x005718E6: je       0x5718fe
0x005718E8: mov      dword ptr [eax], 0x992608
0x005718EE: mov      ecx, dword ptr [esi + 4]
0x005718F1: mov      dword ptr [eax + 4], ecx
0x005718F4: mov      edx, dword ptr [esi + 8]
0x005718F7: mov      dword ptr [eax + 8], edx
0x005718FA: pop      esi
0x005718FB: ret      4
0x005718FE: xor      eax, eax
0x00571900: pop      esi
0x00571901: ret      4
0x00571904: int3     
0x00571905: int3     
0x00571906: int3     
0x00571907: int3     
0x00571908: int3     
0x00571909: int3     
0x0057190A: int3     
0x0057190B: int3     
0x0057190C: int3     
0x0057190D: int3     
0x0057190E: int3     
0x0057190F: int3     
0x00571910: xor      eax, eax
0x00571912: cmp      dword ptr [esp + 4], 0xb1ab24
0x0057191A: sete     al
0x0057191D: ret      4
0x00571920: mov      eax, 0xb1ab24
0x00571925: ret      
0x00571926: int3     
0x00571927: int3     
0x00571928: int3     
0x00571929: int3     
0x0057192A: int3     
0x0057192B: int3     
0x0057192C: int3     
0x0057192D: int3     
0x0057192E: int3     
0x0057192F: int3     
0x00571930: mov      eax, 0xb49e78
0x00571935: ret      
0x00571936: int3     
0x00571937: int3     
0x00571938: int3     
0x00571939: int3     
0x0057193A: int3     
0x0057193B: int3     
0x0057193C: int3     
0x0057193D: int3     
0x0057193E: int3     
0x0057193F: int3     
0x00571940: push     esi
0x00571941: mov      esi, ecx
0x00571943: call     0x571820
0x00571948: test     byte ptr [esp + 8], 1
0x0057194D: je       0x571958
0x0057194F: push     esi
0x00571950: call     0x688fb0
0x00571955: add      esp, 4
0x00571958: mov      eax, esi
0x0057195A: pop      esi
0x0057195B: ret      4
0x0057195E: int3     
0x0057195F: int3     
0x00571960: mov      eax, ecx
0x00571962: mov      ecx, dword ptr [esp + 4]
0x00571966: mov      dword ptr [eax], 0x99264c
0x0057196C: mov      dword ptr [eax + 4], ecx
0x0057196F: ret      4
0x00571972: int3     
0x00571973: int3     
0x00571974: int3     
0x00571975: int3     
0x00571976: int3     
0x00571977: int3     
0x00571978: int3     
0x00571979: int3     
0x0057197A: int3     
0x0057197B: int3     
0x0057197C: int3     
0x0057197D: int3     
0x0057197E: int3     
0x0057197F: int3     
0x00571980: mov      eax, ecx
0x00571982: mov      ecx, dword ptr [esp + 4]
0x00571986: mov      dword ptr [eax], 0x99264c
0x0057198C: mov      edx, dword ptr [ecx + 4]
0x0057198F: mov      dword ptr [eax + 4], edx
0x00571992: ret      4
0x00571995: int3     
0x00571996: int3     
0x00571997: int3     
0x00571998: int3     
0x00571999: int3     
0x0057199A: int3     
0x0057199B: int3     
0x0057199C: int3     
0x0057199D: int3     
0x0057199E: int3     
0x0057199F: int3     
0x005719A0: mov      dword ptr [ecx], 0x99264c
0x005719A6: ret      
0x005719A7: int3     
0x005719A8: int3     
0x005719A9: int3     
0x005719AA: int3     
0x005719AB: int3     
0x005719AC: int3     
0x005719AD: int3     
0x005719AE: int3     
0x005719AF: int3     
0x005719B0: test     byte ptr [esp + 4], 1
0x005719B5: push     esi
0x005719B6: mov      esi, ecx
0x005719B8: mov      dword ptr [esi], 0x99264c
0x005719BE: je       0x5719c9
0x005719C0: push     esi
0x005719C1: call     0x688fb0
0x005719C6: add      esp, 4
0x005719C9: mov      eax, esi
0x005719CB: pop      esi
0x005719CC: ret      4
0x005719CF: int3     
0x005719D0: ret      
0x005719D1: int3     
0x005719D2: int3     
0x005719D3: int3     
0x005719D4: int3     
0x005719D5: int3     
0x005719D6: int3     
0x005719D7: int3     
0x005719D8: int3     
0x005719D9: int3     
0x005719DA: int3     
0x005719DB: int3     
0x005719DC: int3     
0x005719DD: int3     
0x005719DE: int3     
0x005719DF: int3     
0x005719E0: ret      
0x005719E1: int3     
0x005719E2: int3     
0x005719E3: int3     
0x005719E4: int3     
0x005719E5: int3     
0x005719E6: int3     
0x005719E7: int3     
0x005719E8: int3     
0x005719E9: int3     
0x005719EA: int3     
0x005719EB: int3     
0x005719EC: int3     
0x005719ED: int3     
0x005719EE: int3     
0x005719EF: int3     
0x005719F0: ret      
0x005719F1: int3     
0x005719F2: int3     
0x005719F3: int3     
0x005719F4: int3     
0x005719F5: int3     
0x005719F6: int3     
0x005719F7: int3     
0x005719F8: int3     
0x005719F9: int3     
0x005719FA: int3     
0x005719FB: int3     
0x005719FC: int3     
0x005719FD: int3     
0x005719FE: int3     
0x005719FF: int3     
0x00571A00: ret      
0x00571A01: int3     
0x00571A02: int3     
0x00571A03: int3     
0x00571A04: int3     
0x00571A05: int3     
0x00571A06: int3     
0x00571A07: int3     
0x00571A08: int3     
0x00571A09: int3     
0x00571A0A: int3     
0x00571A0B: int3     
0x00571A0C: int3     
0x00571A0D: int3     
0x00571A0E: int3     
0x00571A0F: int3     
0x00571A10: ret      
0x00571A11: int3     
0x00571A12: int3     
0x00571A13: int3     
0x00571A14: int3     
0x00571A15: int3     
0x00571A16: int3     
0x00571A17: int3     
0x00571A18: int3     
0x00571A19: int3     
0x00571A1A: int3     
0x00571A1B: int3     
0x00571A1C: int3     
0x00571A1D: int3     
0x00571A1E: int3     
0x00571A1F: int3     
0x00571A20: ret      
0x00571A21: int3     
0x00571A22: int3     
0x00571A23: int3     
0x00571A24: int3     
0x00571A25: int3     
0x00571A26: int3     
0x00571A27: int3     
0x00571A28: int3     
0x00571A29: int3     
0x00571A2A: int3     
0x00571A2B: int3     
0x00571A2C: int3     
0x00571A2D: int3     
0x00571A2E: int3     
0x00571A2F: int3     
0x00571A30: mov      eax, ecx
0x00571A32: fldz     
0x00571A34: xor      ecx, ecx
0x00571A36: mov      dword ptr [eax], 0x992654
0x00571A3C: mov      dword ptr [eax + 0x154], ecx
0x00571A42: mov      dword ptr [eax + 0x158], ecx
0x00571A48: mov      dword ptr [eax + 0x15c], ecx
0x00571A4E: mov      dword ptr [eax + 0x160], ecx
0x00571A54: fst      dword ptr [eax + 0x14]
0x00571A57: fst      dword ptr [eax + 0x128]
0x00571A5D: mov      dword ptr [eax + 0x28], ecx
0x00571A60: fst      dword ptr [eax + 0x124]
0x00571A66: mov      dword ptr [eax + 0x10], ecx
0x00571A69: mov      dword ptr [eax + 0xa4], ecx
0x00571A6F: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00571A75: mov      dword ptr [eax + 0xa8], ecx
0x00571A7B: mov      dword ptr [eax + 0xac], ecx
0x00571A81: mov      dword ptr [eax + 0xb0], ecx
0x00571A87: mov      dword ptr [eax + 0xb4], ecx
0x00571A8D: mov      dword ptr [eax + 0xb8], ecx
0x00571A93: mov      dword ptr [eax + 0xbc], ecx
0x00571A99: mov      dword ptr [eax + 0xc0], ecx
0x00571A9F: mov      dword ptr [eax + 0xc4], ecx
0x00571AA5: mov      dword ptr [eax + 0xc8], ecx
0x00571AAB: mov      dword ptr [eax + 0xcc], ecx
0x00571AB1: mov      dword ptr [eax + 0xd0], ecx
0x00571AB7: mov      dword ptr [eax + 0xd4], ecx
0x00571ABD: mov      dword ptr [eax + 0xd8], ecx
0x00571AC3: mov      dword ptr [eax + 0xdc], ecx
0x00571AC9: mov      dword ptr [eax + 0xe0], ecx
0x00571ACF: mov      dword ptr [eax + 0xe4], ecx
0x00571AD5: mov      dword ptr [eax + 0xe8], ecx
0x00571ADB: mov      dword ptr [eax + 0xec], ecx
0x00571AE1: mov      dword ptr [eax + 0xf0], ecx
0x00571AE7: mov      dword ptr [eax + 0xf4], ecx
0x00571AED: mov      dword ptr [eax + 0xf8], ecx
0x00571AF3: mov      dword ptr [eax + 0xfc], ecx
0x00571AF9: mov      dword ptr [eax + 0x100], ecx
0x00571AFF: mov      dword ptr [eax + 0x104], ecx
0x00571B05: mov      dword ptr [eax + 0x108], ecx
0x00571B0B: mov      dword ptr [eax + 0x10c], ecx
0x00571B11: mov      dword ptr [eax + 0x110], ecx
0x00571B17: mov      dword ptr [eax + 0x114], ecx
0x00571B1D: mov      dword ptr [eax + 0x118], ecx
0x00571B23: mov      dword ptr [eax + 0x11c], ecx
0x00571B29: mov      dword ptr [eax + 0x120], ecx
0x00571B2F: mov      dword ptr [eax + 0x134], ecx
0x00571B35: mov      dword ptr [eax + 0x138], ecx
0x00571B3B: mov      dword ptr [eax + 0x13c], ecx
0x00571B41: mov      dword ptr [eax + 0x140], ecx
0x00571B47: mov      dword ptr [eax + 0x144], ecx
0x00571B4D: mov      dword ptr [eax + 0x148], ecx
0x00571B53: mov      dword ptr [eax + 0x2c], 0xffffffff
0x00571B5A: mov      dword ptr [eax + 0x80], ecx
0x00571B60: mov      dword ptr [eax + 0x30], ecx
0x00571B63: mov      dword ptr [eax + 0x50], ecx
0x00571B66: mov      dword ptr [eax + 0x40], ecx
0x00571B69: mov      dword ptr [eax + 0x60], ecx
0x00571B6C: mov      dword ptr [eax + 0x70], ecx
0x00571B6F: mov      dword ptr [eax + 0x84], ecx
0x00571B75: mov      dword ptr [eax + 0x34], ecx
0x00571B78: mov      dword ptr [eax + 0x54], ecx
0x00571B7B: mov      dword ptr [eax + 0x44], ecx
0x00571B7E: mov      dword ptr [eax + 0x64], ecx
0x00571B81: mov      dword ptr [eax + 0x74], ecx
0x00571B84: mov      dword ptr [eax + 0x88], ecx
0x00571B8A: mov      dword ptr [eax + 0x38], ecx
0x00571B8D: mov      dword ptr [eax + 0x58], ecx
0x00571B90: mov      dword ptr [eax + 0x48], ecx
0x00571B93: mov      dword ptr [eax + 0x68], ecx
0x00571B96: mov      dword ptr [eax + 0x78], ecx
0x00571B99: mov      dword ptr [eax + 0x8c], ecx
0x00571B9F: mov      dword ptr [eax + 0x3c], ecx
0x00571BA2: mov      dword ptr [eax + 0x5c], ecx
0x00571BA5: mov      dword ptr [eax + 0x4c], ecx
0x00571BA8: mov      dword ptr [eax + 0x6c], ecx
0x00571BAB: mov      dword ptr [eax + 0x7c], ecx
0x00571BAE: fstp     dword ptr [eax + 0x18]
0x00571BB1: mov      dword ptr [eax + 0x9c], ecx
0x00571BB7: fstp     dword ptr [eax + 0x98]
0x00571BBD: mov      dword ptr [eax + 0xa0], ecx
0x00571BC3: mov      dword ptr [eax + 0x14c], ecx
0x00571BC9: mov      dword ptr [eax + 0x20], ecx
0x00571BCC: mov      dword ptr [eax + 0x24], ecx
0x00571BCF: ret      
0x00571BD0: push     -1
0x00571BD2: push     0x94824a
0x00571BD7: mov      eax, dword ptr fs:[0]
0x00571BDD: push     eax
0x00571BDE: push     ecx
0x00571BDF: push     ebx
0x00571BE0: push     esi
0x00571BE1: mov      eax, dword ptr [0xb089c8]
0x00571BE6: xor      eax, esp
0x00571BE8: push     eax
0x00571BE9: lea      eax, [esp + 0x10]
0x00571BED: mov      dword ptr fs:[0], eax
0x00571BF3: mov      esi, ecx
0x00571BF5: mov      dword ptr [esp + 0xc], esi
0x00571BF9: mov      dword ptr [esi], 0x992654
0x00571BFF: mov      eax, dword ptr [esi + 0x160]
0x00571C05: push     eax
0x00571C06: mov      dword ptr [esp + 0x1c], 2
0x00571C0E: call     0x52d1b0
0x00571C13: xor      ebx, ebx
0x00571C15: mov      dword ptr [esi + 0x160], ebx
0x00571C1B: mov      ecx, dword ptr [esi + 0x15c]
0x00571C21: push     ecx
0x00571C22: mov      byte ptr [esp + 0x20], 1
0x00571C27: call     0x52d1b0
0x00571C2C: mov      dword ptr [esi + 0x15c], ebx
0x00571C32: mov      edx, dword ptr [esi + 0x158]
0x00571C38: push     edx
0x00571C39: mov      byte ptr [esp + 0x24], bl
0x00571C3D: call     0x52d1b0
0x00571C42: mov      dword ptr [esi + 0x158], ebx
0x00571C48: mov      eax, dword ptr [esi + 0x154]
0x00571C4E: push     eax
0x00571C4F: mov      dword ptr [esp + 0x28], 0xffffffff
0x00571C57: call     0x52d1b0
0x00571C5C: add      esp, 0x10
0x00571C5F: mov      dword ptr [esi + 0x154], ebx
0x00571C65: mov      ecx, dword ptr [esp + 0x10]
0x00571C69: mov      dword ptr fs:[0], ecx
0x00571C70: pop      ecx
0x00571C71: pop      esi
0x00571C72: pop      ebx
0x00571C73: add      esp, 0x10
0x00571C76: ret      
0x00571C77: int3     
0x00571C78: int3     
0x00571C79: int3     
0x00571C7A: int3     
0x00571C7B: int3     
0x00571C7C: int3     
0x00571C7D: int3     
0x00571C7E: int3     
0x00571C7F: int3     
0x00571C80: fldz     
0x00571C82: push     esi
0x00571C83: mov      esi, ecx
0x00571C85: fcomp    dword ptr [esi + 0x18]
0x00571C88: fnstsw   ax
0x00571C8A: test     ah, 0x41
0x00571C8D: jp       0x571c9b
0x00571C8F: fld      dword ptr [0xb76120]
0x00571C95: fadd     dword ptr [esi + 0x18]
0x00571C98: fstp     dword ptr [esi + 0x18]
0x00571C9B: fld      dword ptr [0x9672e4] ; [f32=3, u32=0x40400000]
0x00571CA1: fcomp    dword ptr [esi + 0x18]
0x00571CA4: fnstsw   ax
0x00571CA6: test     ah, 0x41
0x00571CA9: jp       0x571cc4
0x00571CAB: mov      ecx, dword ptr [esi + 0x1c]
0x00571CAE: push     1
0x00571CB0: push     1
0x00571CB2: push     0
0x00571CB4: push     0
0x00571CB6: call     0x7ba3e0
0x00571CBB: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00571CC1: fstp     dword ptr [esi + 0x18]
0x00571CC4: pop      esi
0x00571CC5: ret      
0x00571CC6: int3     
0x00571CC7: int3     
0x00571CC8: int3     
0x00571CC9: int3     
0x00571CCA: int3     
0x00571CCB: int3     
0x00571CCC: int3     
0x00571CCD: int3     
0x00571CCE: int3     
0x00571CCF: int3     
0x00571CD0: ret      
0x00571CD1: int3     
0x00571CD2: int3     
0x00571CD3: int3     
0x00571CD4: int3     
0x00571CD5: int3     
0x00571CD6: int3     
0x00571CD7: int3     
0x00571CD8: int3     
0x00571CD9: int3     
0x00571CDA: int3     
0x00571CDB: int3     
0x00571CDC: int3     
0x00571CDD: int3     
0x00571CDE: int3     
0x00571CDF: int3     
0x00571CE0: sub      esp, 0x10
0x00571CE3: push     ebx
0x00571CE4: push     ebp
0x00571CE5: push     esi
0x00571CE6: mov      esi, ecx
0x00571CE8: push     edi
0x00571CE9: lea      edi, [esi + 0x60]
0x00571CEC: mov      ebx, 4
0x00571CF1: xor      ebp, ebp
0x00571CF3: mov      eax, dword ptr [edi + 0x20]
0x00571CF6: mov      dword ptr [edi], ebp
0x00571CF8: cmp      eax, ebp
0x00571CFA: je       0x571d40
0x00571CFC: cmp      dword ptr [eax + 0x1ec], ebp
0x00571D02: je       0x571d40
0x00571D04: push     0x51b1e251
0x00571D09: lea      ecx, [eax + 0x1a8]
0x00571D0F: call     0x5691a0
0x00571D14: cmp      eax, ebp
0x00571D16: je       0x571d40
0x00571D18: mov      ecx, dword ptr [esi + 4]
0x00571D1B: cmp      ecx, 2
0x00571D1E: jne      0x571d27
0x00571D20: mov      eax, dword ptr [eax + 0x48]
0x00571D23: mov      dword ptr [edi], eax
0x00571D25: jmp      0x571d40
0x00571D27: cmp      ecx, 3
0x00571D2A: jne      0x571d36
0x00571D2C: mov      ecx, dword ptr [eax + 0xd4]
0x00571D32: mov      dword ptr [edi], ecx
0x00571D34: jmp      0x571d40
0x00571D36: cmp      ecx, 1
0x00571D39: jne      0x571d40
0x00571D3B: mov      edx, dword ptr [eax + 0x68]
0x00571D3E: mov      dword ptr [edi], edx
0x00571D40: add      edi, 4
0x00571D43: sub      ebx, 1
0x00571D46: jne      0x571cf3
0x00571D48: lea      eax, [esi + 0x50]
0x00571D4B: mov      dword ptr [eax], ebp
0x00571D4D: mov      dword ptr [esp + 0x10], ebp
0x00571D51: mov      dword ptr [esi + 0x54], ebp
0x00571D54: mov      dword ptr [esp + 0x14], ebp
0x00571D58: mov      dword ptr [esi + 0x58], ebp
0x00571D5B: mov      dword ptr [esp + 0x18], ebp
0x00571D5F: mov      dword ptr [esi + 0x5c], ebp
0x00571D62: mov      dword ptr [esp + 0x1c], ebp
0x00571D66: mov      ebx, 4
0x00571D6B: jmp      0x571d70
0x00571D6D: lea      ecx, [ecx]
0x00571D70: xor      edi, edi
0x00571D72: xor      edx, edx
0x00571D74: cmp      dword ptr [esp + 0x10], ebp
0x00571D78: jne      0x571d95
0x00571D7A: mov      ecx, dword ptr [esi + 0x80]
0x00571D80: cmp      ecx, ebp
0x00571D82: je       0x571d95
0x00571D84: cmp      dword ptr [ecx + 0x1ec], ebp
0x00571D8A: je       0x571d95
0x00571D8C: mov      ecx, dword ptr [esi + 0x60]
0x00571D8F: cmp      ecx, ebp
0x00571D91: jl       0x571d95
0x00571D93: mov      edi, ecx
0x00571D95: cmp      dword ptr [esp + 0x14], ebp
0x00571D99: jne      0x571dbb
0x00571D9B: mov      ecx, dword ptr [esi + 0x84]
0x00571DA1: cmp      ecx, ebp
0x00571DA3: je       0x571dbb
0x00571DA5: cmp      dword ptr [ecx + 0x1ec], ebp
0x00571DAB: je       0x571dbb
0x00571DAD: mov      ecx, dword ptr [esi + 0x64]
0x00571DB0: cmp      ecx, edi
0x00571DB2: jl       0x571dbb
0x00571DB4: mov      edi, ecx
0x00571DB6: mov      edx, 1
0x00571DBB: cmp      dword ptr [esp + 0x18], ebp
0x00571DBF: jne      0x571de1
0x00571DC1: mov      ecx, dword ptr [esi + 0x88]
0x00571DC7: cmp      ecx, ebp
0x00571DC9: je       0x571de1
0x00571DCB: cmp      dword ptr [ecx + 0x1ec], ebp
0x00571DD1: je       0x571de1
0x00571DD3: mov      ecx, dword ptr [esi + 0x68]
0x00571DD6: cmp      ecx, edi
0x00571DD8: jl       0x571de1
0x00571DDA: mov      edi, ecx
0x00571DDC: mov      edx, 2
0x00571DE1: cmp      dword ptr [esp + 0x1c], ebp
0x00571DE5: jne      0x571e03
0x00571DE7: mov      ecx, dword ptr [esi + 0x8c]
0x00571DED: cmp      ecx, ebp
0x00571DEF: je       0x571e03
0x00571DF1: cmp      dword ptr [ecx + 0x1ec], ebp
0x00571DF7: je       0x571e03
0x00571DF9: cmp      dword ptr [esi + 0x6c], edi
0x00571DFC: jl       0x571e03
0x00571DFE: mov      edx, 3
0x00571E03: mov      dword ptr [eax], edx
0x00571E05: add      eax, 4
0x00571E08: sub      ebx, 1
0x00571E0B: mov      dword ptr [esp + edx*4 + 0x10], 1
0x00571E13: jne      0x571d70
0x00571E19: pop      edi
0x00571E1A: pop      esi
0x00571E1B: pop      ebp
0x00571E1C: pop      ebx
0x00571E1D: add      esp, 0x10
0x00571E20: ret      
0x00571E21: int3     
0x00571E22: int3     
0x00571E23: int3     
0x00571E24: int3     
0x00571E25: int3     
0x00571E26: int3     
0x00571E27: int3     
0x00571E28: int3     
0x00571E29: int3     
0x00571E2A: int3     
0x00571E2B: int3     
0x00571E2C: int3     
0x00571E2D: int3     
0x00571E2E: int3     
0x00571E2F: int3     
0x00571E30: push     ecx
0x00571E31: fld      dword ptr [0xb76120]
0x00571E37: push     ebx
0x00571E38: push     ebp
0x00571E39: push     esi
0x00571E3A: mov      esi, ecx
0x00571E3C: fadd     dword ptr [esi + 0x98]
0x00571E42: xor      ebx, ebx
0x00571E44: cmp      dword ptr [esi + 0x28], ebx
0x00571E47: push     edi
0x00571E48: fstp     dword ptr [esi + 0x98]
0x00571E4E: jle      0x571e9c
0x00571E50: lea      ebp, [esi + 0x50]
0x00571E53: mov      edi, ebp
0x00571E55: mov      eax, dword ptr [edi]
0x00571E57: mov      ecx, dword ptr [esi + eax*4 + 0x40]
0x00571E5B: cmp      ecx, dword ptr [esi + eax*4 + 0x60]
0x00571E5F: je       0x571e93
0x00571E61: mov      edx, dword ptr [ebp]
0x00571E64: mov      ecx, eax
0x00571E66: mov      eax, dword ptr [esi + ecx*4 + 0x60]
0x00571E6A: cmp      eax, dword ptr [esi + edx*4 + 0x60]
0x00571E6E: jne      0x571e93
0x00571E70: mov      ecx, dword ptr [esi + ecx*4 + 0x80]
0x00571E77: mov      edx, dword ptr [ecx + 8]
0x00571E7A: lea      eax, [esi + 0x14c]
0x00571E80: push     eax
0x00571E81: mov      dword ptr [eax], edx
0x00571E83: mov      eax, dword ptr [0xb1bb34]
0x00571E88: push     0
0x00571E8A: push     eax
0x00571E8B: call     0x52d190
0x00571E90: add      esp, 0xc
0x00571E93: inc      ebx
0x00571E94: add      edi, 4
0x00571E97: cmp      ebx, dword ptr [esi + 0x28]
0x00571E9A: jl       0x571e55
0x00571E9C: xor      ebp, ebp
0x00571E9E: cmp      dword ptr [esi + 0x28], ebp
0x00571EA1: mov      dword ptr [esp + 0x10], ebp
0x00571EA5: jle      0x571f39
0x00571EAB: lea      edi, [esi + 0x50]
0x00571EAE: mov      ebx, edi
0x00571EB0: mov      eax, dword ptr [ebx]
0x00571EB2: mov      ecx, dword ptr [esi + eax*4 + 0x40]
0x00571EB6: cmp      ecx, dword ptr [esi + eax*4 + 0x60]
0x00571EBA: jne      0x571eef
0x00571EBC: mov      edx, dword ptr [edi]
0x00571EBE: mov      ecx, eax
0x00571EC0: mov      eax, dword ptr [esi + ecx*4 + 0x60]
0x00571EC4: cmp      eax, dword ptr [esi + edx*4 + 0x60]
0x00571EC8: je       0x571eef
0x00571ECA: mov      ecx, dword ptr [esi + ecx*4 + 0x80]
0x00571ED1: mov      edx, dword ptr [ecx + 8]
0x00571ED4: lea      eax, [esi + 0x14c]
0x00571EDA: push     eax
0x00571EDB: mov      dword ptr [eax], edx
0x00571EDD: mov      eax, dword ptr [0xb1bb38]
0x00571EE2: push     0
0x00571EE4: push     eax
0x00571EE5: call     0x52d190
0x00571EEA: add      esp, 0xc
0x00571EED: jmp      0x571ef3
0x00571EEF: inc      dword ptr [esp + 0x10]
0x00571EF3: inc      ebp
0x00571EF4: add      ebx, 4
0x00571EF7: cmp      ebp, dword ptr [esi + 0x28]
0x00571EFA: jl       0x571eb0
0x00571EFC: cmp      dword ptr [esp + 0x10], 2
0x00571F01: jle      0x571f39
0x00571F03: xor      ebp, ebp
0x00571F05: cmp      dword ptr [esi + 0x28], ebp
0x00571F08: jle      0x571f39
0x00571F0A: lea      ebx, [esi + 0x14c]
0x00571F10: mov      ecx, dword ptr [edi]
0x00571F12: mov      edx, dword ptr [esi + ecx*4 + 0x80]
0x00571F19: mov      eax, dword ptr [edx + 8]
0x00571F1C: push     ebx
0x00571F1D: mov      dword ptr [ebx], eax
0x00571F1F: mov      ecx, dword ptr [0xb1bb38]
0x00571F25: push     0
0x00571F27: push     ecx
0x00571F28: call     0x52d190
0x00571F2D: inc      ebp
0x00571F2E: add      esp, 0xc
0x00571F31: add      edi, 4
0x00571F34: cmp      ebp, dword ptr [esi + 0x28]
0x00571F37: jl       0x571f10
0x00571F39: fld      dword ptr [esi + 0x98]
0x00571F3F: fcomp    qword ptr [0x992668] ; [f32=0, f64=30, u32=0x00000000]
0x00571F45: fnstsw   ax
0x00571F47: test     ah, 1
0x00571F4A: jne      0x5721d2
0x00571F50: mov      edx, dword ptr [esi + 0x50]
0x00571F53: mov      eax, dword ptr [esi + edx*4 + 0x80]
0x00571F5A: push     0x51b1e251
0x00571F5F: lea      ecx, [eax + 0x1a8]
0x00571F65: call     0x5691a0
0x00571F6A: mov      dword ptr [esp + 0x10], eax
0x00571F6E: mov      eax, dword ptr [esi + 0x54]
0x00571F71: mov      eax, dword ptr [esi + eax*4 + 0x80]
0x00571F78: push     0x51b1e251
0x00571F7D: lea      ecx, [eax + 0x1a8]
0x00571F83: call     0x5691a0
0x00571F88: mov      ecx, dword ptr [esi + 0x58]
0x00571F8B: mov      ebx, eax
0x00571F8D: mov      eax, dword ptr [esi + ecx*4 + 0x80]
0x00571F94: push     0x51b1e251
0x00571F99: lea      ecx, [eax + 0x1a8]
0x00571F9F: call     0x5691a0
0x00571FA4: mov      edx, dword ptr [esi + 0x5c]
0x00571FA7: mov      edi, eax
0x00571FA9: mov      eax, dword ptr [esi + edx*4 + 0x80]
0x00571FB0: push     0x51b1e251
0x00571FB5: lea      ecx, [eax + 0x1a8]
0x00571FBB: call     0x5691a0
0x00571FC0: fldz     
0x00571FC2: mov      ebp, eax
0x00571FC4: mov      eax, dword ptr [esp + 0x10]
0x00571FC8: test     eax, eax
0x00571FCA: je       0x571fd2
0x00571FCC: fst      dword ptr [eax + 0xc4]
0x00571FD2: test     ebx, ebx
0x00571FD4: je       0x571fdc
0x00571FD6: fst      dword ptr [ebx + 0xc8]
0x00571FDC: test     edi, edi
0x00571FDE: je       0x572047
0x00571FE0: cmp      dword ptr [esi + 0x28], 3
0x00571FE4: jl       0x572047
0x00571FE6: fcom     dword ptr [edi + 0xc4]
0x00571FEC: fnstsw   ax
0x00571FEE: test     ah, 5
0x00571FF1: jp       0x572047
0x00571FF3: fld      dword ptr [0x96a85c] ; [f32=5, u32=0x40A00000]
0x00571FF9: fcomp    dword ptr [edi + 0xc4]
0x00571FFF: fnstsw   ax
0x00572001: test     ah, 1
0x00572004: jne      0x572047
0x00572006: mov      ecx, dword ptr [esi + 0x58]
0x00572009: fstp     st(0)
0x0057200B: mov      edx, dword ptr [esi + ecx*4 + 0x80]
0x00572012: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00572018: mov      ecx, dword ptr [edx + 8]
0x0057201B: lea      eax, [esi + 0x14c]
0x00572021: mov      dword ptr [eax], ecx
0x00572023: mov      dword ptr [esi + 0x150], 2
0x0057202D: fstp     dword ptr [edi + 0xc4]
0x00572033: mov      edx, dword ptr [0xb1bb24]
0x00572039: push     eax
0x0057203A: push     0
0x0057203C: push     edx
0x0057203D: call     0x52d190
0x00572042: fldz     
0x00572044: add      esp, 0xc
0x00572047: test     ebp, ebp
0x00572049: je       0x5720b0
0x0057204B: cmp      dword ptr [esi + 0x28], 4
0x0057204F: jne      0x5720b0
0x00572051: fcomp    dword ptr [ebp + 0xc8]
0x00572057: fnstsw   ax
0x00572059: test     ah, 5
0x0057205C: jp       0x5720b2
0x0057205E: fld      dword ptr [0x96a85c] ; [f32=5, u32=0x40A00000]
0x00572064: fcomp    dword ptr [ebp + 0xc8]
0x0057206A: fnstsw   ax
0x0057206C: test     ah, 1
0x0057206F: jne      0x5720b2
0x00572071: mov      ecx, dword ptr [esi + 0x5c]
0x00572074: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0057207A: mov      edx, dword ptr [esi + ecx*4 + 0x80]
0x00572081: mov      ecx, dword ptr [edx + 8]
0x00572084: lea      eax, [esi + 0x14c]
0x0057208A: mov      dword ptr [eax], ecx
0x0057208C: mov      dword ptr [esi + 0x150], 2
0x00572096: fstp     dword ptr [ebp + 0xc8]
0x0057209C: mov      edx, dword ptr [0xb1bb24]
0x005720A2: push     eax
0x005720A3: push     0
0x005720A5: push     edx
0x005720A6: call     0x52d190
0x005720AB: add      esp, 0xc
0x005720AE: jmp      0x5720b2
0x005720B0: fstp     st(0)
0x005720B2: xor      edi, edi
0x005720B4: jmp      0x5720c0
0x005720B6: lea      esp, [esp]
0x005720BD: lea      ecx, [ecx]
0x005720C0: mov      eax, dword ptr [esi + edi*4 + 0x50]
0x005720C4: mov      eax, dword ptr [esi + eax*4 + 0x80]
0x005720CB: push     0x51b1e251
0x005720D0: lea      ecx, [eax + 0x1a8]
0x005720D6: call     0x5691a0
0x005720DB: mov      ecx, eax
0x005720DD: test     ecx, ecx
0x005720DF: je       0x572159
0x005720E1: mov      edx, dword ptr [esi + 0x28]
0x005720E4: dec      edx
0x005720E5: cmp      edi, edx
0x005720E7: jne      0x5720ed
0x005720E9: fldz     
0x005720EB: jmp      0x5720f9
0x005720ED: fld      dword ptr [ecx + 0xcc]
0x005720F3: fadd     dword ptr [0xb76120]
0x005720F9: fstp     dword ptr [ecx + 0xcc]
0x005720FF: test     edi, edi
0x00572101: jne      0x572159
0x00572103: mov      eax, dword ptr [esp + 0x10]
0x00572107: test     eax, eax
0x00572109: je       0x572159
0x0057210B: fld      dword ptr [eax + 0xcc]
0x00572111: fcomp    qword ptr [0x98ab70] ; [f32=0, f64=15, u32=0x00000000]
0x00572117: fnstsw   ax
0x00572119: test     ah, 5
0x0057211C: jp       0x572159
0x0057211E: mov      eax, dword ptr [esi + 0x50]
0x00572121: cmp      eax, dword ptr [esi + 0x30]
0x00572124: je       0x572159
0x00572126: fldz     
0x00572128: lea      eax, [esi + 0x14c]
0x0057212E: fstp     dword ptr [ecx + 0xcc]
0x00572134: push     eax
0x00572135: mov      ecx, dword ptr [esi + 0x80]
0x0057213B: mov      edx, dword ptr [ecx + 8]
0x0057213E: mov      dword ptr [eax], edx
0x00572140: mov      dword ptr [esi + 0x150], 1
0x0057214A: mov      eax, dword ptr [0xb1bb28]
0x0057214F: push     edi
0x00572150: push     eax
0x00572151: call     0x52d190
0x00572156: add      esp, 0xc
0x00572159: inc      edi
0x0057215A: cmp      edi, 4
0x0057215D: jl       0x5720c0
0x00572163: mov      ecx, dword ptr [esi + 0x54]
0x00572166: mov      ecx, dword ptr [esi + ecx*4 + 0x60]
0x0057216A: test     ecx, ecx
0x0057216C: jle      0x5721d2
0x0057216E: mov      eax, dword ptr [esi + 0x50]
0x00572171: cmp      dword ptr [esi + 0x2c], eax
0x00572174: je       0x5721d2
0x00572176: cmp      dword ptr [esi + eax*4 + 0x60], ecx
0x0057217A: je       0x5721d2
0x0057217C: mov      edx, dword ptr [esi + eax*4 + 0x80]
0x00572183: mov      eax, dword ptr [edx + 8]
0x00572186: lea      edi, [esi + 0x14c]
0x0057218C: push     edi
0x0057218D: mov      dword ptr [edi], eax
0x0057218F: mov      dword ptr [esi + 0x150], 0xf
0x00572199: mov      ecx, dword ptr [0xb1bb2c]
0x0057219F: push     0
0x005721A1: push     ecx
0x005721A2: call     0x52d190
0x005721A7: mov      edx, dword ptr [esi + 0x54]
0x005721AA: mov      eax, dword ptr [esi + edx*4 + 0x80]
0x005721B1: mov      ecx, dword ptr [eax + 8]
0x005721B4: push     edi
0x005721B5: mov      dword ptr [edi], ecx
0x005721B7: mov      dword ptr [esi + 0x150], 4
0x005721C1: mov      edx, dword ptr [0xb1bb30]
0x005721C7: push     0
0x005721C9: push     edx
0x005721CA: call     0x52d190
0x005721CF: add      esp, 0x18
0x005721D2: xor      ebx, ebx
0x005721D4: lea      edi, [esi + 0x60]
0x005721D7: mov      eax, dword ptr [edi - 0x10]
0x005721DA: mov      ecx, dword ptr [edi]
0x005721DC: mov      dword ptr [edi - 0x20], ecx
0x005721DF: mov      dword ptr [edi - 0x30], eax
0x005721E2: mov      eax, dword ptr [esi + eax*4 + 0x80]
0x005721E9: push     0x51b1e251
0x005721EE: lea      ecx, [eax + 0x1a8]
0x005721F4: call     0x5691a0
0x005721F9: test     eax, eax
0x005721FB: je       0x572203
0x005721FD: mov      dword ptr [eax + 0xd0], ebx
0x00572203: inc      ebx
0x00572204: add      edi, 4
0x00572207: cmp      ebx, 4
0x0057220A: jl       0x5721d7
0x0057220C: mov      eax, dword ptr [esi + 0x50]
0x0057220F: mov      edx, dword ptr [esi + 0x54]
0x00572212: mov      ecx, dword ptr [esi + eax*4 + 0x60]
0x00572216: cmp      ecx, dword ptr [esi + edx*4 + 0x60]
0x0057221A: je       0x57221f
0x0057221C: mov      dword ptr [esi + 0x2c], eax
0x0057221F: pop      edi
0x00572220: pop      esi
0x00572221: pop      ebp
0x00572222: pop      ebx
0x00572223: pop      ecx
0x00572224: ret      
0x00572225: int3     
0x00572226: int3     
0x00572227: int3     
0x00572228: int3     
0x00572229: int3     
0x0057222A: int3     
0x0057222B: int3     
0x0057222C: int3     
0x0057222D: int3     
0x0057222E: int3     
0x0057222F: int3     
0x00572230: push     esi
0x00572231: mov      esi, ecx
0x00572233: call     0x571bd0
0x00572238: test     byte ptr [esp + 8], 1
0x0057223D: je       0x572248
0x0057223F: push     esi
0x00572240: call     0x688fb0
0x00572245: add      esp, 4
0x00572248: mov      eax, esi
0x0057224A: pop      esi
0x0057224B: ret      4
0x0057224E: int3     
0x0057224F: int3     
0x00572250: mov      eax, 1
0x00572255: add      dword ptr [ecx + 0x84], eax
0x0057225B: add      dword ptr [ecx + 0x90], eax
0x00572261: add      dword ptr [ecx + 0x8c], eax
0x00572267: mov      dword ptr [ecx + 0x144], 0
0x00572271: ret      
0x00572272: int3     
0x00572273: int3     
0x00572274: int3     
0x00572275: int3     
0x00572276: int3     
0x00572277: int3     
0x00572278: int3     
0x00572279: int3     
0x0057227A: int3     
0x0057227B: int3     
0x0057227C: int3     
0x0057227D: int3     
0x0057227E: int3     
0x0057227F: int3     
0x00572280: mov      edx, dword ptr [esp + 4]
0x00572284: mov      eax, dword ptr [edx + 0x10]
0x00572287: cmp      dword ptr [eax + 0xdfc], 0
0x0057228E: je       0x5722af
0x00572290: fld      dword ptr [0x966d40] ; [f32=2, u32=0x40000000]
0x00572296: fcomp    dword ptr [eax + 0xdf4]
0x0057229C: fnstsw   ax
0x0057229E: test     ah, 0x41
0x005722A1: jp       0x5722af
0x005722A3: mov      dword ptr [ecx + 0x154], 1
0x005722AD: jmp      0x5722b9
0x005722AF: mov      dword ptr [ecx + 0x154], 0
0x005722B9: mov      eax, dword ptr [edx + 0x10]
0x005722BC: fldz     
0x005722BE: push     edi
0x005722BF: mov      edi, dword ptr [ecx + 0x40]
0x005722C2: mov      dword ptr [eax + 0xdfc], edi
0x005722C8: mov      eax, dword ptr [edx + 0x10]
0x005722CB: mov      dword ptr [eax + 0xe04], 1
0x005722D5: mov      edx, dword ptr [edx + 0x10]
0x005722D8: fstp     dword ptr [edx + 0xdf4]
0x005722DE: inc      dword ptr [ecx + 0x74]
0x005722E1: pop      edi
0x005722E2: ret      4
0x005722E5: int3     
0x005722E6: int3     
0x005722E7: int3     
0x005722E8: int3     
0x005722E9: int3     
0x005722EA: int3     
0x005722EB: int3     
0x005722EC: int3     
0x005722ED: int3     
0x005722EE: int3     
0x005722EF: int3     
0x005722F0: inc      dword ptr [ecx + 0x74]
0x005722F3: ret      4
0x005722F6: int3     
0x005722F7: int3     
0x005722F8: int3     
0x005722F9: int3     
0x005722FA: int3     
0x005722FB: int3     
0x005722FC: int3     
0x005722FD: int3     
0x005722FE: int3     
0x005722FF: int3     
0x00572300: fld      dword ptr [ecx + 0xec]
0x00572306: fld      dword ptr [ecx + 0xf0]
0x0057230C: fcompp   
0x0057230E: fnstsw   ax
0x00572310: test     ah, 0x41
0x00572313: jne      0x572321
0x00572315: fld      dword ptr [ecx + 0xf0]
0x0057231B: fstp     dword ptr [ecx + 0xec]
0x00572321: ret      
0x00572322: int3     
0x00572323: int3     
0x00572324: int3     
0x00572325: int3     
0x00572326: int3     
0x00572327: int3     
0x00572328: int3     
0x00572329: int3     
0x0057232A: int3     
0x0057232B: int3     
0x0057232C: int3     
0x0057232D: int3     
0x0057232E: int3     
0x0057232F: int3     
0x00572330: xor      edx, edx
0x00572332: cmp      dword ptr [esp + 4], edx
0x00572336: je       0x57237a
0x00572338: fldz     
0x0057233A: mov      eax, 1
0x0057233F: mov      dword ptr [ecx + 0x114], eax
0x00572345: fstp     dword ptr [ecx + 0x104]
0x0057234B: mov      dword ptr [ecx + 0x110], eax
0x00572351: mov      eax, dword ptr [ecx + 0x8c]
0x00572357: cmp      dword ptr [ecx + 0x88], eax
0x0057235D: mov      dword ptr [ecx + 0x144], edx
0x00572363: jge      0x57236b
0x00572365: mov      dword ptr [ecx + 0x88], eax
0x0057236B: mov      dword ptr [ecx + 0x8c], edx
0x00572371: mov      dword ptr [ecx + 0x134], edx
0x00572377: ret      4
0x0057237A: mov      dword ptr [ecx + 0x114], edx
0x00572380: ret      4
0x00572383: int3     
0x00572384: int3     
0x00572385: int3     
0x00572386: int3     
0x00572387: int3     
0x00572388: int3     
0x00572389: int3     
0x0057238A: int3     
0x0057238B: int3     
0x0057238C: int3     
0x0057238D: int3     
0x0057238E: int3     
0x0057238F: int3     
0x00572390: cmp      dword ptr [ecx + 0x180], 0
0x00572397: jne      0x5723f6
0x00572399: mov      eax, dword ptr [ecx + 0x40]
0x0057239C: mov      edx, 1
0x005723A1: add      dword ptr [ecx + 0x68], edx
0x005723A4: cmp      dword ptr [eax + 0x23c], 0
0x005723AB: je       0x5723bc
0x005723AD: cmp      dword ptr [ecx + 0x134], 0
0x005723B4: je       0x5723bc
0x005723B6: add      dword ptr [ecx + 0x138], edx
0x005723BC: mov      edx, dword ptr [ecx + 0xa0]
0x005723C2: cmp      edx, dword ptr [esp + 4]
0x005723C6: je       0x5723d2
0x005723C8: mov      dword ptr [ecx + 0xa4], 0
0x005723D2: mov      dword ptr [eax + 0xda0], 0
0x005723DC: mov      eax, dword ptr [ecx + 0x40]
0x005723DF: mov      ecx, dword ptr [0xb1bacc]
0x005723E5: add      eax, 0xd9c
0x005723EA: push     eax
0x005723EB: push     0
0x005723ED: push     ecx
0x005723EE: call     0x52d190
0x005723F3: add      esp, 0xc
0x005723F6: ret      4
0x005723F9: int3     
0x005723FA: int3     
0x005723FB: int3     
0x005723FC: int3     
0x005723FD: int3     
0x005723FE: int3     
0x005723FF: int3     
0x00572400: inc      dword ptr [ecx + 0x158]
0x00572406: ret      
0x00572407: int3     
0x00572408: int3     
0x00572409: int3     
0x0057240A: int3     
0x0057240B: int3     
0x0057240C: int3     
0x0057240D: int3     
0x0057240E: int3     
0x0057240F: int3     
0x00572410: mov      eax, ecx
0x00572412: mov      ecx, dword ptr [eax + 4]
0x00572415: mov      dword ptr [eax + 0x3c], 1
0x0057241C: mov      dword ptr [eax + 0x40], ecx
0x0057241F: mov      ecx, dword ptr [ecx + 0x1b4]
0x00572425: mov      edx, dword ptr [ecx]
0x00572427: add      eax, 0xc
0x0057242A: push     0
0x0057242C: push     eax
0x0057242D: mov      eax, dword ptr [edx + 0xc]
0x00572430: call     eax
0x00572432: ret      4
0x00572435: int3     
0x00572436: int3     
0x00572437: int3     
0x00572438: int3     
0x00572439: int3     
0x0057243A: int3     
0x0057243B: int3     
0x0057243C: int3     
0x0057243D: int3     
0x0057243E: int3     
0x0057243F: int3     
0x00572440: push     esi
0x00572441: mov      esi, ecx
0x00572443: cmp      dword ptr [esi + 0x3c], 0
0x00572447: je       0x57245d
0x00572449: mov      eax, dword ptr [esi + 4]
0x0057244C: mov      ecx, dword ptr [eax + 0x1b4]
0x00572452: mov      edx, dword ptr [ecx]
0x00572454: mov      edx, dword ptr [edx + 0x10]
0x00572457: lea      eax, [esi + 0xc]
0x0057245A: push     eax
0x0057245B: call     edx
0x0057245D: mov      dword ptr [esi + 0x3c], 0
0x00572464: pop      esi
0x00572465: ret      
0x00572466: int3     
0x00572467: int3     
0x00572468: int3     
0x00572469: int3     
0x0057246A: int3     
0x0057246B: int3     
0x0057246C: int3     
0x0057246D: int3     
0x0057246E: int3     
0x0057246F: int3     
0x00572470: push     esi
0x00572471: mov      esi, ecx
0x00572473: lea      eax, [esi + 0x44]
0x00572476: push     0x13c
0x0057247B: test     al, 0x7f
0x0057247D: je       0x57248a
0x0057247F: push     eax
0x00572480: call     0x6a9700
0x00572485: add      esp, 8
0x00572488: jmp      0x572495
0x0057248A: push     0
0x0057248C: push     eax
0x0057248D: call     0x8eb080
0x00572492: add      esp, 0xc
0x00572495: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0057249B: mov      dword ptr [esi + 0x64], 0
0x005724A2: fst      dword ptr [esi + 0xc4]
0x005724A8: mov      dword ptr [esi + 0x80], 0xffffffff
0x005724B2: fstp     dword ptr [esi + 0xc8]
0x005724B8: fld      dword ptr [0x972460] ; [f32=15, u32=0x41700000]
0x005724BE: fstp     dword ptr [esi + 0xcc]
0x005724C4: pop      esi
0x005724C5: ret      
0x005724C6: int3     
0x005724C7: int3     
0x005724C8: int3     
0x005724C9: int3     
0x005724CA: int3     
0x005724CB: int3     
0x005724CC: int3     
0x005724CD: int3     
0x005724CE: int3     
0x005724CF: int3     
0x005724D0: sub      esp, 8
0x005724D3: fld      dword ptr [0xb76120]
0x005724D9: push     esi
0x005724DA: mov      esi, ecx
0x005724DC: fstp     dword ptr [esp + 4]
0x005724E0: mov      eax, dword ptr [esi + 0x60]
0x005724E3: fld      dword ptr [esp + 4]
0x005724E7: cmp      eax, dword ptr [esi + 0x58]
0x005724EA: jl       0x5724f7
0x005724EC: fld      dword ptr [esi + 0x5c]
0x005724EF: mov      dword ptr [esi + 0x58], eax
0x005724F2: fadd     st(1)
0x005724F4: fstp     dword ptr [esi + 0x5c]
0x005724F7: mov      eax, dword ptr [esi + 0x50]
0x005724FA: cmp      eax, dword ptr [esi + 0x4c]
0x005724FD: jle      0x572502
0x005724FF: mov      dword ptr [esi + 0x4c], eax
0x00572502: mov      eax, dword ptr [esi + 0x8c]
0x00572508: cmp      eax, dword ptr [esi + 0x88]
0x0057250E: jle      0x572520
0x00572510: mov      dword ptr [esi + 0x88], eax
0x00572516: mov      dword ptr [esi + 0x8c], 0
0x00572520: mov      eax, dword ptr [esi + 0xc0]
0x00572526: cmp      dword ptr [esi + 0xbc], eax
0x0057252C: jge      0x572534
0x0057252E: mov      dword ptr [esi + 0xbc], eax
0x00572534: mov      eax, dword ptr [esi + 0xa4]
0x0057253A: cmp      dword ptr [esi + 0xa8], eax
0x00572540: jge      0x572548
0x00572542: mov      dword ptr [esi + 0xa8], eax
0x00572548: fld1     
0x0057254A: mov      ecx, dword ptr [esi + 0x40]
0x0057254D: fcomp    dword ptr [ecx + 0xd48]
0x00572553: fnstsw   ax
0x00572555: test     ah, 0x41
0x00572558: jp       0x572568
0x0057255A: fld      dword ptr [esi + 0xf4]
0x00572560: fadd     st(1)
0x00572562: fstp     dword ptr [esi + 0xf4]
0x00572568: fldz     
0x0057256A: fcomp    dword ptr [ecx + 0xc38]
0x00572570: fnstsw   ax
0x00572572: test     ah, 0x44
0x00572575: jnp      0x5725a8
0x00572577: fld      dword ptr [ecx + 0xc38]
0x0057257D: fld      dword ptr [ecx + 0xc44]
0x00572583: fcompp   
0x00572585: fnstsw   ax
0x00572587: test     ah, 0x41
0x0057258A: jne      0x57259a
0x0057258C: fld      dword ptr [esi + 0xfc]
0x00572592: fadd     st(1)
0x00572594: fstp     dword ptr [esi + 0xfc]
0x0057259A: fadd     dword ptr [esi + 0x100]
0x005725A0: fstp     dword ptr [esi + 0x100]
0x005725A6: jmp      0x5725aa
0x005725A8: fstp     st(0)
0x005725AA: mov      ecx, dword ptr [esi + 0x6c]
0x005725AD: test     ecx, ecx
0x005725AF: je       0x5725c5
0x005725B1: mov      eax, dword ptr [esi + 0x68]
0x005725B4: cdq      
0x005725B5: idiv     ecx
0x005725B7: mov      dword ptr [esp + 8], eax
0x005725BB: fild     dword ptr [esp + 8]
0x005725BF: fstp     dword ptr [esi + 0xf8]
0x005725C5: fld      dword ptr [esi + 0x108]
0x005725CB: fld      dword ptr [esi + 0x104]
0x005725D1: fcompp   
0x005725D3: fnstsw   ax
0x005725D5: test     ah, 0x41
0x005725D8: jne      0x5725e6
0x005725DA: fld      dword ptr [esi + 0x104]
0x005725E0: fstp     dword ptr [esi + 0x108]
0x005725E6: mov      ecx, dword ptr [esi + 8]
0x005725E9: call     0x514170
0x005725EE: test     eax, eax
0x005725F0: jne      0x572616
0x005725F2: mov      eax, dword ptr [esi + 0x40]
0x005725F5: cmp      dword ptr [eax + 0x1f4], 0
0x005725FC: jne      0x572616
0x005725FE: fld      dword ptr [esi + 0x13c]
0x00572604: fld      dword ptr [esp + 4]
0x00572608: fld      st(0)
0x0057260A: faddp    st(2)
0x0057260C: fxch     st(1)
0x0057260E: fstp     dword ptr [esi + 0x13c]
0x00572614: jmp      0x57261a
0x00572616: fld      dword ptr [esp + 4]
0x0057261A: fld      dword ptr [0x9672e4] ; [f32=3, u32=0x40400000]
0x00572620: fcomp    dword ptr [esi + 0x148]
0x00572626: fnstsw   ax
0x00572628: test     ah, 0x41
0x0057262B: jp       0x572637
0x0057262D: mov      dword ptr [esi + 0x14c], 0
0x00572637: mov      eax, dword ptr [esi + 0x144]
0x0057263D: cmp      dword ptr [esi + 0x140], eax
0x00572643: jge      0x57264b
0x00572645: mov      dword ptr [esi + 0x140], eax
0x0057264B: mov      eax, dword ptr [esi + 0x168]
0x00572651: cmp      dword ptr [esi + 0x164], eax
0x00572657: jge      0x57265f
0x00572659: mov      dword ptr [esi + 0x164], eax
0x0057265F: mov      eax, dword ptr [esi + 0x17c]
0x00572665: cmp      dword ptr [esi + 0x178], eax
0x0057266B: jge      0x572673
0x0057266D: mov      dword ptr [esi + 0x178], eax
0x00572673: fld      dword ptr [esi + 0xec]
0x00572679: fadd     st(1)
0x0057267B: fstp     dword ptr [esi + 0xec]
0x00572681: fldz     
0x00572683: fcom     dword ptr [esi + 0xc4]
0x00572689: fnstsw   ax
0x0057268B: test     ah, 0x41
0x0057268E: jp       0x57269e
0x00572690: fld      st(1)
0x00572692: fadd     dword ptr [esi + 0xc4]
0x00572698: fstp     dword ptr [esi + 0xc4]
0x0057269E: fcomp    dword ptr [esi + 0xc8]
0x005726A4: fnstsw   ax
0x005726A6: test     ah, 0x41
0x005726A9: jp       0x5726b9
0x005726AB: fld      dword ptr [esi + 0xc8]
0x005726B1: fadd     st(1)
0x005726B3: fstp     dword ptr [esi + 0xc8]
0x005726B9: mov      eax, dword ptr [esi + 0x40]
0x005726BC: fld      st(0)
0x005726BE: fadd     dword ptr [esi + 0x104]
0x005726C4: fstp     dword ptr [esi + 0x104]
0x005726CA: fld      dword ptr [esi + 0x148]
0x005726D0: fadd     st(1)
0x005726D2: fstp     dword ptr [esi + 0x148]
0x005726D8: fld      dword ptr [esi + 0xb4]
0x005726DE: fadd     st(1)
0x005726E0: fstp     dword ptr [esi + 0xb4]
0x005726E6: mov      ecx, dword ptr [eax + 0xd6c]
0x005726EC: sub      ecx, dword ptr [esi + 0xd4]
0x005726F2: fadd     dword ptr [esi + 0xdc]
0x005726F8: add      dword ptr [esi + 0xd8], ecx
0x005726FE: mov      edx, dword ptr [eax + 0xd6c]
0x00572704: fstp     dword ptr [esi + 0xdc]
0x0057270A: mov      dword ptr [esi + 0xd4], edx
0x00572710: pop      esi
0x00572711: add      esp, 8
0x00572714: ret      
0x00572715: int3     
0x00572716: int3     
0x00572717: int3     
0x00572718: int3     
0x00572719: int3     
0x0057271A: int3     
0x0057271B: int3     
0x0057271C: int3     
0x0057271D: int3     
0x0057271E: int3     
0x0057271F: int3     
0x00572720: mov      eax, dword ptr [esp + 8]
0x00572724: mov      ecx, 1
0x00572729: add      dword ptr [eax + 0x84], ecx
0x0057272F: add      dword ptr [eax + 0x90], ecx
0x00572735: add      dword ptr [eax + 0x8c], ecx
0x0057273B: mov      dword ptr [eax + 0x144], 0
0x00572745: ret      
0x00572746: int3     
0x00572747: int3     
0x00572748: int3     
0x00572749: int3     
0x0057274A: int3     
0x0057274B: int3     
0x0057274C: int3     
0x0057274D: int3     
0x0057274E: int3     
0x0057274F: int3     
0x00572750: push     esi
0x00572751: mov      esi, ecx
0x00572753: cmp      dword ptr [esi + 0x180], 0
0x0057275A: jne      0x572802
0x00572760: push     ebx
0x00572761: mov      ebx, dword ptr [esp + 0xc]
0x00572765: push     edi
0x00572766: mov      ecx, ebx
0x00572768: call     0x535310
0x0057276D: mov      ecx, dword ptr [esi + 0x40]
0x00572770: mov      edx, dword ptr [esi + 0x60]
0x00572773: mov      edi, eax
0x00572775: mov      eax, 1
0x0057277A: add      dword ptr [esi + 0x48], eax
0x0057277D: mov      dword ptr [ecx + 0xd8c], edx
0x00572783: cmp      edi, dword ptr [esi + 0x64]
0x00572786: jne      0x572790
0x00572788: add      dword ptr [esi + 0x50], eax
0x0057278B: add      dword ptr [esi + 0x60], eax
0x0057278E: jmp      0x572796
0x00572790: mov      dword ptr [esi + 0x60], eax
0x00572793: mov      dword ptr [esi + 0x50], eax
0x00572796: mov      ecx, 5
0x0057279B: cmp      dword ptr [esi + 0x60], ecx
0x0057279E: jle      0x5727a3
0x005727A0: mov      dword ptr [esi + 0x60], ecx
0x005727A3: mov      ecx, dword ptr [esi + 0x60]
0x005727A6: add      dword ptr [esi + 0x54], eax
0x005727A9: imul     ecx, ecx, 0x96
0x005727AF: mov      eax, dword ptr [esi + 0x40]
0x005727B2: mov      dword ptr [esi + 0x64], edi
0x005727B5: add      dword ptr [eax + 0xd6c], ecx
0x005727BB: mov      edx, dword ptr [0xb1bad4]
0x005727C1: add      eax, 0xd84
0x005727C6: push     eax
0x005727C7: push     0
0x005727C9: push     edx
0x005727CA: call     0x52d190
0x005727CF: mov      eax, dword ptr [esi + 0x40]
0x005727D2: mov      ecx, dword ptr [esi + 0x60]
0x005727D5: mov      dword ptr [eax + 0xd90], ecx
0x005727DB: mov      edx, dword ptr [esi + 0x40]
0x005727DE: mov      dword ptr [edx + 0xd94], edi
0x005727E4: mov      eax, dword ptr [ebx + 8]
0x005727E7: mov      edx, dword ptr [eax + 4]
0x005727EA: movzx    ecx, byte ptr [eax + 1]
0x005727EE: mov      eax, dword ptr [edx + 0x1c]
0x005727F1: mov      edx, dword ptr [esi + 0x40]
0x005727F4: mov      eax, dword ptr [eax + ecx*4]
0x005727F7: add      esp, 0xc
0x005727FA: pop      edi
0x005727FB: mov      dword ptr [edx + 0xd98], eax
0x00572801: pop      ebx
0x00572802: pop      esi
0x00572803: ret      4
0x00572806: int3     
0x00572807: int3     
0x00572808: int3     
0x00572809: int3     
0x0057280A: int3     
0x0057280B: int3     
0x0057280C: int3     
0x0057280D: int3     
0x0057280E: int3     
0x0057280F: int3     
0x00572810: mov      ecx, dword ptr [esp + 8]
0x00572814: fld      dword ptr [ecx + 0xec]
0x0057281A: fld      dword ptr [ecx + 0xf0]
0x00572820: fcompp   
0x00572822: fnstsw   ax
0x00572824: test     ah, 0x41
0x00572827: jne      0x572835
0x00572829: fld      dword ptr [ecx + 0xf0]
0x0057282F: fstp     dword ptr [ecx + 0xec]
0x00572835: ret      
0x00572836: int3     
0x00572837: int3     
0x00572838: int3     
0x00572839: int3     
0x0057283A: int3     
0x0057283B: int3     
0x0057283C: int3     
0x0057283D: int3     
0x0057283E: int3     
0x0057283F: int3     
0x00572840: mov      eax, dword ptr [esp + 4]
0x00572844: mov      ecx, dword ptr [eax + 4]
0x00572847: push     ecx
0x00572848: mov      ecx, dword ptr [esp + 0xc]
0x0057284C: call     0x572330
0x00572851: ret      
0x00572852: int3     
0x00572853: int3     
0x00572854: int3     
0x00572855: int3     
0x00572856: int3     
0x00572857: int3     
0x00572858: int3     
0x00572859: int3     
0x0057285A: int3     
0x0057285B: int3     
0x0057285C: int3     
0x0057285D: int3     
0x0057285E: int3     
0x0057285F: int3     
0x00572860: mov      eax, dword ptr [esp + 4]
0x00572864: mov      ecx, dword ptr [eax + 4]
0x00572867: push     ecx
0x00572868: mov      ecx, dword ptr [esp + 0xc]
0x0057286C: call     0x572390
0x00572871: ret      
0x00572872: int3     
0x00572873: int3     
0x00572874: int3     
0x00572875: int3     
0x00572876: int3     
0x00572877: int3     
0x00572878: int3     
0x00572879: int3     
0x0057287A: int3     
0x0057287B: int3     
0x0057287C: int3     
0x0057287D: int3     
0x0057287E: int3     
0x0057287F: int3     
0x00572880: mov      eax, dword ptr [esp + 8]
0x00572884: inc      dword ptr [eax + 0x158]
0x0057288A: ret      
0x0057288B: int3     
0x0057288C: int3     
0x0057288D: int3     
0x0057288E: int3     
0x0057288F: int3     
0x00572890: push     ebx
0x00572891: mov      ebx, dword ptr [esp + 8]
0x00572895: push     esi
0x00572896: mov      esi, ecx
0x00572898: mov      ecx, dword ptr [ebx]
0x0057289A: movzx    eax, byte ptr [ecx + 1]
0x0057289E: mov      ecx, dword ptr [ecx + 4]
0x005728A1: mov      edx, dword ptr [ecx + 8]
0x005728A4: test     dword ptr [edx + eax*4], 0x40000
0x005728AB: je       0x5728f3
0x005728AD: mov      ecx, dword ptr [ecx + 0x14]
0x005728B0: lea      eax, [eax + eax*8]
0x005728B3: lea      eax, [ecx + eax*4]
0x005728B6: mov      ecx, 0x1c
0x005728BB: cmp      byte ptr [eax + 0x14], cl
0x005728BE: jne      0x5728c5
0x005728C0: mov      eax, dword ptr [eax + 4]
0x005728C3: jmp      0x5728f5
0x005728C5: cmp      byte ptr [eax + 0x15], cl
0x005728C8: jne      0x5728cf
0x005728CA: mov      eax, dword ptr [eax + 8]
0x005728CD: jmp      0x5728f5
0x005728CF: cmp      byte ptr [eax + 0x16], cl
0x005728D2: jne      0x5728d9
0x005728D4: mov      eax, dword ptr [eax + 0xc]
0x005728D7: jmp      0x5728f5
0x005728D9: cmp      byte ptr [eax + 0x17], cl
0x005728DC: jne      0x5728e3
0x005728DE: mov      eax, dword ptr [eax + 0x10]
0x005728E1: jmp      0x5728f5
0x005728E3: mov      eax, dword ptr [eax]
0x005728E5: test     eax, eax
0x005728E7: je       0x5728f3
0x005728E9: push     ecx
0x005728EA: mov      ecx, eax
0x005728EC: call     0x461400
0x005728F1: jmp      0x5728f5
0x005728F3: xor      eax, eax
0x005728F5: mov      edx, dword ptr [esi + 0x40]
0x005728F8: mov      ecx, dword ptr [edx + 0x1dc]
0x005728FE: mov      edx, dword ptr [eax + 0x1dc]
0x00572904: mov      al, byte ptr [edx]
0x00572906: cmp      al, byte ptr [ecx]
0x00572908: je       0x572911
0x0057290A: pop      esi
0x0057290B: xor      eax, eax
0x0057290D: pop      ebx
0x0057290E: ret      4
0x00572911: mov      ecx, dword ptr [ebx + 4]
0x00572914: mov      edx, dword ptr [ecx]
0x00572916: mov      eax, dword ptr [edx]
0x00572918: push     edi
0x00572919: mov      edi, dword ptr [esi + 0x40]
0x0057291C: call     eax
0x0057291E: cmp      dword ptr [edi + 0xe44], eax
0x00572924: jne      0x57296c
0x00572926: inc      dword ptr [edi + 0xe48]
0x0057292C: mov      ecx, dword ptr [esi + 0x60]
0x0057292F: test     ecx, ecx
0x00572931: jle      0x572951
0x00572933: mov      edx, dword ptr [ebx + 4]
0x00572936: mov      eax, dword ptr [edx + 0xe8]
0x0057293C: imul     eax, ecx
0x0057293F: mov      ecx, dword ptr [esi + 0x40]
0x00572942: mov      ecx, dword ptr [ecx + 0xe48]
0x00572948: cdq      
0x00572949: add      ecx, ecx
0x0057294B: idiv     ecx
0x0057294D: mov      edi, eax
0x0057294F: jmp      0x572994
0x00572951: mov      edx, dword ptr [esi + 0x40]
0x00572954: mov      ecx, dword ptr [edx + 0xe48]
0x0057295A: mov      edx, dword ptr [ebx + 4]
0x0057295D: mov      eax, dword ptr [edx + 0xe8]
0x00572963: cdq      
0x00572964: add      ecx, ecx
0x00572966: idiv     ecx
0x00572968: mov      edi, eax
0x0057296A: jmp      0x572994
0x0057296C: mov      dword ptr [edi + 0xe48], 0
0x00572976: mov      eax, dword ptr [esi + 0x60]
0x00572979: test     eax, eax
0x0057297B: jle      0x57298b
0x0057297D: mov      ecx, dword ptr [ebx + 4]
0x00572980: mov      edi, dword ptr [ecx + 0xe8]
0x00572986: imul     edi, eax
0x00572989: jmp      0x572994
0x0057298B: mov      edx, dword ptr [ebx + 4]
0x0057298E: mov      edi, dword ptr [edx + 0xe8]
0x00572994: mov      eax, dword ptr [esi + 0x40]
0x00572997: add      dword ptr [eax + 0xd6c], edi
0x0057299D: add      eax, 0xd84
0x005729A2: push     eax
0x005729A3: mov      eax, dword ptr [0xb1bad4]
0x005729A8: push     0
0x005729AA: push     eax
0x005729AB: call     0x52d190
0x005729B0: mov      ecx, dword ptr [ebx + 4]
0x005729B3: mov      edx, dword ptr [ecx]
0x005729B5: mov      eax, dword ptr [edx]
0x005729B7: add      esp, 0xc
0x005729BA: call     eax
0x005729BC: mov      ecx, dword ptr [esi + 0x40]
0x005729BF: mov      dword ptr [ecx + 0xe44], eax
0x005729C5: mov      eax, dword ptr [esi + 0x40]
0x005729C8: inc      dword ptr [eax + 0xe3c]
0x005729CE: mov      edx, dword ptr [esi + 8]
0x005729D1: cmp      edx, dword ptr [ebx]
0x005729D3: jne      0x5729f2
0x005729D5: inc      dword ptr [esi + 0x7c]
0x005729D8: mov      ecx, dword ptr [ebx + 4]
0x005729DB: mov      eax, dword ptr [ecx]
0x005729DD: mov      edx, dword ptr [eax]
0x005729DF: call     edx
0x005729E1: mov      eax, dword ptr [eax + 8]
0x005729E4: cmp      dword ptr [esi + 0x80], eax
0x005729EA: jge      0x5729f2
0x005729EC: mov      dword ptr [esi + 0x80], eax
0x005729F2: mov      eax, edi
0x005729F4: pop      edi
0x005729F5: pop      esi
0x005729F6: pop      ebx
0x005729F7: ret      4
0x005729FA: int3     
0x005729FB: int3     
0x005729FC: int3     
0x005729FD: int3     
0x005729FE: int3     
0x005729FF: int3     
0x00572A00: mov      eax, dword ptr [esp + 4]
0x00572A04: mov      ecx, dword ptr [eax + 4]
0x00572A07: push     ecx
0x00572A08: mov      ecx, dword ptr [esp + 0xc]
0x00572A0C: call     0x572750
0x00572A11: ret      
0x00572A12: int3     
0x00572A13: int3     
0x00572A14: int3     
0x00572A15: int3     
0x00572A16: int3     
0x00572A17: int3     
0x00572A18: int3     
0x00572A19: int3     
0x00572A1A: int3     
0x00572A1B: int3     
0x00572A1C: int3     
0x00572A1D: int3     
0x00572A1E: int3     
0x00572A1F: int3     
0x00572A20: push     -1
0x00572A22: push     0x948278
0x00572A27: mov      eax, dword ptr fs:[0]
0x00572A2D: push     eax
0x00572A2E: push     ebx
0x00572A2F: push     esi
0x00572A30: push     edi
0x00572A31: mov      eax, dword ptr [0xb089c8]
0x00572A36: xor      eax, esp
0x00572A38: push     eax
0x00572A39: lea      eax, [esp + 0x10]
0x00572A3D: mov      dword ptr fs:[0], eax
0x00572A43: mov      esi, ecx
0x00572A45: mov      edx, dword ptr [esi + 0x40]
0x00572A48: xor      ebx, ebx
0x00572A4A: mov      edi, 1
0x00572A4F: cmp      dword ptr [edx + 0xdfc], ebx
0x00572A55: je       0x572a72
0x00572A57: fld      dword ptr [0x966d40] ; [f32=2, u32=0x40000000]
0x00572A5D: fcomp    dword ptr [edx + 0xdf4]
0x00572A63: fnstsw   ax
0x00572A65: test     ah, 0x41
0x00572A68: jp       0x572a72
0x00572A6A: mov      dword ptr [esi + 0x154], edi
0x00572A70: jmp      0x572a78
0x00572A72: mov      dword ptr [esi + 0x154], ebx
0x00572A78: mov      ecx, dword ptr [esp + 0x20]
0x00572A7C: fldz     
0x00572A7E: mov      eax, dword ptr [ecx]
0x00572A80: mov      dword ptr [edx + 0xdfc], eax
0x00572A86: mov      edx, dword ptr [esi + 0x40]
0x00572A89: fst      dword ptr [edx + 0xdf4]
0x00572A8F: add      dword ptr [esi + 0x78], edi
0x00572A92: add      dword ptr [esi + 0x84], edi
0x00572A98: add      dword ptr [esi + 0x8c], edi
0x00572A9E: add      dword ptr [esi + 0x144], edi
0x00572AA4: fld      dword ptr [ecx + 0x14]
0x00572AA7: fld      dword ptr [ecx + 0x18]
0x00572AAA: fcompp   
0x00572AAC: fnstsw   ax
0x00572AAE: test     ah, 5
0x00572AB1: jp       0x572ae3
0x00572AB3: mov      eax, dword ptr [esi + 0x40]
0x00572AB6: fstp     dword ptr [esi + 0x148]
0x00572ABC: mov      dword ptr [esi + 0x128], edi
0x00572AC2: mov      ecx, dword ptr [eax + 0x1b4]
0x00572AC8: mov      dword ptr [esp + 0x20], 0x9926d0
0x00572AD0: mov      edx, dword ptr [ecx]
0x00572AD2: mov      edx, dword ptr [edx + 8]
0x00572AD5: push     edi
0x00572AD6: lea      eax, [esp + 0x24]
0x00572ADA: push     eax
0x00572ADB: mov      dword ptr [esp + 0x20], ebx
0x00572ADF: call     edx
0x00572AE1: jmp      0x572aed
0x00572AE3: mov      eax, dword ptr [ecx]
0x00572AE5: fstp     st(0)
0x00572AE7: mov      dword ptr [esi + 0x14c], eax
0x00572AED: mov      dword ptr [esi + 0x128], ebx
0x00572AF3: mov      ecx, dword ptr [esp + 0x10]
0x00572AF7: mov      dword ptr fs:[0], ecx
0x00572AFE: pop      ecx
0x00572AFF: pop      edi
0x00572B00: pop      esi
0x00572B01: pop      ebx
0x00572B02: add      esp, 0xc
0x00572B05: ret      4
0x00572B08: int3     
0x00572B09: int3     
0x00572B0A: int3     
0x00572B0B: int3     
0x00572B0C: int3     
0x00572B0D: int3     
0x00572B0E: int3     
0x00572B0F: int3     
0x00572B10: sub      esp, 0x14
0x00572B13: mov      eax, dword ptr [esp + 0x18]
0x00572B17: fld      dword ptr [eax + 4]
0x00572B1A: lea      ecx, [esp]
0x00572B1D: fstp     dword ptr [esp]
0x00572B20: push     ecx
0x00572B21: fld      dword ptr [eax + 8]
0x00572B24: mov      ecx, dword ptr [esp + 0x20]
0x00572B28: fstp     dword ptr [esp + 8]
0x00572B2C: fld      dword ptr [eax + 0xc]
0x00572B2F: fstp     dword ptr [esp + 0xc]
0x00572B33: fld      dword ptr [eax + 0x10]
0x00572B36: mov      eax, dword ptr [eax + 0x14]
0x00572B39: fstp     dword ptr [esp + 0x10]
0x00572B3D: mov      dword ptr [esp + 0x14], eax
0x00572B41: call     0x572280
0x00572B46: add      esp, 0x14
0x00572B49: ret      
0x00572B4A: int3     
0x00572B4B: int3     
0x00572B4C: int3     
0x00572B4D: int3     
0x00572B4E: int3     
0x00572B4F: int3     
0x00572B50: mov      eax, dword ptr [esp + 8]
0x00572B54: inc      dword ptr [eax + 0x74]
0x00572B57: ret      
0x00572B58: int3     
0x00572B59: int3     
0x00572B5A: int3     
0x00572B5B: int3     
0x00572B5C: int3     
0x00572B5D: int3     
0x00572B5E: int3     
0x00572B5F: int3     
0x00572B60: push     -1
0x00572B62: push     0x94829b
0x00572B67: mov      eax, dword ptr fs:[0]
0x00572B6D: push     eax
0x00572B6E: push     ebx
0x00572B6F: push     ebp
0x00572B70: push     esi
0x00572B71: push     edi
0x00572B72: mov      eax, dword ptr [0xb089c8]
0x00572B77: xor      eax, esp
0x00572B79: push     eax
0x00572B7A: lea      eax, [esp + 0x14]
0x00572B7E: mov      dword ptr fs:[0], eax
0x00572B84: mov      esi, ecx
0x00572B86: mov      edi, dword ptr [esp + 0x24]
0x00572B8A: xor      ebx, ebx
0x00572B8C: lea      ebp, [ebx + 1]
0x00572B8F: cmp      edi, ebx
0x00572B91: jne      0x572c18
0x00572B97: fld      dword ptr [esi + 0x10c]
0x00572B9D: add      dword ptr [esi + 0x70], ebp
0x00572BA0: fld      dword ptr [esi + 0xec]
0x00572BA6: mov      dword ptr [esi + 0x9c], ebx
0x00572BAC: fcompp   
0x00572BAE: fnstsw   ax
0x00572BB0: test     ah, 0x41
0x00572BB3: jne      0x572bc1
0x00572BB5: fld      dword ptr [esi + 0xec]
0x00572BBB: fstp     dword ptr [esi + 0x10c]
0x00572BC1: fld      dword ptr [esi + 0x11c]
0x00572BC7: fld      dword ptr [esi + 0xb4]
0x00572BCD: fcompp   
0x00572BCF: fnstsw   ax
0x00572BD1: test     ah, 5
0x00572BD4: jp       0x572be2
0x00572BD6: fld      dword ptr [esi + 0xb4]
0x00572BDC: fstp     dword ptr [esi + 0x11c]
0x00572BE2: cmp      dword ptr [esi + 0x114], ebx
0x00572BE8: je       0x572ebf
0x00572BEE: fld      dword ptr [esi + 0x120]
0x00572BF4: fld      dword ptr [esi + 0x104]
0x00572BFA: fcompp   
0x00572BFC: fnstsw   ax
0x00572BFE: test     ah, 0x41
0x00572C01: jne      0x572ebf
0x00572C07: fld      dword ptr [esi + 0x104]
0x00572C0D: fstp     dword ptr [esi + 0x120]
0x00572C13: jmp      0x572ebf
0x00572C18: cmp      dword ptr [esi + 0x154], ebx
0x00572C1E: je       0x572c73
0x00572C20: mov      ecx, dword ptr [edi + 0x1b4]
0x00572C26: mov      dword ptr [esp + 0x24], 0x9926bc
0x00572C2E: mov      eax, dword ptr [ecx]
0x00572C30: mov      eax, dword ptr [eax + 8]
0x00572C33: push     ebp
0x00572C34: lea      edx, [esp + 0x28]
0x00572C38: push     edx
0x00572C39: mov      dword ptr [esp + 0x24], ebx
0x00572C3D: call     eax
0x00572C3F: mov      ecx, dword ptr [0xb01b28]
0x00572C45: push     0x992670
0x00572C4A: push     ebx
0x00572C4B: push     ecx
0x00572C4C: push     0x80000
0x00572C51: push     ebx
0x00572C52: push     7
0x00572C54: push     ebx
0x00572C55: push     ebp
0x00572C56: push     0xff
0x00572C5B: mov      dword ptr [esp + 0x40], 0xffffffff
0x00572C63: mov      dword ptr [esp + 0x48], 0x979378
0x00572C6B: call     0x681de0
0x00572C70: add      esp, 0x24
0x00572C73: mov      eax, dword ptr [esi + 0x40]
0x00572C76: cmp      dword ptr [edi + 0xdfc], eax
0x00572C7C: jne      0x572c84
0x00572C7E: add      dword ptr [esi + 0x124], ebp
0x00572C84: cmp      dword ptr [esi + 0x114], ebx
0x00572C8A: je       0x572c92
0x00572C8C: add      dword ptr [esi + 0x118], ebp
0x00572C92: mov      eax, dword ptr [eax + 0xdfc]
0x00572C98: push     0x51b1e251
0x00572C9D: lea      ecx, [eax + 0x1a8]
0x00572CA3: call     0x5691a0
0x00572CA8: mov      edi, eax
0x00572CAA: cmp      edi, ebx
0x00572CAC: je       0x572ebf
0x00572CB2: mov      edx, dword ptr [edi + 0x9c]
0x00572CB8: cmp      edx, dword ptr [esi + 0x40]
0x00572CBB: jne      0x572d35
0x00572CBD: fld      dword ptr [0x966e84] ; [f32=10, u32=0x41200000]
0x00572CC3: fcomp    dword ptr [esi + 0xb4]
0x00572CC9: fnstsw   ax
0x00572CCB: test     ah, 1
0x00572CCE: jne      0x572d35
0x00572CD0: add      dword ptr [edi + 0xac], ebp
0x00572CD6: fld1     
0x00572CD8: mov      eax, dword ptr [esi + 0x40]
0x00572CDB: mov      eax, dword ptr [eax + 0xdfc]
0x00572CE1: push     ecx
0x00572CE2: fstp     dword ptr [esp]
0x00572CE5: push     0x6cc6b9bb
0x00572CEA: lea      ecx, [eax + 0x1a8]
0x00572CF0: call     0x5691a0
0x00572CF5: mov      ecx, eax
0x00572CF7: call     0x56aff0
0x00572CFC: mov      ecx, dword ptr [esi + 0x40]
0x00572CFF: mov      edx, dword ptr [ecx + 0xdfc]
0x00572D05: mov      dword ptr [edx + 0xdac], 8
0x00572D0F: mov      eax, dword ptr [esi + 0x40]
0x00572D12: mov      ecx, dword ptr [eax + 0xdfc]
0x00572D18: mov      edx, dword ptr [0xb1bb4c]
0x00572D1E: add      ecx, 0xda8
0x00572D24: push     ecx
0x00572D25: push     ebx
0x00572D26: push     edx
0x00572D27: call     0x52d190
0x00572D2C: add      esp, 0xc
0x00572D2F: mov      dword ptr [edi + 0x9c], ebx
0x00572D35: mov      eax, dword ptr [edi + 0x14c]
0x00572D3B: cmp      eax, ebx
0x00572D3D: je       0x572d84
0x00572D3F: push     0x51b1e251
0x00572D44: lea      ecx, [eax + 0x1a8]
0x00572D4A: call     0x5691a0
0x00572D4F: cmp      eax, ebx
0x00572D51: je       0x572d84
0x00572D53: cmp      dword ptr [eax + 0x14c], ebx
0x00572D59: je       0x572d84
0x00572D5B: mov      eax, dword ptr [0xb01b28]
0x00572D60: push     0x99268c
0x00572D65: push     ebx
0x00572D66: push     eax
0x00572D67: push     0x80000
0x00572D6C: push     ebx
0x00572D6D: push     7
0x00572D6F: push     ebx
0x00572D70: push     ebp
0x00572D71: push     0xff
0x00572D76: call     0x681de0
0x00572D7B: add      esp, 0x24
0x00572D7E: add      dword ptr [edi + 0x150], ebp
0x00572D84: fld      dword ptr [edi + 0xb8]
0x00572D8A: fld      dword ptr [edi + 0xb4]
0x00572D90: fcompp   
0x00572D92: fnstsw   ax
0x00572D94: test     ah, 5
0x00572D97: jp       0x572da5
0x00572D99: fld      dword ptr [edi + 0xb4]
0x00572D9F: fstp     dword ptr [edi + 0xb8]
0x00572DA5: mov      ecx, dword ptr [edi + 0xb0]
0x00572DAB: cmp      ecx, ebx
0x00572DAD: je       0x572dc6
0x00572DAF: fld      dword ptr [0x966d40] ; [f32=2, u32=0x40000000]
0x00572DB5: fcomp    dword ptr [edi + 0xb4]
0x00572DBB: fnstsw   ax
0x00572DBD: test     ah, 0x41
0x00572DC0: je       0x572dd9
0x00572DC2: cmp      ecx, ebx
0x00572DC4: jne      0x572e13
0x00572DC6: fld      dword ptr [0x9672e4] ; [f32=3, u32=0x40400000]
0x00572DCC: fcomp    dword ptr [edi + 0xb4]
0x00572DD2: fnstsw   ax
0x00572DD4: test     ah, 0x41
0x00572DD7: jne      0x572e13
0x00572DD9: inc      ecx
0x00572DDA: mov      dword ptr [edi + 0xb0], ecx
0x00572DE0: mov      ecx, dword ptr [esi + 0x40]
0x00572DE3: mov      edx, dword ptr [ecx + 0xdfc]
0x00572DE9: mov      dword ptr [edx + 0xdac], 0xa
0x00572DF3: mov      eax, dword ptr [esi + 0x40]
0x00572DF6: mov      ecx, dword ptr [eax + 0xdfc]
0x00572DFC: mov      edx, dword ptr [0xb1bb54]
0x00572E02: add      ecx, 0xda8
0x00572E08: push     ecx
0x00572E09: push     ebx
0x00572E0A: push     edx
0x00572E0B: call     0x52d190
0x00572E10: add      esp, 0xc
0x00572E13: cmp      dword ptr [edi + 0x128], ebx
0x00572E19: je       0x572e21
0x00572E1B: add      dword ptr [edi + 0x12c], ebp
0x00572E21: cmp      dword ptr [edi + 0x110], ebx
0x00572E27: jne      0x572e2f
0x00572E29: add      dword ptr [edi + 0x130], ebp
0x00572E2F: mov      eax, dword ptr [esi + 0x40]
0x00572E32: fldz     
0x00572E34: add      dword ptr [edi + 0xc0], ebp
0x00572E3A: fstp     dword ptr [edi + 0xb4]
0x00572E40: add      dword ptr [edi + 0xa4], ebp
0x00572E46: cmp      dword ptr [edi + 0xa4], 3
0x00572E4D: mov      dword ptr [edi + 0xa0], eax
0x00572E53: mov      eax, dword ptr [edi + 0xc0]
0x00572E59: jne      0x572e88
0x00572E5B: mov      ecx, dword ptr [esi + 0x40]
0x00572E5E: mov      edx, dword ptr [ecx + 0xdfc]
0x00572E64: mov      dword ptr [edx + 0xdac], 0xb
0x00572E6E: mov      eax, dword ptr [esi + 0x40]
0x00572E71: mov      ecx, dword ptr [eax + 0xdfc]
0x00572E77: mov      edx, dword ptr [0xb1bb48]
0x00572E7D: add      ecx, 0xda8
0x00572E83: push     ecx
0x00572E84: push     ebx
0x00572E85: push     edx
0x00572E86: jmp      0x572eb7
0x00572E88: cmp      eax, 5
0x00572E8B: jl       0x572ebf
0x00572E8D: mov      eax, dword ptr [esi + 0x40]
0x00572E90: mov      ecx, dword ptr [eax + 0xdfc]
0x00572E96: mov      dword ptr [ecx + 0xdac], 9
0x00572EA0: mov      edx, dword ptr [esi + 0x40]
0x00572EA3: mov      eax, dword ptr [edx + 0xdfc]
0x00572EA9: mov      ecx, dword ptr [0xb1bb50]
0x00572EAF: add      eax, 0xda8
0x00572EB4: push     eax
0x00572EB5: push     ebx
0x00572EB6: push     ecx
0x00572EB7: call     0x52d190
0x00572EBC: add      esp, 0xc
0x00572EBF: add      dword ptr [esi + 0x6c], ebp
0x00572EC2: cmp      dword ptr [esi + 0xc0], ebx
0x00572EC8: je       0x572ed8
0x00572ECA: mov      dword ptr [esi + 0xe0], ebx
0x00572ED0: mov      dword ptr [esi + 0xe4], ebx
0x00572ED6: jmp      0x572ef9
0x00572ED8: mov      eax, dword ptr [esi + 0x74]
0x00572EDB: add      dword ptr [esi + 0xe0], ebp
0x00572EE1: cmp      eax, ebx
0x00572EE3: je       0x572eed
0x00572EE5: cmp      dword ptr [esi + 0xe8], eax
0x00572EEB: jge      0x572ef9
0x00572EED: add      dword ptr [esi + 0xe4], ebp
0x00572EF3: mov      dword ptr [esi + 0xe8], eax
0x00572EF9: fld      dword ptr [esi + 0x15c]
0x00572EFF: fld      dword ptr [esi + 0xec]
0x00572F05: fcompp   
0x00572F07: fnstsw   ax
0x00572F09: test     ah, 0x41
0x00572F0C: jne      0x572f1a
0x00572F0E: fld      dword ptr [esi + 0xec]
0x00572F14: fstp     dword ptr [esi + 0x15c]
0x00572F1A: fldz     
0x00572F1C: mov      edx, dword ptr [esi + 0x40]
0x00572F1F: fstp     dword ptr [esi + 0xec]
0x00572F25: mov      dword ptr [esi + 0xb0], ebx
0x00572F2B: mov      dword ptr [esi + 0xc0], ebx
0x00572F31: mov      dword ptr [esi + 0xd8], ebx
0x00572F37: mov      dword ptr [esi + 0x54], ebx
0x00572F3A: mov      dword ptr [esi + 0x17c], ebx
0x00572F40: mov      dword ptr [esi + 0x50], ebx
0x00572F43: mov      eax, dword ptr [edx + 0xdfc]
0x00572F49: mov      dword ptr [esi + 0x9c], eax
0x00572F4F: mov      dword ptr [esi + 0x144], ebx
0x00572F55: mov      ecx, dword ptr [esp + 0x14]
0x00572F59: mov      dword ptr fs:[0], ecx
0x00572F60: pop      ecx
0x00572F61: pop      edi
0x00572F62: pop      esi
0x00572F63: pop      ebp
0x00572F64: pop      ebx
0x00572F65: add      esp, 0xc
0x00572F68: ret      4
0x00572F6B: int3     
0x00572F6C: int3     
0x00572F6D: int3     
0x00572F6E: int3     
0x00572F6F: int3     
0x00572F70: sub      esp, 0x1c
0x00572F73: mov      eax, dword ptr [esp + 0x20]
0x00572F77: fld      dword ptr [eax + 8]
0x00572F7A: mov      ecx, dword ptr [eax + 4]
0x00572F7D: fstp     dword ptr [esp + 4]
0x00572F81: lea      edx, [esp]
0x00572F84: fld      dword ptr [eax + 0xc]
0x00572F87: mov      dword ptr [esp], ecx
0x00572F8A: mov      ecx, dword ptr [esp + 0x24]
0x00572F8E: fstp     dword ptr [esp + 8]
0x00572F92: fld      dword ptr [eax + 0x10]
0x00572F95: push     edx
0x00572F96: fstp     dword ptr [esp + 0x10]
0x00572F9A: fld      dword ptr [eax + 0x14]
0x00572F9D: fstp     dword ptr [esp + 0x14]
0x00572FA1: fld      dword ptr [eax + 0x18]
0x00572FA4: fstp     dword ptr [esp + 0x18]
0x00572FA8: fld      dword ptr [eax + 0x1c]
0x00572FAB: fstp     dword ptr [esp + 0x1c]
0x00572FAF: call     0x572a20
0x00572FB4: add      esp, 0x1c
0x00572FB7: ret      
0x00572FB8: int3     
0x00572FB9: int3     
0x00572FBA: int3     
0x00572FBB: int3     
0x00572FBC: int3     
0x00572FBD: int3     
0x00572FBE: int3     
0x00572FBF: int3     
0x00572FC0: mov      eax, dword ptr [esp + 4]
0x00572FC4: mov      ecx, dword ptr [eax + 4]
0x00572FC7: push     esi
0x00572FC8: mov      esi, dword ptr [esp + 0xc]
0x00572FCC: push     ecx
0x00572FCD: mov      ecx, esi
0x00572FCF: call     0x572b60
0x00572FD4: mov      edx, dword ptr [esi + 0x40]
0x00572FD7: xor      eax, eax
0x00572FD9: mov      dword ptr [esi + 0x60], eax
0x00572FDC: mov      dword ptr [edx + 0xe44], eax
0x00572FE2: pop      esi
0x00572FE3: ret      
0x00572FE4: int3     
0x00572FE5: int3     
0x00572FE6: int3     
0x00572FE7: int3     
0x00572FE8: int3     
0x00572FE9: int3     
0x00572FEA: int3     
0x00572FEB: int3     
0x00572FEC: int3     
0x00572FED: int3     
0x00572FEE: int3     
0x00572FEF: int3     
0x00572FF0: push     esi
0x00572FF1: push     edi
0x00572FF2: mov      edi, ecx
0x00572FF4: call     0x572470
0x00572FF9: mov      eax, dword ptr [edi + 0xc]
0x00572FFC: mov      edx, dword ptr [eax + 0x18]
0x00572FFF: push     edi
0x00573000: lea      esi, [edi + 0xc]
0x00573003: push     0x572720
0x00573008: push     0xb49e84
0x0057300D: mov      ecx, esi
0x0057300F: call     edx
0x00573011: mov      eax, dword ptr [esi]
0x00573013: mov      edx, dword ptr [eax + 0x18]
0x00573016: push     edi
0x00573017: push     0x572a00
0x0057301C: push     0xb49e80
0x00573021: mov      ecx, esi
0x00573023: call     edx
0x00573025: mov      eax, dword ptr [esi]
0x00573027: mov      edx, dword ptr [eax + 0x18]
0x0057302A: push     edi
0x0057302B: push     0x572f70
0x00573030: push     0xb49ccc
0x00573035: mov      ecx, esi
0x00573037: call     edx
0x00573039: mov      eax, dword ptr [esi]
0x0057303B: mov      edx, dword ptr [eax + 0x18]
0x0057303E: push     edi
0x0057303F: push     0x572b10
0x00573044: push     0xb1bc1c
0x00573049: mov      ecx, esi
0x0057304B: call     edx
0x0057304D: mov      eax, dword ptr [esi]
0x0057304F: mov      edx, dword ptr [eax + 0x18]
0x00573052: push     edi
0x00573053: push     0x572b50
0x00573058: push     0xb1bc20
0x0057305D: mov      ecx, esi
0x0057305F: call     edx
0x00573061: mov      eax, dword ptr [esi]
0x00573063: mov      edx, dword ptr [eax + 0x18]
0x00573066: push     edi
0x00573067: push     0x572840
0x0057306C: push     0xb1bc70
0x00573071: mov      ecx, esi
0x00573073: call     edx
0x00573075: mov      eax, dword ptr [esi]
0x00573077: mov      edx, dword ptr [eax + 0x18]
0x0057307A: push     edi
0x0057307B: push     0x572860
0x00573080: push     0xb1bc4c
0x00573085: mov      ecx, esi
0x00573087: call     edx
0x00573089: mov      eax, dword ptr [esi]
0x0057308B: mov      edx, dword ptr [eax + 0x18]
0x0057308E: push     edi
0x0057308F: push     0x572880
0x00573094: push     0xb49e88
0x00573099: mov      ecx, esi
0x0057309B: call     edx
0x0057309D: mov      eax, dword ptr [esi]
0x0057309F: mov      edx, dword ptr [eax + 0x18]
0x005730A2: push     edi
0x005730A3: push     0x572fc0
0x005730A8: push     0xb1bc00
0x005730AD: mov      ecx, esi
0x005730AF: call     edx
0x005730B1: pop      edi
0x005730B2: pop      esi
0x005730B3: ret      
0x005730B4: int3     
0x005730B5: int3     
0x005730B6: int3     
0x005730B7: int3     
0x005730B8: int3     
0x005730B9: int3     
0x005730BA: int3     
0x005730BB: int3     
0x005730BC: int3     
0x005730BD: int3     
0x005730BE: int3     
0x005730BF: int3     
0x005730C0: push     esi
0x005730C1: mov      esi, ecx
0x005730C3: call     0x56d6f0
0x005730C8: mov      dword ptr [esi], 0x9926e4
0x005730CE: mov      dword ptr [esi + 0x180], 0
0x005730D8: mov      eax, esi
0x005730DA: pop      esi
0x005730DB: ret      
0x005730DC: int3     
0x005730DD: int3     
0x005730DE: int3     
0x005730DF: int3     
0x005730E0: push     -1
0x005730E2: push     0x9482be
0x005730E7: mov      eax, dword ptr fs:[0]
0x005730ED: push     eax
0x005730EE: push     ecx
0x005730EF: push     esi
0x005730F0: mov      eax, dword ptr [0xb089c8]
0x005730F5: xor      eax, esp
0x005730F7: push     eax
0x005730F8: lea      eax, [esp + 0xc]
0x005730FC: mov      dword ptr fs:[0], eax
0x00573102: mov      esi, ecx
0x00573104: mov      dword ptr [esp + 8], esi
0x00573108: mov      dword ptr [esi], 0x9926e4
0x0057310E: mov      dword ptr [esp + 0x14], 0
0x00573116: call     dword ptr [0x992710] ; [u32=0x00572440]
0x0057311C: mov      ecx, esi
0x0057311E: mov      dword ptr [esi + 4], 0
0x00573125: mov      dword ptr [esi + 8], 0
0x0057312C: mov      dword ptr [esp + 0x14], 0xffffffff
0x00573134: call     0x56d750
0x00573139: mov      ecx, dword ptr [esp + 0xc]
0x0057313D: mov      dword ptr fs:[0], ecx
0x00573144: pop      ecx
0x00573145: pop      esi
0x00573146: add      esp, 0x10
0x00573149: ret      
0x0057314A: int3     
0x0057314B: int3     
0x0057314C: int3     
0x0057314D: int3     
0x0057314E: int3     
0x0057314F: int3     
0x00573150: xor      eax, eax
0x00573152: cmp      dword ptr [esp + 4], 0xb49e88
0x0057315A: sete     al
0x0057315D: ret      4
0x00573160: mov      eax, 0xb49e88
0x00573165: ret      
0x00573166: int3     
0x00573167: int3     
0x00573168: int3     
0x00573169: int3     
0x0057316A: int3     
0x0057316B: int3     
0x0057316C: int3     
0x0057316D: int3     
0x0057316E: int3     
0x0057316F: int3     
0x00573170: xor      eax, eax
0x00573172: cmp      dword ptr [esp + 4], 0xb280b4
0x0057317A: sete     al
0x0057317D: ret      4
0x00573180: mov      eax, 0xb280b4
0x00573185: ret      
0x00573186: int3     
0x00573187: int3     
0x00573188: int3     
0x00573189: int3     
0x0057318A: int3     
0x0057318B: int3     
0x0057318C: int3     
0x0057318D: int3     
0x0057318E: int3     
0x0057318F: int3     
0x00573190: mov      eax, dword ptr [esp + 4]
0x00573194: push     0
0x00573196: push     eax
0x00573197: push     4
0x00573199: call     0x689060
0x0057319E: add      esp, 0xc
0x005731A1: test     eax, eax
0x005731A3: je       0x5731ae
0x005731A5: mov      dword ptr [eax], 0x9926bc
0x005731AB: ret      4
0x005731AE: xor      eax, eax
0x005731B0: ret      4
0x005731B3: int3     
0x005731B4: int3     
0x005731B5: int3     
0x005731B6: int3     
0x005731B7: int3     
0x005731B8: int3     
0x005731B9: int3     
0x005731BA: int3     
0x005731BB: int3     
0x005731BC: int3     
0x005731BD: int3     
0x005731BE: int3     
0x005731BF: int3     
0x005731C0: mov      eax, dword ptr [esp + 4]
0x005731C4: push     0
0x005731C6: push     eax
0x005731C7: push     4
0x005731C9: call     0x689060
0x005731CE: add      esp, 0xc
0x005731D1: test     eax, eax
0x005731D3: je       0x5731de
0x005731D5: mov      dword ptr [eax], 0x9926d0
0x005731DB: ret      4
0x005731DE: xor      eax, eax
0x005731E0: ret      4
0x005731E3: int3     
0x005731E4: int3     
0x005731E5: int3     
0x005731E6: int3     
0x005731E7: int3     
0x005731E8: int3     
0x005731E9: int3     
0x005731EA: int3     
0x005731EB: int3     
0x005731EC: int3     
0x005731ED: int3     
0x005731EE: int3     
0x005731EF: int3     
0x005731F0: mov      eax, 0xb49e8c
0x005731F5: ret      
0x005731F6: int3     
0x005731F7: int3     
0x005731F8: int3     
0x005731F9: int3     
0x005731FA: int3     
0x005731FB: int3     
0x005731FC: int3     
0x005731FD: int3     
0x005731FE: int3     
0x005731FF: int3     
0x00573200: push     esi
0x00573201: mov      esi, ecx
0x00573203: call     0x5730e0
0x00573208: test     byte ptr [esp + 8], 1
0x0057320D: je       0x573218
0x0057320F: push     esi
0x00573210: call     0x688fb0
0x00573215: add      esp, 4
0x00573218: mov      eax, esi
0x0057321A: pop      esi
0x0057321B: ret      4
0x0057321E: int3     
0x0057321F: int3     
0x00573220: ret      
0x00573221: int3     
0x00573222: int3     
0x00573223: int3     
0x00573224: int3     
0x00573225: int3     
0x00573226: int3     
0x00573227: int3     
0x00573228: int3     
0x00573229: int3     
0x0057322A: int3     
0x0057322B: int3     
0x0057322C: int3     
0x0057322D: int3     
0x0057322E: int3     
0x0057322F: int3     
0x00573230: mov      eax, dword ptr [esp + 4]
0x00573234: push     esi
0x00573235: push     eax
0x00573236: mov      esi, ecx
0x00573238: call     0x50de10
0x0057323D: fldz     
0x0057323F: fstp     dword ptr [esi + 0x160]
0x00573245: mov      dword ptr [esi], 0x992718
0x0057324B: mov      dword ptr [esi + 0x15c], 0
0x00573255: mov      eax, esi
0x00573257: pop      esi
0x00573258: ret      4
0x0057325B: int3     
0x0057325C: int3     
0x0057325D: int3     
0x0057325E: int3     
0x0057325F: int3     
0x00573260: push     -1
0x00573262: push     0x9482e8
0x00573267: mov      eax, dword ptr fs:[0]
0x0057326D: push     eax
0x0057326E: push     ecx
0x0057326F: push     esi
0x00573270: mov      eax, dword ptr [0xb089c8]
0x00573275: xor      eax, esp
0x00573277: push     eax
0x00573278: lea      eax, [esp + 0xc]
0x0057327C: mov      dword ptr fs:[0], eax
0x00573282: mov      esi, ecx
0x00573284: mov      dword ptr [esp + 8], esi
0x00573288: mov      dword ptr [esi], 0x992718
0x0057328E: mov      ecx, dword ptr [esi + 0x15c]
0x00573294: mov      dword ptr [esp + 0x14], 0
0x0057329C: test     ecx, ecx
0x0057329E: je       0x5732a8
0x005732A0: mov      eax, dword ptr [ecx]
0x005732A2: mov      edx, dword ptr [eax]
0x005732A4: push     1
0x005732A6: call     edx
0x005732A8: mov      ecx, esi
0x005732AA: mov      dword ptr [esp + 0x14], 0xffffffff
0x005732B2: call     0x50dea0
0x005732B7: mov      ecx, dword ptr [esp + 0xc]
0x005732BB: mov      dword ptr fs:[0], ecx
0x005732C2: pop      ecx
0x005732C3: pop      esi
0x005732C4: add      esp, 0x10
0x005732C7: ret      
0x005732C8: int3     
0x005732C9: int3     
0x005732CA: int3     
0x005732CB: int3     
0x005732CC: int3     
0x005732CD: int3     
0x005732CE: int3     
0x005732CF: int3     
0x005732D0: mov      eax, dword ptr [ecx + 8]
0x005732D3: movzx    ecx, byte ptr [eax + 1]
0x005732D7: mov      edx, dword ptr [eax + 4]
0x005732DA: mov      eax, dword ptr [edx + 0x58]
0x005732DD: lea      eax, [eax + ecx*2]
0x005732E0: mov      cl, byte ptr [eax]
0x005732E2: push     ebp
0x005732E3: push     edi
0x005732E4: cmp      cl, 0xff
0x005732E7: jne      0x5732ed
0x005732E9: xor      ebp, ebp
0x005732EB: jmp      0x573307
0x005732ED: mov      edx, dword ptr [0xb78a28]
0x005732F3: movzx    ecx, cl
0x005732F6: lea      ecx, [ecx + ecx*2]
0x005732F9: mov      ecx, dword ptr [edx + ecx*4 + 8]
0x005732FD: movzx    edx, byte ptr [eax + 1]
0x00573301: mov      eax, dword ptr [ecx + 0x78]
0x00573304: mov      ebp, dword ptr [eax + edx*4]
0x00573307: mov      edi, ebp
0x00573309: test     ebp, ebp
0x0057330B: je       0x5733d2
0x00573311: push     ebx
0x00573312: mov      ebx, 0xd
0x00573317: push     esi
0x00573318: jmp      0x573320
0x0057331A: lea      ebx, [ebx]
0x00573320: movzx    eax, byte ptr [edi + 1]
0x00573324: mov      edx, dword ptr [edi + 4]
0x00573327: lea      ecx, [eax + eax*8]
0x0057332A: mov      eax, dword ptr [edx + 0x14]
0x0057332D: cmp      byte ptr [eax + ecx*4 + 0x14], bl
0x00573331: lea      eax, [eax + ecx*4]
0x00573334: jne      0x57333b
0x00573336: mov      esi, dword ptr [eax + 4]
0x00573339: jmp      0x573369
0x0057333B: cmp      byte ptr [eax + 0x15], bl
0x0057333E: jne      0x573345
0x00573340: mov      esi, dword ptr [eax + 8]
0x00573343: jmp      0x573369
0x00573345: cmp      byte ptr [eax + 0x16], bl
0x00573348: jne      0x57334f
0x0057334A: mov      esi, dword ptr [eax + 0xc]
0x0057334D: jmp      0x573369
0x0057334F: cmp      byte ptr [eax + 0x17], bl
0x00573352: jne      0x573359
0x00573354: mov      esi, dword ptr [eax + 0x10]
0x00573357: jmp      0x573369
0x00573359: mov      eax, dword ptr [eax]
0x0057335B: test     eax, eax
0x0057335D: je       0x573392
0x0057335F: push     ebx
0x00573360: mov      ecx, eax
0x00573362: call     0x461400
0x00573367: mov      esi, eax
0x00573369: test     esi, esi
0x0057336B: je       0x573392
0x0057336D: cmp      dword ptr [esp + 0x18], 0
0x00573372: je       0x57337d
0x00573374: mov      edx, dword ptr [esi]
0x00573376: mov      eax, dword ptr [edx + 0x5c]
0x00573379: mov      ecx, esi
0x0057337B: call     eax
0x0057337D: cmp      dword ptr [esp + 0x14], 0
0x00573382: mov      edx, dword ptr [esi]
0x00573384: mov      ecx, esi
0x00573386: je       0x57338d
0x00573388: mov      eax, dword ptr [edx + 0x64]
0x0057338B: jmp      0x573390
0x0057338D: mov      eax, dword ptr [edx + 0x68]
0x00573390: call     eax
0x00573392: movzx    ecx, byte ptr [edi + 1]
0x00573396: mov      edx, dword ptr [edi + 4]
0x00573399: mov      eax, dword ptr [edx + 0x5c]
0x0057339C: lea      ecx, [eax + ecx*2]
0x0057339F: mov      al, byte ptr [ecx]
0x005733A1: cmp      al, 0xff
0x005733A3: jne      0x5733a9
0x005733A5: xor      eax, eax
0x005733A7: jmp      0x5733c2
0x005733A9: movzx    eax, al
0x005733AC: lea      edx, [eax + eax*2]
0x005733AF: mov      eax, dword ptr [0xb78a28]
0x005733B4: mov      edx, dword ptr [eax + edx*4 + 8]
0x005733B8: movzx    eax, byte ptr [ecx + 1]
0x005733BC: mov      ecx, dword ptr [edx + 0x78]
0x005733BF: mov      eax, dword ptr [ecx + eax*4]
0x005733C2: mov      edi, eax
0x005733C4: cmp      ebp, eax
0x005733C6: je       0x5733d0
0x005733C8: test     eax, eax
0x005733CA: jne      0x573320
0x005733D0: pop      esi
0x005733D1: pop      ebx
0x005733D2: pop      edi
0x005733D3: pop      ebp
0x005733D4: ret      8
0x005733D7: int3     
0x005733D8: int3     
0x005733D9: int3     
0x005733DA: int3     
0x005733DB: int3     
0x005733DC: int3     
0x005733DD: int3     
0x005733DE: int3     
0x005733DF: int3     

--- CProjectileFXOnImpact::vfunc_54 @ 0x005733E0 ---
0x005733E0: push     esi
0x005733E1: push     1
0x005733E3: push     1
0x005733E5: mov      esi, ecx
0x005733E7: call     0x5732d0
0x005733EC: fld      dword ptr [esp + 8]
0x005733F0: fstp     dword ptr [esi + 0x160]
0x005733F6: pop      esi
0x005733F7: ret      4
0x005733FA: int3     
0x005733FB: int3     
0x005733FC: int3     
0x005733FD: int3     
0x005733FE: int3     
0x005733FF: int3     
0x00573400: mov      ecx, dword ptr [esp + 8]
0x00573404: push     0
0x00573406: push     0
0x00573408: call     0x5732d0
0x0057340D: ret      
0x0057340E: int3     
0x0057340F: int3     

--- CProjectileFXOnImpact::vfunc_43 @ 0x00573410 ---
0x00573410: push     ecx
0x00573411: fldz     
0x00573413: fcom     dword ptr [ecx + 0x160]
0x00573419: fnstsw   ax
0x0057341B: test     ah, 5
0x0057341E: jp       0x573452
0x00573420: fld      dword ptr [ecx + 0x160]
0x00573426: fsub     dword ptr [0xb76120]
0x0057342C: fstp     dword ptr [esp]
0x0057342F: fld      dword ptr [esp]
0x00573432: fst      dword ptr [ecx + 0x160]
0x00573438: fcomp    st(1)
0x0057343A: fnstsw   ax
0x0057343C: test     ah, 0x41
0x0057343F: jp       0x573452
0x00573441: push     0
0x00573443: fstp     dword ptr [ecx + 0x160]
0x00573449: push     0
0x0057344B: call     0x5732d0
0x00573450: pop      ecx
0x00573451: ret      
0x00573452: fstp     st(0)
0x00573454: pop      ecx
0x00573455: ret      
0x00573456: int3     
0x00573457: int3     
0x00573458: int3     
0x00573459: int3     
0x0057345A: int3     
0x0057345B: int3     
0x0057345C: int3     
0x0057345D: int3     
0x0057345E: int3     
0x0057345F: int3     
0x00573460: push     -1
0x00573462: push     0x948320
0x00573467: mov      eax, dword ptr fs:[0]
0x0057346D: push     eax
0x0057346E: push     esi
0x0057346F: push     edi
0x00573470: mov      eax, dword ptr [0xb089c8]
0x00573475: xor      eax, esp
0x00573477: push     eax
0x00573478: lea      eax, [esp + 0xc]
0x0057347C: mov      dword ptr fs:[0], eax
0x00573482: mov      esi, ecx
0x00573484: mov      eax, dword ptr [esi + 8]
0x00573487: lea      ecx, [esi + 0x14]
0x0057348A: push     ecx
0x0057348B: push     eax
0x0057348C: call     0x5687c0
0x00573491: mov      edi, dword ptr [esp + 0x28]
0x00573495: mov      edx, dword ptr [esp + 0x24]
0x00573499: add      esp, 8
0x0057349C: push     edi
0x0057349D: push     edx
0x0057349E: mov      ecx, esi
0x005734A0: call     0x79ac30
0x005734A5: mov      eax, edi
0x005734A7: sub      eax, 2
0x005734AA: je       0x5734ce
0x005734AC: sub      eax, 7
0x005734AF: jne      0x573509
0x005734B1: push     eax
0x005734B2: push     eax
0x005734B3: mov      ecx, esi
0x005734B5: call     0x5732d0
0x005734BA: mov      ecx, dword ptr [esp + 0xc]
0x005734BE: mov      dword ptr fs:[0], ecx
0x005734C5: pop      ecx
0x005734C6: pop      edi
0x005734C7: pop      esi
0x005734C8: add      esp, 0xc
0x005734CB: ret      8
0x005734CE: mov      eax, dword ptr [0xb01b28]
0x005734D3: push     0
0x005734D5: push     1
0x005734D7: push     0
0x005734D9: push     1
0x005734DB: push     0
0x005734DD: push     eax
0x005734DE: push     0x30
0x005734E0: call     0x688fe0
0x005734E5: add      esp, 0x1c
0x005734E8: mov      dword ptr [esp + 0x20], eax
0x005734EC: mov      dword ptr [esp + 0x14], 0
0x005734F4: test     eax, eax
0x005734F6: je       0x573501
0x005734F8: mov      ecx, eax
0x005734FA: call     0x50e290
0x005734FF: jmp      0x573503
0x00573501: xor      eax, eax
0x00573503: mov      dword ptr [esi + 0x15c], eax
0x00573509: mov      ecx, dword ptr [esp + 0xc]
0x0057350D: mov      dword ptr fs:[0], ecx
0x00573514: pop      ecx
0x00573515: pop      edi
0x00573516: pop      esi
0x00573517: add      esp, 0xc
0x0057351A: ret      8
0x0057351D: int3     
0x0057351E: int3     
0x0057351F: int3     
0x00573520: push     esi
0x00573521: mov      esi, ecx
0x00573523: call     0x573260
0x00573528: test     byte ptr [esp + 8], 1
0x0057352D: je       0x573538
0x0057352F: push     esi
0x00573530: call     0x688fb0
0x00573535: add      esp, 4
0x00573538: mov      eax, esi
0x0057353A: pop      esi
0x0057353B: ret      4
0x0057353E: int3     
0x0057353F: int3     
0x00573540: push     esi
0x00573541: mov      esi, ecx
0x00573543: call     0x57cd50
0x00573548: xor      eax, eax
0x0057354A: mov      dword ptr [esi], 0x9927f8
0x00573550: mov      dword ptr [esi + 0x40], eax
0x00573553: mov      dword ptr [esi + 0x44], eax
0x00573556: mov      dword ptr [esi + 0x48], eax
0x00573559: mov      word ptr [esi + 0x4c], ax
0x0057355D: mov      byte ptr [esi + 0x4e], al
0x00573560: mov      eax, esi
0x00573562: pop      esi
0x00573563: ret      
0x00573564: int3     
0x00573565: int3     
0x00573566: int3     
0x00573567: int3     
0x00573568: int3     
0x00573569: int3     
0x0057356A: int3     
0x0057356B: int3     
0x0057356C: int3     
0x0057356D: int3     
0x0057356E: int3     
0x0057356F: int3     
0x00573570: mov      dword ptr [ecx], 0x9927f8
0x00573576: jmp      0x57cd70
0x0057357B: int3     
0x0057357C: int3     
0x0057357D: int3     
0x0057357E: int3     
0x0057357F: int3     
0x00573580: lea      eax, [ecx + 0x40]
0x00573583: mov      ecx, 0xf
0x00573588: and      byte ptr [eax], 0xfc
0x0057358B: inc      eax
0x0057358C: sub      ecx, 1
0x0057358F: jne      0x573588
0x00573591: ret      
0x00573592: int3     
0x00573593: int3     
0x00573594: int3     
0x00573595: int3     
0x00573596: int3     
0x00573597: int3     
0x00573598: int3     
0x00573599: int3     
0x0057359A: int3     
0x0057359B: int3     
0x0057359C: int3     
0x0057359D: int3     
0x0057359E: int3     
0x0057359F: int3     
0x005735A0: mov      eax, 0xb49e94
0x005735A5: ret      
0x005735A6: int3     
0x005735A7: int3     
0x005735A8: int3     
0x005735A9: int3     
0x005735AA: int3     
0x005735AB: int3     
0x005735AC: int3     
0x005735AD: int3     
0x005735AE: int3     
0x005735AF: int3     
0x005735B0: push     esi
0x005735B1: mov      esi, ecx
0x005735B3: mov      dword ptr [esi], 0x9927f8
0x005735B9: call     0x57cd70
0x005735BE: test     byte ptr [esp + 8], 1
0x005735C3: je       0x5735ce
0x005735C5: push     esi
0x005735C6: call     0x688fb0
0x005735CB: add      esp, 4
0x005735CE: mov      eax, esi
0x005735D0: pop      esi
0x005735D1: ret      4
0x005735D4: int3     
0x005735D5: int3     
0x005735D6: int3     
0x005735D7: int3     
0x005735D8: int3     
0x005735D9: int3     
0x005735DA: int3     
0x005735DB: int3     
0x005735DC: int3     
0x005735DD: int3     
0x005735DE: int3     
0x005735DF: int3     
0x005735E0: push     esi
0x005735E1: mov      esi, dword ptr [esp + 8]
0x005735E5: movzx    eax, byte ptr [esi + ecx + 0x40]
0x005735EA: shr      al, 2
0x005735ED: and      al, 1
0x005735EF: movzx    eax, byte ptr [esi + ecx + 0x40]
0x005735F4: sete     dl
0x005735F7: and      dl, 1
0x005735FA: and      al, 0xfc
0x005735FC: or       dl, al
0x005735FE: or       dl, 4
0x00573601: mov      byte ptr [esi + ecx + 0x40], dl
0x00573605: pop      esi
0x00573606: ret      4
0x00573609: int3     
0x0057360A: int3     
0x0057360B: int3     
0x0057360C: int3     
0x0057360D: int3     
0x0057360E: int3     
0x0057360F: int3     
0x00573610: mov      ecx, dword ptr [ecx + 0x68]
0x00573613: mov      eax, dword ptr [ecx]
0x00573615: mov      edx, dword ptr [esp + 4]
0x00573619: mov      eax, dword ptr [eax + 0x14]
0x0057361C: push     0
0x0057361E: push     edx
0x0057361F: call     eax
0x00573621: ret      4
0x00573624: int3     
0x00573625: int3     
0x00573626: int3     
0x00573627: int3     
0x00573628: int3     
0x00573629: int3     
0x0057362A: int3     
0x0057362B: int3     
0x0057362C: int3     
0x0057362D: int3     
0x0057362E: int3     
0x0057362F: int3     
0x00573630: mov      ecx, dword ptr [ecx + 0x68]
0x00573633: mov      eax, dword ptr [ecx]
0x00573635: mov      edx, dword ptr [esp + 4]
0x00573639: mov      eax, dword ptr [eax + 0x20]
0x0057363C: push     0
0x0057363E: push     edx
0x0057363F: call     eax
0x00573641: ret      4
0x00573644: int3     
0x00573645: int3     
0x00573646: int3     
0x00573647: int3     
0x00573648: int3     
0x00573649: int3     
0x0057364A: int3     
0x0057364B: int3     
0x0057364C: int3     
0x0057364D: int3     
0x0057364E: int3     
0x0057364F: int3     
0x00573650: mov      eax, ecx
0x00573652: mov      ecx, dword ptr [eax + 4]
0x00573655: mov      dword ptr [eax + 0x3c], 1
0x0057365C: mov      dword ptr [eax + 0x50], ecx
0x0057365F: mov      ecx, dword ptr [ecx + 0x1b4]
0x00573665: mov      edx, dword ptr [ecx]
0x00573667: add      eax, 0xc
0x0057366A: push     0
0x0057366C: push     eax
0x0057366D: mov      eax, dword ptr [edx + 0xc]
0x00573670: call     eax
0x00573672: ret      4
0x00573675: int3     
0x00573676: int3     
0x00573677: int3     
0x00573678: int3     
0x00573679: int3     
0x0057367A: int3     
0x0057367B: int3     
0x0057367C: int3     
0x0057367D: int3     
0x0057367E: int3     
0x0057367F: int3     
0x00573680: push     esi
0x00573681: push     edi
0x00573682: mov      esi, ecx
0x00573684: xor      edi, edi
0x00573686: cmp      dword ptr [esi + 0x3c], edi
0x00573689: je       0x57369f
0x0057368B: mov      eax, dword ptr [esi + 4]
0x0057368E: mov      ecx, dword ptr [eax + 0x1b4]
0x00573694: mov      edx, dword ptr [ecx]
0x00573696: mov      edx, dword ptr [edx + 0x10]
0x00573699: lea      eax, [esi + 0xc]
0x0057369C: push     eax
0x0057369D: call     edx
0x0057369F: mov      dword ptr [esi + 0x3c], edi
0x005736A2: mov      dword ptr [esi + 0x50], edi
0x005736A5: pop      edi
0x005736A6: pop      esi
0x005736A7: ret      
0x005736A8: int3     
0x005736A9: int3     
0x005736AA: int3     
0x005736AB: int3     
0x005736AC: int3     
0x005736AD: int3     
0x005736AE: int3     
0x005736AF: int3     
0x005736B0: push     esi
0x005736B1: push     edi
0x005736B2: mov      edi, dword ptr [esp + 0xc]
0x005736B6: mov      eax, dword ptr [edi + 4]
0x005736B9: mov      esi, ecx
0x005736BB: mov      ecx, dword ptr [esi + 0x68]
0x005736BE: mov      edx, dword ptr [ecx]
0x005736C0: push     0
0x005736C2: push     eax
0x005736C3: mov      eax, dword ptr [edx + 0x14]
0x005736C6: call     eax
0x005736C8: test     eax, eax
0x005736CA: je       0x5736f5
0x005736CC: mov      eax, dword ptr [edi]
0x005736CE: movzx    ecx, byte ptr [eax + esi + 0x40]
0x005736D3: shr      cl, 2
0x005736D6: and      cl, 1
0x005736D9: movzx    ecx, byte ptr [eax + esi + 0x40]
0x005736DE: sete     dl
0x005736E1: and      dl, 1
0x005736E4: and      cl, 0xfc
0x005736E7: or       dl, cl
0x005736E9: or       dl, 4
0x005736EC: pop      edi
0x005736ED: mov      byte ptr [eax + esi + 0x40], dl
0x005736F1: pop      esi
0x005736F2: ret      4
0x005736F5: mov      edi, dword ptr [edi]
0x005736F7: mov      dl, byte ptr [edi + esi + 0x40]
0x005736FB: and      dl, 0xfa
0x005736FE: or       dl, 2
0x00573701: mov      byte ptr [edi + esi + 0x40], dl
0x00573705: pop      edi
0x00573706: pop      esi
0x00573707: ret      4
0x0057370A: int3     
0x0057370B: int3     
0x0057370C: int3     
0x0057370D: int3     
0x0057370E: int3     
0x0057370F: int3     
0x00573710: mov      eax, dword ptr [ecx + 0x50]
0x00573713: mov      ecx, dword ptr [eax + 0x1bc]
0x00573719: mov      ecx, dword ptr [ecx + 0x2c]
0x0057371C: mov      edx, dword ptr [ecx]
0x0057371E: mov      eax, dword ptr [esp + 4]
0x00573722: mov      edx, dword ptr [edx + 8]
0x00573725: push     0
0x00573727: push     eax
0x00573728: call     edx
0x0057372A: ret      4
0x0057372D: int3     
0x0057372E: int3     
0x0057372F: int3     
0x00573730: sub      esp, 0x1c
0x00573733: mov      eax, dword ptr [ecx + 0x50]
0x00573736: mov      ecx, dword ptr [eax + 0x1bc]
0x0057373C: mov      eax, dword ptr [esp + 0x20]
0x00573740: mov      ecx, dword ptr [ecx + 0x2c]
0x00573743: push     esi
0x00573744: mov      esi, dword ptr [eax + 8]
0x00573747: mov      eax, dword ptr [eax]
0x00573749: xor      edx, edx
0x0057374B: mov      dword ptr [esp + 0xc], esi
0x0057374F: mov      dword ptr [esp + 4], edx
0x00573753: mov      dword ptr [esp + 0x10], 0x14
0x0057375B: mov      dword ptr [esp + 0x14], 0x3c
0x00573763: mov      dword ptr [esp + 0x18], edx
0x00573767: pop      esi
0x00573768: cmp      eax, edx
0x0057376A: je       0x57378e
0x0057376C: mov      edx, dword ptr [eax + 0x18]
0x0057376F: mov      dword ptr [esp + 0x18], edx
0x00573773: mov      eax, dword ptr [eax + 4]
0x00573776: mov      dword ptr [esp + 4], eax
0x0057377A: mov      edx, dword ptr [ecx]
0x0057377C: mov      edx, dword ptr [edx + 0x28]
0x0057377F: push     1
0x00573781: lea      eax, [esp + 4]
0x00573785: push     eax
0x00573786: call     edx
0x00573788: add      esp, 0x1c
0x0057378B: ret      4
0x0057378E: mov      dword ptr [esp + 0x18], edx
0x00573792: mov      dword ptr [esp + 4], 0x1fff
0x0057379A: mov      edx, dword ptr [ecx]
0x0057379C: mov      edx, dword ptr [edx + 0x28]
0x0057379F: push     1
0x005737A1: lea      eax, [esp + 4]
0x005737A5: push     eax
0x005737A6: call     edx
0x005737A8: add      esp, 0x1c
0x005737AB: ret      4
0x005737AE: int3     
0x005737AF: int3     
0x005737B0: mov      eax, dword ptr [ecx + 0x50]
0x005737B3: mov      ecx, dword ptr [eax + 0x1bc]
0x005737B9: mov      ecx, dword ptr [ecx + 0x2c]
0x005737BC: mov      edx, dword ptr [ecx]
0x005737BE: mov      eax, dword ptr [edx + 0x2c]
0x005737C1: jmp      eax
0x005737C3: int3     
0x005737C4: int3     
0x005737C5: int3     
0x005737C6: int3     
0x005737C7: int3     
0x005737C8: int3     
0x005737C9: int3     
0x005737CA: int3     
0x005737CB: int3     
0x005737CC: int3     
0x005737CD: int3     
0x005737CE: int3     
0x005737CF: int3     
0x005737D0: push     esi
0x005737D1: mov      esi, ecx
0x005737D3: mov      eax, dword ptr [esi + 0x50]
0x005737D6: mov      ecx, dword ptr [eax + 0x1bc]
0x005737DC: mov      ecx, dword ptr [ecx + 0x2c]
0x005737DF: mov      edx, dword ptr [ecx]
0x005737E1: mov      eax, dword ptr [edx + 8]
0x005737E4: push     edi
0x005737E5: mov      edi, dword ptr [esp + 0xc]
0x005737E9: push     0
0x005737EB: push     edi
0x005737EC: call     eax
0x005737EE: fld      dword ptr [esp + 0x18]
0x005737F2: fcompp   
0x005737F4: fnstsw   ax
0x005737F6: test     ah, 5
0x005737F9: mov      eax, dword ptr [esp + 0x10]
0x005737FD: jp       0x57381f
0x005737FF: movzx    ecx, byte ptr [eax + esi + 0x40]
0x00573804: shr      cl, 2
0x00573807: and      cl, 1
0x0057380A: movzx    ecx, byte ptr [eax + esi + 0x40]
0x0057380F: sete     dl
0x00573812: and      dl, 1
0x00573815: and      cl, 0xfc
0x00573818: or       dl, cl
0x0057381A: or       dl, 4
0x0057381D: jmp      0x573829
0x0057381F: mov      dl, byte ptr [eax + esi + 0x40]
0x00573823: and      dl, 0xfa
0x00573826: or       dl, 2
0x00573829: mov      byte ptr [eax + esi + 0x40], dl
0x0057382D: mov      eax, dword ptr [esi + 0x50]
0x00573830: mov      ecx, dword ptr [eax + 0x1bc]
0x00573836: mov      ecx, dword ptr [ecx + 0x2c]
0x00573839: mov      edx, dword ptr [ecx]
0x0057383B: mov      eax, dword ptr [edx + 8]
0x0057383E: push     0
0x00573840: push     edi
0x00573841: call     eax
0x00573843: fld      dword ptr [esp + 0x18]
0x00573847: fchs     
0x00573849: fcompp   
0x0057384B: fnstsw   ax
0x0057384D: test     ah, 0x41
0x00573850: mov      eax, dword ptr [esp + 0x14]
0x00573854: jne      0x57387d
0x00573856: movzx    ecx, byte ptr [eax + esi + 0x40]
0x0057385B: shr      cl, 2
0x0057385E: and      cl, 1
0x00573861: movzx    ecx, byte ptr [eax + esi + 0x40]
0x00573866: sete     dl
0x00573869: and      dl, 1
0x0057386C: and      cl, 0xfc
0x0057386F: or       dl, cl
0x00573871: or       dl, 4
0x00573874: pop      edi
0x00573875: mov      byte ptr [eax + esi + 0x40], dl
0x00573879: pop      esi
0x0057387A: ret      0x10
0x0057387D: mov      dl, byte ptr [eax + esi + 0x40]
0x00573881: and      dl, 0xfa
0x00573884: or       dl, 2
0x00573887: pop      edi
0x00573888: mov      byte ptr [eax + esi + 0x40], dl
0x0057388C: pop      esi
0x0057388D: ret      0x10
0x00573890: sub      esp, 0xc
0x00573893: mov      eax, dword ptr [esp + 0x10]
0x00573897: mov      ecx, dword ptr [eax + 4]
0x0057389A: mov      edx, dword ptr [eax + 8]
0x0057389D: mov      eax, dword ptr [eax + 0xc]
0x005738A0: mov      dword ptr [esp], ecx
0x005738A3: lea      ecx, [esp]
0x005738A6: push     ecx
0x005738A7: mov      ecx, dword ptr [esp + 0x18]
0x005738AB: mov      dword ptr [esp + 8], edx
0x005738AF: mov      dword ptr [esp + 0xc], eax
0x005738B3: call     0x573730
0x005738B8: add      esp, 0xc
0x005738BB: ret      
0x005738BC: int3     
0x005738BD: int3     
0x005738BE: int3     
0x005738BF: int3     
0x005738C0: mov      eax, dword ptr [esp + 8]
0x005738C4: mov      ecx, dword ptr [eax + 0x50]
0x005738C7: mov      edx, dword ptr [ecx + 0x1bc]
0x005738CD: mov      ecx, dword ptr [edx + 0x2c]
0x005738D0: mov      eax, dword ptr [ecx]
0x005738D2: mov      edx, dword ptr [eax + 0x2c]
0x005738D5: jmp      edx
0x005738D7: int3     
0x005738D8: int3     
0x005738D9: int3     
0x005738DA: int3     
0x005738DB: int3     
0x005738DC: int3     
0x005738DD: int3     
0x005738DE: int3     
0x005738DF: int3     
0x005738E0: push     ecx
0x005738E1: push     esi
0x005738E2: mov      esi, ecx
0x005738E4: mov      ecx, dword ptr [esi + 0x50]
0x005738E7: lea      eax, [esp + 4]
0x005738EB: push     eax
0x005738EC: push     ecx
0x005738ED: call     0x573ca0
0x005738F2: add      esp, 8
0x005738F5: test     eax, eax
0x005738F7: je       0x57391c
0x005738F9: mov      edx, dword ptr [esp + 4]
0x005738FD: mov      ecx, dword ptr [0xb1ab18]
0x00573903: push     edi
0x00573904: mov      edi, dword ptr [edx + 0x10]
0x00573907: call     0x491d80
0x0057390C: mov      eax, dword ptr [eax + 0x18]
0x0057390F: mov      ecx, dword ptr [eax + edi*4]
0x00573912: mov      edx, dword ptr [ecx + 0x2c]
0x00573915: pop      edi
0x00573916: mov      dword ptr [esi + 0x68], edx
0x00573919: pop      esi
0x0057391A: pop      ecx
0x0057391B: ret      
0x0057391C: mov      eax, dword ptr [esi + 0x50]
0x0057391F: mov      ecx, dword ptr [eax + 0x1bc]
0x00573925: mov      edx, dword ptr [ecx + 0x2c]
0x00573928: mov      dword ptr [esi + 0x68], edx
0x0057392B: pop      esi
0x0057392C: pop      ecx
0x0057392D: ret      
0x0057392E: int3     
0x0057392F: int3     
0x00573930: push     -1
0x00573932: push     0x948348
0x00573937: mov      eax, dword ptr fs:[0]
0x0057393D: push     eax
0x0057393E: sub      esp, 8
0x00573941: push     ebx
0x00573942: push     ebp
0x00573943: push     esi
0x00573944: push     edi
0x00573945: mov      eax, dword ptr [0xb089c8]
0x0057394A: xor      eax, esp
0x0057394C: push     eax
0x0057394D: lea      eax, [esp + 0x1c]
0x00573951: mov      dword ptr fs:[0], eax
0x00573957: mov      ebx, ecx
0x00573959: call     0x573580
0x0057395E: call     0x478cf0
0x00573963: test     eax, eax
0x00573965: jne      0x5739dc
0x00573967: call     0x46e640
0x0057396C: test     eax, eax
0x0057396E: jne      0x5739dc
0x00573970: mov      ecx, ebx
0x00573972: call     0x5738e0
0x00573977: lea      eax, [esp + 0x18]
0x0057397B: lea      edi, [ebx + 0x54]
0x0057397E: push     eax
0x0057397F: mov      ecx, edi
0x00573981: call     0x573ad0
0x00573986: lea      ecx, [esp + 0x14]
0x0057398A: push     ecx
0x0057398B: xor      ebp, ebp
0x0057398D: mov      ecx, edi
0x0057398F: mov      dword ptr [esp + 0x28], ebp
0x00573993: call     0x573af0
0x00573998: mov      esi, dword ptr [esp + 0x18]
0x0057399C: xor      edx, edx
0x0057399E: cmp      esi, dword ptr [eax]
0x005739A0: mov      dword ptr [esp + 0x14], ebp
0x005739A4: setne    dl
0x005739A7: mov      eax, edx
0x005739A9: cmp      eax, ebp
0x005739AB: je       0x5739dc
0x005739AD: lea      ecx, [ecx]
0x005739B0: push     esi
0x005739B1: mov      ecx, ebx
0x005739B3: call     0x5736b0
0x005739B8: mov      esi, dword ptr [esi + 8]
0x005739BB: lea      eax, [esp + 0x14]
0x005739BF: push     eax
0x005739C0: mov      ecx, edi
0x005739C2: mov      dword ptr [esp + 0x1c], esi
0x005739C6: call     0x573af0
0x005739CB: xor      ecx, ecx
0x005739CD: cmp      esi, dword ptr [eax]
0x005739CF: mov      dword ptr [esp + 0x14], ebp
0x005739D3: setne    cl
0x005739D6: mov      eax, ecx
0x005739D8: cmp      eax, ebp
0x005739DA: jne      0x5739b0
0x005739DC: mov      ecx, dword ptr [esp + 0x1c]
0x005739E0: mov      dword ptr fs:[0], ecx
0x005739E7: pop      ecx
0x005739E8: pop      edi
0x005739E9: pop      esi
0x005739EA: pop      ebp
0x005739EB: pop      ebx
0x005739EC: add      esp, 0x14
0x005739EF: ret      
0x005739F0: push     -1
0x005739F2: push     0x948376
0x005739F7: mov      eax, dword ptr fs:[0]
0x005739FD: push     eax
0x005739FE: push     ecx
0x005739FF: push     esi
0x00573A00: mov      eax, dword ptr [0xb089c8]
0x00573A05: xor      eax, esp
0x00573A07: push     eax
0x00573A08: lea      eax, [esp + 0xc]
0x00573A0C: mov      dword ptr fs:[0], eax
0x00573A12: mov      esi, ecx
0x00573A14: mov      dword ptr [esp + 8], esi
0x00573A18: mov      dword ptr [esi], 0x98b418
0x00573A1E: mov      dword ptr [esp + 0x14], 1
0x00573A26: call     dword ptr [0x98b444] ; [u32=0x00573680]
0x00573A2C: xor      eax, eax
0x00573A2E: lea      ecx, [esi + 0x54]
0x00573A31: mov      dword ptr [esi + 4], eax
0x00573A34: mov      dword ptr [esi + 8], eax
0x00573A37: mov      byte ptr [esp + 0x14], al
0x00573A3B: call     0x542820
0x00573A40: mov      ecx, esi
0x00573A42: mov      dword ptr [esp + 0x14], 0xffffffff
0x00573A4A: call     0x573570
0x00573A4F: mov      ecx, dword ptr [esp + 0xc]
0x00573A53: mov      dword ptr fs:[0], ecx
0x00573A5A: pop      ecx
0x00573A5B: pop      esi
0x00573A5C: add      esp, 0x10
0x00573A5F: ret      
0x00573A60: sub      esp, 8
0x00573A63: push     esi
0x00573A64: push     edi
0x00573A65: mov      esi, ecx
0x00573A67: mov      eax, dword ptr [esi + 0xc]
0x00573A6A: mov      edx, dword ptr [eax + 0x18]
0x00573A6D: push     esi
0x00573A6E: lea      edi, [esi + 0xc]
0x00573A71: push     0x573890
0x00573A76: push     0xb1b9c8
0x00573A7B: mov      ecx, edi
0x00573A7D: call     edx
0x00573A7F: mov      eax, dword ptr [edi]
0x00573A81: mov      edx, dword ptr [eax + 0x18]
0x00573A84: push     esi
0x00573A85: push     0x5738c0
0x00573A8A: push     0xb49e9c
0x00573A8F: mov      ecx, edi
0x00573A91: call     edx
0x00573A93: xor      eax, eax
0x00573A95: mov      dword ptr [esp + 8], eax
0x00573A99: mov      dword ptr [esp + 0xc], eax
0x00573A9D: lea      eax, [esp + 8]
0x00573AA1: add      esi, 0x54
0x00573AA4: push     eax
0x00573AA5: mov      ecx, esi
0x00573AA7: call     0x573bc0
0x00573AAC: lea      ecx, [esp + 8]
0x00573AB0: mov      eax, 1
0x00573AB5: push     ecx
0x00573AB6: mov      ecx, esi
0x00573AB8: mov      dword ptr [esp + 0xc], eax
0x00573ABC: mov      dword ptr [esp + 0x10], eax
0x00573AC0: call     0x573bc0
0x00573AC5: pop      edi
0x00573AC6: pop      esi
0x00573AC7: add      esp, 8
0x00573ACA: ret      
0x00573ACB: int3     
0x00573ACC: int3     
0x00573ACD: int3     
0x00573ACE: int3     
0x00573ACF: int3     
0x00573AD0: push     ecx
0x00573AD1: mov      ecx, dword ptr [ecx + 0xc]
0x00573AD4: mov      eax, dword ptr [esp + 8]
0x00573AD8: mov      dword ptr [esp], 0
0x00573ADF: mov      dword ptr [eax], ecx
0x00573AE1: pop      ecx
0x00573AE2: ret      4
0x00573AE5: int3     
0x00573AE6: int3     
0x00573AE7: int3     
0x00573AE8: int3     
0x00573AE9: int3     
0x00573AEA: int3     
0x00573AEB: int3     
0x00573AEC: int3     
0x00573AED: int3     
0x00573AEE: int3     
0x00573AEF: int3     
0x00573AF0: push     ecx
0x00573AF1: mov      eax, dword ptr [esp + 8]
0x00573AF5: add      ecx, 4
0x00573AF8: mov      dword ptr [esp], 0
0x00573AFF: mov      dword ptr [eax], ecx
0x00573B01: pop      ecx
0x00573B02: ret      4
0x00573B05: int3     
0x00573B06: int3     
0x00573B07: int3     
0x00573B08: int3     
0x00573B09: int3     
0x00573B0A: int3     
0x00573B0B: int3     
0x00573B0C: int3     
0x00573B0D: int3     
0x00573B0E: int3     
0x00573B0F: int3     
0x00573B10: mov      ecx, dword ptr [esp + 4]
0x00573B14: sub      esp, 8
0x00573B17: push     0x10
0x00573B19: lea      eax, [esp + 4]
0x00573B1D: push     eax
0x00573B1E: call     0x499400
0x00573B23: mov      eax, dword ptr [esp]
0x00573B26: test     eax, eax
0x00573B28: je       0x573b5a
0x00573B2A: push     0
0x00573B2C: push     eax
0x00573B2D: push     0x10
0x00573B2F: call     0x689060
0x00573B34: add      esp, 0xc
0x00573B37: test     eax, eax
0x00573B39: je       0x573b5a
0x00573B3B: mov      dword ptr [eax], 0
0x00573B41: mov      dword ptr [eax + 4], 0
0x00573B48: mov      dword ptr [eax + 0xc], 0
0x00573B4F: mov      dword ptr [eax + 8], 0
0x00573B56: add      esp, 8
0x00573B59: ret      
0x00573B5A: xor      eax, eax
0x00573B5C: add      esp, 8
0x00573B5F: ret      
0x00573B60: mov      ecx, dword ptr [esp + 4]
0x00573B64: sub      esp, 8
0x00573B67: push     0x10
0x00573B69: lea      eax, [esp + 4]
0x00573B6D: push     eax
0x00573B6E: call     0x499400
0x00573B73: mov      eax, dword ptr [esp]
0x00573B76: test     eax, eax
0x00573B78: je       0x573bab
0x00573B7A: push     0
0x00573B7C: push     eax
0x00573B7D: push     0x10
0x00573B7F: call     0x689060
0x00573B84: add      esp, 0xc
0x00573B87: test     eax, eax
0x00573B89: je       0x573bab
0x00573B8B: mov      ecx, dword ptr [esp + 0x10]
0x00573B8F: mov      edx, dword ptr [ecx]
0x00573B91: mov      dword ptr [eax], edx
0x00573B93: mov      ecx, dword ptr [ecx + 4]
0x00573B96: mov      dword ptr [eax + 4], ecx
0x00573B99: mov      dword ptr [eax + 0xc], 0
0x00573BA0: mov      dword ptr [eax + 8], 0
0x00573BA7: add      esp, 8
0x00573BAA: ret      
0x00573BAB: xor      eax, eax
0x00573BAD: add      esp, 8
0x00573BB0: ret      
0x00573BB1: int3     
0x00573BB2: int3     
0x00573BB3: int3     
0x00573BB4: int3     
0x00573BB5: int3     
0x00573BB6: int3     
0x00573BB7: int3     
0x00573BB8: int3     
0x00573BB9: int3     
0x00573BBA: int3     
0x00573BBB: int3     
0x00573BBC: int3     
0x00573BBD: int3     
0x00573BBE: int3     
0x00573BBF: int3     
0x00573BC0: mov      eax, dword ptr [esp + 4]
0x00573BC4: push     esi
0x00573BC5: mov      esi, ecx
0x00573BC7: push     edi
0x00573BC8: mov      edi, dword ptr [esi + 0x10]
0x00573BCB: test     eax, eax
0x00573BCD: je       0x573bdb
0x00573BCF: push     eax
0x00573BD0: push     esi
0x00573BD1: call     0x573b60
0x00573BD6: add      esp, 8
0x00573BD9: jmp      0x573be4
0x00573BDB: push     esi
0x00573BDC: call     0x573b10
0x00573BE1: add      esp, 4
0x00573BE4: test     eax, eax
0x00573BE6: je       0x573c2b
0x00573BE8: mov      dword ptr [eax + 8], 0
0x00573BEF: mov      dword ptr [eax + 0xc], edi
0x00573BF2: test     edi, edi
0x00573BF4: je       0x573c0d
0x00573BF6: mov      dword ptr [edi + 8], eax
0x00573BF9: lea      ecx, [esi + 4]
0x00573BFC: mov      dword ptr [eax + 8], ecx
0x00573BFF: mov      edx, dword ptr [esi + 0x10]
0x00573C02: mov      dword ptr [eax + 0xc], edx
0x00573C05: pop      edi
0x00573C06: mov      dword ptr [esi + 0x10], eax
0x00573C09: pop      esi
0x00573C0A: ret      4
0x00573C0D: lea      ecx, [esi + 4]
0x00573C10: mov      dword ptr [eax + 0xc], ecx
0x00573C13: mov      edx, dword ptr [esi + 0xc]
0x00573C16: mov      dword ptr [eax + 8], edx
0x00573C19: mov      dword ptr [esi + 0xc], eax
0x00573C1C: lea      ecx, [esi + 4]
0x00573C1F: mov      dword ptr [eax + 8], ecx
0x00573C22: mov      edx, dword ptr [esi + 0x10]
0x00573C25: mov      dword ptr [eax + 0xc], edx
0x00573C28: mov      dword ptr [esi + 0x10], eax
0x00573C2B: pop      edi
0x00573C2C: pop      esi
0x00573C2D: ret      4
0x00573C30: ret      
0x00573C31: int3     
0x00573C32: int3     
0x00573C33: int3     
0x00573C34: int3     
0x00573C35: int3     
0x00573C36: int3     
0x00573C37: int3     
0x00573C38: int3     
0x00573C39: int3     
0x00573C3A: int3     
0x00573C3B: int3     
0x00573C3C: int3     
0x00573C3D: int3     
0x00573C3E: int3     
0x00573C3F: int3     
0x00573C40: mov      ecx, dword ptr [0xb1ab18]
0x00573C46: push     esi
0x00573C47: call     0x491dc0
0x00573C4C: mov      ecx, dword ptr [eax + 0x18]
0x00573C4F: mov      edx, dword ptr [eax + 0x1c]
0x00573C52: cmp      ecx, edx
0x00573C54: je       0x573c74
0x00573C56: mov      esi, dword ptr [esp + 8]
0x00573C5A: lea      ebx, [ebx]
0x00573C60: mov      eax, dword ptr [ecx]
0x00573C62: cmp      dword ptr [eax + 0x20], 0
0x00573C66: je       0x573c6d
0x00573C68: cmp      dword ptr [eax + 0x24], esi
0x00573C6B: je       0x573c86
0x00573C6D: add      ecx, 4
0x00573C70: cmp      ecx, edx
0x00573C72: jne      0x573c60
0x00573C74: mov      eax, dword ptr [esp + 0xc]
0x00573C78: test     eax, eax
0x00573C7A: je       0x573c82
0x00573C7C: mov      dword ptr [eax], 0
0x00573C82: xor      eax, eax
0x00573C84: pop      esi
0x00573C85: ret      
0x00573C86: mov      eax, dword ptr [esp + 0xc]
0x00573C8A: test     eax, eax
0x00573C8C: je       0x573c92
0x00573C8E: mov      ecx, dword ptr [ecx]
0x00573C90: mov      dword ptr [eax], ecx
0x00573C92: mov      eax, 1
0x00573C97: pop      esi
0x00573C98: ret      
0x00573C99: int3     
0x00573C9A: int3     
0x00573C9B: int3     
0x00573C9C: int3     
0x00573C9D: int3     
0x00573C9E: int3     
0x00573C9F: int3     
0x00573CA0: mov      eax, dword ptr [esp + 4]
0x00573CA4: mov      eax, dword ptr [eax + 0x1dc]
0x00573CAA: movsx    edx, byte ptr [eax]
0x00573CAD: mov      dword ptr [esp + 4], edx
0x00573CB1: jmp      0x573c40
0x00573CB6: int3     
0x00573CB7: int3     
0x00573CB8: int3     
0x00573CB9: int3     
0x00573CBA: int3     
0x00573CBB: int3     
0x00573CBC: int3     
0x00573CBD: int3     
0x00573CBE: int3     
0x00573CBF: int3     
0x00573CC0: mov      ecx, dword ptr [0xb1ab18]
0x00573CC6: push     esi
0x00573CC7: call     0x491da0
0x00573CCC: mov      ecx, dword ptr [eax + 0x18]
0x00573CCF: mov      edx, dword ptr [eax + 0x1c]
0x00573CD2: cmp      ecx, edx
0x00573CD4: je       0x573cf4
0x00573CD6: mov      esi, dword ptr [esp + 8]
0x00573CDA: lea      ebx, [ebx]
0x00573CE0: mov      eax, dword ptr [ecx]
0x00573CE2: cmp      dword ptr [eax + 0x20], 0
0x00573CE6: je       0x573ced
0x00573CE8: cmp      dword ptr [eax + 0x24], esi
0x00573CEB: je       0x573cf8
0x00573CED: add      ecx, 4
0x00573CF0: cmp      ecx, edx
0x00573CF2: jne      0x573ce0
0x00573CF4: xor      eax, eax
0x00573CF6: pop      esi
0x00573CF7: ret      
0x00573CF8: mov      eax, 1
0x00573CFD: pop      esi
0x00573CFE: ret      
0x00573CFF: int3     
0x00573D00: mov      eax, dword ptr [esp + 4]
0x00573D04: mov      eax, dword ptr [eax + 0x1dc]
0x00573D0A: movsx    ecx, byte ptr [eax]
0x00573D0D: mov      dword ptr [esp + 4], ecx
0x00573D11: jmp      0x573cc0
0x00573D16: int3     
0x00573D17: int3     
0x00573D18: int3     
0x00573D19: int3     
0x00573D1A: int3     
0x00573D1B: int3     
0x00573D1C: int3     
0x00573D1D: int3     
0x00573D1E: int3     
0x00573D1F: int3     
0x00573D20: mov      eax, dword ptr [esp + 4]
0x00573D24: fld      dword ptr [eax + 0x3c]
0x00573D27: mov      ecx, dword ptr [esp + 8]
0x00573D2B: fld      dword ptr [ecx + 0x3c]
0x00573D2E: fcompp   
0x00573D30: fnstsw   ax
0x00573D32: test     ah, 5
0x00573D35: jp       0x573d3d
0x00573D37: mov      eax, 1
0x00573D3C: ret      
0x00573D3D: xor      eax, eax
0x00573D3F: ret      
0x00573D40: mov      eax, dword ptr [esp + 8]
0x00573D44: fld      dword ptr [eax]
0x00573D46: mov      eax, dword ptr [esp + 0x10]
0x00573D4A: mov      ecx, dword ptr [esp + 0xc]
0x00573D4E: fstp     dword ptr [esp + 8]
0x00573D52: fld      dword ptr [eax]
0x00573D54: mov      edx, dword ptr [esp + 4]
0x00573D58: fld      dword ptr [esp + 8]
0x00573D5C: fld      st(0)
0x00573D5E: fmulp    st(2)
0x00573D60: fld      dword ptr [ecx]
0x00573D62: faddp    st(2)
0x00573D64: fxch     st(1)
0x00573D66: fstp     dword ptr [edx]
0x00573D68: fld      dword ptr [eax + 4]
0x00573D6B: fmul     st(1)
0x00573D6D: fadd     dword ptr [ecx + 4]
0x00573D70: fstp     dword ptr [edx + 4]
0x00573D73: fmul     dword ptr [eax + 8]
0x00573D76: fadd     dword ptr [ecx + 8]
0x00573D79: fstp     dword ptr [edx + 8]
0x00573D7C: ret      
0x00573D7D: int3     
0x00573D7E: int3     
0x00573D7F: int3     
0x00573D80: push     -1
0x00573D82: push     0x9483a8
0x00573D87: mov      eax, dword ptr fs:[0]
0x00573D8D: push     eax
0x00573D8E: push     ecx
0x00573D8F: push     esi
0x00573D90: mov      eax, dword ptr [0xb089c8]
0x00573D95: xor      eax, esp
0x00573D97: push     eax
0x00573D98: lea      eax, [esp + 0xc]
0x00573D9C: mov      dword ptr fs:[0], eax
0x00573DA2: mov      esi, ecx
0x00573DA4: mov      dword ptr [esp + 8], esi
0x00573DA8: call     0x56d800
0x00573DAD: mov      eax, dword ptr [esp + 0x1c]
0x00573DB1: mov      dword ptr [esi + 0xd8], eax
0x00573DB7: lea      eax, [esi + 0xdc]
0x00573DBD: mov      dword ptr [esp + 0x14], 0
0x00573DC5: mov      dword ptr [esi], 0x992834
0x00573DCB: mov      dword ptr [esi + 0x59c], eax
0x00573DD1: push     0x4c0
0x00573DD6: test     al, 0x7f
0x00573DD8: je       0x573df8
0x00573DDA: push     eax
0x00573DDB: call     0x6a9700
0x00573DE0: add      esp, 8
0x00573DE3: mov      eax, esi
0x00573DE5: mov      ecx, dword ptr [esp + 0xc]
0x00573DE9: mov      dword ptr fs:[0], ecx
0x00573DF0: pop      ecx
0x00573DF1: pop      esi
0x00573DF2: add      esp, 0x10
0x00573DF5: ret      4
0x00573DF8: push     0
0x00573DFA: push     eax
0x00573DFB: call     0x8eb080
0x00573E00: add      esp, 0xc
0x00573E03: mov      eax, esi
0x00573E05: mov      ecx, dword ptr [esp + 0xc]
0x00573E09: mov      dword ptr fs:[0], ecx
0x00573E10: pop      ecx
0x00573E11: pop      esi
0x00573E12: add      esp, 0x10
0x00573E15: ret      4
0x00573E18: int3     
0x00573E19: int3     
0x00573E1A: int3     
0x00573E1B: int3     
0x00573E1C: int3     
0x00573E1D: int3     
0x00573E1E: int3     
0x00573E1F: int3     
0x00573E20: sub      esp, 0xc
0x00573E23: push     ebp
0x00573E24: mov      ebp, ecx
0x00573E26: cmp      byte ptr [ebp + 0x5ca], 1
0x00573E2D: mov      dword ptr [esp + 4], 0
0x00573E35: jbe      0x573e41
0x00573E37: mov      eax, dword ptr [ebp + 0x5c0]
0x00573E3D: mov      dword ptr [esp + 4], eax
0x00573E41: lea      eax, [ebp + 0x5a0]
0x00573E47: push     0x2c
0x00573E49: test     al, 0x7f
0x00573E4B: je       0x573e58
0x00573E4D: push     eax
0x00573E4E: call     0x6a9700
0x00573E53: add      esp, 8
0x00573E56: jmp      0x573e63
0x00573E58: push     0
0x00573E5A: push     eax
0x00573E5B: call     0x8eb080
0x00573E60: add      esp, 0xc
0x00573E63: mov      ecx, dword ptr [ebp + 0x59c]
0x00573E69: sub      ecx, ebp
0x00573E6B: sub      ecx, 0xdc
0x00573E71: mov      eax, 0x6bca1af3
0x00573E76: imul     ecx
0x00573E78: sar      edx, 5
0x00573E7B: mov      ecx, edx
0x00573E7D: shr      ecx, 0x1f
0x00573E80: add      ecx, edx
0x00573E82: je       0x5743ed
0x00573E88: mov      eax, dword ptr [ebp + 0xd8]
0x00573E8E: push     ebx
0x00573E8F: push     esi
0x00573E90: push     edi
0x00573E91: push     0xd9168664
0x00573E96: lea      ecx, [eax + 0x1a8]
0x00573E9C: call     0x5691a0
0x00573EA1: lea      ebx, [ebp + 0xdc]
0x00573EA7: mov      edi, eax
0x00573EA9: mov      dword ptr [esp + 0x14], edi
0x00573EAD: cmp      ebx, dword ptr [ebp + 0x59c]
0x00573EB3: jae      0x573f2b
0x00573EB5: mov      edx, dword ptr [ebx + 8]
0x00573EB8: mov      esi, dword ptr [edx + 0x11c]
0x00573EBE: test     esi, esi
0x00573EC0: je       0x573f20
0x00573EC2: movzx    eax, byte ptr [esi + 1]
0x00573EC6: mov      ecx, dword ptr [esi + 4]
0x00573EC9: mov      edx, dword ptr [ecx + 0x38]
0x00573ECC: mov      eax, dword ptr [edx + eax*4]
0x00573ECF: mov      eax, dword ptr [eax + 0x28]
0x00573ED2: cmp      eax, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x00573ED8: je       0x573ee2
0x00573EDA: cmp      eax, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x00573EE0: jne      0x573f20
0x00573EE2: test     edi, edi
0x00573EE4: je       0x573f20
0x00573EE6: lea      ecx, [esp + 0x18]
0x00573EEA: push     ecx
0x00573EEB: mov      ecx, edi
0x00573EED: call     0x575570
0x00573EF2: test     eax, eax
0x00573EF4: je       0x573f20
0x00573EF6: cmp      dword ptr [esp + 0x18], esi
0x00573EFA: jne      0x573f20
0x00573EFC: mov      eax, dword ptr [ebp + 0x59c]
0x00573F02: lea      edx, [eax - 0x4c]
0x00573F05: cmp      ebx, edx
0x00573F07: jae      0x573f19
0x00573F09: lea      esi, [eax - 0x4c]
0x00573F0C: mov      ecx, 0x13
0x00573F11: mov      edi, ebx
0x00573F13: rep movsd dword ptr es:[edi], dword ptr [esi]
0x00573F15: mov      edi, dword ptr [esp + 0x14]
0x00573F19: add      dword ptr [ebp + 0x59c], -0x4c
0x00573F20: add      ebx, 0x4c
0x00573F23: cmp      ebx, dword ptr [ebp + 0x59c]
0x00573F29: jb       0x573eb5
0x00573F2B: mov      ecx, dword ptr [ebp + 0x59c]
0x00573F31: sub      ecx, ebp
0x00573F33: sub      ecx, 0xdc
0x00573F39: mov      eax, 0x6bca1af3
0x00573F3E: imul     ecx
0x00573F40: sar      edx, 5
0x00573F43: mov      ebx, edx
0x00573F45: shr      ebx, 0x1f
0x00573F48: add      ebx, edx
0x00573F4A: je       0x5743ea
0x00573F50: push     0x573d20
0x00573F55: push     0x4c
0x00573F57: push     ebx
0x00573F58: lea      esi, [ebp + 0xdc]
0x00573F5E: push     esi
0x00573F5F: call     0x8eae30
0x00573F64: fldz     
0x00573F66: mov      ecx, esi
0x00573F68: fst      dword ptr [ebp + 0x5b4]
0x00573F6E: add      esp, 0x10
0x00573F71: mov      dword ptr [ebp + 0x5c0], 0
0x00573F7B: mov      dword ptr [ebp + 0x5c4], esi
0x00573F81: mov      byte ptr [ebp + 0x5c8], bl
0x00573F87: cmp      ecx, dword ptr [ebp + 0x59c]
0x00573F8D: jae      0x5741c2
0x00573F93: lea      eax, [ebp + 0x5a0]
0x00573F99: mov      dword ptr [ecx + 0x48], eax
0x00573F9C: lea      eax, [ebp + 0xc]
0x00573F9F: cmp      eax, dword ptr [ebp + 0xcc]
0x00573FA5: je       0x573fb9
0x00573FA7: mov      edx, dword ptr [ecx + 8]
0x00573FAA: cmp      dword ptr [eax], edx
0x00573FAC: je       0x573fbb
0x00573FAE: add      eax, 4
0x00573FB1: cmp      eax, dword ptr [ebp + 0xcc]
0x00573FB7: jne      0x573faa
0x00573FB9: xor      eax, eax
0x00573FBB: mov      esi, dword ptr [ecx + 8]
0x00573FBE: test     eax, eax
0x00573FC0: sete     dl
0x00573FC3: mov      byte ptr [ecx + 0x46], dl
0x00573FC6: mov      edi, dword ptr [esi + 0x11c]
0x00573FCC: mov      dword ptr [esp + 0x18], edi
0x00573FD0: test     edi, edi
0x00573FD2: je       0x57402b
0x00573FD4: movzx    eax, byte ptr [edi + 1]
0x00573FD8: mov      esi, dword ptr [edi + 4]
0x00573FDB: mov      edi, dword ptr [esi + 0x38]
0x00573FDE: add      eax, eax
0x00573FE0: add      eax, eax
0x00573FE2: mov      edi, dword ptr [edi + eax]
0x00573FE5: mov      edi, dword ptr [edi + 0x28]
0x00573FE8: cmp      edi, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00573FEE: jne      0x574024
0x00573FF0: mov      esi, dword ptr [esi + 0x34]
0x00573FF3: mov      eax, dword ptr [esi + eax]
0x00573FF6: mov      esi, dword ptr [eax + 0x8c]
0x00573FFC: test     dl, dl
0x00573FFE: je       0x57401f
0x00574000: lea      eax, [esi + 0xc]
0x00574003: mov      esi, dword ptr [esi + 0xcc]
0x00574009: cmp      eax, esi
0x0057400B: je       0x57401b
0x0057400D: mov      edx, dword ptr [ecx + 4]
0x00574010: cmp      dword ptr [eax], edx
0x00574012: je       0x57401f
0x00574014: add      eax, 4
0x00574017: cmp      eax, esi
0x00574019: jne      0x574010
0x0057401B: mov      al, 1
0x0057401D: jmp      0x574021
0x0057401F: xor      al, al
0x00574021: mov      byte ptr [ecx + 0x46], al
0x00574024: mov      edi, dword ptr [esp + 0x18]
0x00574028: mov      esi, dword ptr [ecx + 8]
0x0057402B: mov      eax, dword ptr [esi + 0x11c]
0x00574031: mov      ebx, dword ptr [0x95ecf8] ; [u32=0x956151A9]
0x00574037: test     eax, eax
0x00574039: je       0x57406f
0x0057403B: movzx    edx, byte ptr [eax + 1]
0x0057403F: mov      eax, dword ptr [eax + 4]
0x00574042: mov      eax, dword ptr [eax + 0x38]
0x00574045: mov      edx, dword ptr [eax + edx*4]
0x00574048: mov      eax, dword ptr [edx + 0x28]
0x0057404B: cmp      eax, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00574051: je       0x574086
0x00574053: cmp      eax, dword ptr [0x95f6dc] ; [u32=0x90B24AEB]
0x00574059: je       0x574086
0x0057405B: cmp      eax, ebx
0x0057405D: je       0x574086
0x0057405F: cmp      eax, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x00574065: je       0x574086
0x00574067: cmp      eax, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x0057406D: je       0x574086
0x0057406F: movzx    eax, word ptr [esi + 0x2e]
0x00574073: mov      edx, dword ptr [esi + 0x30]
0x00574076: mov      edx, dword ptr [edx + 0x20]
0x00574079: test     dword ptr [edx + eax*8], 0x400000
0x00574080: je       0x5741b1
0x00574086: fld      dword ptr [ecx + 0x3c]
0x00574089: fld      dword ptr [ebp + 0x5b4]
0x0057408F: fcompp   
0x00574091: fnstsw   ax
0x00574093: test     ah, 5
0x00574096: jp       0x5740a1
0x00574098: fld      dword ptr [ecx + 0x3c]
0x0057409B: fstp     dword ptr [ebp + 0x5b4]
0x005740A1: fld      dword ptr [ecx + 0x3c]
0x005740A4: fadd     dword ptr [ebp + 0x5b8]
0x005740AA: fstp     dword ptr [ebp + 0x5b8]
0x005740B0: fld      dword ptr [ecx + 0xc]
0x005740B3: fadd     dword ptr [ebp + 0x5a4]
0x005740B9: fstp     dword ptr [ebp + 0x5a4]
0x005740BF: fld      dword ptr [ecx + 0x10]
0x005740C2: fadd     dword ptr [ebp + 0x5a8]
0x005740C8: fstp     dword ptr [ebp + 0x5a8]
0x005740CE: fld      dword ptr [ebp + 0x5ac]
0x005740D4: fadd     dword ptr [ecx + 0x14]
0x005740D7: fstp     dword ptr [ebp + 0x5ac]
0x005740DD: test     edi, edi
0x005740DF: je       0x5741ab
0x005740E5: movzx    eax, byte ptr [edi + 1]
0x005740E9: mov      edx, dword ptr [edi + 4]
0x005740EC: mov      edx, dword ptr [edx + 0x38]
0x005740EF: mov      eax, dword ptr [edx + eax*4]
0x005740F2: mov      eax, dword ptr [eax + 0x28]
0x005740F5: cmp      eax, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x005740FB: je       0x574109
0x005740FD: cmp      eax, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x00574103: jne      0x5741ab
0x00574109: inc      byte ptr [ebp + 0x5c9]
0x0057410F: movzx    edx, byte ptr [edi + 1]
0x00574113: mov      eax, dword ptr [edi + 4]
0x00574116: mov      eax, dword ptr [eax + 0x38]
0x00574119: mov      edx, dword ptr [eax + edx*4]
0x0057411C: cmp      byte ptr [edx + 0x3a], 0
0x00574120: jne      0x5741ab
0x00574126: inc      byte ptr [ebp + 0x5ca]
0x0057412C: lea      eax, [ebp + 0xc]
0x0057412F: cmp      eax, dword ptr [ebp + 0xcc]
0x00574135: je       0x574149
0x00574137: mov      edx, dword ptr [ecx + 8]
0x0057413A: cmp      dword ptr [eax], edx
0x0057413C: je       0x57417a
0x0057413E: add      eax, 4
0x00574141: cmp      eax, dword ptr [ebp + 0xcc]
0x00574147: jne      0x57413a
0x00574149: cmp      dword ptr [ebp + 0x5c0], 0
0x00574150: jne      0x57415d
0x00574152: mov      eax, dword ptr [ecx + 8]
0x00574155: mov      dword ptr [ebp + 0x5c0], eax
0x0057415B: jmp      0x574190
0x0057415D: fld      dword ptr [ebp + 0x5bc]
0x00574163: fld      dword ptr [ecx + 0x3c]
0x00574166: fcompp   
0x00574168: fnstsw   ax
0x0057416A: test     ah, 0x41
0x0057416D: jne      0x574190
0x0057416F: mov      edx, dword ptr [ecx + 8]
0x00574172: mov      dword ptr [ebp + 0x5c0], edx
0x00574178: jmp      0x574190
0x0057417A: fld      dword ptr [ebp + 0x5bc]
0x00574180: fld      dword ptr [ecx + 0x3c]
0x00574183: fcompp   
0x00574185: fnstsw   ax
0x00574187: test     ah, 0x41
0x0057418A: jne      0x574190
0x0057418C: mov      dword ptr [esp + 0x10], edx
0x00574190: fld      dword ptr [ebp + 0x5bc]
0x00574196: fld      dword ptr [ecx + 0x3c]
0x00574199: fcompp   
0x0057419B: fnstsw   ax
0x0057419D: test     ah, 0x41
0x005741A0: jne      0x5741ab
0x005741A2: fld      dword ptr [ecx + 0x3c]
0x005741A5: fstp     dword ptr [ebp + 0x5bc]
0x005741AB: mov      ebx, dword ptr [0x95ecf8] ; [u32=0x956151A9]
0x005741B1: add      ecx, 0x4c
0x005741B4: cmp      ecx, dword ptr [ebp + 0x59c]
0x005741BA: jb       0x573f93
0x005741C0: jmp      0x5741c8
0x005741C2: mov      ebx, dword ptr [0x95ecf8] ; [u32=0x956151A9]
0x005741C8: cmp      dword ptr [ebp + 0x5c0], 0
0x005741CF: jne      0x5741ea
0x005741D1: cmp      byte ptr [ebp + 0x5ca], 1
0x005741D8: jbe      0x5741ea
0x005741DA: mov      eax, dword ptr [esp + 0x10]
0x005741DE: mov      dword ptr [ebp + 0x5c0], eax
0x005741E4: mov      ebx, dword ptr [0x95ecf8] ; [u32=0x956151A9]
0x005741EA: fcom     dword ptr [ebp + 0x5b4]
0x005741F0: fnstsw   ax
0x005741F2: test     ah, 0x44
0x005741F5: jp       0x574209
0x005741F7: fld      dword ptr [ebp + 0x118]
0x005741FD: fstp     dword ptr [ebp + 0x5b4]
0x00574203: mov      ebx, dword ptr [0x95ecf8] ; [u32=0x956151A9]
0x00574209: mov      edx, dword ptr [ebp + 0x59c]
0x0057420F: lea      eax, [ebp + 0xdc]
0x00574215: mov      esi, eax
0x00574217: cmp      esi, edx
0x00574219: jae      0x5743e8
0x0057421F: fld      qword ptr [0x992180] ; [f64=0.05, u32=0xA0000000]
0x00574225: jmp      0x57422d
0x00574227: mov      edx, dword ptr [ebp + 0x59c]
0x0057422D: cmp      byte ptr [ebp + 0x5a0], 0
0x00574234: jne      0x5743e6
0x0057423A: fld      st(1)
0x0057423C: fcomp    dword ptr [esi + 0xc]
0x0057423F: fnstsw   ax
0x00574241: test     ah, 0x44
0x00574244: jp       0x574256
0x00574246: fld      st(1)
0x00574248: fcomp    dword ptr [esi + 0x10]
0x0057424B: fnstsw   ax
0x0057424D: test     ah, 0x44
0x00574250: jnp      0x5743d7
0x00574256: mov      ecx, dword ptr [esi + 8]
0x00574259: mov      eax, dword ptr [ecx + 0x11c]
0x0057425F: test     eax, eax
0x00574261: je       0x574297
0x00574263: movzx    edi, byte ptr [eax + 1]
0x00574267: mov      eax, dword ptr [eax + 4]
0x0057426A: mov      eax, dword ptr [eax + 0x38]
0x0057426D: mov      eax, dword ptr [eax + edi*4]
0x00574270: mov      eax, dword ptr [eax + 0x28]
0x00574273: cmp      eax, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00574279: je       0x5742ae
0x0057427B: cmp      eax, dword ptr [0x95f6dc] ; [u32=0x90B24AEB]
0x00574281: je       0x5742ae
0x00574283: cmp      eax, ebx
0x00574285: je       0x5742ae
0x00574287: cmp      eax, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x0057428D: je       0x5742ae
0x0057428F: cmp      eax, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x00574295: je       0x5742ae
0x00574297: movzx    eax, word ptr [ecx + 0x2e]
0x0057429B: mov      edi, dword ptr [ecx + 0x30]
0x0057429E: mov      edi, dword ptr [edi + 0x20]
0x005742A1: test     dword ptr [edi + eax*8], 0x400000
0x005742A8: je       0x5743d7
0x005742AE: mov      eax, dword ptr [ecx + 0x11c]
0x005742B4: test     eax, eax
0x005742B6: je       0x5742d6
0x005742B8: movzx    ecx, byte ptr [eax + 1]
0x005742BC: mov      eax, dword ptr [eax + 4]
0x005742BF: mov      eax, dword ptr [eax + 0x38]
0x005742C2: mov      eax, dword ptr [eax + ecx*4]
0x005742C5: cmp      dword ptr [eax + 0x28], ebx
0x005742C8: jne      0x5742d6
0x005742CA: movsx    eax, byte ptr [eax + 0x45]
0x005742CE: test     eax, eax
0x005742D0: je       0x5743d7
0x005742D6: lea      ecx, [esi + 0x4c]
0x005742D9: cmp      ecx, edx
0x005742DB: jae      0x5743d7
0x005742E1: fld      st(1)
0x005742E3: fcomp    dword ptr [ecx + 0xc]
0x005742E6: fnstsw   ax
0x005742E8: test     ah, 0x44
0x005742EB: jp       0x5742fd
0x005742ED: fld      st(1)
0x005742EF: fcomp    dword ptr [ecx + 0x10]
0x005742F2: fnstsw   ax
0x005742F4: test     ah, 0x44
0x005742F7: jnp      0x5743b9
0x005742FD: mov      edx, dword ptr [ecx + 8]
0x00574300: mov      eax, dword ptr [edx + 0x11c]
0x00574306: test     eax, eax
0x00574308: je       0x574326
0x0057430A: movzx    edi, byte ptr [eax + 1]
0x0057430E: mov      eax, dword ptr [eax + 4]
0x00574311: mov      eax, dword ptr [eax + 0x38]
0x00574314: mov      eax, dword ptr [eax + edi*4]
0x00574317: cmp      dword ptr [eax + 0x28], ebx
0x0057431A: jne      0x574326
0x0057431C: cmp      byte ptr [eax + 0x45], 0
0x00574320: je       0x5743b9
0x00574326: mov      eax, dword ptr [edx + 0x11c]
0x0057432C: test     eax, eax
0x0057432E: je       0x574364
0x00574330: movzx    edi, byte ptr [eax + 1]
0x00574334: mov      eax, dword ptr [eax + 4]
0x00574337: mov      eax, dword ptr [eax + 0x38]
0x0057433A: mov      eax, dword ptr [eax + edi*4]
0x0057433D: mov      eax, dword ptr [eax + 0x28]
0x00574340: cmp      eax, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00574346: je       0x574377
0x00574348: cmp      eax, dword ptr [0x95f6dc] ; [u32=0x90B24AEB]
0x0057434E: je       0x574377
0x00574350: cmp      eax, ebx
0x00574352: je       0x574377
0x00574354: cmp      eax, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x0057435A: je       0x574377
0x0057435C: cmp      eax, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x00574362: je       0x574377
0x00574364: movzx    eax, word ptr [edx + 0x2e]
0x00574368: mov      edx, dword ptr [edx + 0x30]
0x0057436B: mov      edx, dword ptr [edx + 0x20]
0x0057436E: test     dword ptr [edx + eax*8], 0x400000
0x00574375: je       0x5743b9
0x00574377: fld      dword ptr [ecx + 0xc]
0x0057437A: fadd     dword ptr [esi + 0xc]
0x0057437D: fstp     dword ptr [esp + 0x14]
0x00574381: fld      dword ptr [esp + 0x14]
0x00574385: fabs     
0x00574387: fstp     dword ptr [esp + 0x14]
0x0057438B: fld      dword ptr [esp + 0x14]
0x0057438F: fcomp    st(1)
0x00574391: fnstsw   ax
0x00574393: test     ah, 5
0x00574396: jp       0x5743b9
0x00574398: fld      dword ptr [ecx + 0x10]
0x0057439B: fadd     dword ptr [esi + 0x10]
0x0057439E: fstp     dword ptr [esp + 0x14]
0x005743A2: fld      dword ptr [esp + 0x14]
0x005743A6: fabs     
0x005743A8: fstp     dword ptr [esp + 0x14]
0x005743AC: fld      dword ptr [esp + 0x14]
0x005743B0: fcomp    st(1)
0x005743B2: fnstsw   ax
0x005743B4: test     ah, 5
0x005743B7: jnp      0x5743ca
0x005743B9: add      ecx, 0x4c
0x005743BC: cmp      ecx, dword ptr [ebp + 0x59c]
0x005743C2: jb       0x5742e1
0x005743C8: jmp      0x5743d7
0x005743CA: mov      byte ptr [ebp + 0x5a0], 1
0x005743D1: mov      ebx, dword ptr [0x95ecf8] ; [u32=0x956151A9]
0x005743D7: add      esi, 0x4c
0x005743DA: cmp      esi, dword ptr [ebp + 0x59c]
0x005743E0: jb       0x574227
0x005743E6: fstp     st(1)
0x005743E8: fstp     st(0)
0x005743EA: pop      edi
0x005743EB: pop      esi
0x005743EC: pop      ebx
0x005743ED: pop      ebp
0x005743EE: add      esp, 0xc
0x005743F1: ret      
0x005743F2: int3     
0x005743F3: int3     
0x005743F4: int3     
0x005743F5: int3     
0x005743F6: int3     
0x005743F7: int3     
0x005743F8: int3     
0x005743F9: int3     
0x005743FA: int3     
0x005743FB: int3     
0x005743FC: int3     
0x005743FD: int3     
0x005743FE: int3     
0x005743FF: int3     
0x00574400: mov      eax, dword ptr [esp + 8]
0x00574404: mov      eax, dword ptr [eax + 0x11c]
0x0057440A: mov      edx, dword ptr [esp + 0xc]
0x0057440E: push     esi
0x0057440F: mov      esi, ecx
0x00574411: mov      ecx, dword ptr [edx + 0x11c]
0x00574417: push     edi
0x00574418: test     eax, eax
0x0057441A: je       0x5745e1
0x00574420: test     ecx, ecx
0x00574422: je       0x5745e1
0x00574428: movzx    edi, byte ptr [eax + 1]
0x0057442C: mov      eax, dword ptr [eax + 4]
0x0057442F: mov      eax, dword ptr [eax + 0xc]
0x00574432: mov      eax, dword ptr [eax + edi*4]
0x00574435: test     eax, 0x200
0x0057443A: je       0x5745e1
0x00574440: movzx    eax, byte ptr [ecx + 1]
0x00574444: mov      ecx, dword ptr [ecx + 4]
0x00574447: mov      ecx, dword ptr [ecx + 0xc]
0x0057444A: test     dword ptr [ecx + eax*4], 0x200
0x00574451: je       0x5745e1
0x00574457: mov      eax, dword ptr [esp + 0xc]
0x0057445B: test     dword ptr [eax + 0x20], 0x800000
0x00574462: push     ebx
0x00574463: push     ebp
0x00574464: je       0x5745d5
0x0057446A: cmp      dword ptr [esi + 0xd8], 0
0x00574471: je       0x5745d5
0x00574477: push     edx
0x00574478: mov      ecx, esi
0x0057447A: call     0x511620
0x0057447F: mov      ebx, dword ptr [esp + 0x24]
0x00574483: sub      ebx, 1
0x00574486: js       0x5745d5
0x0057448C: mov      edx, dword ptr [esp + 0x20]
0x00574490: mov      ecx, ebx
0x00574492: shl      ecx, 7
0x00574495: lea      edi, [ecx + edx + 0x28]
0x00574499: lea      esp, [esp]
0x005744A0: mov      ecx, dword ptr [esp + 0x28]
0x005744A4: test     ecx, ecx
0x005744A6: je       0x5744be
0x005744A8: fld      dword ptr [edi - 8]
0x005744AB: fchs     
0x005744AD: fstp     dword ptr [edi - 8]
0x005744B0: fld      dword ptr [edi - 4]
0x005744B3: fchs     
0x005744B5: fstp     dword ptr [edi - 4]
0x005744B8: fld      dword ptr [edi]
0x005744BA: fchs     
0x005744BC: fstp     dword ptr [edi]
0x005744BE: mov      ebp, dword ptr [esi + 0x59c]
0x005744C4: mov      edx, ebp
0x005744C6: sub      edx, esi
0x005744C8: sub      edx, 0xdc
0x005744CE: mov      eax, 0x6bca1af3
0x005744D3: imul     edx
0x005744D5: sar      edx, 5
0x005744D8: mov      eax, edx
0x005744DA: shr      eax, 0x1f
0x005744DD: add      eax, edx
0x005744DF: cmp      eax, 0x10
0x005744E2: jge      0x5745d5
0x005744E8: mov      edx, dword ptr [esp + 0x14]
0x005744EC: mov      dword ptr [ebp], edx
0x005744EF: mov      eax, dword ptr [esi + 0x59c]
0x005744F5: mov      edx, dword ptr [esp + 0x18]
0x005744F9: mov      dword ptr [eax + 4], edx
0x005744FC: mov      eax, dword ptr [esi + 0x59c]
0x00574502: mov      edx, dword ptr [esp + 0x1c]
0x00574506: mov      dword ptr [eax + 8], edx
0x00574509: mov      eax, dword ptr [esi + 0x59c]
0x0057450F: mov      byte ptr [eax + 0x44], cl
0x00574512: fld      dword ptr [edi - 8]
0x00574515: mov      eax, dword ptr [esi + 0x59c]
0x0057451B: fstp     dword ptr [eax + 0xc]
0x0057451E: fld      dword ptr [edi - 4]
0x00574521: add      eax, 0xc
0x00574524: fstp     dword ptr [eax + 4]
0x00574527: lea      ebp, [edi - 0x28]
0x0057452A: fld      dword ptr [edi]
0x0057452C: fstp     dword ptr [eax + 8]
0x0057452F: fld      dword ptr [edi + 4]
0x00574532: fstp     dword ptr [eax + 0xc]
0x00574535: mov      eax, dword ptr [esi + 0x59c]
0x0057453B: fld      dword ptr [edi - 0x18]
0x0057453E: add      eax, 0x1c
0x00574541: fstp     dword ptr [eax]
0x00574543: fld      dword ptr [edi - 0x14]
0x00574546: fstp     dword ptr [eax + 4]
0x00574549: fld      dword ptr [edi - 0x10]
0x0057454C: fstp     dword ptr [eax + 8]
0x0057454F: fld      dword ptr [edi - 0xc]
0x00574552: fstp     dword ptr [eax + 0xc]
0x00574555: mov      ecx, dword ptr [esi + 0x59c]
0x0057455B: fld      dword ptr [edi + 8]
0x0057455E: fstp     dword ptr [ecx + 0x3c]
0x00574561: mov      edx, dword ptr [esi + 0x59c]
0x00574567: fld      dword ptr [ebp]
0x0057456A: fstp     dword ptr [edx + 0x40]
0x0057456D: cmp      dword ptr [edi + 0x54], 0
0x00574571: mov      ecx, dword ptr [esi + 0x59c]
0x00574577: setne    al
0x0057457A: mov      byte ptr [ecx + 0x45], al
0x0057457D: mov      eax, dword ptr [esi + 0x59c]
0x00574583: add      eax, 0xc
0x00574586: push     eax
0x00574587: push     eax
0x00574588: call     0x6b2160
0x0057458D: fstp     st(0)
0x0057458F: mov      eax, dword ptr [esi + 0xd8]
0x00574595: mov      ecx, dword ptr [eax + 8]
0x00574598: movzx    edx, byte ptr [ecx + 1]
0x0057459C: add      eax, 0x28c
0x005745A1: push     eax
0x005745A2: mov      eax, dword ptr [ecx + 4]
0x005745A5: mov      ecx, dword ptr [eax + 0x1c]
0x005745A8: mov      edx, dword ptr [ecx + edx*4]
0x005745AB: mov      eax, dword ptr [esi + 0x59c]
0x005745B1: add      edx, 0xc
0x005745B4: push     edx
0x005745B5: add      eax, 0x2c
0x005745B8: push     ebp
0x005745B9: push     eax
0x005745BA: call     0x573d40
0x005745BF: add      dword ptr [esi + 0x59c], 0x4c
0x005745C6: dec      ebx
0x005745C7: add      esp, 0x18
0x005745CA: add      edi, -0x80
0x005745CD: test     ebx, ebx
0x005745CF: jge      0x5744a0
0x005745D5: pop      ebp
0x005745D6: pop      ebx
0x005745D7: pop      edi
0x005745D8: mov      eax, 1
0x005745DD: pop      esi
0x005745DE: ret      0x18
0x005745E1: pop      edi
0x005745E2: mov      eax, 1
0x005745E7: pop      esi
0x005745E8: ret      0x18
0x005745EB: int3     
0x005745EC: int3     
0x005745ED: int3     
0x005745EE: int3     
0x005745EF: int3     
0x005745F0: push     ebp
0x005745F1: mov      ebp, esp
0x005745F3: and      esp, 0xfffffff8
0x005745F6: push     -1
0x005745F8: push     0x9483fb
0x005745FD: mov      eax, dword ptr fs:[0]
0x00574603: push     eax
0x00574604: sub      esp, 0x54
0x00574607: push     ebx
0x00574608: push     ebp
0x00574609: push     esi
0x0057460A: push     edi
0x0057460B: mov      eax, dword ptr [0xb089c8]
0x00574610: xor      eax, esp
0x00574612: push     eax
0x00574613: lea      eax, [esp + 0x68]
0x00574617: mov      dword ptr fs:[0], eax
0x0057461D: mov      edi, ecx
0x0057461F: lea      esi, [edi + 0xdc]
0x00574625: cmp      esi, dword ptr [edi + 0x59c]
0x0057462B: jae      0x5748cb
0x00574631: lea      eax, [esp + 0x58]
0x00574635: and      eax, 0x7f
0x00574638: mov      dword ptr [esp + 0x1c], eax
0x0057463C: or       ebp, 0xffffffff
0x0057463F: mov      ebx, 0x979378
0x00574644: jmp      0x574654
0x00574646: jmp      0x574650
0x00574648: lea      esp, [esp]
0x0057464F: nop      
0x00574650: mov      eax, dword ptr [esp + 0x1c]
0x00574654: mov      ecx, dword ptr [esi + 8]
0x00574657: mov      edx, dword ptr [ecx + 0x11c]
0x0057465D: mov      dword ptr [esp + 0x18], edx
0x00574661: test     eax, eax
0x00574663: je       0x574676
0x00574665: lea      eax, [esp + 0x58]
0x00574669: push     0xc
0x0057466B: push     eax
0x0057466C: call     0x6a9700
0x00574671: add      esp, 8
0x00574674: jmp      0x574684
0x00574676: xor      eax, eax
0x00574678: mov      dword ptr [esp + 0x58], eax
0x0057467C: mov      dword ptr [esp + 0x5c], eax
0x00574680: mov      dword ptr [esp + 0x60], eax
0x00574684: mov      ecx, dword ptr [edi + 0xd8]
0x0057468A: mov      edx, dword ptr [ecx + 8]
0x0057468D: mov      eax, dword ptr [esp + 0x18]
0x00574691: lea      ecx, [esp + 0x58]
0x00574695: push     ecx
0x00574696: mov      dword ptr [esp + 0x5c], edx
0x0057469A: mov      edx, dword ptr [0xb1bac0]
0x005746A0: push     0
0x005746A2: push     edx
0x005746A3: mov      dword ptr [esp + 0x68], eax
0x005746A7: mov      dword ptr [esp + 0x6c], esi
0x005746AB: call     0x52d190
0x005746B0: mov      eax, dword ptr [esp + 0x24]
0x005746B4: add      esp, 0xc
0x005746B7: test     eax, eax
0x005746B9: je       0x57480c
0x005746BF: movzx    ecx, byte ptr [eax + 1]
0x005746C3: mov      edx, dword ptr [eax + 4]
0x005746C6: mov      edx, dword ptr [edx + 0x38]
0x005746C9: mov      ecx, dword ptr [edx + ecx*4]
0x005746CC: mov      edx, dword ptr [ecx + 0x28]
0x005746CF: cmp      edx, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x005746D5: jne      0x57470e
0x005746D7: mov      eax, dword ptr [edi + 0xd8]
0x005746DD: mov      ecx, dword ptr [eax + 0x1b4]
0x005746E3: mov      dword ptr [esp + 0x20], 0x9928dc
0x005746EB: mov      dword ptr [esp + 0x24], esi
0x005746EF: mov      edx, dword ptr [ecx]
0x005746F1: mov      edx, dword ptr [edx + 8]
0x005746F4: push     1
0x005746F6: lea      eax, [esp + 0x24]
0x005746FA: push     eax
0x005746FB: mov      dword ptr [esp + 0x78], 0
0x00574703: call     edx
0x00574705: mov      dword ptr [esp + 0x20], ebx
0x00574709: jmp      0x574898
0x0057470E: cmp      edx, dword ptr [0x95f708] ; [u32=0xFCD02DD6]
0x00574714: jne      0x57474d
0x00574716: mov      eax, dword ptr [edi + 0xd8]
0x0057471C: mov      ecx, dword ptr [eax + 0x1b4]
0x00574722: mov      dword ptr [esp + 0x28], 0x9928f0
0x0057472A: mov      dword ptr [esp + 0x2c], esi
0x0057472E: mov      edx, dword ptr [ecx]
0x00574730: mov      edx, dword ptr [edx + 8]
0x00574733: push     1
0x00574735: lea      eax, [esp + 0x2c]
0x00574739: push     eax
0x0057473A: mov      dword ptr [esp + 0x78], 1
0x00574742: call     edx
0x00574744: mov      dword ptr [esp + 0x28], ebx
0x00574748: jmp      0x574898
0x0057474D: cmp      edx, dword ptr [0x95f4b0] ; [u32=0x1FEF4A96]
0x00574753: jne      0x57478c
0x00574755: mov      eax, dword ptr [edi + 0xd8]
0x0057475B: mov      ecx, dword ptr [eax + 0x1b4]
0x00574761: mov      dword ptr [esp + 0x30], 0x9928c8
0x00574769: mov      dword ptr [esp + 0x34], esi
0x0057476D: mov      edx, dword ptr [ecx]
0x0057476F: mov      edx, dword ptr [edx + 8]
0x00574772: push     1
0x00574774: lea      eax, [esp + 0x34]
0x00574778: push     eax
0x00574779: mov      dword ptr [esp + 0x78], 2
0x00574781: call     edx
0x00574783: mov      dword ptr [esp + 0x30], ebx
0x00574787: jmp      0x574898
0x0057478C: cmp      edx, dword ptr [0x95f6dc] ; [u32=0x90B24AEB]
0x00574792: jne      0x5747cb
0x00574794: mov      eax, dword ptr [edi + 0xd8]
0x0057479A: mov      ecx, dword ptr [eax + 0x1b4]
0x005747A0: mov      dword ptr [esp + 0x38], 0x9928b4
0x005747A8: mov      dword ptr [esp + 0x3c], esi
0x005747AC: mov      edx, dword ptr [ecx]
0x005747AE: mov      edx, dword ptr [edx + 8]
0x005747B1: push     1
0x005747B3: lea      eax, [esp + 0x3c]
0x005747B7: push     eax
0x005747B8: mov      dword ptr [esp + 0x78], 3
0x005747C0: call     edx
0x005747C2: mov      dword ptr [esp + 0x38], ebx
0x005747C6: jmp      0x574898
0x005747CB: mov      ecx, edx
0x005747CD: cmp      ecx, dword ptr [0x95ecf8] ; [u32=0x956151A9]
0x005747D3: jne      0x57480c
0x005747D5: mov      edx, dword ptr [edi + 0xd8]
0x005747DB: mov      ecx, dword ptr [edx + 0x1b4]
0x005747E1: mov      dword ptr [esp + 0x40], 0x992904
0x005747E9: mov      dword ptr [esp + 0x44], esi
0x005747ED: mov      eax, dword ptr [ecx]
0x005747EF: mov      eax, dword ptr [eax + 8]
0x005747F2: push     1
0x005747F4: lea      edx, [esp + 0x44]
0x005747F8: push     edx
0x005747F9: mov      dword ptr [esp + 0x78], 4
0x00574801: call     eax
0x00574803: mov      dword ptr [esp + 0x40], ebx
0x00574807: jmp      0x574898
0x0057480C: push     eax
0x0057480D: call     0x516190
0x00574812: add      esp, 4
0x00574815: test     eax, eax
0x00574817: je       0x57484d
0x00574819: mov      ecx, dword ptr [edi + 0xd8]
0x0057481F: mov      ecx, dword ptr [ecx + 0x1b4]
0x00574825: mov      dword ptr [esp + 0x48], 0x9928a0
0x0057482D: mov      dword ptr [esp + 0x4c], esi
0x00574831: mov      edx, dword ptr [ecx]
0x00574833: mov      edx, dword ptr [edx + 8]
0x00574836: push     1
0x00574838: lea      eax, [esp + 0x4c]
0x0057483C: push     eax
0x0057483D: mov      dword ptr [esp + 0x78], 5
0x00574845: call     edx
0x00574847: mov      dword ptr [esp + 0x48], ebx
0x0057484B: jmp      0x574898
0x0057484D: mov      eax, dword ptr [esi + 8]
0x00574850: movzx    ecx, word ptr [eax + 0x2e]
0x00574854: mov      edx, dword ptr [eax + 0x30]
0x00574857: add      eax, 0x2c
0x0057485A: mov      eax, dword ptr [edx + 0x20]
0x0057485D: test     dword ptr [eax + ecx*8], 0x400000
0x00574864: je       0x57489c
0x00574866: mov      ecx, dword ptr [edi + 0xd8]
0x0057486C: mov      ecx, dword ptr [ecx + 0x1b4]
0x00574872: mov      dword ptr [esp + 0x50], 0x99288c
0x0057487A: mov      dword ptr [esp + 0x54], esi
0x0057487E: mov      edx, dword ptr [ecx]
0x00574880: mov      edx, dword ptr [edx + 8]
0x00574883: push     1
0x00574885: lea      eax, [esp + 0x54]
0x00574889: push     eax
0x0057488A: mov      dword ptr [esp + 0x78], 6
0x00574892: call     edx
0x00574894: mov      dword ptr [esp + 0x50], ebx
0x00574898: mov      dword ptr [esp + 0x70], ebp
0x0057489C: add      esi, 0x4c
0x0057489F: cmp      esi, dword ptr [edi + 0x59c]
0x005748A5: jb       0x574650
0x005748AB: lea      eax, [edi + 0xdc]
0x005748B1: mov      dword ptr [edi + 0x59c], eax
0x005748B7: mov      ecx, dword ptr [esp + 0x68]
0x005748BB: mov      dword ptr fs:[0], ecx
0x005748C2: pop      ecx
0x005748C3: pop      edi
0x005748C4: pop      esi
0x005748C5: pop      ebp
0x005748C6: pop      ebx
0x005748C7: mov      esp, ebp
0x005748C9: pop      ebp
0x005748CA: ret      
0x005748CB: mov      dword ptr [edi + 0x59c], esi
0x005748D1: mov      ecx, dword ptr [esp + 0x68]
0x005748D5: mov      dword ptr fs:[0], ecx
0x005748DC: pop      ecx
0x005748DD: pop      edi
0x005748DE: pop      esi
0x005748DF: pop      ebp
0x005748E0: pop      ebx
0x005748E1: mov      esp, ebp
0x005748E3: pop      ebp
0x005748E4: ret      
0x005748E5: int3     
0x005748E6: int3     
0x005748E7: int3     
0x005748E8: int3     
0x005748E9: int3     
0x005748EA: int3     
0x005748EB: int3     
0x005748EC: int3     
0x005748ED: int3     
0x005748EE: int3     
0x005748EF: int3     
0x005748F0: push     -1
0x005748F2: push     0x948426
0x005748F7: mov      eax, dword ptr fs:[0]
0x005748FD: push     eax
0x005748FE: sub      esp, 0x10
0x00574901: push     esi
0x00574902: push     edi
0x00574903: mov      eax, dword ptr [0xb089c8]
0x00574908: xor      eax, esp
0x0057490A: push     eax
0x0057490B: lea      eax, [esp + 0x1c]
0x0057490F: mov      dword ptr fs:[0], eax
0x00574915: mov      esi, ecx
0x00574917: call     0x56d8b0
0x0057491C: mov      ecx, esi
0x0057491E: call     0x573e20
0x00574923: mov      eax, dword ptr [esi + 0xd8]
0x00574929: mov      ecx, dword ptr [eax + 0x1b4]
0x0057492F: lea      edi, [esi + 0x5a0]
0x00574935: mov      dword ptr [esp + 0xc], 0x992864
0x0057493D: mov      dword ptr [esp + 0x10], edi
0x00574941: mov      edx, dword ptr [ecx]
0x00574943: mov      edx, dword ptr [edx + 8]
0x00574946: push     1
0x00574948: lea      eax, [esp + 0x10]
0x0057494C: push     eax
0x0057494D: mov      dword ptr [esp + 0x2c], 0
0x00574955: call     edx
0x00574957: mov      ecx, esi
0x00574959: mov      dword ptr [esp + 0x24], 0xffffffff
0x00574961: call     0x5745f0
0x00574966: mov      eax, dword ptr [esi + 0xd8]
0x0057496C: mov      ecx, dword ptr [eax + 0x1b4]
0x00574972: mov      dword ptr [esp + 0x14], 0x992878
0x0057497A: mov      dword ptr [esp + 0x18], edi
0x0057497E: mov      edx, dword ptr [ecx]
0x00574980: mov      edx, dword ptr [edx + 8]
0x00574983: push     1
0x00574985: lea      eax, [esp + 0x18]
0x00574989: push     eax
0x0057498A: mov      dword ptr [esp + 0x2c], 1
0x00574992: call     edx
0x00574994: mov      ecx, dword ptr [esp + 0x1c]
0x00574998: mov      dword ptr fs:[0], ecx
0x0057499F: pop      ecx
0x005749A0: pop      edi
0x005749A1: pop      esi
0x005749A2: add      esp, 0x1c
0x005749A5: ret      
0x005749A6: int3     
0x005749A7: int3     
0x005749A8: int3     
0x005749A9: int3     
0x005749AA: int3     
0x005749AB: int3     
0x005749AC: int3     
0x005749AD: int3     
0x005749AE: int3     
0x005749AF: int3     
0x005749B0: xor      eax, eax
0x005749B2: cmp      dword ptr [esp + 4], 0xb49ea8
0x005749BA: sete     al
0x005749BD: ret      4
0x005749C0: mov      eax, 0xb49ea8
0x005749C5: ret      
0x005749C6: int3     
0x005749C7: int3     
0x005749C8: int3     
0x005749C9: int3     
0x005749CA: int3     
0x005749CB: int3     
0x005749CC: int3     
0x005749CD: int3     
0x005749CE: int3     
0x005749CF: int3     
0x005749D0: xor      eax, eax
0x005749D2: cmp      dword ptr [esp + 4], 0xb49eac
0x005749DA: sete     al
0x005749DD: ret      4
0x005749E0: mov      eax, 0xb49eac
0x005749E5: ret      
0x005749E6: int3     
0x005749E7: int3     
0x005749E8: int3     
0x005749E9: int3     
0x005749EA: int3     
0x005749EB: int3     
0x005749EC: int3     
0x005749ED: int3     
0x005749EE: int3     
0x005749EF: int3     
0x005749F0: xor      eax, eax
0x005749F2: cmp      dword ptr [esp + 4], 0xb49eb0
0x005749FA: sete     al
0x005749FD: ret      4
0x00574A00: mov      eax, 0xb49eb0
0x00574A05: ret      
0x00574A06: int3     
0x00574A07: int3     
0x00574A08: int3     
0x00574A09: int3     
0x00574A0A: int3     
0x00574A0B: int3     
0x00574A0C: int3     
0x00574A0D: int3     
0x00574A0E: int3     
0x00574A0F: int3     
0x00574A10: xor      eax, eax
0x00574A12: cmp      dword ptr [esp + 4], 0xb49eb4
0x00574A1A: sete     al
0x00574A1D: ret      4
0x00574A20: mov      eax, 0xb49eb4
0x00574A25: ret      
0x00574A26: int3     
0x00574A27: int3     
0x00574A28: int3     
0x00574A29: int3     
0x00574A2A: int3     
0x00574A2B: int3     
0x00574A2C: int3     
0x00574A2D: int3     
0x00574A2E: int3     
0x00574A2F: int3     
0x00574A30: xor      eax, eax
0x00574A32: cmp      dword ptr [esp + 4], 0xb28088
0x00574A3A: sete     al
0x00574A3D: ret      4
0x00574A40: mov      eax, 0xb28088
0x00574A45: ret      
0x00574A46: int3     
0x00574A47: int3     
0x00574A48: int3     
0x00574A49: int3     
0x00574A4A: int3     
0x00574A4B: int3     
0x00574A4C: int3     
0x00574A4D: int3     
0x00574A4E: int3     
0x00574A4F: int3     
0x00574A50: xor      eax, eax
0x00574A52: cmp      dword ptr [esp + 4], 0xb49eb8
0x00574A5A: sete     al
0x00574A5D: ret      4
0x00574A60: mov      eax, 0xb49eb8
0x00574A65: ret      
0x00574A66: int3     
0x00574A67: int3     
0x00574A68: int3     
0x00574A69: int3     
0x00574A6A: int3     
0x00574A6B: int3     
0x00574A6C: int3     
0x00574A6D: int3     
0x00574A6E: int3     
0x00574A6F: int3     
0x00574A70: xor      eax, eax
0x00574A72: cmp      dword ptr [esp + 4], 0xb2808c
0x00574A7A: sete     al
0x00574A7D: ret      4
0x00574A80: mov      eax, 0xb2808c
0x00574A85: ret      
0x00574A86: int3     
0x00574A87: int3     
0x00574A88: int3     
0x00574A89: int3     
0x00574A8A: int3     
0x00574A8B: int3     
0x00574A8C: int3     
0x00574A8D: int3     
0x00574A8E: int3     
0x00574A8F: int3     
0x00574A90: xor      eax, eax
0x00574A92: cmp      dword ptr [esp + 4], 0xb49ebc
0x00574A9A: sete     al
0x00574A9D: ret      4
0x00574AA0: mov      eax, 0xb49ebc
0x00574AA5: ret      
0x00574AA6: int3     
0x00574AA7: int3     
0x00574AA8: int3     
0x00574AA9: int3     
0x00574AAA: int3     
0x00574AAB: int3     
0x00574AAC: int3     
0x00574AAD: int3     
0x00574AAE: int3     
0x00574AAF: int3     
0x00574AB0: xor      eax, eax
0x00574AB2: cmp      dword ptr [esp + 4], 0xb49ec0
0x00574ABA: sete     al
0x00574ABD: ret      4
0x00574AC0: mov      eax, 0xb49ec0
0x00574AC5: ret      
0x00574AC6: int3     
0x00574AC7: int3     
0x00574AC8: int3     
0x00574AC9: int3     
0x00574ACA: int3     
0x00574ACB: int3     
0x00574ACC: int3     
0x00574ACD: int3     
0x00574ACE: int3     
0x00574ACF: int3     
0x00574AD0: mov      eax, dword ptr [esp + 4]
0x00574AD4: push     esi
0x00574AD5: push     0
0x00574AD7: push     eax
0x00574AD8: push     8
0x00574ADA: mov      esi, ecx
0x00574ADC: call     0x689060
0x00574AE1: add      esp, 0xc
0x00574AE4: test     eax, eax
0x00574AE6: je       0x574af8
0x00574AE8: mov      dword ptr [eax], 0x992864
0x00574AEE: mov      ecx, dword ptr [esi + 4]
0x00574AF1: mov      dword ptr [eax + 4], ecx
0x00574AF4: pop      esi
0x00574AF5: ret      4
0x00574AF8: xor      eax, eax
0x00574AFA: pop      esi
0x00574AFB: ret      4
0x00574AFE: int3     
0x00574AFF: int3     
0x00574B00: mov      eax, dword ptr [esp + 4]
0x00574B04: push     esi
0x00574B05: push     0
0x00574B07: push     eax
0x00574B08: push     8
0x00574B0A: mov      esi, ecx
0x00574B0C: call     0x689060
0x00574B11: add      esp, 0xc
0x00574B14: test     eax, eax
0x00574B16: je       0x574b28
0x00574B18: mov      dword ptr [eax], 0x992878
0x00574B1E: mov      ecx, dword ptr [esi + 4]
0x00574B21: mov      dword ptr [eax + 4], ecx
0x00574B24: pop      esi
0x00574B25: ret      4
0x00574B28: xor      eax, eax
0x00574B2A: pop      esi
0x00574B2B: ret      4
0x00574B2E: int3     
0x00574B2F: int3     
0x00574B30: mov      eax, dword ptr [esp + 4]
0x00574B34: push     esi
0x00574B35: push     0
0x00574B37: push     eax
0x00574B38: push     8
0x00574B3A: mov      esi, ecx
0x00574B3C: call     0x689060
0x00574B41: add      esp, 0xc
0x00574B44: test     eax, eax
0x00574B46: je       0x574b58
0x00574B48: mov      dword ptr [eax], 0x99288c
0x00574B4E: mov      ecx, dword ptr [esi + 4]
0x00574B51: mov      dword ptr [eax + 4], ecx
0x00574B54: pop      esi
0x00574B55: ret      4
0x00574B58: xor      eax, eax
0x00574B5A: pop      esi
0x00574B5B: ret      4
0x00574B5E: int3     
0x00574B5F: int3     
0x00574B60: mov      eax, dword ptr [esp + 4]
0x00574B64: push     esi
0x00574B65: push     0
0x00574B67: push     eax
0x00574B68: push     8
0x00574B6A: mov      esi, ecx
0x00574B6C: call     0x689060
0x00574B71: add      esp, 0xc
0x00574B74: test     eax, eax
0x00574B76: je       0x574b88
0x00574B78: mov      dword ptr [eax], 0x9928a0
0x00574B7E: mov      ecx, dword ptr [esi + 4]
0x00574B81: mov      dword ptr [eax + 4], ecx
0x00574B84: pop      esi
0x00574B85: ret      4
0x00574B88: xor      eax, eax
0x00574B8A: pop      esi
0x00574B8B: ret      4
0x00574B8E: int3     
0x00574B8F: int3     
0x00574B90: mov      eax, dword ptr [esp + 4]
0x00574B94: push     esi
0x00574B95: push     0
0x00574B97: push     eax
0x00574B98: push     8
0x00574B9A: mov      esi, ecx
0x00574B9C: call     0x689060
0x00574BA1: add      esp, 0xc
0x00574BA4: test     eax, eax
0x00574BA6: je       0x574bb8
0x00574BA8: mov      dword ptr [eax], 0x9928b4
0x00574BAE: mov      ecx, dword ptr [esi + 4]
0x00574BB1: mov      dword ptr [eax + 4], ecx
0x00574BB4: pop      esi
0x00574BB5: ret      4
0x00574BB8: xor      eax, eax
0x00574BBA: pop      esi
0x00574BBB: ret      4
0x00574BBE: int3     
0x00574BBF: int3     
0x00574BC0: mov      eax, dword ptr [esp + 4]
0x00574BC4: push     esi
0x00574BC5: push     0
0x00574BC7: push     eax
0x00574BC8: push     8
0x00574BCA: mov      esi, ecx
0x00574BCC: call     0x689060
0x00574BD1: add      esp, 0xc
0x00574BD4: test     eax, eax
0x00574BD6: je       0x574be8
0x00574BD8: mov      dword ptr [eax], 0x9928c8
0x00574BDE: mov      ecx, dword ptr [esi + 4]
0x00574BE1: mov      dword ptr [eax + 4], ecx
0x00574BE4: pop      esi
0x00574BE5: ret      4
0x00574BE8: xor      eax, eax
0x00574BEA: pop      esi
0x00574BEB: ret      4
0x00574BEE: int3     
0x00574BEF: int3     
0x00574BF0: mov      eax, dword ptr [esp + 4]
0x00574BF4: push     esi
0x00574BF5: push     0
0x00574BF7: push     eax
0x00574BF8: push     8
0x00574BFA: mov      esi, ecx
0x00574BFC: call     0x689060
0x00574C01: add      esp, 0xc
0x00574C04: test     eax, eax
0x00574C06: je       0x574c18
0x00574C08: mov      dword ptr [eax], 0x9928dc
0x00574C0E: mov      ecx, dword ptr [esi + 4]
0x00574C11: mov      dword ptr [eax + 4], ecx
0x00574C14: pop      esi
0x00574C15: ret      4
0x00574C18: xor      eax, eax
0x00574C1A: pop      esi
0x00574C1B: ret      4
0x00574C1E: int3     
0x00574C1F: int3     
0x00574C20: mov      eax, dword ptr [esp + 4]
0x00574C24: push     esi
0x00574C25: push     0
0x00574C27: push     eax
0x00574C28: push     8
0x00574C2A: mov      esi, ecx
0x00574C2C: call     0x689060
0x00574C31: add      esp, 0xc
0x00574C34: test     eax, eax
0x00574C36: je       0x574c48
0x00574C38: mov      dword ptr [eax], 0x9928f0
0x00574C3E: mov      ecx, dword ptr [esi + 4]
0x00574C41: mov      dword ptr [eax + 4], ecx
0x00574C44: pop      esi
0x00574C45: ret      4
0x00574C48: xor      eax, eax
0x00574C4A: pop      esi
0x00574C4B: ret      4
0x00574C4E: int3     
0x00574C4F: int3     
0x00574C50: mov      eax, dword ptr [esp + 4]
0x00574C54: push     esi
0x00574C55: push     0
0x00574C57: push     eax
0x00574C58: push     8
0x00574C5A: mov      esi, ecx
0x00574C5C: call     0x689060
0x00574C61: add      esp, 0xc
0x00574C64: test     eax, eax
0x00574C66: je       0x574c78
0x00574C68: mov      dword ptr [eax], 0x992904
0x00574C6E: mov      ecx, dword ptr [esi + 4]
0x00574C71: mov      dword ptr [eax + 4], ecx
0x00574C74: pop      esi
0x00574C75: ret      4
0x00574C78: xor      eax, eax
0x00574C7A: pop      esi
0x00574C7B: ret      4
0x00574C7E: int3     
0x00574C7F: int3     
0x00574C80: add      ecx, 0x40
0x00574C83: jmp      0x5156b0
0x00574C88: int3     
0x00574C89: int3     
0x00574C8A: int3     
0x00574C8B: int3     
0x00574C8C: int3     
0x00574C8D: int3     
0x00574C8E: int3     
0x00574C8F: int3     
0x00574C90: mov      ecx, dword ptr [esp + 8]
0x00574C94: add      ecx, 0x40
0x00574C97: jmp      0x5157b0
0x00574C9C: int3     
0x00574C9D: int3     
0x00574C9E: int3     
0x00574C9F: int3     
0x00574CA0: add      ecx, 0x40
0x00574CA3: jmp      0x515710
0x00574CA8: int3     
0x00574CA9: int3     
0x00574CAA: int3     
0x00574CAB: int3     
0x00574CAC: int3     
0x00574CAD: int3     
0x00574CAE: int3     
0x00574CAF: int3     
0x00574CB0: push     esi
0x00574CB1: mov      esi, ecx
0x00574CB3: mov      eax, dword ptr [esi + 4]
0x00574CB6: push     eax
0x00574CB7: lea      ecx, [esi + 0x40]
0x00574CBA: mov      dword ptr [esi + 0x3c], 1
0x00574CC1: call     0x515c50
0x00574CC6: mov      ecx, dword ptr [esi + 4]
0x00574CC9: mov      ecx, dword ptr [ecx + 0x1b4]
0x00574CCF: mov      edx, dword ptr [ecx]
0x00574CD1: mov      eax, dword ptr [edx + 0xc]
0x00574CD4: push     0
0x00574CD6: add      esi, 0xc
0x00574CD9: push     esi
0x00574CDA: call     eax
0x00574CDC: pop      esi
0x00574CDD: ret      4
0x00574CE0: push     esi
0x00574CE1: mov      esi, ecx
0x00574CE3: cmp      dword ptr [esi + 0x3c], 0
0x00574CE7: je       0x574cfd
0x00574CE9: mov      eax, dword ptr [esi + 4]
0x00574CEC: mov      ecx, dword ptr [eax + 0x1b4]
0x00574CF2: mov      edx, dword ptr [ecx]
0x00574CF4: mov      edx, dword ptr [edx + 0x10]
0x00574CF7: lea      eax, [esi + 0xc]
0x00574CFA: push     eax
0x00574CFB: call     edx
0x00574CFD: lea      ecx, [esi + 0x40]
0x00574D00: call     0x515650
0x00574D05: mov      dword ptr [esi + 0x3c], 0
0x00574D0C: pop      esi
0x00574D0D: ret      
0x00574D0E: int3     
0x00574D0F: int3     
0x00574D10: mov      ecx, dword ptr [esp + 8]
0x00574D14: add      ecx, 0x40
0x00574D17: jmp      0x515710
0x00574D1C: int3     
0x00574D1D: int3     
0x00574D1E: int3     
0x00574D1F: int3     
0x00574D20: push     esi
0x00574D21: push     edi
0x00574D22: mov      edi, ecx
0x00574D24: mov      eax, dword ptr [edi + 0xc]
0x00574D27: mov      edx, dword ptr [eax + 0x18]
0x00574D2A: push     edi
0x00574D2B: lea      esi, [edi + 0xc]
0x00574D2E: push     0x574d10
0x00574D33: push     0xb1bc00
0x00574D38: mov      ecx, esi
0x00574D3A: call     edx
0x00574D3C: mov      eax, dword ptr [esi]
0x00574D3E: mov      edx, dword ptr [eax + 0x18]
0x00574D41: push     edi
0x00574D42: push     0x574c90
0x00574D47: push     0xb49cb8
0x00574D4C: mov      ecx, esi
0x00574D4E: call     edx
0x00574D50: pop      edi
0x00574D51: pop      esi
0x00574D52: ret      
0x00574D53: int3     
0x00574D54: int3     
0x00574D55: int3     
0x00574D56: int3     
0x00574D57: int3     
0x00574D58: int3     
0x00574D59: int3     
0x00574D5A: int3     
0x00574D5B: int3     
0x00574D5C: int3     
0x00574D5D: int3     
0x00574D5E: int3     
0x00574D5F: int3     
0x00574D60: push     -1
0x00574D62: push     0x948458
0x00574D67: mov      eax, dword ptr fs:[0]
0x00574D6D: push     eax
0x00574D6E: push     ecx
0x00574D6F: push     esi
0x00574D70: mov      eax, dword ptr [0xb089c8]
0x00574D75: xor      eax, esp
0x00574D77: push     eax
0x00574D78: lea      eax, [esp + 0xc]
0x00574D7C: mov      dword ptr fs:[0], eax
0x00574D82: mov      esi, ecx
0x00574D84: mov      dword ptr [esp + 8], esi
0x00574D88: call     0x56d6f0
0x00574D8D: lea      ecx, [esi + 0x40]
0x00574D90: mov      dword ptr [esp + 0x14], 0
0x00574D98: mov      dword ptr [esi], 0x99291c
0x00574D9E: call     0x515800
0x00574DA3: mov      eax, esi
0x00574DA5: mov      ecx, dword ptr [esp + 0xc]
0x00574DA9: mov      dword ptr fs:[0], ecx
0x00574DB0: pop      ecx
0x00574DB1: pop      esi
0x00574DB2: add      esp, 0x10
0x00574DB5: ret      
0x00574DB6: int3     
0x00574DB7: int3     
0x00574DB8: int3     
0x00574DB9: int3     
0x00574DBA: int3     
0x00574DBB: int3     
0x00574DBC: int3     
0x00574DBD: int3     
0x00574DBE: int3     
0x00574DBF: int3     
0x00574DC0: push     -1
0x00574DC2: push     0x948486
0x00574DC7: mov      eax, dword ptr fs:[0]
0x00574DCD: push     eax
0x00574DCE: push     ecx
0x00574DCF: push     esi
0x00574DD0: mov      eax, dword ptr [0xb089c8]
0x00574DD5: xor      eax, esp
0x00574DD7: push     eax
0x00574DD8: lea      eax, [esp + 0xc]
0x00574DDC: mov      dword ptr fs:[0], eax
0x00574DE2: mov      esi, ecx
0x00574DE4: mov      dword ptr [esp + 8], esi
0x00574DE8: mov      dword ptr [esi], 0x99291c
0x00574DEE: mov      dword ptr [esp + 0x14], 1
0x00574DF6: call     dword ptr [0x992948] ; [u32=0x00574CE0]
0x00574DFC: xor      eax, eax
0x00574DFE: lea      ecx, [esi + 0x40]
0x00574E01: mov      dword ptr [esi + 4], eax
0x00574E04: mov      dword ptr [esi + 8], eax
0x00574E07: mov      byte ptr [esp + 0x14], al
0x00574E0B: call     0x515890
0x00574E10: mov      ecx, esi
0x00574E12: mov      dword ptr [esp + 0x14], 0xffffffff
0x00574E1A: call     0x56d750
0x00574E1F: mov      ecx, dword ptr [esp + 0xc]
0x00574E23: mov      dword ptr fs:[0], ecx
0x00574E2A: pop      ecx
0x00574E2B: pop      esi
0x00574E2C: add      esp, 0x10
0x00574E2F: ret      
0x00574E30: mov      eax, 0xb49ec4
0x00574E35: ret      
0x00574E36: int3     
0x00574E37: int3     
0x00574E38: int3     
0x00574E39: int3     
0x00574E3A: int3     
0x00574E3B: int3     
0x00574E3C: int3     
0x00574E3D: int3     
0x00574E3E: int3     
0x00574E3F: int3     
0x00574E40: push     esi
0x00574E41: mov      esi, ecx
0x00574E43: call     0x574dc0
0x00574E48: test     byte ptr [esp + 8], 1
0x00574E4D: je       0x574e58
0x00574E4F: push     esi
0x00574E50: call     0x688fb0
0x00574E55: add      esp, 4
0x00574E58: mov      eax, esi
0x00574E5A: pop      esi
0x00574E5B: ret      4
0x00574E5E: int3     
0x00574E5F: int3     
0x00574E60: ret      
0x00574E61: int3     
0x00574E62: int3     
0x00574E63: int3     
0x00574E64: int3     
0x00574E65: int3     
0x00574E66: int3     
0x00574E67: int3     
0x00574E68: int3     
0x00574E69: int3     
0x00574E6A: int3     
0x00574E6B: int3     
0x00574E6C: int3     
0x00574E6D: int3     
0x00574E6E: int3     
0x00574E6F: int3     
0x00574E70: mov      eax, dword ptr [ecx + 4]
0x00574E73: mov      dword ptr [ecx + 0x3c], 1
0x00574E7A: mov      dword ptr [ecx + 0x64], eax
0x00574E7D: ret      4
0x00574E80: mov      dword ptr [ecx + 0x3c], 0
0x00574E87: ret      
0x00574E88: int3     
0x00574E89: int3     
0x00574E8A: int3     
0x00574E8B: int3     
0x00574E8C: int3     
0x00574E8D: int3     
0x00574E8E: int3     
0x00574E8F: int3     
0x00574E90: fld      dword ptr [edx]
0x00574E92: fadd     dword ptr [ecx]
0x00574E94: fstp     dword ptr [eax]
0x00574E96: fld      dword ptr [edx + 4]
0x00574E99: fadd     dword ptr [ecx + 4]
0x00574E9C: fstp     dword ptr [eax + 4]
0x00574E9F: fld      dword ptr [edx + 8]
0x00574EA2: fadd     dword ptr [ecx + 8]
0x00574EA5: fstp     dword ptr [eax + 8]
0x00574EA8: fld      dword ptr [edx + 0xc]
0x00574EAB: fadd     dword ptr [ecx + 0xc]
0x00574EAE: fstp     dword ptr [eax + 0xc]
0x00574EB1: ret      
0x00574EB2: int3     
0x00574EB3: int3     
0x00574EB4: int3     
0x00574EB5: int3     
0x00574EB6: int3     
0x00574EB7: int3     
0x00574EB8: int3     
0x00574EB9: int3     
0x00574EBA: int3     
0x00574EBB: int3     
0x00574EBC: int3     
0x00574EBD: int3     
0x00574EBE: int3     
0x00574EBF: int3     
0x00574EC0: fld      dword ptr [edx]
0x00574EC2: fsub     dword ptr [ecx]
0x00574EC4: fstp     dword ptr [eax]
0x00574EC6: fld      dword ptr [edx + 4]
0x00574EC9: fsub     dword ptr [ecx + 4]
0x00574ECC: fstp     dword ptr [eax + 4]
0x00574ECF: fld      dword ptr [edx + 8]
0x00574ED2: fsub     dword ptr [ecx + 8]
0x00574ED5: fstp     dword ptr [eax + 8]
0x00574ED8: fld      dword ptr [edx + 0xc]
0x00574EDB: fsub     dword ptr [ecx + 0xc]
0x00574EDE: fstp     dword ptr [eax + 0xc]
0x00574EE1: ret      
0x00574EE2: int3     
0x00574EE3: int3     
0x00574EE4: int3     
0x00574EE5: int3     
0x00574EE6: int3     
0x00574EE7: int3     
0x00574EE8: int3     
0x00574EE9: int3     
0x00574EEA: int3     
0x00574EEB: int3     
0x00574EEC: int3     
0x00574EED: int3     
0x00574EEE: int3     
0x00574EEF: int3     
0x00574EF0: fld      dword ptr [ecx]
0x00574EF2: fld      dword ptr [esp + 4]
0x00574EF6: fld      st(0)
0x00574EF8: fmulp    st(2)
0x00574EFA: fxch     st(1)
0x00574EFC: fstp     dword ptr [eax]
0x00574EFE: fld      dword ptr [ecx + 4]
0x00574F01: fmul     st(1)
0x00574F03: fstp     dword ptr [eax + 4]
0x00574F06: fld      dword ptr [ecx + 8]
0x00574F09: fmul     st(1)
0x00574F0B: fstp     dword ptr [eax + 8]
0x00574F0E: fmul     dword ptr [ecx + 0xc]
0x00574F11: fstp     dword ptr [eax + 0xc]
0x00574F14: ret      
0x00574F15: int3     
0x00574F16: int3     
0x00574F17: int3     
0x00574F18: int3     
0x00574F19: int3     
0x00574F1A: int3     
0x00574F1B: int3     
0x00574F1C: int3     
0x00574F1D: int3     
0x00574F1E: int3     
0x00574F1F: int3     
0x00574F20: sub      esp, 0x38
0x00574F23: push     ebx
0x00574F24: push     ebp
0x00574F25: push     esi
0x00574F26: mov      esi, ecx
0x00574F28: mov      ecx, dword ptr [esi + 8]
0x00574F2B: movzx    eax, byte ptr [ecx + 1]
0x00574F2F: mov      ecx, dword ptr [ecx + 4]
0x00574F32: mov      edx, dword ptr [ecx + 0x1c]
0x00574F35: add      eax, eax
0x00574F37: add      eax, eax
0x00574F39: mov      edx, dword ptr [eax + edx]
0x00574F3C: push     edi
0x00574F3D: mov      bl, 8
0x00574F3F: test     edx, edx
0x00574F41: je       0x574f60
0x00574F43: mov      edi, dword ptr [ecx + 0xc]
0x00574F46: test     dword ptr [eax + edi], 0x200
0x00574F4D: je       0x574f60
0x00574F4F: test     byte ptr [edx + 8], bl
0x00574F52: je       0x574f60
0x00574F54: mov      ecx, dword ptr [ecx + 0x20]
0x00574F57: add      eax, ecx
0x00574F59: cmp      dword ptr [eax], 0
0x00574F5C: je       0x574f60
0x00574F5E: mov      edx, dword ptr [eax]
0x00574F60: add      edx, 0x1c
0x00574F63: push     edx
0x00574F64: lea      edx, [esp + 0x3c]
0x00574F68: push     edx
0x00574F69: call     0x6af8f0
0x00574F6E: mov      ecx, dword ptr [0xb76148]
0x00574F74: add      esp, 8
0x00574F77: test     byte ptr [ecx + 0x98], 0x20
0x00574F7E: mov      ebp, ecx
0x00574F80: je       0x574f93
0x00574F82: mov      eax, dword ptr [ecx]
0x00574F84: mov      edx, dword ptr [ecx + 0x50]
0x00574F87: mov      eax, dword ptr [eax + 0x20]
0x00574F8A: push     edx
0x00574F8B: call     eax
0x00574F8D: mov      ecx, dword ptr [0xb76148]
0x00574F93: mov      edx, dword ptr [esi + 8]
0x00574F96: movzx    eax, byte ptr [edx + 1]
0x00574F9A: mov      edx, dword ptr [edx + 4]
0x00574F9D: mov      edi, dword ptr [edx + 0x1c]
0x00574FA0: add      eax, eax
0x00574FA2: add      eax, eax
0x00574FA4: mov      edi, dword ptr [eax + edi]
0x00574FA7: test     edi, edi
0x00574FA9: je       0x574fcc
0x00574FAB: mov      ebx, dword ptr [edx + 0xc]
0x00574FAE: test     dword ptr [eax + ebx], 0x200
0x00574FB5: mov      bl, 8
0x00574FB7: je       0x574fcc
0x00574FB9: test     byte ptr [edi + 8], bl
0x00574FBC: je       0x574fcc
0x00574FBE: mov      edx, dword ptr [edx + 0x20]
0x00574FC1: add      eax, edx
0x00574FC3: cmp      dword ptr [eax], 0
0x00574FC6: je       0x574fcc
0x00574FC8: mov      eax, dword ptr [eax]
0x00574FCA: jmp      0x574fce
0x00574FCC: mov      eax, edi
0x00574FCE: test     byte ptr [ecx + 0x98], 0x20
0x00574FD5: fld      dword ptr [ebp + 0xc]
0x00574FD8: fsub     dword ptr [eax + 0xc]
0x00574FDB: mov      edi, ecx
0x00574FDD: fstp     dword ptr [esp + 0x28]
0x00574FE1: fld      dword ptr [ebp + 0x10]
0x00574FE4: fsub     dword ptr [eax + 0x10]
0x00574FE7: fstp     dword ptr [esp + 0x2c]
0x00574FEB: fld      dword ptr [ebp + 0x14]
0x00574FEE: mov      ebp, dword ptr [esp + 0x4c]
0x00574FF2: fsub     dword ptr [eax + 0x14]
0x00574FF5: fstp     dword ptr [esp + 0x30]
0x00574FF9: fld      dword ptr [esp + 0x28]
0x00574FFD: fmul     dword ptr [esp + 0x38]
0x00575001: fld      dword ptr [esp + 0x3c]
0x00575005: fmul     dword ptr [esp + 0x2c]
0x00575009: faddp    st(1)
0x0057500B: fld      dword ptr [esp + 0x40]
0x0057500F: fmul     dword ptr [esp + 0x30]
0x00575013: faddp    st(1)
0x00575015: fstp     dword ptr [esp + 0x10]
0x00575019: fld      dword ptr [esp + 0x10]
0x0057501D: fabs     
0x0057501F: fstp     dword ptr [esp + 0x10]
0x00575023: fld      dword ptr [esp + 0x10]
0x00575027: fstp     dword ptr [esp + 0x10]
0x0057502B: fld      dword ptr [ebp]
0x0057502E: fldz     
0x00575030: fmul     st(1), st(0)
0x00575032: fld      dword ptr [ebp + 4]
0x00575035: faddp    st(2)
0x00575037: fmul     dword ptr [ebp + 8]
0x0057503A: faddp    st(1)
0x0057503C: fstp     dword ptr [esp + 0x4c]
0x00575040: je       0x575053
0x00575042: mov      eax, dword ptr [ecx]
0x00575044: mov      edx, dword ptr [ecx + 0x50]
0x00575047: mov      eax, dword ptr [eax + 0x20]
0x0057504A: push     edx
0x0057504B: call     eax
0x0057504D: mov      ecx, dword ptr [0xb76148]
0x00575053: fld      dword ptr [edi + 0xc]
0x00575056: fstp     dword ptr [esp + 0x28]
0x0057505A: fld      dword ptr [edi + 0x10]
0x0057505D: fstp     dword ptr [esp + 0x2c]
0x00575061: fld      dword ptr [esp + 0x4c]
0x00575065: fabs     
0x00575067: fstp     dword ptr [esp + 0x14]
0x0057506B: fld      dword ptr [esp + 0x14]
0x0057506F: fcomp    dword ptr [0x9ac388] ; [f32=0.5, u32=0x3F000000]
0x00575075: fnstsw   ax
0x00575077: test     ah, 1
0x0057507A: jne      0x575170
0x00575080: fld      dword ptr [ecx + 0x70]
0x00575083: fmul     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x00575089: fmul     qword ptr [0x982fa8] ; [f64=0.0174533, u32=0xA0000000]
0x0057508F: fstp     dword ptr [esp + 0x14]
0x00575093: fld      dword ptr [esp + 0x14]
0x00575097: call     0x8ec130
0x0057509C: fstp     dword ptr [esp + 0x14]
0x005750A0: fld      dword ptr [esp + 0x14]
0x005750A4: mov      ecx, dword ptr [esi + 8]
0x005750A7: fmul     dword ptr [esp + 0x10]
0x005750AB: fstp     dword ptr [esp + 0x10]
0x005750AF: fldz     
0x005750B1: fcom     dword ptr [esp + 0x4c]
0x005750B5: fnstsw   ax
0x005750B7: test     ah, 5
0x005750BA: movzx    eax, byte ptr [ecx + 1]
0x005750BE: mov      ecx, dword ptr [ecx + 4]
0x005750C1: mov      edx, dword ptr [ecx + 0x1c]
0x005750C4: jp       0x57511b
0x005750C6: add      eax, eax
0x005750C8: add      eax, eax
0x005750CA: mov      edx, dword ptr [eax + edx]
0x005750CD: test     edx, edx
0x005750CF: je       0x5750f0
0x005750D1: mov      edi, dword ptr [ecx + 0xc]
0x005750D4: test     dword ptr [eax + edi], 0x200
0x005750DB: je       0x5750f0
0x005750DD: test     byte ptr [edx + 8], bl
0x005750E0: je       0x5750f0
0x005750E2: mov      ecx, dword ptr [ecx + 0x20]
0x005750E5: add      eax, ecx
0x005750E7: cmp      dword ptr [eax], 0
0x005750EA: je       0x5750f0
0x005750EC: mov      eax, dword ptr [eax]
0x005750EE: jmp      0x5750f2
0x005750F0: mov      eax, edx
0x005750F2: fld      dword ptr [eax + 0xc]
0x005750F5: fstp     dword ptr [esp + 0x18]
0x005750F9: fld      dword ptr [esp + 0x2c]
0x005750FD: fsub     dword ptr [esp + 0x10]
0x00575101: fsub     qword ptr [0x992950] ; [f32=0, f64=25, u32=0x00000000]
0x00575107: fstp     dword ptr [esp + 0x1c]
0x0057510B: fld      dword ptr [esp + 0x18]
0x0057510F: fstp     dword ptr [esi + 0x44]
0x00575112: fld      dword ptr [esp + 0x1c]
0x00575116: jmp      0x575257
0x0057511B: add      eax, eax
0x0057511D: add      eax, eax
0x0057511F: mov      edx, dword ptr [eax + edx]
0x00575122: test     edx, edx
0x00575124: je       0x575145
0x00575126: mov      edi, dword ptr [ecx + 0xc]
0x00575129: test     dword ptr [eax + edi], 0x200
0x00575130: je       0x575145
0x00575132: test     byte ptr [edx + 8], bl
0x00575135: je       0x575145
0x00575137: mov      ecx, dword ptr [ecx + 0x20]
0x0057513A: add      eax, ecx
0x0057513C: cmp      dword ptr [eax], 0
0x0057513F: je       0x575145
0x00575141: mov      eax, dword ptr [eax]
0x00575143: jmp      0x575147
0x00575145: mov      eax, edx
0x00575147: fld      dword ptr [eax + 0xc]
0x0057514A: fstp     dword ptr [esp + 0x18]
0x0057514E: fld      dword ptr [esp + 0x2c]
0x00575152: fadd     dword ptr [esp + 0x10]
0x00575156: fadd     qword ptr [0x992950] ; [f32=0, f64=25, u32=0x00000000]
0x0057515C: fstp     dword ptr [esp + 0x1c]
0x00575160: fld      dword ptr [esp + 0x18]
0x00575164: fstp     dword ptr [esi + 0x44]
0x00575167: fld      dword ptr [esp + 0x1c]
0x0057516B: jmp      0x575257
0x00575170: fld      dword ptr [ecx + 0x6c]
0x00575173: fmul     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x00575179: fmul     qword ptr [0x982fa8] ; [f64=0.0174533, u32=0xA0000000]
0x0057517F: fstp     dword ptr [esp + 0x4c]
0x00575183: fld      dword ptr [esp + 0x4c]
0x00575187: call     0x8ec130
0x0057518C: fstp     dword ptr [esp + 0x4c]
0x00575190: fld      dword ptr [esp + 0x4c]
0x00575194: mov      ecx, dword ptr [esi + 8]
0x00575197: fmul     dword ptr [esp + 0x10]
0x0057519B: fstp     dword ptr [esp + 0x4c]
0x0057519F: fld      dword ptr [ebp + 4]
0x005751A2: fldz     
0x005751A4: fmul     st(1), st(0)
0x005751A6: fld      dword ptr [ebp]
0x005751A9: faddp    st(2)
0x005751AB: fmul     dword ptr [ebp + 8]
0x005751AE: faddp    st(1)
0x005751B0: fstp     dword ptr [esp + 0x14]
0x005751B4: fld      dword ptr [esp + 0x14]
0x005751B8: fldz     
0x005751BA: fcom     st(1)
0x005751BC: fnstsw   ax
0x005751BE: fstp     st(1)
0x005751C0: test     ah, 5
0x005751C3: movzx    eax, byte ptr [ecx + 1]
0x005751C7: mov      ecx, dword ptr [ecx + 4]
0x005751CA: mov      edx, dword ptr [ecx + 0x1c]
0x005751CD: jp       0x57520d
0x005751CF: add      eax, eax
0x005751D1: add      eax, eax
0x005751D3: mov      edx, dword ptr [eax + edx]
0x005751D6: test     edx, edx
0x005751D8: je       0x575201
0x005751DA: mov      edi, dword ptr [ecx + 0xc]
0x005751DD: test     dword ptr [eax + edi], 0x200
0x005751E4: je       0x575201
0x005751E6: test     byte ptr [edx + 8], bl
0x005751E9: je       0x575201
0x005751EB: mov      ecx, dword ptr [ecx + 0x20]
0x005751EE: add      eax, ecx
0x005751F0: cmp      dword ptr [eax], 0
0x005751F3: je       0x575201
0x005751F5: fld      dword ptr [esp + 0x28]
0x005751F9: mov      eax, dword ptr [eax]
0x005751FB: fsub     dword ptr [esp + 0x4c]
0x005751FF: jmp      0x575241
0x00575201: fld      dword ptr [esp + 0x28]
0x00575205: mov      eax, edx
0x00575207: fsub     dword ptr [esp + 0x4c]
0x0057520B: jmp      0x575241
0x0057520D: add      eax, eax
0x0057520F: add      eax, eax
0x00575211: mov      edx, dword ptr [eax + edx]
0x00575214: test     edx, edx
0x00575216: je       0x575237
0x00575218: mov      edi, dword ptr [ecx + 0xc]
0x0057521B: test     dword ptr [eax + edi], 0x200
0x00575222: je       0x575237
0x00575224: test     byte ptr [edx + 8], bl
0x00575227: je       0x575237
0x00575229: mov      ecx, dword ptr [ecx + 0x20]
0x0057522C: add      eax, ecx
0x0057522E: cmp      dword ptr [eax], 0
0x00575231: je       0x575237
0x00575233: mov      eax, dword ptr [eax]
0x00575235: jmp      0x575239
0x00575237: mov      eax, edx
0x00575239: fld      dword ptr [esp + 0x28]
0x0057523D: fadd     dword ptr [esp + 0x4c]
0x00575241: fstp     dword ptr [esp + 0x28]
0x00575245: fld      dword ptr [eax + 0x10]
0x00575248: fstp     dword ptr [esp + 0x2c]
0x0057524C: fld      dword ptr [esp + 0x28]
0x00575250: fstp     dword ptr [esi + 0x44]
0x00575253: fld      dword ptr [esp + 0x2c]
0x00575257: fstp     dword ptr [esi + 0x48]
0x0057525A: mov      edx, dword ptr [esi + 0x64]
0x0057525D: pop      edi
0x0057525E: fstp     dword ptr [esi + 0x4c]
0x00575261: fld1     
0x00575263: fstp     dword ptr [esi + 0x50]
0x00575266: fld      dword ptr [ebp]
0x00575269: mov      eax, dword ptr [edx + 0x1e4]
0x0057526F: fstp     dword ptr [esp + 0x14]
0x00575273: fld      dword ptr [ebp + 4]
0x00575276: fstp     dword ptr [esp + 0x18]
0x0057527A: fld      dword ptr [ebp + 8]
0x0057527D: fstp     dword ptr [esp + 0x1c]
0x00575281: fld      dword ptr [ebp + 0xc]
0x00575284: fstp     dword ptr [esp + 0x20]
0x00575288: fld      dword ptr [eax + 0x64]
0x0057528B: fstp     dword ptr [esp + 0x48]
0x0057528F: fld      dword ptr [esp + 0x14]
0x00575293: fld      dword ptr [esp + 0x48]
0x00575297: fld      st(0)
0x00575299: fmulp    st(2)
0x0057529B: fxch     st(1)
0x0057529D: fstp     dword ptr [esp + 0x24]
0x005752A1: fld      dword ptr [esp + 0x18]
0x005752A5: fmul     st(1)
0x005752A7: fstp     dword ptr [esp + 0x28]
0x005752AB: fld      dword ptr [esp + 0x1c]
0x005752AF: fmul     st(1)
0x005752B1: fstp     dword ptr [esp + 0x2c]
0x005752B5: fmul     dword ptr [esp + 0x20]
0x005752B9: fstp     dword ptr [esp + 0x30]
0x005752BD: fld      dword ptr [esi + 0x44]
0x005752C0: fadd     dword ptr [esp + 0x24]
0x005752C4: fstp     dword ptr [esp + 0x14]
0x005752C8: fld      dword ptr [esi + 0x48]
0x005752CB: fadd     dword ptr [esp + 0x28]
0x005752CF: fstp     dword ptr [esp + 0x18]
0x005752D3: fld      dword ptr [esi + 0x4c]
0x005752D6: fadd     dword ptr [esp + 0x2c]
0x005752DA: fstp     dword ptr [esp + 0x1c]
0x005752DE: fld      dword ptr [esi + 0x50]
0x005752E1: fadd     dword ptr [esp + 0x30]
0x005752E5: fstp     dword ptr [esp + 0x20]
0x005752E9: fld      dword ptr [esp + 0x14]
0x005752ED: fstp     dword ptr [esi + 0x44]
0x005752F0: fld      dword ptr [esp + 0x18]
0x005752F4: fstp     dword ptr [esi + 0x48]
0x005752F7: fld      dword ptr [esp + 0x1c]
0x005752FB: fstp     dword ptr [esi + 0x4c]
0x005752FE: fld      dword ptr [esp + 0x20]
0x00575302: fstp     dword ptr [esi + 0x50]
0x00575305: pop      esi
0x00575306: pop      ebp
0x00575307: pop      ebx
0x00575308: add      esp, 0x38
0x0057530B: ret      4
0x0057530E: int3     
0x0057530F: int3     
0x00575310: push     -1
0x00575312: push     0x9484c0
0x00575317: mov      eax, dword ptr fs:[0]
0x0057531D: push     eax
0x0057531E: sub      esp, 0x40
0x00575321: push     ebx
0x00575322: push     ebp
0x00575323: push     esi
0x00575324: push     edi
0x00575325: mov      eax, dword ptr [0xb089c8]
0x0057532A: xor      eax, esp
0x0057532C: push     eax
0x0057532D: lea      eax, [esp + 0x54]
0x00575331: mov      dword ptr fs:[0], eax
0x00575337: mov      edi, ecx
0x00575339: cmp      byte ptr [esp + 0x64], 0
0x0057533E: mov      eax, dword ptr [edi + 8]
0x00575341: movzx    ecx, byte ptr [eax + 1]
0x00575345: mov      edx, dword ptr [eax + 4]
0x00575348: mov      eax, dword ptr [edx + 0x28]
0x0057534B: mov      eax, dword ptr [eax + ecx*4]
0x0057534E: mov      ebp, dword ptr [eax + 0x114]
0x00575354: mov      ebx, 0x2f
0x00575359: jne      0x57546c
0x0057535F: mov      ecx, dword ptr [0x95fc5c] ; [str="e/@@RotasticPlayerDeathTrigger"]
0x00575365: push     ebp
0x00575366: push     ecx
0x00575367: lea      ecx, [esp + 0x1c]
0x0057536B: call     0x509b10
0x00575370: lea      ecx, [esp + 0x14]
0x00575374: mov      dword ptr [esp + 0x5c], 0
0x0057537C: call     0x509ba0
0x00575381: mov      esi, eax
0x00575383: test     esi, esi
0x00575385: je       0x575413
0x0057538B: movzx    eax, byte ptr [esi + 1]
0x0057538F: lea      edx, [eax + eax*8]
0x00575392: mov      eax, dword ptr [esi + 4]
0x00575395: mov      ecx, dword ptr [eax + 0x14]
0x00575398: cmp      byte ptr [ecx + edx*4 + 0x14], bl
0x0057539C: lea      eax, [ecx + edx*4]
0x0057539F: jne      0x5753a6
0x005753A1: mov      eax, dword ptr [eax + 4]
0x005753A4: jmp      0x5753d6
0x005753A6: cmp      byte ptr [eax + 0x15], bl
0x005753A9: jne      0x5753b0
0x005753AB: mov      eax, dword ptr [eax + 8]
0x005753AE: jmp      0x5753d6
0x005753B0: cmp      byte ptr [eax + 0x16], bl
0x005753B3: jne      0x5753ba
0x005753B5: mov      eax, dword ptr [eax + 0xc]
0x005753B8: jmp      0x5753d6
0x005753BA: cmp      byte ptr [eax + 0x17], bl
0x005753BD: jne      0x5753c4
0x005753BF: mov      eax, dword ptr [eax + 0x10]
0x005753C2: jmp      0x5753d6
0x005753C4: mov      eax, dword ptr [eax]
0x005753C6: test     eax, eax
0x005753C8: je       0x5753d4
0x005753CA: push     ebx
0x005753CB: mov      ecx, eax
0x005753CD: call     0x461400
0x005753D2: jmp      0x5753d6
0x005753D4: xor      eax, eax
0x005753D6: mov      ecx, dword ptr [edi + 8]
0x005753D9: movzx    edx, byte ptr [ecx + 1]
0x005753DD: mov      ecx, dword ptr [ecx + 4]
0x005753E0: mov      ecx, dword ptr [ecx + 0x1c]
0x005753E3: mov      ecx, dword ptr [ecx + edx*4]
0x005753E6: add      ecx, 0xc
0x005753E9: push     0
0x005753EB: push     ecx
0x005753EC: mov      ecx, eax
0x005753EE: call     0x7b9400
0x005753F3: fcomp    dword ptr [0x96665c] ; [f32=0, u32=0x00000000]
0x005753F9: fnstsw   ax
0x005753FB: test     ah, 5
0x005753FE: jnp      0x575425
0x00575400: lea      ecx, [esp + 0x14]
0x00575404: call     0x509ba0
0x00575409: mov      esi, eax
0x0057540B: test     esi, esi
0x0057540D: jne      0x57538b
0x00575413: or       esi, 0xffffffff
0x00575416: lea      ecx, [esp + 0x24]
0x0057541A: mov      dword ptr [esp + 0x5c], esi
0x0057541E: call     0x509910
0x00575423: jmp      0x57546f
0x00575425: mov      eax, dword ptr [esi + 4]
0x00575428: movzx    edx, byte ptr [esi + 1]
0x0057542C: mov      ecx, dword ptr [eax + 0x1c]
0x0057542F: mov      eax, dword ptr [ecx + edx*4]
0x00575432: add      eax, 0x1c
0x00575435: push     eax
0x00575436: lea      esi, [edi + 0x54]
0x00575439: push     esi
0x0057543A: call     0x6afa50
0x0057543F: add      esp, 8
0x00575442: push     esi
0x00575443: mov      ecx, edi
0x00575445: call     0x574f20
0x0057544A: lea      ecx, [esp + 0x24]
0x0057544E: mov      dword ptr [edi + 0x40], 1
0x00575455: mov      dword ptr [esp + 0x5c], 0xffffffff
0x0057545D: call     0x509910
0x00575462: mov      eax, 1
0x00575467: jmp      0x575539
0x0057546C: or       esi, 0xffffffff
0x0057546F: mov      edx, dword ptr [0x95fc34] ; [f32=0.152478, u32=0x3E1C2338]
0x00575475: push     ebp
0x00575476: push     edx
0x00575477: lea      ecx, [esp + 0x3c]
0x0057547B: call     0x509b10
0x00575480: lea      ecx, [esp + 0x34]
0x00575484: mov      dword ptr [esp + 0x5c], 1
0x0057548C: call     0x509ba0
0x00575491: test     eax, eax
0x00575493: je       0x57552a
0x00575499: lea      esp, [esp]
0x005754A0: movzx    ecx, byte ptr [eax + 1]
0x005754A4: mov      edx, dword ptr [eax + 4]
0x005754A7: mov      eax, dword ptr [edx + 0x14]
0x005754AA: lea      ecx, [ecx + ecx*8]
0x005754AD: cmp      byte ptr [eax + ecx*4 + 0x14], bl
0x005754B1: lea      eax, [eax + ecx*4]
0x005754B4: jne      0x5754bb
0x005754B6: mov      eax, dword ptr [eax + 4]
0x005754B9: jmp      0x5754eb
0x005754BB: cmp      byte ptr [eax + 0x15], bl
0x005754BE: jne      0x5754c5
0x005754C0: mov      eax, dword ptr [eax + 8]
0x005754C3: jmp      0x5754eb
0x005754C5: cmp      byte ptr [eax + 0x16], bl
0x005754C8: jne      0x5754cf
0x005754CA: mov      eax, dword ptr [eax + 0xc]
0x005754CD: jmp      0x5754eb
0x005754CF: cmp      byte ptr [eax + 0x17], bl
0x005754D2: jne      0x5754d9
0x005754D4: mov      eax, dword ptr [eax + 0x10]
0x005754D7: jmp      0x5754eb
0x005754D9: mov      eax, dword ptr [eax]
0x005754DB: test     eax, eax
0x005754DD: je       0x5754e9
0x005754DF: push     ebx
0x005754E0: mov      ecx, eax
0x005754E2: call     0x461400
0x005754E7: jmp      0x5754eb
0x005754E9: xor      eax, eax
0x005754EB: cmp      byte ptr [eax + 0x164], 0
0x005754F2: je       0x575519
0x005754F4: mov      ecx, dword ptr [edi + 8]
0x005754F7: movzx    edx, byte ptr [ecx + 1]
0x005754FB: mov      ecx, dword ptr [ecx + 4]
0x005754FE: mov      ecx, dword ptr [ecx + 0x1c]
0x00575501: mov      ecx, dword ptr [ecx + edx*4]
0x00575504: mov      edx, dword ptr [eax]
0x00575506: add      ecx, 0xc
0x00575509: push     ecx
0x0057550A: mov      ecx, eax
0x0057550C: mov      eax, dword ptr [edx + 0xd8]
0x00575512: call     eax
0x00575514: cmp      eax, 1
0x00575517: je       0x57554f
0x00575519: lea      ecx, [esp + 0x34]
0x0057551D: call     0x509ba0
0x00575522: test     eax, eax
0x00575524: jne      0x5754a0
0x0057552A: lea      ecx, [esp + 0x44]
0x0057552E: mov      dword ptr [esp + 0x5c], esi
0x00575532: call     0x509910
0x00575537: xor      eax, eax
0x00575539: mov      ecx, dword ptr [esp + 0x54]
0x0057553D: mov      dword ptr fs:[0], ecx
0x00575544: pop      ecx
0x00575545: pop      edi
0x00575546: pop      esi
0x00575547: pop      ebp
0x00575548: pop      ebx
0x00575549: add      esp, 0x4c
0x0057554C: ret      4
0x0057554F: lea      ecx, [esp + 0x44]
0x00575553: mov      dword ptr [edi + 0x40], 0
0x0057555A: mov      dword ptr [esp + 0x5c], esi
0x0057555E: call     0x509910
0x00575563: mov      eax, 1
0x00575568: jmp      0x575539
0x0057556A: int3     
0x0057556B: int3     
0x0057556C: int3     
0x0057556D: int3     
0x0057556E: int3     
0x0057556F: int3     
0x00575570: push     -1
0x00575572: push     0x9484e3
0x00575577: mov      eax, dword ptr fs:[0]
0x0057557D: push     eax
0x0057557E: sub      esp, 0x20
0x00575581: push     ebx
0x00575582: push     ebp
0x00575583: push     esi
0x00575584: push     edi
0x00575585: mov      eax, dword ptr [0xb089c8]
0x0057558A: xor      eax, esp
0x0057558C: push     eax
0x0057558D: lea      eax, [esp + 0x34]
0x00575591: mov      dword ptr fs:[0], eax
0x00575597: mov      edi, ecx
0x00575599: mov      eax, dword ptr [edi + 8]
0x0057559C: movzx    ecx, byte ptr [eax + 1]
0x005755A0: mov      edx, dword ptr [eax + 4]
0x005755A3: mov      eax, dword ptr [edx + 0x28]
0x005755A6: mov      eax, dword ptr [eax + ecx*4]
0x005755A9: mov      eax, dword ptr [eax + 0x114]
0x005755AF: mov      ecx, dword ptr [0x95fc7c] ; [u32=0xF41769C7]
0x005755B5: push     eax
0x005755B6: push     ecx
0x005755B7: lea      ecx, [esp + 0x1c]
0x005755BB: call     0x509b10
0x005755C0: lea      ecx, [esp + 0x14]
0x005755C4: mov      dword ptr [esp + 0x3c], 0
0x005755CC: call     0x509ba0
0x005755D1: test     eax, eax
0x005755D3: je       0x5756e5
0x005755D9: mov      ebx, 0x2f
0x005755DE: mov      edi, edi
0x005755E0: movzx    ecx, byte ptr [eax + 1]
0x005755E4: mov      eax, dword ptr [eax + 4]
0x005755E7: lea      edx, [ecx + ecx*8]
0x005755EA: mov      ecx, dword ptr [eax + 0x14]
0x005755ED: cmp      byte ptr [ecx + edx*4 + 0x14], bl
0x005755F1: lea      eax, [ecx + edx*4]
0x005755F4: jne      0x5755fb
0x005755F6: mov      esi, dword ptr [eax + 4]
0x005755F9: jmp      0x57562d
0x005755FB: cmp      byte ptr [eax + 0x15], bl
0x005755FE: jne      0x575605
0x00575600: mov      esi, dword ptr [eax + 8]
0x00575603: jmp      0x57562d
0x00575605: cmp      byte ptr [eax + 0x16], bl
0x00575608: jne      0x57560f
0x0057560A: mov      esi, dword ptr [eax + 0xc]
0x0057560D: jmp      0x57562d
0x0057560F: cmp      byte ptr [eax + 0x17], bl
0x00575612: jne      0x575619
0x00575614: mov      esi, dword ptr [eax + 0x10]
0x00575617: jmp      0x57562d
0x00575619: mov      eax, dword ptr [eax]
0x0057561B: test     eax, eax
0x0057561D: je       0x57562b
0x0057561F: push     ebx
0x00575620: mov      ecx, eax
0x00575622: call     0x461400
0x00575627: mov      esi, eax
0x00575629: jmp      0x57562d
0x0057562B: xor      esi, esi
0x0057562D: cmp      byte ptr [esi + 0x180], 0
0x00575634: mov      eax, dword ptr [esi + 8]
0x00575637: movzx    edx, byte ptr [eax + 1]
0x0057563B: mov      eax, dword ptr [eax + 4]
0x0057563E: mov      ecx, dword ptr [eax + 0x38]
0x00575641: mov      eax, dword ptr [ecx + edx*4]
0x00575644: mov      eax, dword ptr [eax + 0x44]
0x00575647: je       0x5756d4
0x0057564D: mov      edx, dword ptr [edi + 0x64]
0x00575650: mov      ecx, dword ptr [edx + 0x1dc]
0x00575656: movsx    ecx, byte ptr [ecx]
0x00575659: cmp      ecx, eax
0x0057565B: jne      0x5756d4
0x0057565D: mov      eax, dword ptr [edi + 8]
0x00575660: movzx    edx, byte ptr [eax + 1]
0x00575664: mov      eax, dword ptr [eax + 4]
0x00575667: mov      ecx, dword ptr [eax + 0x1c]
0x0057566A: mov      eax, dword ptr [ecx + edx*4]
0x0057566D: mov      edx, dword ptr [esi]
0x0057566F: add      eax, 0xc
0x00575672: push     eax
0x00575673: mov      eax, dword ptr [edx + 0xd8]
0x00575679: mov      ecx, esi
0x0057567B: call     eax
0x0057567D: test     eax, eax
0x0057567F: jne      0x575718
0x00575685: mov      ecx, dword ptr [edi + 8]
0x00575688: movzx    eax, byte ptr [ecx + 1]
0x0057568C: mov      ecx, dword ptr [ecx + 4]
0x0057568F: mov      edx, dword ptr [ecx + 0x1c]
0x00575692: add      eax, eax
0x00575694: add      eax, eax
0x00575696: mov      edx, dword ptr [eax + edx]
0x00575699: test     edx, edx
0x0057569B: je       0x5756bd
0x0057569D: mov      ebp, dword ptr [ecx + 0xc]
0x005756A0: test     dword ptr [eax + ebp], 0x200
0x005756A7: je       0x5756bd
0x005756A9: test     byte ptr [edx + 8], 8
0x005756AD: je       0x5756bd
0x005756AF: mov      ecx, dword ptr [ecx + 0x20]
0x005756B2: add      eax, ecx
0x005756B4: cmp      dword ptr [eax], 0
0x005756B7: je       0x5756bd
0x005756B9: mov      eax, dword ptr [eax]
0x005756BB: jmp      0x5756bf
0x005756BD: mov      eax, edx
0x005756BF: mov      edx, dword ptr [esi]
0x005756C1: add      eax, 0xc
0x005756C4: push     eax
0x005756C5: mov      eax, dword ptr [edx + 0xd8]
0x005756CB: mov      ecx, esi
0x005756CD: call     eax
0x005756CF: cmp      eax, 1
0x005756D2: je       0x575718
0x005756D4: lea      ecx, [esp + 0x14]
0x005756D8: call     0x509ba0
0x005756DD: test     eax, eax
0x005756DF: jne      0x5755e0
0x005756E5: mov      edx, dword ptr [esp + 0x44]
0x005756E9: lea      ecx, [esp + 0x24]
0x005756ED: mov      dword ptr [edx], 0
0x005756F3: mov      dword ptr [esp + 0x3c], 0xffffffff
0x005756FB: call     0x509910
0x00575700: xor      eax, eax
0x00575702: mov      ecx, dword ptr [esp + 0x34]
0x00575706: mov      dword ptr fs:[0], ecx
0x0057570D: pop      ecx
0x0057570E: pop      edi
0x0057570F: pop      esi
0x00575710: pop      ebp
0x00575711: pop      ebx
0x00575712: add      esp, 0x2c
0x00575715: ret      4
0x00575718: mov      esi, dword ptr [esi + 8]
0x0057571B: movzx    ecx, byte ptr [esi + 1]
0x0057571F: mov      edx, dword ptr [esi + 4]
0x00575722: mov      eax, dword ptr [edx + 0x38]
0x00575725: mov      esi, dword ptr [eax + ecx*4]
0x00575728: lea      edi, [esi + 0x40]
0x0057572B: mov      ecx, edi
0x0057572D: call     0x7bfe00
0x00575732: test     eax, eax
0x00575734: je       0x57575d
0x00575736: mov      ecx, edi
0x00575738: call     0x7bfe00
0x0057573D: test     eax, eax
0x0057573F: je       0x57577a
0x00575741: movzx    eax, byte ptr [edi]
0x00575744: mov      edx, dword ptr [0xb78a28]
0x0057574A: lea      ecx, [eax + eax*2]
0x0057574D: mov      eax, dword ptr [edx + ecx*4 + 8]
0x00575751: movzx    ecx, byte ptr [edi + 1]
0x00575755: mov      edx, dword ptr [eax + 0x78]
0x00575758: mov      eax, dword ptr [edx + ecx*4]
0x0057575B: jmp      0x57577c
0x0057575D: mov      ecx, dword ptr [0xb79350]
0x00575763: test     ecx, ecx
0x00575765: je       0x57577a
0x00575767: mov      eax, dword ptr [esi + 0x3c]
0x0057576A: mov      edx, dword ptr [esi + 0x38]
0x0057576D: push     eax
0x0057576E: push     0
0x00575770: push     0
0x00575772: push     edx
0x00575773: call     0x7cd120
0x00575778: jmp      0x57577c
0x0057577A: xor      eax, eax
0x0057577C: mov      ecx, dword ptr [esp + 0x44]
0x00575780: mov      dword ptr [ecx], eax
0x00575782: lea      ecx, [esp + 0x24]
0x00575786: mov      dword ptr [esp + 0x3c], 0xffffffff
0x0057578E: call     0x509910
0x00575793: mov      eax, 1
0x00575798: jmp      0x575702
0x0057579D: int3     
0x0057579E: int3     
0x0057579F: int3     
0x005757A0: push     -1
0x005757A2: push     0x948509
0x005757A7: mov      eax, dword ptr fs:[0]
0x005757AD: push     eax
0x005757AE: sub      esp, 0xec
0x005757B4: mov      eax, dword ptr [0xb089c8]
0x005757B9: xor      eax, esp
0x005757BB: mov      dword ptr [esp + 0xe8], eax
0x005757C2: push     ebx
0x005757C3: push     esi
0x005757C4: push     edi
0x005757C5: mov      eax, dword ptr [0xb089c8]
0x005757CA: xor      eax, esp
0x005757CC: push     eax
0x005757CD: lea      eax, [esp + 0xfc]
0x005757D4: mov      dword ptr fs:[0], eax
0x005757DA: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x005757E0: mov      esi, ecx
0x005757E2: mov      eax, dword ptr [esi + 8]
0x005757E5: fstp     dword ptr [esp + 0x18]
0x005757E9: movzx    ecx, byte ptr [eax + 1]
0x005757ED: mov      edx, dword ptr [eax + 4]
0x005757F0: mov      eax, dword ptr [edx + 0x28]
0x005757F3: mov      eax, dword ptr [eax + ecx*4]
0x005757F6: mov      eax, dword ptr [eax + 0x114]
0x005757FC: mov      ecx, dword ptr [0x95ed28] ; [f32=-3.21386, u32=0xC04DAFD4]
0x00575802: push     eax
0x00575803: push     ecx
0x00575804: xor      ebx, ebx
0x00575806: lea      ecx, [esp + 0x80]
0x0057580D: mov      dword ptr [esp + 0x1c], ebx
0x00575811: call     0x509b10
0x00575816: lea      ecx, [esp + 0x78]
0x0057581A: mov      dword ptr [esp + 0x104], ebx
0x00575821: call     0x509ba0
0x00575826: mov      edi, eax
0x00575828: cmp      edi, ebx
0x0057582A: je       0x575a3d
0x00575830: movzx    eax, byte ptr [edi + 1]
0x00575834: fldz     
0x00575836: mov      ecx, dword ptr [edi + 4]
0x00575839: mov      ebx, dword ptr [ecx + 8]
0x0057583C: test     dword ptr [ebx + eax*4], 0x40000
0x00575843: mov      edx, 0x1c
0x00575848: je       0x575890
0x0057584A: mov      ecx, dword ptr [ecx + 0x14]
0x0057584D: lea      eax, [eax + eax*8]
0x00575850: cmp      byte ptr [ecx + eax*4 + 0x14], dl
0x00575854: lea      eax, [ecx + eax*4]
0x00575857: jne      0x57585e
0x00575859: mov      eax, dword ptr [eax + 4]
0x0057585C: jmp      0x575892
0x0057585E: cmp      byte ptr [eax + 0x15], dl
0x00575861: jne      0x575868
0x00575863: mov      eax, dword ptr [eax + 8]
0x00575866: jmp      0x575892
0x00575868: cmp      byte ptr [eax + 0x16], dl
0x0057586B: jne      0x575872
0x0057586D: mov      eax, dword ptr [eax + 0xc]
0x00575870: jmp      0x575892
0x00575872: cmp      byte ptr [eax + 0x17], dl
0x00575875: jne      0x57587c
0x00575877: mov      eax, dword ptr [eax + 0x10]
0x0057587A: jmp      0x575892
0x0057587C: mov      eax, dword ptr [eax]
0x0057587E: test     eax, eax
0x00575880: je       0x575890
0x00575882: push     edx
0x00575883: fstp     st(0)
0x00575885: mov      ecx, eax
0x00575887: call     0x461400
0x0057588C: fldz     
0x0057588E: jmp      0x575892
0x00575890: xor      eax, eax
0x00575892: movzx    ecx, byte ptr [edi + 1]
0x00575896: mov      edx, dword ptr [edi + 4]
0x00575899: mov      ebx, dword ptr [edx + 0xc]
0x0057589C: add      ecx, ecx
0x0057589E: add      ecx, ecx
0x005758A0: test     dword ptr [ecx + ebx], 0x200
0x005758A7: je       0x575a28
0x005758AD: mov      eax, dword ptr [eax + 0x1a8]
0x005758B3: cmp      byte ptr [eax], 0
0x005758B6: je       0x575a28
0x005758BC: fst      dword ptr [esp + 0x1c]
0x005758C0: mov      eax, dword ptr [esi + 8]
0x005758C3: fst      dword ptr [esp + 0x20]
0x005758C7: fstp     dword ptr [esp + 0x24]
0x005758CB: fld1     
0x005758CD: fstp     dword ptr [esp + 0x28]
0x005758D1: movzx    ebx, byte ptr [eax + 1]
0x005758D5: mov      eax, dword ptr [eax + 4]
0x005758D8: mov      eax, dword ptr [eax + 0x1c]
0x005758DB: mov      eax, dword ptr [eax + ebx*4]
0x005758DE: mov      edx, dword ptr [edx + 0x1c]
0x005758E1: fld      dword ptr [eax + 0xc]
0x005758E4: fstp     dword ptr [esp + 0x3c]
0x005758E8: fld      dword ptr [eax + 0x10]
0x005758EB: fstp     dword ptr [esp + 0x40]
0x005758EF: fld      dword ptr [eax + 0x14]
0x005758F2: fstp     dword ptr [esp + 0x44]
0x005758F6: fld      dword ptr [eax + 0x18]
0x005758F9: mov      eax, dword ptr [ecx + edx]
0x005758FC: fstp     dword ptr [esp + 0x48]
0x00575900: fld      dword ptr [eax + 0xc]
0x00575903: fstp     dword ptr [esp + 0x2c]
0x00575907: fld      dword ptr [eax + 0x10]
0x0057590A: fstp     dword ptr [esp + 0x30]
0x0057590E: fld      dword ptr [eax + 0x14]
0x00575911: fstp     dword ptr [esp + 0x34]
0x00575915: fld      dword ptr [eax + 0x18]
0x00575918: fstp     dword ptr [esp + 0x38]
0x0057591C: fld      dword ptr [esp + 0x2c]
0x00575920: fsub     dword ptr [esp + 0x3c]
0x00575924: fstp     dword ptr [esp + 0x4c]
0x00575928: fld      dword ptr [esp + 0x30]
0x0057592C: fsub     dword ptr [esp + 0x40]
0x00575930: fstp     dword ptr [esp + 0x50]
0x00575934: fld      dword ptr [esp + 0x34]
0x00575938: fsub     dword ptr [esp + 0x44]
0x0057593C: fstp     dword ptr [esp + 0x54]
0x00575940: fld      dword ptr [esp + 0x38]
0x00575944: fsub     dword ptr [esp + 0x48]
0x00575948: fstp     dword ptr [esp + 0x58]
0x0057594C: fld      dword ptr [esp + 0x4c]
0x00575950: fst      dword ptr [esp + 0x1c]
0x00575954: fld      dword ptr [esp + 0x50]
0x00575958: fst      dword ptr [esp + 0x20]
0x0057595C: fld      dword ptr [esp + 0x54]
0x00575960: fst      dword ptr [esp + 0x24]
0x00575964: fld      dword ptr [esp + 0x58]
0x00575968: fstp     dword ptr [esp + 0x28]
0x0057596C: fld      st(2)
0x0057596E: fmulp    st(3)
0x00575970: fld      st(1)
0x00575972: fmulp    st(2)
0x00575974: fxch     st(2)
0x00575976: faddp    st(1)
0x00575978: fld      st(1)
0x0057597A: fmulp    st(2)
0x0057597C: faddp    st(1)
0x0057597E: fstp     dword ptr [esp + 0x10]
0x00575982: fld      dword ptr [esp + 0x10]
0x00575986: call     0x8eb930
0x0057598B: fstp     dword ptr [esp + 0x10]
0x0057598F: fld      dword ptr [esp + 0x10]
0x00575993: lea      eax, [esp + 0x5c]
0x00575997: push     eax
0x00575998: fstp     dword ptr [esp + 0x14]
0x0057599C: call     0x6213c0
0x005759A1: mov      eax, dword ptr [esi + 8]
0x005759A4: movzx    ecx, byte ptr [eax + 1]
0x005759A8: mov      edx, dword ptr [eax + 4]
0x005759AB: mov      edx, dword ptr [edx + 0x34]
0x005759AE: mov      ecx, dword ptr [edx + ecx*4]
0x005759B1: mov      ecx, dword ptr [ecx + 0x74]
0x005759B4: lea      edx, [esp + 0x9c]
0x005759BB: mov      dword ptr [esp + 0x68], ecx
0x005759BF: mov      dword ptr [esp + 0x6c], 0xffaf0000
0x005759C7: mov      dword ptr [esp + 0x70], edx
0x005759CB: mov      dword ptr [esp + 0x64], 1
0x005759D3: mov      edx, dword ptr [eax + 4]
0x005759D6: movzx    ecx, byte ptr [eax + 1]
0x005759DA: mov      edx, dword ptr [edx + 0x1c]
0x005759DD: add      esp, 4
0x005759E0: mov      edx, dword ptr [edx + ecx*4]
0x005759E3: movzx    ecx, byte ptr [eax + 1]
0x005759E7: mov      eax, dword ptr [eax + 4]
0x005759EA: mov      eax, dword ptr [eax + 0x28]
0x005759ED: mov      ecx, dword ptr [eax + ecx*4]
0x005759F0: push     0
0x005759F2: push     0
0x005759F4: push     0
0x005759F6: lea      eax, [esp + 0x68]
0x005759FA: push     eax
0x005759FB: lea      eax, [esp + 0x2c]
0x005759FF: push     eax
0x00575A00: add      edx, 0xc
0x00575A03: push     edx
0x00575A04: call     0x8024c0
0x00575A09: test     eax, eax
0x00575A0B: jne      0x575a2a
0x00575A0D: fld      dword ptr [esp + 0x10]
0x00575A11: fld      dword ptr [esp + 0x18]
0x00575A15: fcomp    st(1)
0x00575A17: fnstsw   ax
0x00575A19: test     ah, 0x41
0x00575A1C: jne      0x575a28
0x00575A1E: fstp     dword ptr [esp + 0x18]
0x00575A22: mov      dword ptr [esp + 0x14], edi
0x00575A26: jmp      0x575a2a
0x00575A28: fstp     st(0)
0x00575A2A: lea      ecx, [esp + 0x78]
0x00575A2E: call     0x509ba0
0x00575A33: mov      edi, eax
0x00575A35: test     edi, edi
0x00575A37: jne      0x575830
0x00575A3D: lea      ecx, [esp + 0x88]
0x00575A44: mov      dword ptr [esp + 0x104], 0xffffffff
0x00575A4F: call     0x509910
0x00575A54: mov      eax, dword ptr [esp + 0x14]
0x00575A58: mov      ecx, dword ptr [esp + 0xfc]
0x00575A5F: mov      dword ptr fs:[0], ecx
0x00575A66: pop      ecx
0x00575A67: pop      edi
0x00575A68: pop      esi
0x00575A69: pop      ebx
0x00575A6A: mov      ecx, dword ptr [esp + 0xe8]
0x00575A71: xor      ecx, esp
0x00575A73: call     0x8eac64
0x00575A78: add      esp, 0xf8
0x00575A7E: ret      
0x00575A7F: int3     
0x00575A80: push     esi
0x00575A81: mov      esi, ecx
0x00575A83: call     0x56d6f0
0x00575A88: fldz     
0x00575A8A: mov      dword ptr [esi], 0x992958
0x00575A90: fst      dword ptr [esi + 0x44]
0x00575A93: fst      dword ptr [esi + 0x48]
0x00575A96: mov      eax, esi
0x00575A98: fst      dword ptr [esi + 0x4c]
0x00575A9B: fld1     
0x00575A9D: fst      dword ptr [esi + 0x50]
0x00575AA0: fstp     dword ptr [esi + 0x60]
0x00575AA3: fst      dword ptr [esi + 0x54]
0x00575AA6: fst      dword ptr [esi + 0x58]
0x00575AA9: fstp     dword ptr [esi + 0x5c]
0x00575AAC: pop      esi
0x00575AAD: ret      
0x00575AAE: int3     
0x00575AAF: int3     
0x00575AB0: push     -1
0x00575AB2: push     0x94853f
0x00575AB7: mov      eax, dword ptr fs:[0]
0x00575ABD: push     eax
0x00575ABE: push     ecx
0x00575ABF: push     esi
0x00575AC0: mov      eax, dword ptr [0xb089c8]
0x00575AC5: xor      eax, esp
0x00575AC7: push     eax
0x00575AC8: lea      eax, [esp + 0xc]
0x00575ACC: mov      dword ptr fs:[0], eax
0x00575AD2: mov      esi, ecx
0x00575AD4: mov      dword ptr [esp + 8], esi
0x00575AD8: mov      dword ptr [esi], 0x992958
0x00575ADE: mov      dword ptr [esp + 0x14], 0
0x00575AE6: call     dword ptr [0x992984] ; [u32=0x00574E80]
0x00575AEC: mov      ecx, esi
0x00575AEE: mov      dword ptr [esi + 4], 0
0x00575AF5: mov      dword ptr [esi + 8], 0
0x00575AFC: mov      dword ptr [esp + 0x14], 0xffffffff
0x00575B04: call     0x56d750
0x00575B09: mov      ecx, dword ptr [esp + 0xc]
0x00575B0D: mov      dword ptr fs:[0], ecx
0x00575B14: pop      ecx
0x00575B15: pop      esi
0x00575B16: add      esp, 0x10
0x00575B19: ret      
0x00575B1A: int3     
0x00575B1B: int3     
0x00575B1C: int3     
0x00575B1D: int3     
0x00575B1E: int3     
0x00575B1F: int3     
0x00575B20: mov      eax, 0xb49ecc
0x00575B25: ret      
0x00575B26: int3     
0x00575B27: int3     
0x00575B28: int3     
0x00575B29: int3     
0x00575B2A: int3     
0x00575B2B: int3     
0x00575B2C: int3     
0x00575B2D: int3     
0x00575B2E: int3     
0x00575B2F: int3     
0x00575B30: push     esi
0x00575B31: mov      esi, ecx
0x00575B33: call     0x575ab0
0x00575B38: test     byte ptr [esp + 8], 1
0x00575B3D: je       0x575b48
0x00575B3F: push     esi
0x00575B40: call     0x688fb0
0x00575B45: add      esp, 4
0x00575B48: mov      eax, esi
0x00575B4A: pop      esi
0x00575B4B: ret      4
0x00575B4E: int3     
0x00575B4F: int3     
0x00575B50: mov      eax, dword ptr [ecx + 0xd0]
0x00575B56: mov      edx, eax
0x00575B58: sub      edx, ecx
0x00575B5A: sub      edx, 0x4c
0x00575B5D: and      edx, 0xfffffffc
0x00575B60: cmp      edx, 0x40
0x00575B63: jge      0x575b72
0x00575B65: mov      edx, dword ptr [esp + 4]
0x00575B69: mov      dword ptr [eax], edx
0x00575B6B: add      dword ptr [ecx + 0xd0], 4
0x00575B72: ret      4
0x00575B75: int3     
0x00575B76: int3     
0x00575B77: int3     
0x00575B78: int3     
0x00575B79: int3     
0x00575B7A: int3     
0x00575B7B: int3     
0x00575B7C: int3     
0x00575B7D: int3     
0x00575B7E: int3     
0x00575B7F: int3     
0x00575B80: fldz     
0x00575B82: mov      edx, dword ptr [esp + 4]
0x00575B86: fld      st(0)
0x00575B88: fcomp    dword ptr [edx + 0xc]
0x00575B8B: fnstsw   ax
0x00575B8D: test     ah, 0x44
0x00575B90: jp       0x575bb5
0x00575B92: fcomp    dword ptr [edx + 0x10]
0x00575B95: fnstsw   ax
0x00575B97: test     ah, 0x44
0x00575B9A: jp       0x575bb7
0x00575B9C: mov      ecx, dword ptr [ecx + 0x40]
0x00575B9F: cmp      dword ptr [ecx + 0xd74], 0
0x00575BA6: jne      0x575bad
0x00575BA8: call     0x5409f0
0x00575BAD: mov      eax, 1
0x00575BB2: ret      4
0x00575BB5: fstp     st(0)
0x00575BB7: mov      eax, dword ptr [edx + 0x48]
0x00575BBA: cmp      byte ptr [eax], 0
0x00575BBD: jne      0x575b9c
0x00575BBF: xor      eax, eax
0x00575BC1: ret      4
0x00575BC4: int3     
0x00575BC5: int3     
0x00575BC6: int3     
0x00575BC7: int3     
0x00575BC8: int3     
0x00575BC9: int3     
0x00575BCA: int3     
0x00575BCB: int3     
0x00575BCC: int3     
0x00575BCD: int3     
0x00575BCE: int3     
0x00575BCF: int3     
0x00575BD0: mov      eax, ecx
0x00575BD2: mov      ecx, dword ptr [eax + 4]
0x00575BD5: mov      dword ptr [eax + 0x3c], 1
0x00575BDC: mov      dword ptr [eax + 0x40], ecx
0x00575BDF: mov      ecx, dword ptr [ecx + 0x1b4]
0x00575BE5: mov      edx, dword ptr [ecx]
0x00575BE7: add      eax, 0xc
0x00575BEA: push     0
0x00575BEC: push     eax
0x00575BED: mov      eax, dword ptr [edx + 0xc]
0x00575BF0: call     eax
0x00575BF2: ret      4
0x00575BF5: int3     
0x00575BF6: int3     
0x00575BF7: int3     
0x00575BF8: int3     
0x00575BF9: int3     
0x00575BFA: int3     
0x00575BFB: int3     
0x00575BFC: int3     
0x00575BFD: int3     
0x00575BFE: int3     
0x00575BFF: int3     
0x00575C00: push     esi
0x00575C01: mov      esi, ecx
0x00575C03: cmp      dword ptr [esi + 0x3c], 0
0x00575C07: je       0x575c1d
0x00575C09: mov      eax, dword ptr [esi + 4]
0x00575C0C: mov      ecx, dword ptr [eax + 0x1b4]
0x00575C12: mov      edx, dword ptr [ecx]
0x00575C14: mov      edx, dword ptr [edx + 0x10]
0x00575C17: lea      eax, [esi + 0xc]
0x00575C1A: push     eax
0x00575C1B: call     edx
0x00575C1D: mov      dword ptr [esi + 0x3c], 0
0x00575C24: pop      esi
0x00575C25: ret      
0x00575C26: int3     
0x00575C27: int3     
0x00575C28: int3     
0x00575C29: int3     
0x00575C2A: int3     
0x00575C2B: int3     
0x00575C2C: int3     
0x00575C2D: int3     
0x00575C2E: int3     
0x00575C2F: int3     
0x00575C30: sub      esp, 0x28
0x00575C33: mov      eax, dword ptr [ecx + 0x40]
0x00575C36: fldz     
0x00575C38: cmp      dword ptr [eax + 0x238], 0
0x00575C3F: push     ebp
0x00575C40: mov      ebp, 1
0x00575C45: push     edi
0x00575C46: mov      edi, dword ptr [esp + 0x38]
0x00575C4A: mov      dword ptr [esp + 8], ebp
0x00575C4E: mov      dword ptr [esp + 0xc], eax
0x00575C52: je       0x575c97
0x00575C54: mov      eax, dword ptr [edi + 8]
0x00575C57: mov      eax, dword ptr [eax + 0x11c]
0x00575C5D: test     eax, eax
0x00575C5F: je       0x575c97
0x00575C61: movzx    edx, byte ptr [eax + 1]
0x00575C65: mov      eax, dword ptr [eax + 4]
0x00575C68: mov      eax, dword ptr [eax + 0x38]
0x00575C6B: mov      eax, dword ptr [eax + edx*4]
0x00575C6E: mov      edx, dword ptr [eax + 0x28]
0x00575C71: cmp      edx, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x00575C77: je       0x575c81
0x00575C79: cmp      edx, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x00575C7F: jne      0x575c97
0x00575C81: cmp      byte ptr [eax + 0x3a], 0
0x00575C85: jne      0x575c97
0x00575C87: fcom     dword ptr [eax + 0x44]
0x00575C8A: fnstsw   ax
0x00575C8C: test     ah, 5
0x00575C8F: jp       0x575c97
0x00575C91: xor      ebp, ebp
0x00575C93: mov      dword ptr [esp + 8], ebp
0x00575C97: mov      eax, dword ptr [ecx + 8]
0x00575C9A: movzx    edx, byte ptr [eax + 1]
0x00575C9E: push     ebx
0x00575C9F: push     esi
0x00575CA0: mov      esi, dword ptr [eax + 4]
0x00575CA3: mov      esi, dword ptr [esi + 0x34]
0x00575CA6: mov      edx, dword ptr [esi + edx*4]
0x00575CA9: mov      edx, dword ptr [edx + 0x98]
0x00575CAF: mov      edx, dword ptr [edx + 0x40]
0x00575CB2: mov      edx, dword ptr [edx + 4]
0x00575CB5: mov      esi, dword ptr [eax + 4]
0x00575CB8: mov      esi, dword ptr [esi + 0x1c]
0x00575CBB: fld      dword ptr [edx + 0x10]
0x00575CBE: movzx    edx, byte ptr [eax + 1]
0x00575CC2: fstp     dword ptr [esp + 0x40]
0x00575CC6: mov      ebx, dword ptr [esi + edx*4]
0x00575CC9: movzx    edx, byte ptr [eax + 1]
0x00575CCD: mov      eax, dword ptr [eax + 4]
0x00575CD0: mov      esi, dword ptr [eax + 0x1c]
0x00575CD3: add      edx, edx
0x00575CD5: add      edx, edx
0x00575CD7: mov      esi, dword ptr [edx + esi]
0x00575CDA: test     esi, esi
0x00575CDC: je       0x575d06
0x00575CDE: mov      ebp, dword ptr [eax + 0xc]
0x00575CE1: test     dword ptr [edx + ebp], 0x200
0x00575CE8: je       0x575d02
0x00575CEA: test     byte ptr [esi + 8], 8
0x00575CEE: je       0x575d02
0x00575CF0: mov      eax, dword ptr [eax + 0x20]
0x00575CF3: add      eax, edx
0x00575CF5: cmp      dword ptr [eax], 0
0x00575CF8: je       0x575d02
0x00575CFA: mov      eax, dword ptr [eax]
0x00575CFC: mov      ebp, dword ptr [esp + 0x10]
0x00575D00: jmp      0x575d08
0x00575D02: mov      ebp, dword ptr [esp + 0x10]
0x00575D06: mov      eax, esi
0x00575D08: fld      dword ptr [eax + 0xc]
0x00575D0B: fsub     dword ptr [ebx + 0xc]
0x00575D0E: fstp     dword ptr [esp + 0x28]
0x00575D12: fld      dword ptr [eax + 0x10]
0x00575D15: fsub     dword ptr [ebx + 0x10]
0x00575D18: fstp     dword ptr [esp + 0x2c]
0x00575D1C: fld      dword ptr [esp + 0x40]
0x00575D20: fmul     qword ptr [0x992990] ; [f32=-0, f64=0.99, u32=0x80000000]
0x00575D26: fstp     dword ptr [esp + 0x40]
0x00575D2A: fcom     dword ptr [esp + 0x28]
0x00575D2E: fnstsw   ax
0x00575D30: fld      dword ptr [esp + 0x40]
0x00575D34: test     ah, 0x41
0x00575D37: jp       0x575d3f
0x00575D39: fst      dword ptr [esp + 0x18]
0x00575D3D: jmp      0x575d47
0x00575D3F: fld      st(0)
0x00575D41: fchs     
0x00575D43: fstp     dword ptr [esp + 0x18]
0x00575D47: fxch     st(1)
0x00575D49: fcom     dword ptr [esp + 0x2c]
0x00575D4D: fnstsw   ax
0x00575D4F: fxch     st(1)
0x00575D51: test     ah, 0x41
0x00575D54: jnp      0x575d58
0x00575D56: fchs     
0x00575D58: mov      ecx, dword ptr [ecx + 8]
0x00575D5B: fstp     dword ptr [esp + 0x1c]
0x00575D5F: movzx    eax, byte ptr [ecx + 1]
0x00575D63: mov      ecx, dword ptr [ecx + 4]
0x00575D66: mov      edx, dword ptr [ecx + 0x1c]
0x00575D69: add      eax, eax
0x00575D6B: add      eax, eax
0x00575D6D: mov      edx, dword ptr [eax + edx]
0x00575D70: test     edx, edx
0x00575D72: je       0x575d92
0x00575D74: mov      esi, dword ptr [ecx + 0xc]
0x00575D77: test     dword ptr [eax + esi], 0x200
0x00575D7E: je       0x575d92
0x00575D80: test     byte ptr [edx + 8], 8
0x00575D84: je       0x575d92
0x00575D86: mov      ecx, dword ptr [ecx + 0x20]
0x00575D89: add      eax, ecx
0x00575D8B: cmp      dword ptr [eax], 0
0x00575D8E: je       0x575d92
0x00575D90: mov      edx, dword ptr [eax]
0x00575D92: fld      dword ptr [edx + 0xc]
0x00575D95: pop      esi
0x00575D96: fadd     dword ptr [esp + 0x14]
0x00575D9A: pop      ebx
0x00575D9B: fstp     dword ptr [esp + 0x10]
0x00575D9F: fld      dword ptr [edx + 0x10]
0x00575DA2: fadd     dword ptr [esp + 0x14]
0x00575DA6: fstp     dword ptr [esp + 0x14]
0x00575DAA: fld      dword ptr [edx + 0x14]
0x00575DAD: fadd     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00575DB3: fstp     dword ptr [esp + 0x18]
0x00575DB7: fld      dword ptr [esp + 0x10]
0x00575DBB: fsub     dword ptr [edi + 0x1c]
0x00575DBE: fstp     dword ptr [esp + 0x10]
0x00575DC2: fld      dword ptr [esp + 0x14]
0x00575DC6: fsub     dword ptr [edi + 0x20]
0x00575DC9: fstp     dword ptr [esp + 0x14]
0x00575DCD: fld      dword ptr [esp + 0x18]
0x00575DD1: fsub     dword ptr [edi + 0x24]
0x00575DD4: fstp     dword ptr [esp + 0x18]
0x00575DD8: fld      dword ptr [edi + 0x10]
0x00575DDB: fmul     dword ptr [esp + 0x14]
0x00575DDF: fld      dword ptr [edi + 0xc]
0x00575DE2: fmul     dword ptr [esp + 0x10]
0x00575DE6: faddp    st(1)
0x00575DE8: fld      dword ptr [edi + 0x14]
0x00575DEB: fmul     dword ptr [esp + 0x18]
0x00575DEF: faddp    st(1)
0x00575DF1: fstp     dword ptr [esp + 0x38]
0x00575DF5: fld      dword ptr [esp + 0x38]
0x00575DF9: fcom     st(1)
0x00575DFB: fnstsw   ax
0x00575DFD: fstp     st(1)
0x00575DFF: test     ah, 5
0x00575E02: jp       0x575e24
0x00575E04: fchs     
0x00575E06: fstp     dword ptr [esp + 0x38]
0x00575E0A: test     ebp, ebp
0x00575E0C: je       0x575e2d
0x00575E0E: mov      edx, dword ptr [esp + 0xc]
0x00575E12: fld      dword ptr [edx + 0xc54]
0x00575E18: fld      dword ptr [esp + 0x38]
0x00575E1C: fld      st(0)
0x00575E1E: fmulp    st(2)
0x00575E20: faddp    st(1)
0x00575E22: jmp      0x575e29
0x00575E24: fstp     st(0)
0x00575E26: fld      dword ptr [edi + 0x3c]
0x00575E29: fstp     dword ptr [esp + 0x38]
0x00575E2D: fld      dword ptr [edi + 0xc]
0x00575E30: mov      eax, dword ptr [esp + 0x34]
0x00575E34: fld      dword ptr [esp + 0x38]
0x00575E38: fld      st(0)
0x00575E3A: fmulp    st(2)
0x00575E3C: fxch     st(1)
0x00575E3E: fstp     dword ptr [eax]
0x00575E40: fld      dword ptr [edi + 0x10]
0x00575E43: fmul     st(1)
0x00575E45: fstp     dword ptr [eax + 4]
0x00575E48: fmul     dword ptr [edi + 0x14]
0x00575E4B: pop      edi
0x00575E4C: fstp     dword ptr [eax + 8]
0x00575E4F: mov      eax, ebp
0x00575E51: pop      ebp
0x00575E52: add      esp, 0x28
0x00575E55: ret      8
0x00575E58: int3     
0x00575E59: int3     
0x00575E5A: int3     
0x00575E5B: int3     
0x00575E5C: int3     
0x00575E5D: int3     
0x00575E5E: int3     
0x00575E5F: int3     
0x00575E60: sub      esp, 0x58
0x00575E63: push     ebx
0x00575E64: push     ebp
0x00575E65: mov      ebp, ecx
0x00575E67: mov      ecx, dword ptr [ebp + 0x40]
0x00575E6A: fld      dword ptr [ecx + 0x290]
0x00575E70: push     esi
0x00575E71: push     edi
0x00575E72: mov      edi, dword ptr [esp + 0x70]
0x00575E76: fmul     dword ptr [edi + 0x10]
0x00575E79: mov      dword ptr [esp + 0x10], ebp
0x00575E7D: fld      dword ptr [ecx + 0x28c]
0x00575E83: fmul     dword ptr [edi + 0xc]
0x00575E86: faddp    st(1)
0x00575E88: fld      dword ptr [ecx + 0x294]
0x00575E8E: fmul     dword ptr [edi + 0x14]
0x00575E91: faddp    st(1)
0x00575E93: fstp     dword ptr [esp + 0x70]
0x00575E97: fld      dword ptr [esp + 0x70]
0x00575E9B: mov      dword ptr [esp + 0x70], 1
0x00575EA3: fldz     
0x00575EA5: fcom     st(1)
0x00575EA7: fnstsw   ax
0x00575EA9: fstp     st(1)
0x00575EAB: test     ah, 0x41
0x00575EAE: je       0x575eb8
0x00575EB0: mov      dword ptr [esp + 0x70], 0
0x00575EB8: mov      ecx, dword ptr [ecx + 0x23c]
0x00575EBE: fst      dword ptr [esp + 0x28]
0x00575EC2: xor      eax, eax
0x00575EC4: fstp     dword ptr [esp + 0x38]
0x00575EC8: mov      dword ptr [esp + 0x2c], eax
0x00575ECC: mov      dword ptr [esp + 0x30], eax
0x00575ED0: mov      dword ptr [esp + 0x34], eax
0x00575ED4: mov      dword ptr [esp + 0x3c], eax
0x00575ED8: mov      dword ptr [esp + 0x40], eax
0x00575EDC: mov      dword ptr [esp + 0x44], eax
0x00575EE0: movzx    eax, byte ptr [ecx + 1]
0x00575EE4: mov      edx, dword ptr [ecx + 4]
0x00575EE7: mov      edx, dword ptr [edx + 0x1c]
0x00575EEA: mov      eax, dword ptr [edx + eax*4]
0x00575EED: test     eax, eax
0x00575EEF: je       0x575f1c
0x00575EF1: movzx    edx, byte ptr [ecx + 1]
0x00575EF5: mov      ecx, dword ptr [ecx + 4]
0x00575EF8: mov      esi, dword ptr [ecx + 0xc]
0x00575EFB: add      edx, edx
0x00575EFD: add      edx, edx
0x00575EFF: test     dword ptr [edx + esi], 0x200
0x00575F06: je       0x575f1c
0x00575F08: test     byte ptr [eax + 8], 8
0x00575F0C: je       0x575f1c
0x00575F0E: mov      ecx, dword ptr [ecx + 0x20]
0x00575F11: add      ecx, edx
0x00575F13: cmp      dword ptr [ecx], 0
0x00575F16: je       0x575f1c
0x00575F18: mov      ecx, dword ptr [ecx]
0x00575F1A: jmp      0x575f1e
0x00575F1C: mov      ecx, eax
0x00575F1E: fld      dword ptr [ecx + 0xc]
0x00575F21: lea      edx, [esp + 0x28]
0x00575F25: fsub     dword ptr [eax + 0xc]
0x00575F28: push     edx
0x00575F29: fstp     dword ptr [esp + 0x2c]
0x00575F2D: fld      dword ptr [ecx + 0x10]
0x00575F30: fsub     dword ptr [eax + 0x10]
0x00575F33: fstp     dword ptr [esp + 0x30]
0x00575F37: fld      dword ptr [ecx + 0x14]
0x00575F3A: fsub     dword ptr [eax + 0x14]
0x00575F3D: lea      eax, [esp + 0x3c]
0x00575F41: push     eax
0x00575F42: fstp     dword ptr [esp + 0x38]
0x00575F46: call     0x6b2160
0x00575F4B: xor      eax, eax
0x00575F4D: fstp     st(0)
0x00575F4F: fldz     
0x00575F51: mov      dword ptr [esp + 0x24], eax
0x00575F55: mov      dword ptr [esp + 0x28], eax
0x00575F59: fst      dword ptr [esp + 0x20]
0x00575F5D: mov      dword ptr [esp + 0x2c], eax
0x00575F61: mov      eax, dword ptr [ebp + 8]
0x00575F64: movzx    ecx, byte ptr [eax + 1]
0x00575F68: mov      edx, dword ptr [eax + 4]
0x00575F6B: mov      edx, dword ptr [edx + 0x1c]
0x00575F6E: mov      esi, dword ptr [edx + ecx*4]
0x00575F71: movzx    ecx, byte ptr [eax + 1]
0x00575F75: mov      eax, dword ptr [eax + 4]
0x00575F78: mov      edx, dword ptr [eax + 0x1c]
0x00575F7B: add      ecx, ecx
0x00575F7D: add      ecx, ecx
0x00575F7F: mov      edx, dword ptr [ecx + edx]
0x00575F82: add      esp, 8
0x00575F85: test     edx, edx
0x00575F87: je       0x575fa7
0x00575F89: mov      ebx, dword ptr [eax + 0xc]
0x00575F8C: test     dword ptr [ecx + ebx], 0x200
0x00575F93: je       0x575fa7
0x00575F95: test     byte ptr [edx + 8], 8
0x00575F99: je       0x575fa7
0x00575F9B: mov      eax, dword ptr [eax + 0x20]
0x00575F9E: add      eax, ecx
0x00575FA0: cmp      dword ptr [eax], 0
0x00575FA3: je       0x575fa7
0x00575FA5: mov      edx, dword ptr [eax]
0x00575FA7: fld      dword ptr [edx + 0xc]
0x00575FAA: fsub     dword ptr [esi + 0xc]
0x00575FAD: fstp     dword ptr [esp + 0x18]
0x00575FB1: fld      dword ptr [edx + 0x10]
0x00575FB4: fsub     dword ptr [esi + 0x10]
0x00575FB7: fstp     dword ptr [esp + 0x1c]
0x00575FBB: fld      dword ptr [edx + 0x14]
0x00575FBE: fsub     dword ptr [esi + 0x14]
0x00575FC1: fstp     dword ptr [esp + 0x20]
0x00575FC5: fld      dword ptr [esp + 0x18]
0x00575FC9: fld      st(0)
0x00575FCB: fld      dword ptr [esp + 0x28]
0x00575FCF: fld      st(0)
0x00575FD1: fsubp    st(2)
0x00575FD3: fxch     st(1)
0x00575FD5: fstp     dword ptr [esp + 0x48]
0x00575FD9: fld      dword ptr [esp + 0x1c]
0x00575FDD: fld      dword ptr [esp + 0x2c]
0x00575FE1: fld      st(0)
0x00575FE3: fsubp    st(2)
0x00575FE5: fxch     st(1)
0x00575FE7: fstp     dword ptr [esp + 0x4c]
0x00575FEB: fld      dword ptr [esp + 0x20]
0x00575FEF: fld      dword ptr [esp + 0x30]
0x00575FF3: fld      st(0)
0x00575FF5: fsubp    st(2)
0x00575FF7: fxch     st(1)
0x00575FF9: fstp     dword ptr [esp + 0x50]
0x00575FFD: fld      dword ptr [edi + 0x10]
0x00576000: fmul     dword ptr [esp + 0x4c]
0x00576004: fld      dword ptr [edi + 0xc]
0x00576007: fmul     dword ptr [esp + 0x48]
0x0057600B: faddp    st(1)
0x0057600D: fld      dword ptr [edi + 0x14]
0x00576010: fmul     dword ptr [esp + 0x50]
0x00576014: faddp    st(1)
0x00576016: fstp     dword ptr [esp + 0x14]
0x0057601A: fld      dword ptr [esp + 0x14]
0x0057601E: fcom     st(5)
0x00576020: fnstsw   ax
0x00576022: test     ah, 1
0x00576025: jne      0x57611e
0x0057602B: mov      ecx, dword ptr [edi + 8]
0x0057602E: mov      eax, dword ptr [ecx + 0x11c]
0x00576034: movzx    edx, byte ptr [eax + 1]
0x00576038: mov      ecx, dword ptr [eax + 4]
0x0057603B: mov      ecx, dword ptr [ecx + 0x1c]
0x0057603E: mov      edx, dword ptr [ecx + edx*4]
0x00576041: test     edx, edx
0x00576043: je       0x576070
0x00576045: movzx    ecx, byte ptr [eax + 1]
0x00576049: mov      eax, dword ptr [eax + 4]
0x0057604C: mov      esi, dword ptr [eax + 0xc]
0x0057604F: add      ecx, ecx
0x00576051: add      ecx, ecx
0x00576053: test     dword ptr [ecx + esi], 0x200
0x0057605A: je       0x576070
0x0057605C: test     byte ptr [edx + 8], 8
0x00576060: je       0x576070
0x00576062: mov      eax, dword ptr [eax + 0x20]
0x00576065: add      eax, ecx
0x00576067: cmp      dword ptr [eax], 0
0x0057606A: je       0x576070
0x0057606C: mov      eax, dword ptr [eax]
0x0057606E: jmp      0x576072
0x00576070: mov      eax, edx
0x00576072: fld      dword ptr [eax + 0xc]
0x00576075: fsub     dword ptr [edx + 0xc]
0x00576078: fstp     dword ptr [esp + 0x58]
0x0057607C: fld      dword ptr [eax + 0x10]
0x0057607F: fsub     dword ptr [edx + 0x10]
0x00576082: fstp     dword ptr [esp + 0x5c]
0x00576086: fld      st(5)
0x00576088: fcomp    dword ptr [esp + 0x58]
0x0057608C: fnstsw   ax
0x0057608E: test     ah, 0x44
0x00576091: jp       0x5760ce
0x00576093: fld      st(5)
0x00576095: fcomp    dword ptr [esp + 0x5c]
0x00576099: fnstsw   ax
0x0057609B: test     ah, 0x44
0x0057609E: jp       0x5760ce
0x005760A0: fld      st(5)
0x005760A2: fucomp   st(4)
0x005760A4: fnstsw   ax
0x005760A6: test     ah, 0x44
0x005760A9: jp       0x5760e4
0x005760AB: fld      st(5)
0x005760AD: fucomp   st(3)
0x005760AF: fnstsw   ax
0x005760B1: test     ah, 0x44
0x005760B4: jp       0x5760ce
0x005760B6: fstp     st(4)
0x005760B8: fxch     st(3)
0x005760BA: fchs     
0x005760BC: fsub     qword ptr [0x9929a8] ; [f64=0.0001, u32=0xE0000000]
0x005760C2: fstp     dword ptr [esp + 0x14]
0x005760C6: fld      dword ptr [esp + 0x14]
0x005760CA: fxch     st(3)
0x005760CC: jmp      0x576120
0x005760CE: fld      st(5)
0x005760D0: fucomp   st(4)
0x005760D2: fnstsw   ax
0x005760D4: test     ah, 0x44
0x005760D7: jp       0x5760e4
0x005760D9: fld      st(5)
0x005760DB: fucomp   st(3)
0x005760DD: fnstsw   ax
0x005760DF: test     ah, 0x44
0x005760E2: jnp      0x57611e
0x005760E4: fld      dword ptr [edi + 0x10]
0x005760E7: fmul     dword ptr [esp + 0x1c]
0x005760EB: fld      dword ptr [edi + 0xc]
0x005760EE: fmulp    st(6)
0x005760F0: faddp    st(5)
0x005760F2: fld      dword ptr [edi + 0x14]
0x005760F5: fmul     dword ptr [esp + 0x20]
0x005760F9: faddp    st(5)
0x005760FB: fxch     st(4)
0x005760FD: fstp     dword ptr [esp + 0x14]
0x00576101: fld      dword ptr [esp + 0x14]
0x00576105: fcomp    st(5)
0x00576107: fnstsw   ax
0x00576109: test     ah, 5
0x0057610C: jp       0x576120
0x0057610E: fxch     st(3)
0x00576110: fchs     
0x00576112: fstp     dword ptr [esp + 0x14]
0x00576116: fld      dword ptr [esp + 0x14]
0x0057611A: fxch     st(3)
0x0057611C: jmp      0x576120
0x0057611E: fstp     st(4)
0x00576120: fxch     st(3)
0x00576122: fcom     st(4)
0x00576124: fnstsw   ax
0x00576126: test     ah, 5
0x00576129: jp       0x576224
0x0057612F: fstp     st(0)
0x00576131: fstp     st(3)
0x00576133: fld      st(2)
0x00576135: fmulp    st(3)
0x00576137: fmul     st(0), st(0)
0x00576139: faddp    st(2)
0x0057613B: fmul     st(0), st(0)
0x0057613D: faddp    st(1)
0x0057613F: fstp     dword ptr [esp + 0x14]
0x00576143: fld      dword ptr [esp + 0x14]
0x00576147: call     0x8eb930
0x0057614C: fstp     dword ptr [esp + 0x14]
0x00576150: fld      dword ptr [esp + 0x14]
0x00576154: fstp     dword ptr [esp + 0x10]
0x00576158: fld      dword ptr [edi + 0x3c]
0x0057615B: fld      dword ptr [esp + 0x10]
0x0057615F: fld      st(0)
0x00576161: fsubp    st(2)
0x00576163: fxch     st(1)
0x00576165: fstp     dword ptr [esp + 0x14]
0x00576169: fldz     
0x0057616B: fld      dword ptr [esp + 0x14]
0x0057616F: fcom     st(1)
0x00576171: fnstsw   ax
0x00576173: test     ah, 5
0x00576176: jp       0x576186
0x00576178: faddp    st(2)
0x0057617A: fxch     st(1)
0x0057617C: fstp     dword ptr [esp + 0x10]
0x00576180: fstp     dword ptr [esp + 0x14]
0x00576184: jmp      0x57618c
0x00576186: fstp     st(0)
0x00576188: fstp     st(1)
0x0057618A: fstp     st(0)
0x0057618C: lea      ecx, [esp + 0x18]
0x00576190: push     ecx
0x00576191: mov      edx, ecx
0x00576193: push     edx
0x00576194: call     0x6b2160
0x00576199: fstp     st(0)
0x0057619B: fld      dword ptr [esp + 0x1c]
0x0057619F: mov      eax, dword ptr [ebp + 0x40]
0x005761A2: fld      st(0)
0x005761A4: add      esp, 8
0x005761A7: fchs     
0x005761A9: pop      edi
0x005761AA: fld      dword ptr [eax + 0xc54]
0x005761B0: mov      eax, dword ptr [esp + 0x68]
0x005761B4: fmulp    st(2)
0x005761B6: pop      esi
0x005761B7: pop      ebp
0x005761B8: pop      ebx
0x005761B9: fsubrp   st(1)
0x005761BB: fstp     dword ptr [esp + 4]
0x005761BF: fld      dword ptr [esp]
0x005761C2: fchs     
0x005761C4: fstp     dword ptr [esp]
0x005761C7: fld      dword ptr [esp + 4]
0x005761CB: fld      st(0)
0x005761CD: fmul     dword ptr [esp + 8]
0x005761D1: fstp     dword ptr [esp + 4]
0x005761D5: fld      dword ptr [esp + 4]
0x005761D9: fld      dword ptr [esp]
0x005761DC: fld      st(0)
0x005761DE: fmul     dword ptr [esp + 0x28]
0x005761E2: faddp    st(2)
0x005761E4: fxch     st(1)
0x005761E6: fstp     dword ptr [eax]
0x005761E8: fld      dword ptr [esp + 0xc]
0x005761EC: fmul     st(2)
0x005761EE: fstp     dword ptr [esp + 0x5c]
0x005761F2: fld      dword ptr [esp + 0x5c]
0x005761F6: fld      dword ptr [esp + 0x2c]
0x005761FA: fmul     st(2)
0x005761FC: faddp    st(1)
0x005761FE: fstp     dword ptr [eax + 4]
0x00576201: fld      dword ptr [esp + 0x10]
0x00576205: fmulp    st(2)
0x00576207: fxch     st(1)
0x00576209: fstp     dword ptr [esp + 0x5c]
0x0057620D: fld      dword ptr [esp + 0x30]
0x00576211: fmulp    st(1)
0x00576213: fadd     dword ptr [esp + 0x5c]
0x00576217: fstp     dword ptr [eax + 8]
0x0057621A: mov      eax, dword ptr [esp + 0x60]
0x0057621E: add      esp, 0x58
0x00576221: ret      8
0x00576224: fstp     st(1)
0x00576226: fstp     st(1)
0x00576228: fstp     st(1)
0x0057622A: fcomp    st(1)
0x0057622C: fnstsw   ax
0x0057622E: test     ah, 1
0x00576231: jne      0x57655d
0x00576237: fld      dword ptr [edi + 0x3c]
0x0057623A: mov      esi, dword ptr [esp + 0x6c]
0x0057623E: mov      ebx, dword ptr [ebp + 8]
0x00576241: fstp     dword ptr [esp + 0x14]
0x00576245: fld      dword ptr [esp + 0x14]
0x00576249: fld      st(0)
0x0057624B: fmul     dword ptr [edi + 0xc]
0x0057624E: fstp     dword ptr [esi]
0x00576250: fld      dword ptr [edi + 0x10]
0x00576253: fmul     st(1)
0x00576255: fstp     dword ptr [esi + 4]
0x00576258: fmul     dword ptr [edi + 0x14]
0x0057625B: fstp     dword ptr [esi + 8]
0x0057625E: movzx    eax, byte ptr [ebx + 1]
0x00576262: mov      ecx, dword ptr [ebx + 4]
0x00576265: mov      edx, dword ptr [ecx + 0x1c]
0x00576268: add      eax, eax
0x0057626A: add      eax, eax
0x0057626C: mov      edx, dword ptr [eax + edx]
0x0057626F: test     edx, edx
0x00576271: je       0x57629b
0x00576273: mov      ebp, dword ptr [ecx + 0xc]
0x00576276: test     dword ptr [eax + ebp], 0x200
0x0057627D: je       0x576297
0x0057627F: test     byte ptr [edx + 8], 8
0x00576283: je       0x576297
0x00576285: mov      ecx, dword ptr [ecx + 0x20]
0x00576288: mov      ebp, dword ptr [esp + 0x10]
0x0057628C: add      eax, ecx
0x0057628E: cmp      dword ptr [eax], 0
0x00576291: je       0x57629b
0x00576293: mov      edx, dword ptr [eax]
0x00576295: jmp      0x57629b
0x00576297: mov      ebp, dword ptr [esp + 0x10]
0x0057629B: fld      dword ptr [edx + 0xc]
0x0057629E: fadd     dword ptr [esi]
0x005762A0: fstp     dword ptr [esi]
0x005762A2: fld      dword ptr [edx + 0x10]
0x005762A5: fadd     dword ptr [esi + 4]
0x005762A8: fstp     dword ptr [esi + 4]
0x005762AB: fld      dword ptr [edx + 0x14]
0x005762AE: fadd     dword ptr [esi + 8]
0x005762B1: fstp     dword ptr [esi + 8]
0x005762B4: fld      dword ptr [edi + 0x10]
0x005762B7: fmul     dword ptr [esp + 0x48]
0x005762BB: fld      dword ptr [esp + 0x4c]
0x005762BF: fmul     dword ptr [edi + 0xc]
0x005762C2: fsubp    st(1)
0x005762C4: fstp     dword ptr [esp + 0x6c]
0x005762C8: fld      dword ptr [esp + 0x6c]
0x005762CC: fcomp    st(1)
0x005762CE: fnstsw   ax
0x005762D0: fld      dword ptr [edi + 0x10]
0x005762D3: test     ah, 1
0x005762D6: jne      0x5762e3
0x005762D8: fchs     
0x005762DA: fstp     dword ptr [esp + 0x48]
0x005762DE: fld      dword ptr [edi + 0xc]
0x005762E1: jmp      0x5762ec
0x005762E3: fstp     dword ptr [esp + 0x48]
0x005762E7: fld      dword ptr [edi + 0xc]
0x005762EA: fchs     
0x005762EC: mov      edi, dword ptr [ebp + 0x40]
0x005762EF: fstp     dword ptr [esp + 0x4c]
0x005762F3: fld      dword ptr [edi + 0xc38]
0x005762F9: mov      ecx, dword ptr [edi + 0x23c]
0x005762FF: fmul     qword ptr [0x9929a0] ; [f64=2.2, u32=0xA0000000]
0x00576305: movzx    eax, byte ptr [ecx + 1]
0x00576309: mov      ecx, dword ptr [ecx + 4]
0x0057630C: mov      edx, dword ptr [ecx + 0x1c]
0x0057630F: fstp     dword ptr [esp + 0x6c]
0x00576313: add      eax, eax
0x00576315: fld      dword ptr [esp + 0x6c]
0x00576319: add      eax, eax
0x0057631B: fld      st(0)
0x0057631D: mov      edx, dword ptr [eax + edx]
0x00576320: fmul     dword ptr [esp + 0x48]
0x00576324: fadd     dword ptr [esi]
0x00576326: fstp     dword ptr [esp + 0x58]
0x0057632A: fmul     dword ptr [esp + 0x4c]
0x0057632E: fadd     dword ptr [esi + 4]
0x00576331: fstp     dword ptr [esp + 0x5c]
0x00576335: fld      dword ptr [esp + 0x58]
0x00576339: fsub     dword ptr [esi]
0x0057633B: fstp     dword ptr [esp + 0x48]
0x0057633F: fld      dword ptr [esp + 0x5c]
0x00576343: fsub     dword ptr [esi + 4]
0x00576346: fstp     dword ptr [esp + 0x4c]
0x0057634A: test     edx, edx
0x0057634C: je       0x576376
0x0057634E: mov      ebp, dword ptr [ecx + 0xc]
0x00576351: test     dword ptr [eax + ebp], 0x200
0x00576358: je       0x576372
0x0057635A: test     byte ptr [edx + 8], 8
0x0057635E: je       0x576372
0x00576360: mov      ecx, dword ptr [ecx + 0x20]
0x00576363: mov      ebp, dword ptr [esp + 0x10]
0x00576367: add      eax, ecx
0x00576369: cmp      dword ptr [eax], 0
0x0057636C: je       0x576376
0x0057636E: mov      edx, dword ptr [eax]
0x00576370: jmp      0x576376
0x00576372: mov      ebp, dword ptr [esp + 0x10]
0x00576376: fld      dword ptr [edx + 0xc]
0x00576379: fsub     dword ptr [esi]
0x0057637B: fstp     dword ptr [esp + 0x58]
0x0057637F: fld      dword ptr [edx + 0x10]
0x00576382: mov      edx, dword ptr [ebp + 0x40]
0x00576385: fsub     dword ptr [esi + 4]
0x00576388: fstp     dword ptr [esp + 0x5c]
0x0057638C: fld      dword ptr [esp + 0x4c]
0x00576390: fld      st(0)
0x00576392: fld      dword ptr [esp + 0x48]
0x00576396: fld      st(0)
0x00576398: fmul     st(0), st(0)
0x0057639A: fld      st(2)
0x0057639C: fmulp    st(3)
0x0057639E: faddp    st(2)
0x005763A0: fxch     st(1)
0x005763A2: fstp     dword ptr [esp + 0x6c]
0x005763A6: fld      dword ptr [esp + 0x5c]
0x005763AA: fld      st(0)
0x005763AC: fmulp    st(3)
0x005763AE: fld      dword ptr [esp + 0x58]
0x005763B2: fld      st(0)
0x005763B4: fmulp    st(3)
0x005763B6: fxch     st(3)
0x005763B8: faddp    st(2)
0x005763BA: fxch     st(1)
0x005763BC: fadd     st(0), st(0)
0x005763BE: fstp     dword ptr [esp + 0x14]
0x005763C2: fld      dword ptr [esp + 0x14]
0x005763C6: fld      dword ptr [edx + 0xc38]
0x005763CC: fld      st(1)
0x005763CE: fmulp    st(2)
0x005763D0: fld      st(3)
0x005763D2: fmulp    st(4)
0x005763D4: fld      st(2)
0x005763D6: fmulp    st(3)
0x005763D8: fxch     st(3)
0x005763DA: faddp    st(2)
0x005763DC: fld      st(2)
0x005763DE: fmulp    st(3)
0x005763E0: fxch     st(1)
0x005763E2: fsubrp   st(2)
0x005763E4: fxch     st(1)
0x005763E6: fstp     dword ptr [esp + 0x10]
0x005763EA: fld      dword ptr [esp + 0x10]
0x005763EE: fld      dword ptr [esp + 0x6c]
0x005763F2: fmul     qword ptr [0x992998] ; [f32=0, f64=4, u32=0x00000000]
0x005763F8: fmulp    st(1)
0x005763FA: fsubp    st(1)
0x005763FC: fstp     dword ptr [esp + 0x10]
0x00576400: fld      dword ptr [esp + 0x10]
0x00576404: fcom     st(1)
0x00576406: fnstsw   ax
0x00576408: fstp     st(1)
0x0057640A: test     ah, 5
0x0057640D: jnp      0x5764f7
0x00576413: call     0x8eb930
0x00576418: fstp     dword ptr [esp + 0x10]
0x0057641C: fld      dword ptr [esp + 0x10]
0x00576420: fstp     dword ptr [esp + 0x10]
0x00576424: fld      dword ptr [esp + 0x6c]
0x00576428: fadd     st(0), st(0)
0x0057642A: fld1     
0x0057642C: fdivrp   st(1)
0x0057642E: fstp     dword ptr [esp + 0x6c]
0x00576432: fld      dword ptr [esp + 0x14]
0x00576436: fld      st(0)
0x00576438: fchs     
0x0057643A: fld      dword ptr [esp + 0x10]
0x0057643E: fld      st(0)
0x00576440: fsubp    st(2)
0x00576442: fld      dword ptr [esp + 0x6c]
0x00576446: fld      st(0)
0x00576448: fmulp    st(3)
0x0057644A: fxch     st(2)
0x0057644C: fstp     dword ptr [esp + 0x6c]
0x00576450: fsubrp   st(2)
0x00576452: fmulp    st(1)
0x00576454: fstp     dword ptr [esp + 0x14]
0x00576458: fldz     
0x0057645A: fld      dword ptr [esp + 0x6c]
0x0057645E: fcom     st(1)
0x00576460: fnstsw   ax
0x00576462: fld1     
0x00576464: test     ah, 1
0x00576467: jne      0x576476
0x00576469: fcom     st(1)
0x0057646B: fnstsw   ax
0x0057646D: test     ah, 1
0x00576470: jne      0x576476
0x00576472: fxch     st(1)
0x00576474: jmp      0x57647c
0x00576476: fstp     st(1)
0x00576478: fld      dword ptr [esp + 0x14]
0x0057647C: fstp     dword ptr [esp + 0x6c]
0x00576480: fld      dword ptr [esp + 0x6c]
0x00576484: fcom     st(2)
0x00576486: fnstsw   ax
0x00576488: fstp     st(2)
0x0057648A: test     ah, 5
0x0057648D: jnp      0x5764f5
0x0057648F: fcomp    st(1)
0x00576491: fnstsw   ax
0x00576493: test     ah, 5
0x00576496: jnp      0x5764f7
0x00576498: fld      dword ptr [esi]
0x0057649A: push     0
0x0057649C: fld      st(1)
0x0057649E: mov      ecx, ebx
0x005764A0: fmul     dword ptr [esp + 0x4c]
0x005764A4: fsubp    st(1)
0x005764A6: fstp     dword ptr [esp + 0x70]
0x005764AA: fld      dword ptr [esp + 0x70]
0x005764AE: fstp     dword ptr [esi]
0x005764B0: fld      dword ptr [esp + 0x50]
0x005764B4: fmulp    st(1)
0x005764B6: fsubr    dword ptr [esi + 4]
0x005764B9: fstp     dword ptr [esp + 0x18]
0x005764BD: fld      dword ptr [esp + 0x18]
0x005764C1: fstp     dword ptr [esi + 4]
0x005764C4: call     0x506d40
0x005764C9: fld      dword ptr [esp + 0x6c]
0x005764CD: add      eax, 0xc
0x005764D0: fsub     dword ptr [eax]
0x005764D2: pop      edi
0x005764D3: fstp     dword ptr [esi]
0x005764D5: fld      dword ptr [esp + 0x10]
0x005764D9: fsub     dword ptr [eax + 4]
0x005764DC: fstp     dword ptr [esi + 4]
0x005764DF: fld      dword ptr [esi + 8]
0x005764E2: fsub     dword ptr [eax + 8]
0x005764E5: mov      eax, dword ptr [esp + 0x6c]
0x005764E9: fstp     dword ptr [esi + 8]
0x005764EC: pop      esi
0x005764ED: pop      ebp
0x005764EE: pop      ebx
0x005764EF: add      esp, 0x58
0x005764F2: ret      8
0x005764F5: fstp     st(1)
0x005764F7: mov      ecx, edi
0x005764F9: fstp     st(0)
0x005764FB: call     0x540520
0x00576500: mov      ecx, dword ptr [ebp + 8]
0x00576503: movzx    eax, byte ptr [ecx + 1]
0x00576507: mov      ecx, dword ptr [ecx + 4]
0x0057650A: mov      edx, dword ptr [ecx + 0x1c]
0x0057650D: add      eax, eax
0x0057650F: add      eax, eax
0x00576511: mov      edx, dword ptr [eax + edx]
0x00576514: test     edx, edx
0x00576516: je       0x576536
0x00576518: mov      edi, dword ptr [ecx + 0xc]
0x0057651B: test     dword ptr [eax + edi], 0x200
0x00576522: je       0x576536
0x00576524: test     byte ptr [edx + 8], 8
0x00576528: je       0x576536
0x0057652A: mov      ecx, dword ptr [ecx + 0x20]
0x0057652D: add      eax, ecx
0x0057652F: cmp      dword ptr [eax], 0
0x00576532: je       0x576536
0x00576534: mov      edx, dword ptr [eax]
0x00576536: fld      dword ptr [esi]
0x00576538: mov      eax, dword ptr [esp + 0x70]
0x0057653C: fsub     dword ptr [edx + 0xc]
0x0057653F: pop      edi
0x00576540: fstp     dword ptr [esi]
0x00576542: fld      dword ptr [esi + 4]
0x00576545: fsub     dword ptr [edx + 0x10]
0x00576548: fstp     dword ptr [esi + 4]
0x0057654B: fld      dword ptr [esi + 8]
0x0057654E: fsub     dword ptr [edx + 0x14]
0x00576551: fstp     dword ptr [esi + 8]
0x00576554: pop      esi
0x00576555: pop      ebp
0x00576556: pop      ebx
0x00576557: add      esp, 0x58
0x0057655A: ret      8
0x0057655D: mov      eax, dword ptr [esp + 0x70]
0x00576561: fstp     st(0)
0x00576563: pop      edi
0x00576564: pop      esi
0x00576565: pop      ebp
0x00576566: pop      ebx
0x00576567: add      esp, 0x58
0x0057656A: ret      8
0x0057656D: int3     
0x0057656E: int3     
0x0057656F: int3     
0x00576570: fldz     
0x00576572: push     esi
0x00576573: mov      esi, ecx
0x00576575: mov      ecx, dword ptr [esi + 0x40]
0x00576578: mov      edx, dword ptr [ecx + 0x204]
0x0057657E: push     edi
0x0057657F: xor      edi, edi
0x00576581: test     edx, edx
0x00576583: je       0x576597
0x00576585: fcom     dword ptr [ecx + 0x230]
0x0057658B: fnstsw   ax
0x0057658D: test     ah, 5
0x00576590: jp       0x5765cb
0x00576592: mov      edi, 1
0x00576597: fstp     st(0)
0x00576599: push     edi
0x0057659A: call     0x5405d0
0x0057659F: fldz     
0x005765A1: mov      eax, dword ptr [esi + 0x40]
0x005765A4: fst      dword ptr [eax + 0x210]
0x005765AA: fst      dword ptr [eax + 0x214]
0x005765B0: pop      edi
0x005765B1: fstp     dword ptr [eax + 0x218]
0x005765B7: pop      esi
0x005765B8: fld1     
0x005765BA: fstp     dword ptr [eax + 0x21c]
0x005765C0: mov      dword ptr [eax + 0x234], 0
0x005765CA: ret      
0x005765CB: test     edx, edx
0x005765CD: je       0x576597
0x005765CF: fcomp    dword ptr [ecx + 0x230]
0x005765D5: fnstsw   ax
0x005765D7: test     ah, 0x44
0x005765DA: jp       0x576599
0x005765DC: mov      edi, 2
0x005765E1: jmp      0x576599
0x005765E3: int3     
0x005765E4: int3     
0x005765E5: int3     
0x005765E6: int3     
0x005765E7: int3     
0x005765E8: int3     
0x005765E9: int3     
0x005765EA: int3     
0x005765EB: int3     
0x005765EC: int3     
0x005765ED: int3     
0x005765EE: int3     
0x005765EF: int3     
0x005765F0: push     ecx
0x005765F1: fldz     
0x005765F3: push     esi
0x005765F4: mov      esi, ecx
0x005765F6: mov      ecx, dword ptr [esi + 0x40]
0x005765F9: push     edi
0x005765FA: mov      edi, dword ptr [ecx + 0x204]
0x00576600: xor      edx, edx
0x00576602: test     edi, edi
0x00576604: je       0x57661c
0x00576606: fcom     dword ptr [ecx + 0x230]
0x0057660C: fnstsw   ax
0x0057660E: test     ah, 5
0x00576611: jp       0x5766ca
0x00576617: mov      edx, 1
0x0057661C: fstp     st(0)
0x0057661E: push     edx
0x0057661F: call     0x5405d0
0x00576624: mov      eax, dword ptr [esi + 8]
0x00576627: movzx    ecx, byte ptr [eax + 1]
0x0057662B: mov      edx, dword ptr [eax + 4]
0x0057662E: mov      edx, dword ptr [edx + 0x34]
0x00576631: mov      ecx, dword ptr [edx + ecx*4]
0x00576634: mov      edx, dword ptr [ecx + 0x98]
0x0057663A: mov      ecx, dword ptr [edx + 0x40]
0x0057663D: mov      edx, dword ptr [ecx + 4]
0x00576640: mov      ecx, dword ptr [esi + 0x40]
0x00576643: fld      dword ptr [edx + 0x10]
0x00576646: mov      edx, dword ptr [ecx + 0x1e4]
0x0057664C: movzx    ecx, byte ptr [eax + 1]
0x00576650: fstp     dword ptr [esp + 8]
0x00576654: fld      dword ptr [esp + 8]
0x00576658: fld      dword ptr [edx + 0x70]
0x0057665B: mov      eax, dword ptr [eax + 4]
0x0057665E: mov      edx, dword ptr [eax + 0x1c]
0x00576661: fmul     st(1)
0x00576663: add      ecx, ecx
0x00576665: add      ecx, ecx
0x00576667: mov      edx, dword ptr [ecx + edx]
0x0057666A: fsubp    st(1)
0x0057666C: fmul     qword ptr [0x980f90] ; [f64=1.1, u32=0xA0000000]
0x00576672: fstp     dword ptr [esp + 8]
0x00576676: test     edx, edx
0x00576678: je       0x576698
0x0057667A: mov      esi, dword ptr [eax + 0xc]
0x0057667D: test     dword ptr [ecx + esi], 0x200
0x00576684: je       0x576698
0x00576686: test     byte ptr [edx + 8], 8
0x0057668A: je       0x576698
0x0057668C: mov      eax, dword ptr [eax + 0x20]
0x0057668F: add      eax, ecx
0x00576691: cmp      dword ptr [eax], 0
0x00576694: je       0x576698
0x00576696: mov      edx, dword ptr [eax]
0x00576698: mov      eax, dword ptr [esp + 0x10]
0x0057669C: fld      dword ptr [eax]
0x0057669E: pop      edi
0x0057669F: fld      dword ptr [esp + 4]
0x005766A3: pop      esi
0x005766A4: fld      st(0)
0x005766A6: fmulp    st(2)
0x005766A8: fld      dword ptr [edx + 0xc]
0x005766AB: faddp    st(2)
0x005766AD: fxch     st(1)
0x005766AF: fstp     dword ptr [edx + 0xc]
0x005766B2: fld      dword ptr [eax + 4]
0x005766B5: fmul     st(1)
0x005766B7: fadd     dword ptr [edx + 0x10]
0x005766BA: fstp     dword ptr [edx + 0x10]
0x005766BD: fmul     dword ptr [eax + 8]
0x005766C0: fadd     dword ptr [edx + 0x14]
0x005766C3: fstp     dword ptr [edx + 0x14]
0x005766C6: pop      ecx
0x005766C7: ret      4
0x005766CA: test     edi, edi
0x005766CC: je       0x57661c
0x005766D2: fcomp    dword ptr [ecx + 0x230]
0x005766D8: fnstsw   ax
0x005766DA: test     ah, 0x44
0x005766DD: jp       0x57661e
0x005766E3: mov      edx, 2
0x005766E8: jmp      0x57661e
0x005766ED: int3     
0x005766EE: int3     
0x005766EF: int3     
0x005766F0: sub      esp, 0x14
0x005766F3: push     ebx
0x005766F4: push     esi
0x005766F5: mov      esi, ecx
0x005766F7: mov      ecx, dword ptr [esi + 8]
0x005766FA: movzx    eax, byte ptr [ecx + 1]
0x005766FE: mov      edx, dword ptr [ecx + 4]
0x00576701: add      eax, eax
0x00576703: push     edi
0x00576704: mov      edi, dword ptr [edx + 0x1c]
0x00576707: add      eax, eax
0x00576709: mov      edi, dword ptr [eax + edi]
0x0057670C: test     edi, edi
0x0057670E: je       0x57672e
0x00576710: mov      ebx, dword ptr [edx + 0xc]
0x00576713: test     dword ptr [eax + ebx], 0x200
0x0057671A: je       0x57672e
0x0057671C: test     byte ptr [edi + 8], 8
0x00576720: je       0x57672e
0x00576722: mov      edx, dword ptr [edx + 0x20]
0x00576725: add      eax, edx
0x00576727: cmp      dword ptr [eax], 0
0x0057672A: je       0x57672e
0x0057672C: mov      edi, dword ptr [eax]
0x0057672E: fld      dword ptr [esi + 0x44]
0x00576731: mov      eax, dword ptr [esi + 0x40]
0x00576734: fadd     dword ptr [edi + 0xc]
0x00576737: fstp     dword ptr [esp + 0x10]
0x0057673B: fld      dword ptr [esi + 0x48]
0x0057673E: fadd     dword ptr [edi + 0x10]
0x00576741: fstp     dword ptr [esp + 0x14]
0x00576745: fldz     
0x00576747: fst      dword ptr [eax + 0x298]
0x0057674D: fst      dword ptr [eax + 0x294]
0x00576753: movzx    eax, byte ptr [ecx + 1]
0x00576757: mov      edx, dword ptr [ecx + 4]
0x0057675A: mov      edx, dword ptr [edx + 0x40]
0x0057675D: mov      eax, dword ptr [edx + eax*4]
0x00576760: test     eax, eax
0x00576762: je       0x57687d
0x00576768: cmp      dword ptr [eax + 0x14], 0
0x0057676C: je       0x57687d
0x00576772: mov      eax, dword ptr [esi + 0x40]
0x00576775: fstp     st(0)
0x00576777: mov      eax, dword ptr [eax + 8]
0x0057677A: movzx    edx, byte ptr [eax + 1]
0x0057677E: mov      eax, dword ptr [eax + 4]
0x00576781: mov      eax, dword ptr [eax + 0x40]
0x00576784: mov      edx, dword ptr [eax + edx*4]
0x00576787: mov      edi, dword ptr [edx + 0x14]
0x0057678A: call     0x7f9590
0x0057678F: mov      ecx, dword ptr [esi + 0x40]
0x00576792: fld      dword ptr [ecx + 0x224]
0x00576798: fmul     dword ptr [esi + 0x48]
0x0057679B: fld      dword ptr [ecx + 0x220]
0x005767A1: fmul     dword ptr [esi + 0x44]
0x005767A4: faddp    st(1)
0x005767A6: fld      dword ptr [ecx + 0x228]
0x005767AC: fmul     dword ptr [esi + 0x4c]
0x005767AF: faddp    st(1)
0x005767B1: fstp     dword ptr [esp + 0xc]
0x005767B5: fldz     
0x005767B7: fld      dword ptr [esp + 0xc]
0x005767BB: fcom     st(1)
0x005767BD: fnstsw   ax
0x005767BF: test     ah, 5
0x005767C2: jp       0x576833
0x005767C4: fld      dword ptr [ecx + 0x220]
0x005767CA: fmul     st(1)
0x005767CC: fstp     dword ptr [esi + 0x44]
0x005767CF: fld      dword ptr [ecx + 0x224]
0x005767D5: fmul     st(1)
0x005767D7: fstp     dword ptr [esi + 0x48]
0x005767DA: fmul     dword ptr [ecx + 0x228]
0x005767E0: mov      ecx, dword ptr [esi + 8]
0x005767E3: fstp     dword ptr [esi + 0x4c]
0x005767E6: movzx    eax, byte ptr [ecx + 1]
0x005767EA: mov      ecx, dword ptr [ecx + 4]
0x005767ED: mov      edx, dword ptr [ecx + 0x1c]
0x005767F0: add      eax, eax
0x005767F2: add      eax, eax
0x005767F4: mov      edx, dword ptr [eax + edx]
0x005767F7: test     edx, edx
0x005767F9: je       0x57681b
0x005767FB: mov      ebx, dword ptr [ecx + 0xc]
0x005767FE: test     dword ptr [eax + ebx], 0x200
0x00576805: je       0x57681b
0x00576807: test     byte ptr [edx + 8], 8
0x0057680B: je       0x57681b
0x0057680D: mov      ecx, dword ptr [ecx + 0x20]
0x00576810: add      eax, ecx
0x00576812: cmp      dword ptr [eax], 0
0x00576815: je       0x57681b
0x00576817: mov      eax, dword ptr [eax]
0x00576819: jmp      0x57681d
0x0057681B: mov      eax, edx
0x0057681D: fld      dword ptr [esi + 0x44]
0x00576820: fadd     dword ptr [eax + 0xc]
0x00576823: fstp     dword ptr [esp + 0x10]
0x00576827: fld      dword ptr [esi + 0x48]
0x0057682A: fadd     dword ptr [eax + 0x10]
0x0057682D: fstp     dword ptr [esp + 0x14]
0x00576831: jmp      0x576835
0x00576833: fstp     st(0)
0x00576835: mov      eax, dword ptr [esi + 8]
0x00576838: fld      dword ptr [esp + 0x10]
0x0057683C: movzx    edx, byte ptr [eax + 1]
0x00576840: mov      eax, dword ptr [eax + 4]
0x00576843: mov      ecx, dword ptr [eax + 0x1c]
0x00576846: mov      eax, dword ptr [ecx + edx*4]
0x00576849: mov      edx, 0x800
0x0057684E: fstp     dword ptr [eax + 0xc]
0x00576851: fld      dword ptr [esp + 0x14]
0x00576855: fstp     dword ptr [eax + 0x10]
0x00576858: fstp     dword ptr [eax + 0x14]
0x0057685B: or       word ptr [eax + 8], dx
0x0057685F: test     edi, edi
0x00576861: je       0x5768ce
0x00576863: mov      ecx, dword ptr [esi + 8]
0x00576866: push     0
0x00576868: push     0
0x0057686A: push     9
0x0057686C: push     0
0x0057686E: push     edi
0x0057686F: call     0x7f8e80
0x00576874: pop      edi
0x00576875: pop      esi
0x00576876: pop      ebx
0x00576877: add      esp, 0x14
0x0057687A: ret      4
0x0057687D: movzx    eax, byte ptr [ecx + 1]
0x00576881: mov      ecx, dword ptr [ecx + 4]
0x00576884: mov      edx, dword ptr [ecx + 0x1c]
0x00576887: add      eax, eax
0x00576889: add      eax, eax
0x0057688B: mov      edx, dword ptr [eax + edx]
0x0057688E: test     edx, edx
0x00576890: je       0x5768b2
0x00576892: mov      esi, dword ptr [ecx + 0xc]
0x00576895: test     dword ptr [eax + esi], 0x200
0x0057689C: je       0x5768b2
0x0057689E: test     byte ptr [edx + 8], 8
0x005768A2: je       0x5768b2
0x005768A4: mov      ecx, dword ptr [ecx + 0x20]
0x005768A7: add      eax, ecx
0x005768A9: cmp      dword ptr [eax], 0
0x005768AC: je       0x5768b2
0x005768AE: mov      eax, dword ptr [eax]
0x005768B0: jmp      0x5768b4
0x005768B2: mov      eax, edx
0x005768B4: fld      dword ptr [esp + 0x10]
0x005768B8: mov      edx, 0x800
0x005768BD: fstp     dword ptr [eax + 0xc]
0x005768C0: fld      dword ptr [esp + 0x14]
0x005768C4: fstp     dword ptr [eax + 0x10]
0x005768C7: fstp     dword ptr [eax + 0x14]
0x005768CA: or       word ptr [eax + 8], dx
0x005768CE: pop      edi
0x005768CF: pop      esi
0x005768D0: pop      ebx
0x005768D1: add      esp, 0x14
0x005768D4: ret      4
0x005768D7: int3     
0x005768D8: int3     
0x005768D9: int3     
0x005768DA: int3     
0x005768DB: int3     
0x005768DC: int3     
0x005768DD: int3     
0x005768DE: int3     
0x005768DF: int3     
0x005768E0: fld      dword ptr [edx]
0x005768E2: fadd     dword ptr [ecx]
0x005768E4: fstp     dword ptr [eax]
0x005768E6: fld      dword ptr [edx + 4]
0x005768E9: fadd     dword ptr [ecx + 4]
0x005768EC: fstp     dword ptr [eax + 4]
0x005768EF: fld      dword ptr [edx + 8]
0x005768F2: fadd     dword ptr [ecx + 8]
0x005768F5: fstp     dword ptr [eax + 8]
0x005768F8: fld      dword ptr [edx + 0xc]
0x005768FB: fadd     dword ptr [ecx + 0xc]
0x005768FE: fstp     dword ptr [eax + 0xc]
0x00576901: ret      
0x00576902: int3     
0x00576903: int3     
0x00576904: int3     
0x00576905: int3     
0x00576906: int3     
0x00576907: int3     
0x00576908: int3     
0x00576909: int3     
0x0057690A: int3     
0x0057690B: int3     
0x0057690C: int3     
0x0057690D: int3     
0x0057690E: int3     
0x0057690F: int3     
0x00576910: fld      dword ptr [edx]
0x00576912: fsub     dword ptr [ecx]
0x00576914: fstp     dword ptr [eax]
0x00576916: fld      dword ptr [edx + 4]
0x00576919: fsub     dword ptr [ecx + 4]
0x0057691C: fstp     dword ptr [eax + 4]
0x0057691F: fld      dword ptr [edx + 8]
0x00576922: fsub     dword ptr [ecx + 8]
0x00576925: fstp     dword ptr [eax + 8]
0x00576928: fld      dword ptr [edx + 0xc]
0x0057692B: fsub     dword ptr [ecx + 0xc]
0x0057692E: fstp     dword ptr [eax + 0xc]
0x00576931: ret      
0x00576932: int3     
0x00576933: int3     
0x00576934: int3     
0x00576935: int3     
0x00576936: int3     
0x00576937: int3     
0x00576938: int3     
0x00576939: int3     
0x0057693A: int3     
0x0057693B: int3     
0x0057693C: int3     
0x0057693D: int3     
0x0057693E: int3     
0x0057693F: int3     
0x00576940: fld      dword ptr [ecx]
0x00576942: fld      dword ptr [esp + 4]
0x00576946: fld      st(0)
0x00576948: fmulp    st(2)
0x0057694A: fxch     st(1)
0x0057694C: fstp     dword ptr [eax]
0x0057694E: fld      dword ptr [ecx + 4]
0x00576951: fmul     st(1)
0x00576953: fstp     dword ptr [eax + 4]
0x00576956: fld      dword ptr [ecx + 8]
0x00576959: fmul     st(1)
0x0057695B: fstp     dword ptr [eax + 8]
0x0057695E: fmul     dword ptr [ecx + 0xc]
0x00576961: fstp     dword ptr [eax + 0xc]
0x00576964: ret      
0x00576965: int3     
0x00576966: int3     
0x00576967: int3     
0x00576968: int3     
0x00576969: int3     
0x0057696A: int3     
0x0057696B: int3     
0x0057696C: int3     
0x0057696D: int3     
0x0057696E: int3     
0x0057696F: int3     
0x00576970: fld      dword ptr [ecx]
0x00576972: fld      dword ptr [esp + 4]
0x00576976: fld      st(0)
0x00576978: fmulp    st(2)
0x0057697A: fxch     st(1)
0x0057697C: fstp     dword ptr [eax]
0x0057697E: fld      dword ptr [ecx + 4]
0x00576981: fmul     st(1)
0x00576983: fstp     dword ptr [eax + 4]
0x00576986: fld      dword ptr [ecx + 8]
0x00576989: fmul     st(1)
0x0057698B: fstp     dword ptr [eax + 8]
0x0057698E: fmul     dword ptr [ecx + 0xc]
0x00576991: fstp     dword ptr [eax + 0xc]
0x00576994: ret      
0x00576995: int3     
0x00576996: int3     
0x00576997: int3     
0x00576998: int3     
0x00576999: int3     
0x0057699A: int3     
0x0057699B: int3     
0x0057699C: int3     
0x0057699D: int3     
0x0057699E: int3     
0x0057699F: int3     
0x005769A0: fld      dword ptr [esp + 4]
0x005769A4: fld1     
0x005769A6: fdivrp   st(1)
0x005769A8: fstp     dword ptr [esp + 4]
0x005769AC: fld      dword ptr [ecx]
0x005769AE: fld      dword ptr [esp + 4]
0x005769B2: fld      st(0)
0x005769B4: fmulp    st(2)
0x005769B6: fxch     st(1)
0x005769B8: fstp     dword ptr [eax]
0x005769BA: fld      dword ptr [ecx + 4]
0x005769BD: fmul     st(1)
0x005769BF: fstp     dword ptr [eax + 4]
0x005769C2: fld      dword ptr [ecx + 8]
0x005769C5: fmul     st(1)
0x005769C7: fstp     dword ptr [eax + 8]
0x005769CA: fmul     dword ptr [ecx + 0xc]
0x005769CD: fstp     dword ptr [eax + 0xc]
0x005769D0: ret      
0x005769D1: int3     
0x005769D2: int3     
0x005769D3: int3     
0x005769D4: int3     
0x005769D5: int3     
0x005769D6: int3     
0x005769D7: int3     
0x005769D8: int3     
0x005769D9: int3     
0x005769DA: int3     
0x005769DB: int3     
0x005769DC: int3     
0x005769DD: int3     
0x005769DE: int3     
0x005769DF: int3     
0x005769E0: mov      eax, dword ptr [esp + 4]
0x005769E4: sub      esp, 0x50
0x005769E7: push     esi
0x005769E8: mov      esi, ecx
0x005769EA: push     eax
0x005769EB: lea      ecx, [esp + 0x48]
0x005769EF: push     ecx
0x005769F0: mov      ecx, esi
0x005769F2: call     0x575e60
0x005769F7: mov      ecx, dword ptr [esi + 0x40]
0x005769FA: cmp      dword ptr [ecx + 0x23c], 0
0x00576A01: je       0x576bb6
0x00576A07: cmp      dword ptr [esi + 0x54], 0
0x00576A0B: jne      0x576bb6
0x00576A11: test     eax, eax
0x00576A13: je       0x576bb6
0x00576A19: mov      dword ptr [esi + 0x54], 1
0x00576A20: mov      edx, dword ptr [ecx + 0x1e4]
0x00576A26: fld      dword ptr [edx + 0x44]
0x00576A29: fchs     
0x00576A2B: fmul     dword ptr [ecx + 0x28c]
0x00576A31: fstp     dword ptr [ecx + 0x28c]
0x00576A37: mov      eax, dword ptr [esi + 0x40]
0x00576A3A: mov      ecx, dword ptr [eax + 0x1e4]
0x00576A40: fld      dword ptr [ecx + 0x44]
0x00576A43: fchs     
0x00576A45: fmul     dword ptr [eax + 0x290]
0x00576A4B: fstp     dword ptr [eax + 0x290]
0x00576A51: mov      eax, dword ptr [esi + 0x40]
0x00576A54: mov      edx, dword ptr [eax + 0x1e4]
0x00576A5A: fld      dword ptr [edx + 0x44]
0x00576A5D: fchs     
0x00576A5F: fmul     dword ptr [eax + 0xc34]
0x00576A65: fstp     dword ptr [eax + 0xc34]
0x00576A6B: mov      eax, dword ptr [esi + 8]
0x00576A6E: movzx    ecx, byte ptr [eax + 1]
0x00576A72: mov      edx, dword ptr [eax + 4]
0x00576A75: mov      eax, dword ptr [edx + 0x20]
0x00576A78: mov      eax, dword ptr [eax + ecx*4]
0x00576A7B: mov      ecx, dword ptr [esi + 0x40]
0x00576A7E: add      eax, 0xc
0x00576A81: fld      dword ptr [eax]
0x00576A83: fstp     dword ptr [esp + 0x14]
0x00576A87: fld      dword ptr [eax + 4]
0x00576A8A: fstp     dword ptr [esp + 0x18]
0x00576A8E: fld      dword ptr [eax + 8]
0x00576A91: fstp     dword ptr [esp + 0x1c]
0x00576A95: fld      dword ptr [eax + 0xc]
0x00576A98: mov      eax, dword ptr [ecx + 0x23c]
0x00576A9E: movzx    edx, byte ptr [eax + 1]
0x00576AA2: fstp     dword ptr [esp + 0x20]
0x00576AA6: mov      eax, dword ptr [eax + 4]
0x00576AA9: mov      ecx, dword ptr [eax + 0x1c]
0x00576AAC: mov      eax, dword ptr [ecx + edx*4]
0x00576AAF: add      eax, 0xc
0x00576AB2: lea      edx, [esp + 0x34]
0x00576AB6: push     edx
0x00576AB7: fld      dword ptr [eax]
0x00576AB9: fstp     dword ptr [esp + 8]
0x00576ABD: fld      dword ptr [eax + 4]
0x00576AC0: fstp     dword ptr [esp + 0xc]
0x00576AC4: fld      dword ptr [eax + 8]
0x00576AC7: fstp     dword ptr [esp + 0x10]
0x00576ACB: fld      dword ptr [eax + 0xc]
0x00576ACE: lea      eax, [esp + 0x28]
0x00576AD2: fstp     dword ptr [esp + 0x14]
0x00576AD6: push     eax
0x00576AD7: fld      dword ptr [esp + 0xc]
0x00576ADB: fsub     dword ptr [esp + 0x1c]
0x00576ADF: fstp     dword ptr [esp + 0x3c]
0x00576AE3: fld      dword ptr [esp + 0x10]
0x00576AE7: fsub     dword ptr [esp + 0x20]
0x00576AEB: fstp     dword ptr [esp + 0x40]
0x00576AEF: fld      dword ptr [esp + 0x14]
0x00576AF3: fsub     dword ptr [esp + 0x24]
0x00576AF7: fstp     dword ptr [esp + 0x44]
0x00576AFB: fld      dword ptr [esp + 0x18]
0x00576AFF: fsub     dword ptr [esp + 0x28]
0x00576B03: fstp     dword ptr [esp + 0x48]
0x00576B07: fldz     
0x00576B09: fst      dword ptr [esp + 0x2c]
0x00576B0D: fst      dword ptr [esp + 0x30]
0x00576B11: fstp     dword ptr [esp + 0x34]
0x00576B15: fld1     
0x00576B17: fstp     dword ptr [esp + 0x38]
0x00576B1B: call     0x6b2160
0x00576B20: fstp     st(0)
0x00576B22: fld      dword ptr [esp + 0x2c]
0x00576B26: mov      eax, dword ptr [esi + 0x40]
0x00576B29: fchs     
0x00576B2B: add      esp, 8
0x00576B2E: fstp     dword ptr [esp + 8]
0x00576B32: fld      dword ptr [eax + 0xc38]
0x00576B38: fmul     dword ptr [eax + 0xc34]
0x00576B3E: fstp     dword ptr [esp + 0x58]
0x00576B42: fld      dword ptr [esp + 0x28]
0x00576B46: fld      dword ptr [esp + 0x58]
0x00576B4A: fld      st(0)
0x00576B4C: fmulp    st(2)
0x00576B4E: fxch     st(1)
0x00576B50: fstp     dword ptr [esp + 0x14]
0x00576B54: fld      dword ptr [esp + 8]
0x00576B58: fmul     st(1)
0x00576B5A: fstp     dword ptr [esp + 0x18]
0x00576B5E: fld      qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00576B64: fmul     st(1)
0x00576B66: fstp     dword ptr [esp + 0x1c]
0x00576B6A: fstp     dword ptr [esp + 0x20]
0x00576B6E: fld      dword ptr [esp + 0x14]
0x00576B72: fstp     dword ptr [eax + 0xc70]
0x00576B78: fld      dword ptr [esp + 0x18]
0x00576B7C: fstp     dword ptr [eax + 0xc74]
0x00576B82: fld      dword ptr [esp + 0x1c]
0x00576B86: fstp     dword ptr [eax + 0xc78]
0x00576B8C: fld      dword ptr [esp + 0x20]
0x00576B90: fstp     dword ptr [eax + 0xc7c]
0x00576B96: mov      eax, dword ptr [esi + 0x40]
0x00576B99: mov      byte ptr [eax + 0xd40], 0
0x00576BA0: mov      byte ptr [eax + 0xd41], 0
0x00576BA7: mov      ecx, dword ptr [esi + 0x40]
0x00576BAA: lea      edx, [ecx + 0xc70]
0x00576BB0: push     edx
0x00576BB1: call     0x56a400
0x00576BB6: fld      dword ptr [esp + 0x44]
0x00576BBA: fadd     dword ptr [esi + 0x44]
0x00576BBD: fstp     dword ptr [esi + 0x44]
0x00576BC0: fld      dword ptr [esi + 0x48]
0x00576BC3: fadd     dword ptr [esp + 0x48]
0x00576BC7: fstp     dword ptr [esi + 0x48]
0x00576BCA: fld      dword ptr [esi + 0x4c]
0x00576BCD: fadd     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00576BD3: fstp     dword ptr [esi + 0x4c]
0x00576BD6: pop      esi
0x00576BD7: add      esp, 0x50
0x00576BDA: ret      4
0x00576BDD: int3     
0x00576BDE: int3     
0x00576BDF: int3     
0x00576BE0: sub      esp, 0x24
0x00576BE3: push     ebx
0x00576BE4: push     esi
0x00576BE5: push     edi
0x00576BE6: mov      edi, dword ptr [esp + 0x34]
0x00576BEA: push     edi
0x00576BEB: lea      eax, [esp + 0x24]
0x00576BEF: push     eax
0x00576BF0: mov      esi, ecx
0x00576BF2: call     0x575c30
0x00576BF7: fld      dword ptr [esi + 0x44]
0x00576BFA: fadd     dword ptr [esp + 0x20]
0x00576BFE: fstp     dword ptr [esi + 0x44]
0x00576C01: fld      dword ptr [esi + 0x48]
0x00576C04: fadd     dword ptr [esp + 0x24]
0x00576C08: fstp     dword ptr [esi + 0x48]
0x00576C0B: fld      dword ptr [esi + 0x4c]
0x00576C0E: fadd     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00576C14: fstp     dword ptr [esi + 0x4c]
0x00576C17: test     eax, eax
0x00576C19: jne      0x576c83
0x00576C1B: mov      eax, dword ptr [edi + 0x48]
0x00576C1E: cmp      byte ptr [eax + 0x29], 1
0x00576C22: jbe      0x576e1b
0x00576C28: movzx    ebx, byte ptr [eax + 0x28]
0x00576C2C: xor      edi, edi
0x00576C2E: test     ebx, ebx
0x00576C30: jbe      0x576e1b
0x00576C36: mov      edx, dword ptr [eax + 0x24]
0x00576C39: add      edx, 8
0x00576C3C: lea      esp, [esp]
0x00576C40: mov      ecx, dword ptr [edx]
0x00576C42: mov      eax, dword ptr [ecx + 0x11c]
0x00576C48: test     eax, eax
0x00576C4A: je       0x576c83
0x00576C4C: movzx    ecx, byte ptr [eax + 1]
0x00576C50: mov      eax, dword ptr [eax + 4]
0x00576C53: mov      eax, dword ptr [eax + 0x38]
0x00576C56: mov      ecx, dword ptr [eax + ecx*4]
0x00576C59: mov      eax, dword ptr [ecx + 0x28]
0x00576C5C: cmp      eax, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x00576C62: je       0x576c6c
0x00576C64: cmp      eax, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x00576C6A: jne      0x576c83
0x00576C6C: cmp      byte ptr [ecx + 0x3a], 0
0x00576C70: jne      0x576c83
0x00576C72: inc      edi
0x00576C73: add      edx, 0x4c
0x00576C76: cmp      edi, ebx
0x00576C78: jb       0x576c40
0x00576C7A: pop      edi
0x00576C7B: pop      esi
0x00576C7C: pop      ebx
0x00576C7D: add      esp, 0x24
0x00576C80: ret      4
0x00576C83: mov      eax, dword ptr [esi + 0x40]
0x00576C86: mov      ecx, dword ptr [eax + 0x1e4]
0x00576C8C: fld      dword ptr [ecx + 0x44]
0x00576C8F: mov      edi, dword ptr [esp + 0x34]
0x00576C93: fmul     dword ptr [eax + 0xc54]
0x00576C99: push     ecx
0x00576C9A: lea      edx, [edi + 0xc]
0x00576C9D: add      eax, 0x28c
0x00576CA2: fstp     dword ptr [esp + 0x10]
0x00576CA6: fld      dword ptr [esp + 0x10]
0x00576CAA: fstp     dword ptr [esp]
0x00576CAD: push     edx
0x00576CAE: push     eax
0x00576CAF: call     0x5bff80
0x00576CB4: fldz     
0x00576CB6: mov      eax, dword ptr [esi + 0x40]
0x00576CB9: fst      dword ptr [eax + 0x294]
0x00576CBF: mov      ecx, dword ptr [esi + 0x40]
0x00576CC2: fstp     dword ptr [ecx + 0x298]
0x00576CC8: fld      dword ptr [edi + 0x10]
0x00576CCB: add      esp, 0xc
0x00576CCE: fcomp    qword ptr [0x992ae8] ; [f32=2, f64=0.85, u32=0x40000000]
0x00576CD4: fnstsw   ax
0x00576CD6: test     ah, 0x41
0x00576CD9: jne      0x576d2e
0x00576CDB: mov      ecx, dword ptr [esi + 0x40]
0x00576CDE: fld      dword ptr [ecx + 0x290]
0x00576CE4: fstp     dword ptr [esp + 0x34]
0x00576CE8: fld      dword ptr [esp + 0x34]
0x00576CEC: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x00576CF2: fnstsw   ax
0x00576CF4: test     ah, 0x41
0x00576CF7: jne      0x576d03
0x00576CF9: fstp     st(0)
0x00576CFB: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x00576D01: jmp      0x576d20
0x00576D03: fcom     qword ptr [0x992ae0] ; [f32=0, f64=300, u32=0x00000000]
0x00576D09: fnstsw   ax
0x00576D0B: test     ah, 0x41
0x00576D0E: je       0x576d18
0x00576D10: fstp     st(0)
0x00576D12: fld      dword ptr [0x984aa8] ; [f32=300, u32=0x43960000]
0x00576D18: fstp     dword ptr [esp + 0x34]
0x00576D1C: fld      dword ptr [esp + 0x34]
0x00576D20: fstp     dword ptr [esp + 0x34]
0x00576D24: fld      dword ptr [esp + 0x34]
0x00576D28: fstp     dword ptr [ecx + 0x290]
0x00576D2E: mov      ebx, dword ptr [esi + 0x40]
0x00576D31: fld      dword ptr [ebx + 0x290]
0x00576D37: lea      edi, [ebx + 0x28c]
0x00576D3D: fld      dword ptr [edi]
0x00576D3F: fld      dword ptr [edi + 8]
0x00576D42: fld      st(1)
0x00576D44: fmulp    st(2)
0x00576D46: fld      st(2)
0x00576D48: fmulp    st(3)
0x00576D4A: fxch     st(1)
0x00576D4C: faddp    st(2)
0x00576D4E: fmul     st(0), st(0)
0x00576D50: faddp    st(1)
0x00576D52: fstp     dword ptr [esp + 0x34]
0x00576D56: fld      dword ptr [esp + 0x34]
0x00576D5A: call     0x8eb930
0x00576D5F: fstp     dword ptr [esp + 0x34]
0x00576D63: fld      dword ptr [esp + 0x34]
0x00576D67: mov      edx, dword ptr [ebx + 0x1e4]
0x00576D6D: fld      dword ptr [edx + 0x14]
0x00576D70: fcompp   
0x00576D72: fnstsw   ax
0x00576D74: test     ah, 5
0x00576D77: jp       0x576e07
0x00576D7D: fldz     
0x00576D7F: lea      eax, [esp + 0x10]
0x00576D83: fst      dword ptr [esp + 0x10]
0x00576D87: push     edi
0x00576D88: fst      dword ptr [esp + 0x18]
0x00576D8C: push     eax
0x00576D8D: fstp     dword ptr [esp + 0x20]
0x00576D91: fld1     
0x00576D93: fstp     dword ptr [esp + 0x24]
0x00576D97: call     0x6b2160
0x00576D9C: fstp     st(0)
0x00576D9E: mov      eax, dword ptr [esi + 0x40]
0x00576DA1: mov      ecx, dword ptr [eax + 0x1e4]
0x00576DA7: fld      dword ptr [ecx + 0x14]
0x00576DAA: add      esp, 8
0x00576DAD: fstp     dword ptr [esp + 0x34]
0x00576DB1: fld      dword ptr [esp + 0x10]
0x00576DB5: fld      dword ptr [esp + 0x34]
0x00576DB9: fld      st(0)
0x00576DBB: fmulp    st(2)
0x00576DBD: fxch     st(1)
0x00576DBF: fstp     dword ptr [esp + 0x20]
0x00576DC3: fld      dword ptr [esp + 0x14]
0x00576DC7: fmul     st(1)
0x00576DC9: fstp     dword ptr [esp + 0x24]
0x00576DCD: fld      dword ptr [esp + 0x18]
0x00576DD1: fmul     st(1)
0x00576DD3: fstp     dword ptr [esp + 0x28]
0x00576DD7: fmul     dword ptr [esp + 0x1c]
0x00576DDB: fstp     dword ptr [esp + 0x2c]
0x00576DDF: fld      dword ptr [esp + 0x20]
0x00576DE3: fstp     dword ptr [eax + 0x28c]
0x00576DE9: fld      dword ptr [esp + 0x24]
0x00576DED: fstp     dword ptr [eax + 0x290]
0x00576DF3: fld      dword ptr [esp + 0x28]
0x00576DF7: fstp     dword ptr [eax + 0x294]
0x00576DFD: fld      dword ptr [esp + 0x2c]
0x00576E01: fstp     dword ptr [eax + 0x298]
0x00576E07: fldz     
0x00576E09: mov      edx, dword ptr [esi + 0x40]
0x00576E0C: fst      dword ptr [edx + 0x294]
0x00576E12: mov      eax, dword ptr [esi + 0x40]
0x00576E15: fstp     dword ptr [eax + 0x298]
0x00576E1B: pop      edi
0x00576E1C: pop      esi
0x00576E1D: pop      ebx
0x00576E1E: add      esp, 0x24
0x00576E21: ret      4
0x00576E24: int3     
0x00576E25: int3     
0x00576E26: int3     
0x00576E27: int3     
0x00576E28: int3     
0x00576E29: int3     
0x00576E2A: int3     
0x00576E2B: int3     
0x00576E2C: int3     
0x00576E2D: int3     
0x00576E2E: int3     
0x00576E2F: int3     
0x00576E30: sub      esp, 0x20
0x00576E33: push     esi
0x00576E34: mov      esi, dword ptr [esp + 0x28]
0x00576E38: fld      dword ptr [esi + 0x30]
0x00576E3B: lea      eax, [esp + 4]
0x00576E3F: fsub     dword ptr [esi + 0x20]
0x00576E42: push     eax
0x00576E43: mov      ecx, eax
0x00576E45: push     ecx
0x00576E46: fstp     dword ptr [esp + 0xc]
0x00576E4A: fld      dword ptr [esi + 0x34]
0x00576E4D: fsub     dword ptr [esi + 0x24]
0x00576E50: fstp     dword ptr [esp + 0x10]
0x00576E54: fld      dword ptr [esi + 0x3c]
0x00576E57: fsub     dword ptr [esi + 0x2c]
0x00576E5A: fstp     dword ptr [esp + 0x18]
0x00576E5E: fldz     
0x00576E60: fstp     dword ptr [esp + 0x14]
0x00576E64: call     0x6b2160
0x00576E69: fstp     st(0)
0x00576E6B: fld      dword ptr [esi]
0x00576E6D: add      esp, 8
0x00576E70: fsub     dword ptr [esi + 0x10]
0x00576E73: fstp     dword ptr [esp + 0x14]
0x00576E77: fld      dword ptr [esi + 4]
0x00576E7A: fsub     dword ptr [esi + 0x14]
0x00576E7D: fstp     dword ptr [esp + 0x18]
0x00576E81: fld      dword ptr [esi + 8]
0x00576E84: fsub     dword ptr [esi + 0x18]
0x00576E87: fstp     dword ptr [esp + 0x1c]
0x00576E8B: fld      dword ptr [esp + 0x18]
0x00576E8F: fld      dword ptr [esp + 8]
0x00576E93: fld      st(0)
0x00576E95: fmulp    st(2)
0x00576E97: fld      dword ptr [esp + 0x14]
0x00576E9B: fld      dword ptr [esp + 4]
0x00576E9F: fld      st(0)
0x00576EA1: fmulp    st(2)
0x00576EA3: fxch     st(3)
0x00576EA5: faddp    st(1)
0x00576EA7: fld      dword ptr [esp + 0x1c]
0x00576EAB: fld      dword ptr [esp + 0xc]
0x00576EAF: fld      st(0)
0x00576EB1: fmulp    st(2)
0x00576EB3: fxch     st(2)
0x00576EB5: faddp    st(1)
0x00576EB7: fstp     dword ptr [esp + 0x28]
0x00576EBB: fld      dword ptr [esi + 0x44]
0x00576EBE: fld      qword ptr [0x97e668] ; [f32=0, f64=2, u32=0x00000000]
0x00576EC4: fmul     st(1), st(0)
0x00576EC6: fxch     st(1)
0x00576EC8: fmul     dword ptr [esp + 0x28]
0x00576ECC: fstp     dword ptr [esp + 0x28]
0x00576ED0: fld      dword ptr [esp + 0x28]
0x00576ED4: fld      st(0)
0x00576ED6: fmul     st(5)
0x00576ED8: fstp     dword ptr [esp + 0x14]
0x00576EDC: fld      st(3)
0x00576EDE: fmul     st(1)
0x00576EE0: fstp     dword ptr [esp + 0x18]
0x00576EE4: fld      st(0)
0x00576EE6: fmul     st(3)
0x00576EE8: fstp     dword ptr [esp + 0x1c]
0x00576EEC: fld      dword ptr [esp + 0x10]
0x00576EF0: fld      st(0)
0x00576EF2: fmulp    st(2)
0x00576EF4: fxch     st(1)
0x00576EF6: fstp     dword ptr [esp + 0x20]
0x00576EFA: fld      dword ptr [esi + 0x40]
0x00576EFD: fadd     dword ptr [esi + 0x44]
0x00576F00: fstp     dword ptr [esp + 0x28]
0x00576F04: fld      dword ptr [esp + 0x28]
0x00576F08: fld1     
0x00576F0A: fdivrp   st(1)
0x00576F0C: fstp     dword ptr [esp + 0x28]
0x00576F10: fld      dword ptr [esp + 0x28]
0x00576F14: fld      st(0)
0x00576F16: fmul     dword ptr [esp + 0x14]
0x00576F1A: fstp     dword ptr [esp + 4]
0x00576F1E: fld      dword ptr [esp + 0x18]
0x00576F22: fmul     st(1)
0x00576F24: fstp     dword ptr [esp + 8]
0x00576F28: fld      dword ptr [esp + 0x1c]
0x00576F2C: mov      eax, dword ptr [esp + 0x2c]
0x00576F30: fmul     st(1)
0x00576F32: fstp     dword ptr [esp + 0xc]
0x00576F36: fmul     dword ptr [esp + 0x20]
0x00576F3A: fstp     dword ptr [esp + 0x10]
0x00576F3E: fld      dword ptr [esi]
0x00576F40: fsub     dword ptr [esp + 4]
0x00576F44: fstp     dword ptr [esp + 0x14]
0x00576F48: fld      dword ptr [esi + 4]
0x00576F4B: fsub     dword ptr [esp + 8]
0x00576F4F: fstp     dword ptr [esp + 0x18]
0x00576F53: fld      dword ptr [esi + 8]
0x00576F56: fsub     dword ptr [esp + 0xc]
0x00576F5A: fstp     dword ptr [esp + 0x1c]
0x00576F5E: fld      dword ptr [esi + 0xc]
0x00576F61: fsub     dword ptr [esp + 0x10]
0x00576F65: fstp     dword ptr [esp + 0x20]
0x00576F69: fld      dword ptr [esp + 0x14]
0x00576F6D: fstp     dword ptr [eax]
0x00576F6F: fld      dword ptr [esp + 0x18]
0x00576F73: fstp     dword ptr [eax + 4]
0x00576F76: fld      dword ptr [esp + 0x1c]
0x00576F7A: fstp     dword ptr [eax + 8]
0x00576F7D: fld      dword ptr [esp + 0x20]
0x00576F81: fstp     dword ptr [eax + 0xc]
0x00576F84: fld      dword ptr [esi]
0x00576F86: fsub     dword ptr [esi + 0x10]
0x00576F89: fstp     dword ptr [esp + 0x14]
0x00576F8D: fld      dword ptr [esi + 4]
0x00576F90: fsub     dword ptr [esi + 0x14]
0x00576F93: fstp     dword ptr [esp + 0x18]
0x00576F97: fld      dword ptr [esi + 8]
0x00576F9A: fsub     dword ptr [esi + 0x18]
0x00576F9D: fstp     dword ptr [esp + 0x1c]
0x00576FA1: fld      dword ptr [esp + 0x18]
0x00576FA5: fmul     st(4)
0x00576FA7: fld      dword ptr [esp + 0x14]
0x00576FAB: fmul     st(6)
0x00576FAD: faddp    st(1)
0x00576FAF: fld      dword ptr [esp + 0x1c]
0x00576FB3: fmul     st(4)
0x00576FB5: faddp    st(1)
0x00576FB7: fstp     dword ptr [esp + 0x28]
0x00576FBB: fld      dword ptr [esp + 0x28]
0x00576FBF: fld      dword ptr [esi + 0x40]
0x00576FC2: fmulp    st(3)
0x00576FC4: fmulp    st(2)
0x00576FC6: fxch     st(1)
0x00576FC8: fstp     dword ptr [esp + 0x28]
0x00576FCC: fld      dword ptr [esp + 0x28]
0x00576FD0: fld      st(0)
0x00576FD2: fmulp    st(5)
0x00576FD4: fxch     st(4)
0x00576FD6: fstp     dword ptr [esp + 0x14]
0x00576FDA: fld      st(3)
0x00576FDC: fmulp    st(3)
0x00576FDE: fxch     st(2)
0x00576FE0: fstp     dword ptr [esp + 0x18]
0x00576FE4: fmul     st(2)
0x00576FE6: fstp     dword ptr [esp + 0x1c]
0x00576FEA: fmulp    st(1)
0x00576FEC: fstp     dword ptr [esp + 0x20]
0x00576FF0: fld      dword ptr [esi + 0x40]
0x00576FF3: fadd     dword ptr [esi + 0x44]
0x00576FF6: fstp     dword ptr [esp + 0x28]
0x00576FFA: fld      dword ptr [esp + 0x28]
0x00576FFE: fld1     
0x00577000: fdivrp   st(1)
0x00577002: fstp     dword ptr [esp + 0x28]
0x00577006: fld      dword ptr [esp + 0x28]
0x0057700A: fld      st(0)
0x0057700C: fmul     dword ptr [esp + 0x14]
0x00577010: fstp     dword ptr [esp + 4]
0x00577014: fld      dword ptr [esp + 0x18]
0x00577018: fmul     st(1)
0x0057701A: fstp     dword ptr [esp + 8]
0x0057701E: fld      dword ptr [esp + 0x1c]
0x00577022: fmul     st(1)
0x00577024: fstp     dword ptr [esp + 0xc]
0x00577028: fmul     dword ptr [esp + 0x20]
0x0057702C: fstp     dword ptr [esp + 0x10]
0x00577030: mov      eax, dword ptr [esp + 0x30]
0x00577034: fld      dword ptr [esp + 4]
0x00577038: fadd     dword ptr [esi + 0x10]
0x0057703B: fstp     dword ptr [esp + 0x14]
0x0057703F: fld      dword ptr [esi + 0x14]
0x00577042: fadd     dword ptr [esp + 8]
0x00577046: fstp     dword ptr [esp + 0x18]
0x0057704A: fld      dword ptr [esi + 0x18]
0x0057704D: fadd     dword ptr [esp + 0xc]
0x00577051: fstp     dword ptr [esp + 0x1c]
0x00577055: fld      dword ptr [esi + 0x1c]
0x00577058: pop      esi
0x00577059: fadd     dword ptr [esp + 0xc]
0x0057705D: fstp     dword ptr [esp + 0x1c]
0x00577061: fld      dword ptr [esp + 0x10]
0x00577065: fstp     dword ptr [eax]
0x00577067: fld      dword ptr [esp + 0x14]
0x0057706B: fstp     dword ptr [eax + 4]
0x0057706E: fld      dword ptr [esp + 0x18]
0x00577072: fstp     dword ptr [eax + 8]
0x00577075: fld      dword ptr [esp + 0x1c]
0x00577079: fstp     dword ptr [eax + 0xc]
0x0057707C: add      esp, 0x20
0x0057707F: ret      0xc
0x00577082: int3     
0x00577083: int3     
0x00577084: int3     
0x00577085: int3     
0x00577086: int3     
0x00577087: int3     
0x00577088: int3     
0x00577089: int3     
0x0057708A: int3     
0x0057708B: int3     
0x0057708C: int3     
0x0057708D: int3     
0x0057708E: int3     
0x0057708F: int3     
0x00577090: sub      esp, 0xa0
0x00577096: fldz     
0x00577098: push     ebx
0x00577099: fst      dword ptr [esp + 0x3c]
0x0057709D: push     esi
0x0057709E: fst      dword ptr [esp + 0x44]
0x005770A2: mov      esi, ecx
0x005770A4: mov      eax, dword ptr [esi + 0x40]
0x005770A7: fst      dword ptr [esp + 0x48]
0x005770AB: fld1     
0x005770AD: push     edi
0x005770AE: fst      dword ptr [esp + 0x50]
0x005770B2: cmp      dword ptr [eax + 0x23c], 0
0x005770B9: je       0x5770e1
0x005770BB: fld      dword ptr [eax + 0xc70]
0x005770C1: fstp     dword ptr [esp + 0x44]
0x005770C5: fld      dword ptr [eax + 0xc74]
0x005770CB: fstp     dword ptr [esp + 0x48]
0x005770CF: fld      dword ptr [eax + 0xc78]
0x005770D5: fstp     dword ptr [esp + 0x4c]
0x005770D9: fld      dword ptr [eax + 0xc7c]
0x005770DF: jmp      0x577105
0x005770E1: fld      dword ptr [eax + 0x28c]
0x005770E7: fstp     dword ptr [esp + 0x44]
0x005770EB: fld      dword ptr [eax + 0x290]
0x005770F1: fstp     dword ptr [esp + 0x48]
0x005770F5: fld      dword ptr [eax + 0x294]
0x005770FB: fstp     dword ptr [esp + 0x4c]
0x005770FF: fld      dword ptr [eax + 0x298]
0x00577105: fstp     dword ptr [esp + 0x50]
0x00577109: lea      eax, [esp + 0x44]
0x0057710D: fxch     st(1)
0x0057710F: push     eax
0x00577110: fst      dword ptr [esp + 0x28]
0x00577114: lea      ecx, [esp + 0x28]
0x00577118: fst      dword ptr [esp + 0x2c]
0x0057711C: push     ecx
0x0057711D: fstp     dword ptr [esp + 0x34]
0x00577121: fstp     dword ptr [esp + 0x38]
0x00577125: call     0x6b2160
0x0057712A: fstp     st(0)
0x0057712C: add      esp, 8
0x0057712F: fld      dword ptr [esp + 0x48]
0x00577133: fld      dword ptr [esp + 0x44]
0x00577137: fld      dword ptr [esp + 0x4c]
0x0057713B: fld      st(1)
0x0057713D: fmulp    st(2)
0x0057713F: fld      st(2)
0x00577141: fmulp    st(3)
0x00577143: fxch     st(1)
0x00577145: faddp    st(2)
0x00577147: fmul     st(0), st(0)
0x00577149: faddp    st(1)
0x0057714B: fstp     dword ptr [esp + 0xc]
0x0057714F: fld      dword ptr [esp + 0xc]
0x00577153: call     0x8eb930
0x00577158: fstp     dword ptr [esp + 0xc]
0x0057715C: fld      dword ptr [esp + 0xc]
0x00577160: fstp     dword ptr [esp + 0xc]
0x00577164: fld      dword ptr [esp + 0xc]
0x00577168: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x0057716E: fnstsw   ax
0x00577170: test     ah, 0x41
0x00577173: jne      0x57717f
0x00577175: fstp     st(0)
0x00577177: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x0057717D: jmp      0x57719c
0x0057717F: fcom     qword ptr [0x992af0] ; [f32=0, f64=450, u32=0x00000000]
0x00577185: fnstsw   ax
0x00577187: test     ah, 0x41
0x0057718A: je       0x577194
0x0057718C: fstp     st(0)
0x0057718E: fld      dword ptr [0x9692f0] ; [f32=450, f64=0.000292969, u32=0x43E10000]
0x00577194: fstp     dword ptr [esp + 0xc]
0x00577198: fld      dword ptr [esp + 0xc]
0x0057719C: fstp     dword ptr [esp + 0xc]
0x005771A0: mov      eax, dword ptr [esi + 8]
0x005771A3: fld      dword ptr [esp + 0xc]
0x005771A7: mov      edi, dword ptr [esp + 0xb0]
0x005771AE: fld      st(0)
0x005771B0: fmul     dword ptr [esp + 0x24]
0x005771B4: fstp     dword ptr [esp + 0x14]
0x005771B8: fld      dword ptr [esp + 0x28]
0x005771BC: fmul     st(1)
0x005771BE: fstp     dword ptr [esp + 0x18]
0x005771C2: fld      dword ptr [esp + 0x2c]
0x005771C6: fmul     st(1)
0x005771C8: fstp     dword ptr [esp + 0x1c]
0x005771CC: fmul     dword ptr [esp + 0x30]
0x005771D0: fstp     dword ptr [esp + 0x20]
0x005771D4: fld      dword ptr [esp + 0x14]
0x005771D8: fst      dword ptr [esp + 0x44]
0x005771DC: fld      dword ptr [esp + 0x18]
0x005771E0: fst      dword ptr [esp + 0x48]
0x005771E4: fld      dword ptr [esp + 0x1c]
0x005771E8: fst      dword ptr [esp + 0x4c]
0x005771EC: fld      dword ptr [esp + 0x20]
0x005771F0: fst      dword ptr [esp + 0x50]
0x005771F4: movzx    edx, byte ptr [eax + 1]
0x005771F8: mov      eax, dword ptr [eax + 4]
0x005771FB: mov      ecx, dword ptr [eax + 0x1c]
0x005771FE: mov      eax, dword ptr [ecx + edx*4]
0x00577201: add      eax, 0xc
0x00577204: fld      dword ptr [eax]
0x00577206: fstp     dword ptr [esp + 0x14]
0x0057720A: fld      dword ptr [eax + 4]
0x0057720D: fstp     dword ptr [esp + 0x18]
0x00577211: fld      dword ptr [eax + 8]
0x00577214: fstp     dword ptr [esp + 0x1c]
0x00577218: fld      dword ptr [eax + 0xc]
0x0057721B: mov      eax, dword ptr [edi + 8]
0x0057721E: fstp     dword ptr [esp + 0x20]
0x00577222: movzx    edx, byte ptr [eax + 1]
0x00577226: fld      dword ptr [esp + 0x14]
0x0057722A: mov      eax, dword ptr [eax + 4]
0x0057722D: fstp     dword ptr [esp + 0x84]
0x00577234: mov      ecx, dword ptr [eax + 0x1c]
0x00577237: fld      dword ptr [esp + 0x18]
0x0057723B: mov      eax, dword ptr [ecx + edx*4]
0x0057723E: fstp     dword ptr [esp + 0x88]
0x00577245: add      eax, 0xc
0x00577248: fld      dword ptr [esp + 0x1c]
0x0057724C: mov      edx, dword ptr [esi + 0x40]
0x0057724F: fstp     dword ptr [esp + 0x8c]
0x00577256: fld      dword ptr [esp + 0x20]
0x0057725A: fstp     dword ptr [esp + 0x90]
0x00577261: fld      dword ptr [eax]
0x00577263: fstp     dword ptr [esp + 0x14]
0x00577267: fld      dword ptr [eax + 4]
0x0057726A: fstp     dword ptr [esp + 0x18]
0x0057726E: fld      dword ptr [eax + 8]
0x00577271: fstp     dword ptr [esp + 0x1c]
0x00577275: fld      dword ptr [eax + 0xc]
0x00577278: fstp     dword ptr [esp + 0x20]
0x0057727C: fld      dword ptr [esp + 0x14]
0x00577280: fstp     dword ptr [esp + 0x94]
0x00577287: fld      dword ptr [esp + 0x18]
0x0057728B: fstp     dword ptr [esp + 0x98]
0x00577292: fld      dword ptr [esp + 0x1c]
0x00577296: fstp     dword ptr [esp + 0x9c]
0x0057729D: fld      dword ptr [esp + 0x20]
0x005772A1: fstp     dword ptr [esp + 0xa0]
0x005772A8: fxch     st(3)
0x005772AA: fstp     dword ptr [esp + 0x64]
0x005772AE: fxch     st(1)
0x005772B0: fstp     dword ptr [esp + 0x68]
0x005772B4: fstp     dword ptr [esp + 0x6c]
0x005772B8: fstp     dword ptr [esp + 0x70]
0x005772BC: fld      dword ptr [edi + 0x1b4]
0x005772C2: fstp     dword ptr [esp + 0x74]
0x005772C6: fld      dword ptr [edi + 0x1b8]
0x005772CC: fstp     dword ptr [esp + 0x78]
0x005772D0: fld      dword ptr [edi + 0x1bc]
0x005772D6: fstp     dword ptr [esp + 0x7c]
0x005772DA: fld      dword ptr [edi + 0x1c0]
0x005772E0: fstp     dword ptr [esp + 0x80]
0x005772E7: fld      dword ptr [edx + 0xd4c]
0x005772ED: mov      eax, dword ptr [edi + 0x1a8]
0x005772F3: fmul     st(0), st(0)
0x005772F5: lea      ecx, [esp + 0x14]
0x005772F9: push     ecx
0x005772FA: lea      edx, [esp + 0x38]
0x005772FE: fmul     qword ptr [0x98a2a8] ; [f32=0, f64=10, u32=0x00000000]
0x00577304: push     edx
0x00577305: mov      ecx, esi
0x00577307: fadd     qword ptr [0x9795c8] ; [f32=0, f64=1, u32=0x00000000]
0x0057730D: fstp     dword ptr [esp + 0xac]
0x00577314: fld      dword ptr [eax + 0x14]
0x00577317: lea      eax, [esp + 0x6c]
0x0057731B: fstp     dword ptr [esp + 0xb0]
0x00577322: push     eax
0x00577323: fldz     
0x00577325: fst      dword ptr [esp + 0x40]
0x00577329: fst      dword ptr [esp + 0x44]
0x0057732D: fst      dword ptr [esp + 0x20]
0x00577331: fst      dword ptr [esp + 0x24]
0x00577335: fstp     dword ptr [esp + 0x28]
0x00577339: fld1     
0x0057733B: fstp     dword ptr [esp + 0x2c]
0x0057733F: call     0x576e30
0x00577344: fld      dword ptr [esp + 0x34]
0x00577348: mov      ecx, dword ptr [esi + 0x40]
0x0057734B: fstp     dword ptr [ecx + 0x28c]
0x00577351: mov      edx, dword ptr [esi + 0x40]
0x00577354: fld      dword ptr [esp + 0x38]
0x00577358: fstp     dword ptr [edx + 0x290]
0x0057735E: mov      eax, dword ptr [esi + 0x40]
0x00577361: cmp      dword ptr [eax + 0x23c], 0
0x00577368: je       0x5774a6
0x0057736E: fld      dword ptr [eax + 0xc74]
0x00577374: fmul     dword ptr [eax + 0x290]
0x0057737A: fld      dword ptr [eax + 0xc70]
0x00577380: fmul     dword ptr [eax + 0x28c]
0x00577386: faddp    st(1)
0x00577388: fld      dword ptr [eax + 0xc78]
0x0057738E: fmul     dword ptr [eax + 0x294]
0x00577394: faddp    st(1)
0x00577396: fstp     dword ptr [esp + 0xc]
0x0057739A: fld      dword ptr [esp + 0xc]
0x0057739E: fldz     
0x005773A0: fcom     st(1)
0x005773A2: fnstsw   ax
0x005773A4: fstp     st(1)
0x005773A6: test     ah, 0x41
0x005773A9: jp       0x5773af
0x005773AB: fld1     
0x005773AD: jmp      0x5773b5
0x005773AF: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x005773B5: mov      ecx, dword ptr [esi + 0x40]
0x005773B8: fstp     dword ptr [esp + 0xc]
0x005773BC: add      ecx, 0xc70
0x005773C2: fst      dword ptr [esp + 0x24]
0x005773C6: push     ecx
0x005773C7: fst      dword ptr [esp + 0x2c]
0x005773CB: lea      edx, [esp + 0x28]
0x005773CF: fstp     dword ptr [esp + 0x30]
0x005773D3: push     edx
0x005773D4: fld1     
0x005773D6: fstp     dword ptr [esp + 0x38]
0x005773DA: call     0x6b2160
0x005773DF: fstp     st(0)
0x005773E1: mov      ebx, dword ptr [esi + 0x40]
0x005773E4: fld      dword ptr [ebx + 0x290]
0x005773EA: fld      dword ptr [ebx + 0x28c]
0x005773F0: add      esp, 8
0x005773F3: fld      dword ptr [ebx + 0x294]
0x005773F9: fld      st(1)
0x005773FB: fmulp    st(2)
0x005773FD: fld      st(2)
0x005773FF: fmulp    st(3)
0x00577401: fxch     st(1)
0x00577403: faddp    st(2)
0x00577405: fmul     st(0), st(0)
0x00577407: faddp    st(1)
0x00577409: fstp     dword ptr [esp + 0x10]
0x0057740D: fld      dword ptr [esp + 0x10]
0x00577411: call     0x8eb930
0x00577416: fstp     dword ptr [esp + 0x10]
0x0057741A: fld      dword ptr [esp + 0x10]
0x0057741E: fstp     dword ptr [esp + 0x10]
0x00577422: fld      dword ptr [esp + 0x24]
0x00577426: fld      dword ptr [esp + 0x10]
0x0057742A: fld      st(0)
0x0057742C: fmulp    st(2)
0x0057742E: fxch     st(1)
0x00577430: fstp     dword ptr [esp + 0x54]
0x00577434: fld      dword ptr [esp + 0x28]
0x00577438: fmul     st(1)
0x0057743A: fstp     dword ptr [esp + 0x58]
0x0057743E: fld      dword ptr [esp + 0x2c]
0x00577442: fmul     st(1)
0x00577444: fstp     dword ptr [esp + 0x5c]
0x00577448: fmul     dword ptr [esp + 0x30]
0x0057744C: fstp     dword ptr [esp + 0x60]
0x00577450: fld      dword ptr [esp + 0x54]
0x00577454: fld      dword ptr [esp + 0xc]
0x00577458: fld      st(0)
0x0057745A: fmulp    st(2)
0x0057745C: fxch     st(1)
0x0057745E: fstp     dword ptr [esp + 0x34]
0x00577462: fld      dword ptr [esp + 0x58]
0x00577466: fmul     st(1)
0x00577468: fstp     dword ptr [esp + 0x38]
0x0057746C: fld      dword ptr [esp + 0x5c]
0x00577470: fmul     st(1)
0x00577472: fstp     dword ptr [esp + 0x3c]
0x00577476: fmul     dword ptr [esp + 0x60]
0x0057747A: fstp     dword ptr [esp + 0x40]
0x0057747E: fld      dword ptr [esp + 0x34]
0x00577482: fstp     dword ptr [ebx + 0x28c]
0x00577488: fld      dword ptr [esp + 0x38]
0x0057748C: fstp     dword ptr [ebx + 0x290]
0x00577492: fld      dword ptr [esp + 0x3c]
0x00577496: fstp     dword ptr [ebx + 0x294]
0x0057749C: fld      dword ptr [esp + 0x40]
0x005774A0: fstp     dword ptr [ebx + 0x298]
0x005774A6: push     ebp
0x005774A7: mov      ebp, dword ptr [esi + 0x40]
0x005774AA: fld      dword ptr [ebp + 0x290]
0x005774B0: lea      ebx, [ebp + 0x28c]
0x005774B6: fld      dword ptr [ebx]
0x005774B8: fld      dword ptr [ebx + 8]
0x005774BB: fld      st(1)
0x005774BD: fmulp    st(2)
0x005774BF: fld      st(2)
0x005774C1: fmulp    st(3)
0x005774C3: fxch     st(1)
0x005774C5: faddp    st(2)
0x005774C7: fmul     st(0), st(0)
0x005774C9: faddp    st(1)
0x005774CB: fstp     dword ptr [esp + 0x14]
0x005774CF: fld      dword ptr [esp + 0x14]
0x005774D3: call     0x8eb930
0x005774D8: fstp     dword ptr [esp + 0x14]
0x005774DC: mov      eax, dword ptr [ebp + 0x1e4]
0x005774E2: fld      dword ptr [esp + 0x14]
0x005774E6: fld      dword ptr [eax + 0x14]
0x005774E9: pop      ebp
0x005774EA: fcompp   
0x005774EC: fnstsw   ax
0x005774EE: test     ah, 5
0x005774F1: jp       0x577581
0x005774F7: fldz     
0x005774F9: lea      ecx, [esp + 0x24]
0x005774FD: fst      dword ptr [esp + 0x24]
0x00577501: push     ebx
0x00577502: fst      dword ptr [esp + 0x2c]
0x00577506: push     ecx
0x00577507: fstp     dword ptr [esp + 0x34]
0x0057750B: fld1     
0x0057750D: fstp     dword ptr [esp + 0x38]
0x00577511: call     0x6b2160
0x00577516: fstp     st(0)
0x00577518: mov      esi, dword ptr [esi + 0x40]
0x0057751B: mov      edx, dword ptr [esi + 0x1e4]
0x00577521: fld      dword ptr [edx + 0x14]
0x00577524: add      esp, 8
0x00577527: fstp     dword ptr [esp + 0x10]
0x0057752B: fld      dword ptr [esp + 0x24]
0x0057752F: fld      dword ptr [esp + 0x10]
0x00577533: fld      st(0)
0x00577535: fmulp    st(2)
0x00577537: fxch     st(1)
0x00577539: fstp     dword ptr [esp + 0x34]
0x0057753D: fld      dword ptr [esp + 0x28]
0x00577541: fmul     st(1)
0x00577543: fstp     dword ptr [esp + 0x38]
0x00577547: fld      dword ptr [esp + 0x2c]
0x0057754B: fmul     st(1)
0x0057754D: fstp     dword ptr [esp + 0x3c]
0x00577551: fmul     dword ptr [esp + 0x30]
0x00577555: fstp     dword ptr [esp + 0x40]
0x00577559: fld      dword ptr [esp + 0x34]
0x0057755D: fstp     dword ptr [esi + 0x28c]
0x00577563: fld      dword ptr [esp + 0x38]
0x00577567: fstp     dword ptr [esi + 0x290]
0x0057756D: fld      dword ptr [esp + 0x3c]
0x00577571: fstp     dword ptr [esi + 0x294]
0x00577577: fld      dword ptr [esp + 0x40]
0x0057757B: fstp     dword ptr [esi + 0x298]
0x00577581: fld      dword ptr [esp + 0x14]
0x00577585: mov      ecx, edi
0x00577587: fstp     dword ptr [edi + 0x1b4]
0x0057758D: fld      dword ptr [esp + 0x18]
0x00577591: fstp     dword ptr [edi + 0x1b8]
0x00577597: fld      dword ptr [esp + 0x1c]
0x0057759B: fstp     dword ptr [edi + 0x1bc]
0x005775A1: fld      dword ptr [esp + 0x20]
0x005775A5: fstp     dword ptr [edi + 0x1c0]
0x005775AB: call     0x53eae0
0x005775B0: pop      edi
0x005775B1: pop      esi
0x005775B2: pop      ebx
0x005775B3: add      esp, 0xa0
0x005775B9: ret      4
0x005775BC: int3     
0x005775BD: int3     
0x005775BE: int3     
0x005775BF: int3     
0x005775C0: push     -1
0x005775C2: push     0x94856b
0x005775C7: mov      eax, dword ptr fs:[0]
0x005775CD: push     eax
0x005775CE: sub      esp, 0xe0
0x005775D4: push     ebx
0x005775D5: push     ebp
0x005775D6: push     esi
0x005775D7: push     edi
0x005775D8: mov      eax, dword ptr [0xb089c8]
0x005775DD: xor      eax, esp
0x005775DF: push     eax
0x005775E0: lea      eax, [esp + 0xf4]
0x005775E7: mov      dword ptr fs:[0], eax
0x005775ED: mov      ebx, ecx
0x005775EF: fldz     
0x005775F1: mov      eax, dword ptr [esp + 0x104]
0x005775F8: mov      dword ptr [ebx + 0x54], 0
0x005775FF: fst      dword ptr [ebx + 0x44]
0x00577602: fst      dword ptr [ebx + 0x48]
0x00577605: fst      dword ptr [ebx + 0x4c]
0x00577608: fld1     
0x0057760A: fstp     dword ptr [ebx + 0x50]
0x0057760D: mov      cl, byte ptr [eax + 0x29]
0x00577610: test     cl, cl
0x00577612: je       0x577645
0x00577614: fcomp    dword ptr [eax + 0x1c]
0x00577617: fnstsw   ax
0x00577619: test     ah, 0x44
0x0057761C: jnp      0x577647
0x0057761E: test     cl, cl
0x00577620: jne      0x577629
0x00577622: mov      ecx, ebx
0x00577624: call     0x576570
0x00577629: mov      ecx, dword ptr [esp + 0xf4]
0x00577630: mov      dword ptr fs:[0], ecx
0x00577637: pop      ecx
0x00577638: pop      edi
0x00577639: pop      esi
0x0057763A: pop      ebp
0x0057763B: pop      ebx
0x0057763C: add      esp, 0xec
0x00577642: ret      4
0x00577645: fstp     st(0)
0x00577647: mov      ebp, dword ptr [ebx + 8]
0x0057764A: movzx    eax, byte ptr [ebp + 1]
0x0057764E: mov      edx, dword ptr [ebp + 4]
0x00577651: mov      edx, dword ptr [edx + 0x40]
0x00577654: mov      eax, dword ptr [edx + eax*4]
0x00577657: test     eax, eax
0x00577659: je       0x57761e
0x0057765B: cmp      dword ptr [eax + 0x14], 0
0x0057765F: je       0x57761e
0x00577661: mov      eax, dword ptr [ebx + 0x40]
0x00577664: mov      ecx, dword ptr [eax + 0x234]
0x0057766A: test     ecx, ecx
0x0057766C: je       0x577622
0x0057766E: mov      ecx, dword ptr [ecx + 0x40]
0x00577671: cmp      dword ptr [ecx], 9
0x00577674: jne      0x577622
0x00577676: mov      eax, dword ptr [eax + 0x234]
0x0057767C: mov      edx, dword ptr [eax + 0x11c]
0x00577682: mov      eax, dword ptr [eax + 0x40]
0x00577685: mov      esi, dword ptr [eax + 4]
0x00577688: mov      ecx, 0xc
0x0057768D: lea      edi, [esp + 0x58]
0x00577691: rep movsd dword ptr es:[edi], dword ptr [esi]
0x00577693: movzx    ecx, byte ptr [ebp + 1]
0x00577697: mov      eax, dword ptr [ebp + 4]
0x0057769A: mov      eax, dword ptr [eax + 0x34]
0x0057769D: mov      eax, dword ptr [eax + ecx*4]
0x005776A0: mov      ecx, dword ptr [eax + 0x98]
0x005776A6: mov      eax, dword ptr [ecx + 0x40]
0x005776A9: mov      esi, dword ptr [eax + 4]
0x005776AC: mov      ecx, 8
0x005776B1: lea      edi, [esp + 0xd4]
0x005776B8: rep movsd dword ptr es:[edi], dword ptr [esi]
0x005776BA: movzx    eax, byte ptr [edx + 1]
0x005776BE: mov      ecx, dword ptr [edx + 4]
0x005776C1: mov      esi, dword ptr [ecx + 0x1c]
0x005776C4: add      eax, eax
0x005776C6: add      eax, eax
0x005776C8: mov      esi, dword ptr [eax + esi]
0x005776CB: test     esi, esi
0x005776CD: je       0x5776ef
0x005776CF: mov      edi, dword ptr [ecx + 0xc]
0x005776D2: test     dword ptr [eax + edi], 0x200
0x005776D9: je       0x5776ef
0x005776DB: test     byte ptr [esi + 8], 8
0x005776DF: je       0x5776ef
0x005776E1: mov      ecx, dword ptr [ecx + 0x20]
0x005776E4: add      eax, ecx
0x005776E6: cmp      dword ptr [eax], 0
0x005776E9: je       0x5776ef
0x005776EB: mov      eax, dword ptr [eax]
0x005776ED: jmp      0x5776f1
0x005776EF: mov      eax, esi
0x005776F1: fld      dword ptr [eax + 0xc]
0x005776F4: fstp     dword ptr [esp + 0x58]
0x005776F8: fld      dword ptr [eax + 0x10]
0x005776FB: fstp     dword ptr [esp + 0x5c]
0x005776FF: fld      dword ptr [eax + 0x14]
0x00577702: fstp     dword ptr [esp + 0x60]
0x00577706: fld      dword ptr [eax + 0x18]
0x00577709: fstp     dword ptr [esp + 0x64]
0x0057770D: movzx    eax, byte ptr [edx + 1]
0x00577711: mov      edx, dword ptr [edx + 4]
0x00577714: mov      ecx, dword ptr [edx + 0x1c]
0x00577717: add      eax, eax
0x00577719: add      eax, eax
0x0057771B: mov      ecx, dword ptr [eax + ecx]
0x0057771E: test     ecx, ecx
0x00577720: je       0x577742
0x00577722: mov      esi, dword ptr [edx + 0xc]
0x00577725: test     dword ptr [eax + esi], 0x200
0x0057772C: je       0x577742
0x0057772E: test     byte ptr [ecx + 8], 8
0x00577732: je       0x577742
0x00577734: mov      edx, dword ptr [edx + 0x20]
0x00577737: add      eax, edx
0x00577739: cmp      dword ptr [eax], 0
0x0057773C: je       0x577742
0x0057773E: mov      eax, dword ptr [eax]
0x00577740: jmp      0x577744
0x00577742: mov      eax, ecx
0x00577744: fld      dword ptr [eax + 0x1c]
0x00577747: fstp     dword ptr [esp + 0x68]
0x0057774B: fld      dword ptr [eax + 0x20]
0x0057774E: fstp     dword ptr [esp + 0x6c]
0x00577752: fld      dword ptr [eax + 0x24]
0x00577755: fstp     dword ptr [esp + 0x70]
0x00577759: fld      dword ptr [eax + 0x28]
0x0057775C: fstp     dword ptr [esp + 0x74]
0x00577760: movzx    eax, byte ptr [ebp + 1]
0x00577764: mov      ebp, dword ptr [ebp + 4]
0x00577767: mov      ecx, dword ptr [ebp + 0x1c]
0x0057776A: add      eax, eax
0x0057776C: add      eax, eax
0x0057776E: mov      ecx, dword ptr [eax + ecx]
0x00577771: test     ecx, ecx
0x00577773: je       0x577793
0x00577775: mov      edx, dword ptr [ebp + 0xc]
0x00577778: test     dword ptr [eax + edx], 0x200
0x0057777F: je       0x577793
0x00577781: test     byte ptr [ecx + 8], 8
0x00577785: je       0x577793
0x00577787: mov      edx, dword ptr [ebp + 0x20]
0x0057778A: add      eax, edx
0x0057778C: cmp      dword ptr [eax], 0
0x0057778F: je       0x577793
0x00577791: mov      ecx, dword ptr [eax]
0x00577793: fld      dword ptr [ecx + 0xc]
0x00577796: push     0
0x00577798: fstp     dword ptr [esp + 0xd8]
0x0057779F: push     2
0x005777A1: fld      dword ptr [ecx + 0x10]
0x005777A4: push     0xb4fe78
0x005777A9: fstp     dword ptr [esp + 0xe4]
0x005777B0: push     0
0x005777B2: fld      dword ptr [ecx + 0x14]
0x005777B5: push     0
0x005777B7: fstp     dword ptr [esp + 0xf0]
0x005777BE: lea      eax, [esp + 0x6c]
0x005777C2: fld      dword ptr [ecx + 0x18]
0x005777C5: push     eax
0x005777C6: lea      ecx, [esp + 0xec]
0x005777CD: fstp     dword ptr [esp + 0xf8]
0x005777D4: push     ecx
0x005777D5: call     0x5e7970
0x005777DA: add      esp, 0x1c
0x005777DD: test     eax, eax
0x005777DF: je       0x577622
0x005777E5: xor      eax, eax
0x005777E7: push     0x48
0x005777E9: push     eax
0x005777EA: lea      edx, [esp + 0x94]
0x005777F1: push     edx
0x005777F2: mov      byte ptr [esp + 0x38], 0
0x005777F7: mov      dword ptr [esp + 0x3c], eax
0x005777FB: mov      dword ptr [esp + 0x40], eax
0x005777FF: mov      dword ptr [esp + 0x44], eax
0x00577803: mov      dword ptr [esp + 0x48], eax
0x00577807: mov      dword ptr [esp + 0x4c], eax
0x0057780B: mov      dword ptr [esp + 0x50], eax
0x0057780F: mov      dword ptr [esp + 0x54], eax
0x00577813: mov      dword ptr [esp + 0x58], eax
0x00577817: mov      dword ptr [esp + 0x5c], eax
0x0057781B: mov      dword ptr [esp + 0x60], eax
0x0057781F: mov      dword ptr [esp + 0x94], eax
0x00577826: call     0x8eb080
0x0057782B: mov      ecx, dword ptr [ebx + 8]
0x0057782E: movzx    eax, byte ptr [ecx + 1]
0x00577832: mov      edx, dword ptr [ecx + 4]
0x00577835: mov      edx, dword ptr [edx + 0x34]
0x00577838: mov      eax, dword ptr [edx + eax*4]
0x0057783B: mov      eax, dword ptr [eax + 0x98]
0x00577841: mov      esi, dword ptr [ebx + 0x40]
0x00577844: mov      dword ptr [esp + 0x98], eax
0x0057784B: mov      edi, dword ptr [esi + 0x234]
0x00577851: mov      dword ptr [esp + 0x9c], edi
0x00577858: movzx    edx, byte ptr [ecx + 1]
0x0057785C: fld      dword ptr [esi + 0x210]
0x00577862: fchs     
0x00577864: mov      eax, dword ptr [ecx + 4]
0x00577867: fstp     dword ptr [esp + 0x28]
0x0057786B: mov      eax, dword ptr [eax + 0x34]
0x0057786E: fld      dword ptr [esi + 0x214]
0x00577874: mov      eax, dword ptr [eax + edx*4]
0x00577877: fchs     
0x00577879: mov      edx, dword ptr [eax + 0x98]
0x0057787F: fstp     dword ptr [esp + 0x2c]
0x00577883: mov      eax, dword ptr [edx + 0x40]
0x00577886: fld      dword ptr [esi + 0x218]
0x0057788C: mov      edx, dword ptr [eax + 4]
0x0057788F: fchs     
0x00577891: mov      eax, dword ptr [esi + 0x1e4]
0x00577897: fstp     dword ptr [esp + 0x30]
0x0057789B: add      esp, 0xc
0x0057789E: fld      dword ptr [edx + 0x10]
0x005778A1: push     0
0x005778A3: fstp     dword ptr [esp + 0x18]
0x005778A7: fld      dword ptr [eax + 0x70]
0x005778AA: fmul     dword ptr [esp + 0x18]
0x005778AE: fstp     dword ptr [esp + 0x18]
0x005778B2: call     0x506d40
0x005778B7: fld      dword ptr [esp + 0x1c]
0x005778BB: add      eax, 0xc
0x005778BE: fld      dword ptr [esp + 0x14]
0x005778C2: lea      ecx, [esp + 0x2c]
0x005778C6: fld      st(0)
0x005778C8: fmulp    st(2)
0x005778CA: fld      dword ptr [eax]
0x005778CC: faddp    st(2)
0x005778CE: fxch     st(1)
0x005778D0: fstp     dword ptr [esp + 0xa4]
0x005778D7: fld      dword ptr [esp + 0x20]
0x005778DB: fmul     st(1)
0x005778DD: fadd     dword ptr [eax + 4]
0x005778E0: fstp     dword ptr [esp + 0xa8]
0x005778E7: fld      dword ptr [esp + 0x24]
0x005778EB: fmul     st(1)
0x005778ED: fadd     dword ptr [eax + 8]
0x005778F0: fstp     dword ptr [esp + 0xac]
0x005778F7: fld      dword ptr [esi + 0x210]
0x005778FD: fstp     dword ptr [esp + 0x94]
0x00577904: fld      dword ptr [esi + 0x214]
0x0057790A: fstp     dword ptr [esp + 0x98]
0x00577911: fld      dword ptr [esi + 0x218]
0x00577917: fstp     dword ptr [esp + 0x9c]
0x0057791E: fld      dword ptr [esi + 0x21c]
0x00577924: mov      dword ptr [esp + 0xd0], ecx
0x0057792B: fstp     dword ptr [esp + 0xa0]
0x00577932: fstp     dword ptr [esp + 0xc4]
0x00577939: mov      dword ptr [esp + 0x4c], edi
0x0057793D: mov      byte ptr [esp + 0xce], 0
0x00577945: mov      byte ptr [esp + 0x54], 1
0x0057794A: mov      byte ptr [esp + 0x55], 1
0x0057794F: mov      esi, dword ptr [esi + 0x1e0]
0x00577955: lea      edi, [esi + 0xc]
0x00577958: mov      esi, dword ptr [esi + 0xcc]
0x0057795E: cmp      edi, esi
0x00577960: je       0x5779c6
0x00577962: mov      edx, dword ptr [edi]
0x00577964: mov      eax, dword ptr [edx + 0x11c]
0x0057796A: test     eax, eax
0x0057796C: je       0x577991
0x0057796E: movzx    ecx, byte ptr [eax + 1]
0x00577972: mov      ebp, dword ptr [eax + 4]
0x00577975: mov      ebp, dword ptr [ebp + 0x38]
0x00577978: mov      ecx, dword ptr [ebp + ecx*4]
0x0057797C: mov      ebp, dword ptr [ecx + 0x28]
0x0057797F: cmp      ebp, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x00577985: je       0x5779bf
0x00577987: mov      ecx, ebp
0x00577989: cmp      ecx, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x0057798F: je       0x5779bf
0x00577991: movzx    ecx, byte ptr [eax + 1]
0x00577995: fldz     
0x00577997: mov      eax, dword ptr [eax + 4]
0x0057799A: mov      eax, dword ptr [eax + 0x38]
0x0057799D: mov      ecx, dword ptr [eax + ecx*4]
0x005779A0: fcomp    dword ptr [ecx + 0x44]
0x005779A3: fnstsw   ax
0x005779A5: test     ah, 5
0x005779A8: jp       0x5779bf
0x005779AA: cmp      byte ptr [ecx + 0x3a], 0
0x005779AE: jne      0x5779bf
0x005779B0: mov      ecx, dword ptr [ebx + 0x40]
0x005779B3: mov      ecx, dword ptr [ecx + 0x1e0]
0x005779B9: push     edx
0x005779BA: call     0x575b50
0x005779BF: add      edi, 4
0x005779C2: cmp      edi, esi
0x005779C4: jne      0x577962
0x005779C6: mov      edx, dword ptr [ebx + 0x40]
0x005779C9: mov      ecx, dword ptr [edx + 0x1b4]
0x005779CF: lea      eax, [esp + 0x88]
0x005779D6: mov      dword ptr [esp + 0x14], 0x9928a0
0x005779DE: mov      dword ptr [esp + 0x18], eax
0x005779E2: mov      edx, dword ptr [ecx]
0x005779E4: mov      edx, dword ptr [edx + 8]
0x005779E7: push     1
0x005779E9: lea      eax, [esp + 0x18]
0x005779ED: push     eax
0x005779EE: mov      dword ptr [esp + 0x104], 0
0x005779F9: call     edx
0x005779FB: jmp      0x577629
0x00577A00: mov      eax, dword ptr [esp + 4]
0x00577A04: mov      ecx, dword ptr [eax + 4]
0x00577A07: push     ecx
0x00577A08: mov      ecx, dword ptr [esp + 0xc]
0x00577A0C: call     0x5766f0
0x00577A11: ret      
0x00577A12: int3     
0x00577A13: int3     
0x00577A14: int3     
0x00577A15: int3     
0x00577A16: int3     
0x00577A17: int3     
0x00577A18: int3     
0x00577A19: int3     
0x00577A1A: int3     
0x00577A1B: int3     
0x00577A1C: int3     
0x00577A1D: int3     
0x00577A1E: int3     
0x00577A1F: int3     
0x00577A20: push     -1
0x00577A22: push     0x9485cc
0x00577A27: mov      eax, dword ptr fs:[0]
0x00577A2D: push     eax
0x00577A2E: push     esi
0x00577A2F: push     edi
0x00577A30: mov      eax, dword ptr [0xb089c8]
0x00577A35: xor      eax, esp
0x00577A37: push     eax
0x00577A38: lea      eax, [esp + 0xc]
0x00577A3C: mov      dword ptr fs:[0], eax
0x00577A42: mov      esi, ecx
0x00577A44: mov      eax, dword ptr [esp + 0x1c]
0x00577A48: mov      ecx, dword ptr [eax + 8]
0x00577A4B: mov      ecx, dword ptr [ecx + 0x11c]
0x00577A51: movzx    eax, byte ptr [ecx + 1]
0x00577A55: mov      ecx, dword ptr [ecx + 4]
0x00577A58: mov      edx, dword ptr [ecx + 8]
0x00577A5B: test     dword ptr [edx + eax*4], 0x40000
0x00577A62: je       0x577aba
0x00577A64: mov      ecx, dword ptr [ecx + 0x14]
0x00577A67: lea      eax, [eax + eax*8]
0x00577A6A: lea      eax, [ecx + eax*4]
0x00577A6D: mov      ecx, 0x1c
0x00577A72: cmp      byte ptr [eax + 0x14], cl
0x00577A75: jne      0x577a7e
0x00577A77: mov      eax, dword ptr [eax + 4]
0x00577A7A: mov      edi, eax
0x00577A7C: jmp      0x577abc
0x00577A7E: cmp      byte ptr [eax + 0x15], cl
0x00577A81: jne      0x577a8a
0x00577A83: mov      eax, dword ptr [eax + 8]
0x00577A86: mov      edi, eax
0x00577A88: jmp      0x577abc
0x00577A8A: cmp      byte ptr [eax + 0x16], cl
0x00577A8D: jne      0x577a96
0x00577A8F: mov      eax, dword ptr [eax + 0xc]
0x00577A92: mov      edi, eax
0x00577A94: jmp      0x577abc
0x00577A96: cmp      byte ptr [eax + 0x17], cl
0x00577A99: jne      0x577aa2
0x00577A9B: mov      eax, dword ptr [eax + 0x10]
0x00577A9E: mov      edi, eax
0x00577AA0: jmp      0x577abc
0x00577AA2: mov      eax, dword ptr [eax]
0x00577AA4: test     eax, eax
0x00577AA6: je       0x577ab4
0x00577AA8: push     ecx
0x00577AA9: mov      ecx, eax
0x00577AAB: call     0x461400
0x00577AB0: mov      edi, eax
0x00577AB2: jmp      0x577abc
0x00577AB4: xor      eax, eax
0x00577AB6: mov      edi, eax
0x00577AB8: jmp      0x577abc
0x00577ABA: xor      edi, edi
0x00577ABC: mov      eax, dword ptr [edi + 0x1a8]
0x00577AC2: cmp      byte ptr [eax + 0x10], 0
0x00577AC6: je       0x577d40
0x00577ACC: mov      ecx, dword ptr [esi + 0x40]
0x00577ACF: fld1     
0x00577AD1: cmp      dword ptr [ecx + 0x23c], 0
0x00577AD8: fcom     dword ptr [ecx + 0xd48]
0x00577ADE: fnstsw   ax
0x00577AE0: je       0x577c59
0x00577AE6: test     ah, 0x44
0x00577AE9: jnp      0x577bc8
0x00577AEF: fcom     dword ptr [ecx + 0xd4c]
0x00577AF5: fnstsw   ax
0x00577AF7: test     ah, 0x44
0x00577AFA: jnp      0x577bc8
0x00577B00: fstp     st(0)
0x00577B02: fldz     
0x00577B04: fcom     dword ptr [ecx + 0xd48]
0x00577B0A: fnstsw   ax
0x00577B0C: test     ah, 5
0x00577B0F: jp       0x577b34
0x00577B11: mov      edx, ecx
0x00577B13: fstp     dword ptr [edx + 0xd48]
0x00577B19: mov      eax, dword ptr [esi + 0x40]
0x00577B1C: mov      ecx, dword ptr [eax + 0x1b4]
0x00577B22: mov      dword ptr [esp + 0x1c], 0x9929b0
0x00577B2A: mov      dword ptr [esp + 0x14], 2
0x00577B32: jmp      0x577b55
0x00577B34: mov      eax, ecx
0x00577B36: fstp     dword ptr [eax + 0xd4c]
0x00577B3C: mov      ecx, dword ptr [esi + 0x40]
0x00577B3F: mov      ecx, dword ptr [ecx + 0x1b4]
0x00577B45: mov      dword ptr [esp + 0x1c], 0x9929c4
0x00577B4D: mov      dword ptr [esp + 0x14], 3
0x00577B55: mov      edx, dword ptr [ecx]
0x00577B57: mov      edx, dword ptr [edx + 8]
0x00577B5A: push     1
0x00577B5C: lea      eax, [esp + 0x20]
0x00577B60: push     eax
0x00577B61: call     edx
0x00577B63: mov      ecx, dword ptr [esi + 0x40]
0x00577B66: mov      dword ptr [esp + 0x14], 0xffffffff
0x00577B6E: call     0x540520
0x00577B73: push     edi
0x00577B74: mov      ecx, esi
0x00577B76: call     0x577090
0x00577B7B: mov      eax, dword ptr [esi + 0x40]
0x00577B7E: mov      ecx, dword ptr [eax + 0x1e4]
0x00577B84: fld      dword ptr [ecx + 0x58]
0x00577B87: fstp     dword ptr [eax + 0xd50]
0x00577B8D: mov      edx, dword ptr [esi + 0x40]
0x00577B90: mov      ecx, dword ptr [edx + 0x1b4]
0x00577B96: mov      dword ptr [esp + 0x1c], 0x992a64
0x00577B9E: mov      eax, dword ptr [ecx]
0x00577BA0: mov      eax, dword ptr [eax + 8]
0x00577BA3: push     1
0x00577BA5: lea      edx, [esp + 0x20]
0x00577BA9: push     edx
0x00577BAA: mov      dword ptr [esp + 0x1c], 4
0x00577BB2: call     eax
0x00577BB4: mov      ecx, dword ptr [esp + 0xc]
0x00577BB8: mov      dword ptr fs:[0], ecx
0x00577BBF: pop      ecx
0x00577BC0: pop      edi
0x00577BC1: pop      esi
0x00577BC2: add      esp, 0xc
0x00577BC5: ret      4
0x00577BC8: fcomp    dword ptr [ecx + 0xd48]
0x00577BCE: fnstsw   ax
0x00577BD0: fldz     
0x00577BD2: test     ah, 0x44
0x00577BD5: jp       0x577c18
0x00577BD7: fstp     dword ptr [ecx + 0xd48]
0x00577BDD: mov      edx, dword ptr [esi + 0x40]
0x00577BE0: mov      ecx, dword ptr [edx + 0x1b4]
0x00577BE6: mov      dword ptr [esp + 0x1c], 0x9929b0
0x00577BEE: mov      eax, dword ptr [ecx]
0x00577BF0: mov      eax, dword ptr [eax + 8]
0x00577BF3: push     1
0x00577BF5: lea      edx, [esp + 0x20]
0x00577BF9: push     edx
0x00577BFA: mov      dword ptr [esp + 0x1c], 0
0x00577C02: call     eax
0x00577C04: mov      ecx, dword ptr [esp + 0xc]
0x00577C08: mov      dword ptr fs:[0], ecx
0x00577C0F: pop      ecx
0x00577C10: pop      edi
0x00577C11: pop      esi
0x00577C12: add      esp, 0xc
0x00577C15: ret      4
0x00577C18: fstp     dword ptr [ecx + 0xd4c]
0x00577C1E: mov      edx, dword ptr [esi + 0x40]
0x00577C21: mov      ecx, dword ptr [edx + 0x1b4]
0x00577C27: mov      dword ptr [esp + 0x1c], 0x9929c4
0x00577C2F: mov      eax, dword ptr [ecx]
0x00577C31: mov      eax, dword ptr [eax + 8]
0x00577C34: push     1
0x00577C36: lea      edx, [esp + 0x20]
0x00577C3A: push     edx
0x00577C3B: mov      dword ptr [esp + 0x1c], 1
0x00577C43: call     eax
0x00577C45: mov      ecx, dword ptr [esp + 0xc]
0x00577C49: mov      dword ptr fs:[0], ecx
0x00577C50: pop      ecx
0x00577C51: pop      edi
0x00577C52: pop      esi
0x00577C53: add      esp, 0xc
0x00577C56: ret      4
0x00577C59: test     ah, 0x44
0x00577C5C: jnp      0x577cad
0x00577C5E: fcom     dword ptr [ecx + 0xd4c]
0x00577C64: fnstsw   ax
0x00577C66: test     ah, 0x44
0x00577C69: jnp      0x577cad
0x00577C6B: fstp     st(0)
0x00577C6D: call     0x5409f0
0x00577C72: mov      ecx, dword ptr [esi + 0x40]
0x00577C75: mov      ecx, dword ptr [ecx + 0x1b4]
0x00577C7B: mov      dword ptr [esp + 0x1c], 0x992214
0x00577C83: mov      edx, dword ptr [ecx]
0x00577C85: mov      edx, dword ptr [edx + 8]
0x00577C88: push     1
0x00577C8A: lea      eax, [esp + 0x20]
0x00577C8E: push     eax
0x00577C8F: mov      dword ptr [esp + 0x1c], 7
0x00577C97: call     edx
0x00577C99: mov      ecx, dword ptr [esp + 0xc]
0x00577C9D: mov      dword ptr fs:[0], ecx
0x00577CA4: pop      ecx
0x00577CA5: pop      edi
0x00577CA6: pop      esi
0x00577CA7: add      esp, 0xc
0x00577CAA: ret      4
0x00577CAD: fcomp    dword ptr [ecx + 0xd48]
0x00577CB3: fnstsw   ax
0x00577CB5: fldz     
0x00577CB7: test     ah, 0x44
0x00577CBA: mov      eax, ecx
0x00577CBC: jp       0x577cff
0x00577CBE: fstp     dword ptr [eax + 0xd48]
0x00577CC4: mov      ecx, dword ptr [esi + 0x40]
0x00577CC7: mov      ecx, dword ptr [ecx + 0x1b4]
0x00577CCD: mov      dword ptr [esp + 0x1c], 0x9929b0
0x00577CD5: mov      edx, dword ptr [ecx]
0x00577CD7: mov      edx, dword ptr [edx + 8]
0x00577CDA: push     1
0x00577CDC: lea      eax, [esp + 0x20]
0x00577CE0: push     eax
0x00577CE1: mov      dword ptr [esp + 0x1c], 5
0x00577CE9: call     edx
0x00577CEB: mov      ecx, dword ptr [esp + 0xc]
0x00577CEF: mov      dword ptr fs:[0], ecx
0x00577CF6: pop      ecx
0x00577CF7: pop      edi
0x00577CF8: pop      esi
0x00577CF9: add      esp, 0xc
0x00577CFC: ret      4
0x00577CFF: fstp     dword ptr [eax + 0xd4c]
0x00577D05: mov      ecx, dword ptr [esi + 0x40]
0x00577D08: mov      ecx, dword ptr [ecx + 0x1b4]
0x00577D0E: mov      dword ptr [esp + 0x1c], 0x9929c4
0x00577D16: mov      edx, dword ptr [ecx]
0x00577D18: mov      edx, dword ptr [edx + 8]
0x00577D1B: push     1
0x00577D1D: lea      eax, [esp + 0x20]
0x00577D21: push     eax
0x00577D22: mov      dword ptr [esp + 0x1c], 6
0x00577D2A: call     edx
0x00577D2C: mov      ecx, dword ptr [esp + 0xc]
0x00577D30: mov      dword ptr fs:[0], ecx
0x00577D37: pop      ecx
0x00577D38: pop      edi
0x00577D39: pop      esi
0x00577D3A: add      esp, 0xc
0x00577D3D: ret      4
0x00577D40: push     edi
0x00577D41: mov      ecx, esi
0x00577D43: call     0x577090
0x00577D48: mov      ecx, dword ptr [esp + 0xc]
0x00577D4C: mov      dword ptr fs:[0], ecx
0x00577D53: pop      ecx
0x00577D54: pop      edi
0x00577D55: pop      esi
0x00577D56: add      esp, 0xc
0x00577D59: ret      4
0x00577D5C: int3     
0x00577D5D: int3     
0x00577D5E: int3     
0x00577D5F: int3     
0x00577D60: push     -1
0x00577D62: push     0x9485f7
0x00577D67: mov      eax, dword ptr fs:[0]
0x00577D6D: push     eax
0x00577D6E: sub      esp, 0x10
0x00577D71: push     esi
0x00577D72: push     edi
0x00577D73: mov      eax, dword ptr [0xb089c8]
0x00577D78: xor      eax, esp
0x00577D7A: push     eax
0x00577D7B: lea      eax, [esp + 0x1c]
0x00577D7F: mov      dword ptr fs:[0], eax
0x00577D85: mov      edi, ecx
0x00577D87: mov      eax, dword ptr [esp + 0x2c]
0x00577D8B: mov      ecx, dword ptr [eax + 8]
0x00577D8E: mov      ecx, dword ptr [ecx + 0x11c]
0x00577D94: movzx    eax, byte ptr [ecx + 1]
0x00577D98: mov      ecx, dword ptr [ecx + 4]
0x00577D9B: mov      edx, dword ptr [ecx + 8]
0x00577D9E: test     dword ptr [edx + eax*4], 0x40000
0x00577DA5: je       0x577dfd
0x00577DA7: mov      ecx, dword ptr [ecx + 0x14]
0x00577DAA: lea      eax, [eax + eax*8]
0x00577DAD: lea      eax, [ecx + eax*4]
0x00577DB0: mov      ecx, 0x1c
0x00577DB5: cmp      byte ptr [eax + 0x14], cl
0x00577DB8: jne      0x577dc1
0x00577DBA: mov      eax, dword ptr [eax + 4]
0x00577DBD: mov      esi, eax
0x00577DBF: jmp      0x577dff
0x00577DC1: cmp      byte ptr [eax + 0x15], cl
0x00577DC4: jne      0x577dcd
0x00577DC6: mov      eax, dword ptr [eax + 8]
0x00577DC9: mov      esi, eax
0x00577DCB: jmp      0x577dff
0x00577DCD: cmp      byte ptr [eax + 0x16], cl
0x00577DD0: jne      0x577dd9
0x00577DD2: mov      eax, dword ptr [eax + 0xc]
0x00577DD5: mov      esi, eax
0x00577DD7: jmp      0x577dff
0x00577DD9: cmp      byte ptr [eax + 0x17], cl
0x00577DDC: jne      0x577de5
0x00577DDE: mov      eax, dword ptr [eax + 0x10]
0x00577DE1: mov      esi, eax
0x00577DE3: jmp      0x577dff
0x00577DE5: mov      eax, dword ptr [eax]
0x00577DE7: test     eax, eax
0x00577DE9: je       0x577df7
0x00577DEB: push     ecx
0x00577DEC: mov      ecx, eax
0x00577DEE: call     0x461400
0x00577DF3: mov      esi, eax
0x00577DF5: jmp      0x577dff
0x00577DF7: xor      eax, eax
0x00577DF9: mov      esi, eax
0x00577DFB: jmp      0x577dff
0x00577DFD: xor      esi, esi
0x00577DFF: mov      ecx, esi
0x00577E01: call     0x5353c0
0x00577E06: test     eax, eax
0x00577E08: je       0x577ead
0x00577E0E: mov      eax, dword ptr [edi + 0x40]
0x00577E11: cmp      dword ptr [eax + 0xd74], 0
0x00577E18: jne      0x577ead
0x00577E1E: cmp      dword ptr [eax + 0x1f4], 0
0x00577E25: jne      0x577ead
0x00577E2B: push     1
0x00577E2D: mov      ecx, esi
0x00577E2F: call     0x535320
0x00577E34: mov      edx, dword ptr [edi + 0x40]
0x00577E37: mov      ecx, dword ptr [edx + 0x1b4]
0x00577E3D: mov      dword ptr [esp + 0xc], 0x9929d8
0x00577E45: mov      dword ptr [esp + 0x10], esi
0x00577E49: mov      eax, dword ptr [ecx]
0x00577E4B: mov      eax, dword ptr [eax + 8]
0x00577E4E: push     1
0x00577E50: lea      edx, [esp + 0x10]
0x00577E54: push     edx
0x00577E55: mov      dword ptr [esp + 0x2c], 0
0x00577E5D: call     eax
0x00577E5F: mov      ecx, dword ptr [edi + 0x40]
0x00577E62: mov      edx, dword ptr [0xb1bae0]
0x00577E68: add      ecx, 0xd88
0x00577E6E: push     ecx
0x00577E6F: push     0
0x00577E71: push     edx
0x00577E72: mov      dword ptr [esp + 0x30], 0xffffffff
0x00577E7A: call     0x52d190
0x00577E7F: mov      eax, dword ptr [edi + 0x40]
0x00577E82: mov      ecx, dword ptr [eax + 0x1b4]
0x00577E88: add      esp, 0xc
0x00577E8B: mov      dword ptr [esp + 0x14], 0x992ac8
0x00577E93: mov      dword ptr [esp + 0x18], esi
0x00577E97: mov      edx, dword ptr [ecx]
0x00577E99: mov      edx, dword ptr [edx + 8]
0x00577E9C: push     1
0x00577E9E: lea      eax, [esp + 0x18]
0x00577EA2: push     eax
0x00577EA3: mov      dword ptr [esp + 0x2c], 1
0x00577EAB: call     edx
0x00577EAD: mov      ecx, dword ptr [esp + 0x1c]
0x00577EB1: mov      dword ptr fs:[0], ecx
0x00577EB8: pop      ecx
0x00577EB9: pop      edi
0x00577EBA: pop      esi
0x00577EBB: add      esp, 0x1c
0x00577EBE: ret      4
0x00577EC1: int3     
0x00577EC2: int3     
0x00577EC3: int3     
0x00577EC4: int3     
0x00577EC5: int3     
0x00577EC6: int3     
0x00577EC7: int3     
0x00577EC8: int3     
0x00577EC9: int3     
0x00577ECA: int3     
0x00577ECB: int3     
0x00577ECC: int3     
0x00577ECD: int3     
0x00577ECE: int3     
0x00577ECF: int3     
0x00577ED0: push     -1
0x00577ED2: push     0x94861a
0x00577ED7: mov      eax, dword ptr fs:[0]
0x00577EDD: push     eax
0x00577EDE: push     ecx
0x00577EDF: mov      eax, dword ptr [0xb089c8]
0x00577EE4: xor      eax, esp
0x00577EE6: push     eax
0x00577EE7: lea      eax, [esp + 8]
0x00577EEB: mov      dword ptr fs:[0], eax
0x00577EF1: mov      eax, dword ptr [ecx + 0x40]
0x00577EF4: mov      ecx, dword ptr [eax + 0x1b4]
0x00577EFA: mov      dword ptr [esp + 4], 0x992a78
0x00577F02: mov      edx, dword ptr [ecx]
0x00577F04: mov      edx, dword ptr [edx + 8]
0x00577F07: push     1
0x00577F09: lea      eax, [esp + 8]
0x00577F0D: push     eax
0x00577F0E: mov      dword ptr [esp + 0x18], 0
0x00577F16: call     edx
0x00577F18: mov      ecx, dword ptr [esp + 8]
0x00577F1C: mov      dword ptr fs:[0], ecx
0x00577F23: pop      ecx
0x00577F24: add      esp, 0x10
0x00577F27: ret      
0x00577F28: int3     
0x00577F29: int3     
0x00577F2A: int3     
0x00577F2B: int3     
0x00577F2C: int3     
0x00577F2D: int3     
0x00577F2E: int3     
0x00577F2F: int3     
0x00577F30: push     -1
0x00577F32: push     0x948645
0x00577F37: mov      eax, dword ptr fs:[0]
0x00577F3D: push     eax
0x00577F3E: push     ecx
0x00577F3F: push     esi
0x00577F40: mov      eax, dword ptr [0xb089c8]
0x00577F45: xor      eax, esp
0x00577F47: push     eax
0x00577F48: lea      eax, [esp + 0xc]
0x00577F4C: mov      dword ptr fs:[0], eax
0x00577F52: mov      esi, ecx
0x00577F54: mov      eax, dword ptr [esi + 0x40]
0x00577F57: mov      ecx, dword ptr [eax + 0x1b4]
0x00577F5D: mov      dword ptr [esp + 8], 0x9929ec
0x00577F65: mov      edx, dword ptr [ecx]
0x00577F67: mov      edx, dword ptr [edx + 8]
0x00577F6A: push     1
0x00577F6C: lea      eax, [esp + 0xc]
0x00577F70: push     eax
0x00577F71: mov      dword ptr [esp + 0x1c], 0
0x00577F79: call     edx
0x00577F7B: mov      eax, dword ptr [esi + 0x40]
0x00577F7E: mov      ecx, dword ptr [eax + 0x1b4]
0x00577F84: mov      dword ptr [esp + 8], 0x992aa0
0x00577F8C: mov      edx, dword ptr [ecx]
0x00577F8E: mov      edx, dword ptr [edx + 8]
0x00577F91: push     1
0x00577F93: lea      eax, [esp + 0xc]
0x00577F97: push     eax
0x00577F98: mov      dword ptr [esp + 0x1c], 1
0x00577FA0: call     edx
0x00577FA2: fldz     
0x00577FA4: mov      ecx, dword ptr [esp + 0x1c]
0x00577FA8: fld      st(0)
0x00577FAA: fcomp    dword ptr [ecx + 0xc]
0x00577FAD: mov      dword ptr [esp + 0x14], 0xffffffff
0x00577FB5: mov      dword ptr [esp + 8], 0x979378
0x00577FBD: fnstsw   ax
0x00577FBF: test     ah, 0x44
0x00577FC2: jp       0x577ff2
0x00577FC4: fcomp    dword ptr [ecx + 0x10]
0x00577FC7: fnstsw   ax
0x00577FC9: test     ah, 0x44
0x00577FCC: jp       0x577ff4
0x00577FCE: mov      ecx, dword ptr [esi + 0x40]
0x00577FD1: cmp      dword ptr [ecx + 0xd74], 0
0x00577FD8: jne      0x578028
0x00577FDA: call     0x5409f0
0x00577FDF: mov      ecx, dword ptr [esp + 0xc]
0x00577FE3: mov      dword ptr fs:[0], ecx
0x00577FEA: pop      ecx
0x00577FEB: pop      esi
0x00577FEC: add      esp, 0x10
0x00577FEF: ret      4
0x00577FF2: fstp     st(0)
0x00577FF4: mov      eax, dword ptr [ecx + 0x48]
0x00577FF7: cmp      byte ptr [eax], 0
0x00577FFA: jne      0x577fce
0x00577FFC: mov      edx, dword ptr [esi + 0x40]
0x00577FFF: cmp      dword ptr [edx + 0x23c], 0
0x00578006: push     ecx
0x00578007: mov      ecx, esi
0x00578009: je       0x578023
0x0057800B: call     0x5769e0
0x00578010: mov      ecx, dword ptr [esp + 0xc]
0x00578014: mov      dword ptr fs:[0], ecx
0x0057801B: pop      ecx
0x0057801C: pop      esi
0x0057801D: add      esp, 0x10
0x00578020: ret      4
0x00578023: call     0x576be0
0x00578028: mov      ecx, dword ptr [esp + 0xc]
0x0057802C: mov      dword ptr fs:[0], ecx
0x00578033: pop      ecx
0x00578034: pop      esi
0x00578035: add      esp, 0x10
0x00578038: ret      4
0x0057803B: int3     
0x0057803C: int3     
0x0057803D: int3     
0x0057803E: int3     
0x0057803F: int3     
0x00578040: mov      eax, dword ptr [esp + 4]
0x00578044: mov      ecx, dword ptr [eax + 4]
0x00578047: push     ecx
0x00578048: mov      ecx, dword ptr [esp + 0xc]
0x0057804C: call     0x5775c0
0x00578051: ret      
0x00578052: int3     
0x00578053: int3     
0x00578054: int3     
0x00578055: int3     
0x00578056: int3     
0x00578057: int3     
0x00578058: int3     
0x00578059: int3     
0x0057805A: int3     
0x0057805B: int3     
0x0057805C: int3     
0x0057805D: int3     
0x0057805E: int3     
0x0057805F: int3     
0x00578060: mov      eax, dword ptr [ecx + 0x40]
0x00578063: mov      dword ptr [eax + 0x26c], 1
0x0057806D: jmp      0x577f30
0x00578072: int3     
0x00578073: int3     
0x00578074: int3     
0x00578075: int3     
0x00578076: int3     
0x00578077: int3     
0x00578078: int3     
0x00578079: int3     
0x0057807A: int3     
0x0057807B: int3     
0x0057807C: int3     
0x0057807D: int3     
0x0057807E: int3     
0x0057807F: int3     
0x00578080: mov      eax, dword ptr [esp + 4]
0x00578084: mov      ecx, dword ptr [eax + 4]
0x00578087: push     ecx
0x00578088: mov      ecx, dword ptr [esp + 0xc]
0x0057808C: call     0x577a20
0x00578091: ret      
0x00578092: int3     
0x00578093: int3     
0x00578094: int3     
0x00578095: int3     
0x00578096: int3     
0x00578097: int3     
0x00578098: int3     
0x00578099: int3     
0x0057809A: int3     
0x0057809B: int3     
0x0057809C: int3     
0x0057809D: int3     
0x0057809E: int3     
0x0057809F: int3     
0x005780A0: mov      eax, dword ptr [esp + 4]
0x005780A4: mov      ecx, dword ptr [eax + 4]
0x005780A7: push     ecx
0x005780A8: mov      ecx, dword ptr [esp + 0xc]
0x005780AC: call     0x577d60
0x005780B1: ret      
0x005780B2: int3     
0x005780B3: int3     
0x005780B4: int3     
0x005780B5: int3     
0x005780B6: int3     
0x005780B7: int3     
0x005780B8: int3     
0x005780B9: int3     
0x005780BA: int3     
0x005780BB: int3     
0x005780BC: int3     
0x005780BD: int3     
0x005780BE: int3     
0x005780BF: int3     
0x005780C0: push     -1
0x005780C2: push     0x94869c
0x005780C7: mov      eax, dword ptr fs:[0]
0x005780CD: push     eax
0x005780CE: sub      esp, 0xf8
0x005780D4: push     ebx
0x005780D5: push     ebp
0x005780D6: push     esi
0x005780D7: push     edi
0x005780D8: mov      eax, dword ptr [0xb089c8]
0x005780DD: xor      eax, esp
0x005780DF: push     eax
0x005780E0: lea      eax, [esp + 0x10c]
0x005780E7: mov      dword ptr fs:[0], eax
0x005780ED: mov      esi, ecx
0x005780EF: mov      ebx, dword ptr [esp + 0x11c]
0x005780F6: cmp      byte ptr [ebx + 0x46], 0
0x005780FA: je       0x578a16
0x00578100: cmp      byte ptr [ebx + 0x44], 0
0x00578104: jne      0x578a16
0x0057810A: mov      eax, dword ptr [ebx + 8]
0x0057810D: mov      ecx, dword ptr [eax + 0x11c]
0x00578113: movzx    eax, byte ptr [ecx + 1]
0x00578117: mov      dword ptr [esp + 0x34], ecx
0x0057811B: mov      ecx, dword ptr [ecx + 4]
0x0057811E: mov      edx, dword ptr [ecx + 8]
0x00578121: test     dword ptr [edx + eax*4], 0x40000
0x00578128: je       0x578180
0x0057812A: mov      ecx, dword ptr [ecx + 0x14]
0x0057812D: lea      eax, [eax + eax*8]
0x00578130: lea      eax, [ecx + eax*4]
0x00578133: mov      ecx, 0x1c
0x00578138: cmp      byte ptr [eax + 0x14], cl
0x0057813B: jne      0x578144
0x0057813D: mov      eax, dword ptr [eax + 4]
0x00578140: mov      edi, eax
0x00578142: jmp      0x578182
0x00578144: cmp      byte ptr [eax + 0x15], cl
0x00578147: jne      0x578150
0x00578149: mov      eax, dword ptr [eax + 8]
0x0057814C: mov      edi, eax
0x0057814E: jmp      0x578182
0x00578150: cmp      byte ptr [eax + 0x16], cl
0x00578153: jne      0x57815c
0x00578155: mov      eax, dword ptr [eax + 0xc]
0x00578158: mov      edi, eax
0x0057815A: jmp      0x578182
0x0057815C: cmp      byte ptr [eax + 0x17], cl
0x0057815F: jne      0x578168
0x00578161: mov      eax, dword ptr [eax + 0x10]
0x00578164: mov      edi, eax
0x00578166: jmp      0x578182
0x00578168: mov      eax, dword ptr [eax]
0x0057816A: test     eax, eax
0x0057816C: je       0x57817a
0x0057816E: push     ecx
0x0057816F: mov      ecx, eax
0x00578171: call     0x461400
0x00578176: mov      edi, eax
0x00578178: jmp      0x578182
0x0057817A: xor      eax, eax
0x0057817C: mov      edi, eax
0x0057817E: jmp      0x578182
0x00578180: xor      edi, edi
0x00578182: mov      eax, dword ptr [esi + 0x40]
0x00578185: cmp      dword ptr [eax + 0x1ec], 0
0x0057818C: je       0x578a16
0x00578192: cmp      dword ptr [edi + 0x1ec], 0
0x00578199: je       0x578a16
0x0057819F: fld      dword ptr [ebx + 0x1c]
0x005781A2: mov      ecx, dword ptr [eax + 0x1b4]
0x005781A8: fstp     dword ptr [esp + 0x14]
0x005781AC: mov      dword ptr [esp + 0x58], 0x992b0c
0x005781B4: fld      dword ptr [ebx + 0x20]
0x005781B7: mov      dword ptr [esp + 0x5c], edi
0x005781BB: fstp     dword ptr [esp + 0x18]
0x005781BF: fld      dword ptr [ebx + 0x24]
0x005781C2: fstp     dword ptr [esp + 0x1c]
0x005781C6: fld      dword ptr [ebx + 0x28]
0x005781C9: fstp     dword ptr [esp + 0x20]
0x005781CD: fld      dword ptr [esp + 0x14]
0x005781D1: fstp     dword ptr [esp + 0x60]
0x005781D5: fld      dword ptr [esp + 0x18]
0x005781D9: fstp     dword ptr [esp + 0x64]
0x005781DD: fld      dword ptr [esp + 0x1c]
0x005781E1: fstp     dword ptr [esp + 0x68]
0x005781E5: fld      dword ptr [esp + 0x20]
0x005781E9: fstp     dword ptr [esp + 0x6c]
0x005781ED: mov      edx, dword ptr [ecx]
0x005781EF: mov      edx, dword ptr [edx + 8]
0x005781F2: push     1
0x005781F4: lea      eax, [esp + 0x5c]
0x005781F8: push     eax
0x005781F9: mov      dword ptr [esp + 0x11c], 0
0x00578204: call     edx
0x00578206: mov      eax, dword ptr [esi + 0x40]
0x00578209: mov      ecx, dword ptr [eax + 0x1b4]
0x0057820F: mov      dword ptr [esp + 0x24], 0x992a8c
0x00578217: mov      edx, dword ptr [ecx]
0x00578219: mov      edx, dword ptr [edx + 8]
0x0057821C: push     1
0x0057821E: lea      eax, [esp + 0x28]
0x00578222: push     eax
0x00578223: mov      dword ptr [esp + 0x11c], 1
0x0057822E: call     edx
0x00578230: fldz     
0x00578232: mov      eax, dword ptr [esi + 0x40]
0x00578235: fst      dword ptr [esp + 0x38]
0x00578239: fst      dword ptr [esp + 0x3c]
0x0057823D: mov      dword ptr [esp + 0x114], 0xffffffff
0x00578248: fstp     dword ptr [esp + 0x40]
0x0057824C: fld1     
0x0057824E: fstp     dword ptr [esp + 0x44]
0x00578252: cmp      dword ptr [eax + 0x23c], 0
0x00578259: je       0x578281
0x0057825B: fld      dword ptr [eax + 0xc70]
0x00578261: fstp     dword ptr [esp + 0x38]
0x00578265: fld      dword ptr [eax + 0xc74]
0x0057826B: fstp     dword ptr [esp + 0x3c]
0x0057826F: fld      dword ptr [eax + 0xc78]
0x00578275: fstp     dword ptr [esp + 0x40]
0x00578279: fld      dword ptr [eax + 0xc7c]
0x0057827F: jmp      0x5782a5
0x00578281: fld      dword ptr [eax + 0x28c]
0x00578287: fstp     dword ptr [esp + 0x38]
0x0057828B: fld      dword ptr [eax + 0x290]
0x00578291: fstp     dword ptr [esp + 0x3c]
0x00578295: fld      dword ptr [eax + 0x294]
0x0057829B: fstp     dword ptr [esp + 0x40]
0x0057829F: fld      dword ptr [eax + 0x298]
0x005782A5: lea      eax, [esp + 0x38]
0x005782A9: fstp     dword ptr [esp + 0x44]
0x005782AD: push     eax
0x005782AE: lea      ecx, [esp + 0x78]
0x005782B2: push     ecx
0x005782B3: call     0x51ac00
0x005782B8: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x005782BE: fstp     dword ptr [esp + 4]
0x005782C2: lea      ecx, [esp + 0x40]
0x005782C6: fld      dword ptr [0x9692f0] ; [f32=450, f64=0.000292969, u32=0x43E10000]
0x005782CC: mov      ebp, eax
0x005782CE: fstp     dword ptr [esp]
0x005782D1: call     0x51bc60
0x005782D6: push     ecx
0x005782D7: fstp     dword ptr [esp]
0x005782DA: call     0x509740
0x005782DF: fstp     dword ptr [esp + 0x30]
0x005782E3: add      esp, 0xc
0x005782E6: fld      dword ptr [ebp]
0x005782E9: fld      dword ptr [esp + 0x24]
0x005782ED: fld      st(0)
0x005782EF: fmulp    st(2)
0x005782F1: fxch     st(1)
0x005782F3: fstp     dword ptr [esp + 0x14]
0x005782F7: fld      dword ptr [ebp + 4]
0x005782FA: fmul     st(1)
0x005782FC: fstp     dword ptr [esp + 0x18]
0x00578300: fld      dword ptr [ebp + 8]
0x00578303: fmul     st(1)
0x00578305: fstp     dword ptr [esp + 0x1c]
0x00578309: fmul     dword ptr [ebp + 0xc]
0x0057830C: fstp     dword ptr [esp + 0x20]
0x00578310: fld      dword ptr [esp + 0x14]
0x00578314: fstp     dword ptr [esp + 0x38]
0x00578318: fld      dword ptr [esp + 0x18]
0x0057831C: fstp     dword ptr [esp + 0x3c]
0x00578320: fld      dword ptr [esp + 0x1c]
0x00578324: fstp     dword ptr [esp + 0x40]
0x00578328: fld      dword ptr [esp + 0x20]
0x0057832C: fstp     dword ptr [esp + 0x44]
0x00578330: fldz     
0x00578332: fst      dword ptr [esp + 0x48]
0x00578336: fst      dword ptr [esp + 0x4c]
0x0057833A: fstp     dword ptr [esp + 0x50]
0x0057833E: fld1     
0x00578340: fstp     dword ptr [esp + 0x54]
0x00578344: cmp      dword ptr [edi + 0x23c], 0
0x0057834B: je       0x578373
0x0057834D: fld      dword ptr [edi + 0xc70]
0x00578353: fstp     dword ptr [esp + 0x48]
0x00578357: fld      dword ptr [edi + 0xc74]
0x0057835D: fstp     dword ptr [esp + 0x4c]
0x00578361: fld      dword ptr [edi + 0xc78]
0x00578367: fstp     dword ptr [esp + 0x50]
0x0057836B: fld      dword ptr [edi + 0xc7c]
0x00578371: jmp      0x578397
0x00578373: fld      dword ptr [edi + 0x28c]
0x00578379: fstp     dword ptr [esp + 0x48]
0x0057837D: fld      dword ptr [edi + 0x290]
0x00578383: fstp     dword ptr [esp + 0x4c]
0x00578387: fld      dword ptr [edi + 0x294]
0x0057838D: fstp     dword ptr [esp + 0x50]
0x00578391: fld      dword ptr [edi + 0x298]
0x00578397: lea      edx, [esp + 0x48]
0x0057839B: fstp     dword ptr [esp + 0x54]
0x0057839F: push     edx
0x005783A0: lea      eax, [esp + 0x78]
0x005783A4: push     eax
0x005783A5: call     0x51ac00
0x005783AA: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x005783B0: fstp     dword ptr [esp + 4]
0x005783B4: lea      ecx, [esp + 0x50]
0x005783B8: fld      dword ptr [0x9692f0] ; [f32=450, f64=0.000292969, u32=0x43E10000]
0x005783BE: mov      ebp, eax
0x005783C0: fstp     dword ptr [esp]
0x005783C3: call     0x51bc60
0x005783C8: push     ecx
0x005783C9: fstp     dword ptr [esp]
0x005783CC: call     0x509740
0x005783D1: fstp     dword ptr [esp + 0x30]
0x005783D5: mov      ecx, dword ptr [esi + 0x40]
0x005783D8: fld      dword ptr [esp + 0x30]
0x005783DC: add      esp, 0xc
0x005783DF: fld      st(0)
0x005783E1: fmul     dword ptr [ebp]
0x005783E4: fstp     dword ptr [esp + 0x14]
0x005783E8: fld      dword ptr [ebp + 4]
0x005783EB: fmul     st(1)
0x005783ED: fstp     dword ptr [esp + 0x18]
0x005783F1: fld      dword ptr [ebp + 8]
0x005783F4: fmul     st(1)
0x005783F6: fstp     dword ptr [esp + 0x1c]
0x005783FA: fmul     dword ptr [ebp + 0xc]
0x005783FD: mov      ebp, 0x992a50
0x00578402: fstp     dword ptr [esp + 0x20]
0x00578406: fld      dword ptr [esp + 0x14]
0x0057840A: fstp     dword ptr [esp + 0x48]
0x0057840E: fld      dword ptr [esp + 0x18]
0x00578412: fstp     dword ptr [esp + 0x4c]
0x00578416: fld      dword ptr [esp + 0x1c]
0x0057841A: fstp     dword ptr [esp + 0x50]
0x0057841E: fld      dword ptr [esp + 0x20]
0x00578422: fstp     dword ptr [esp + 0x54]
0x00578426: fld      dword ptr [ecx + 0xd4c]
0x0057842C: fmul     st(0), st(0)
0x0057842E: fld      qword ptr [0x98a2a8] ; [f32=0, f64=10, u32=0x00000000]
0x00578434: fmul     st(1), st(0)
0x00578436: fld1     
0x00578438: fadd     st(2), st(0)
0x0057843A: fxch     st(2)
0x0057843C: fstp     dword ptr [esp + 0x30]
0x00578440: fld      dword ptr [edi + 0xd4c]
0x00578446: fmul     st(0), st(0)
0x00578448: fmulp    st(1)
0x0057844A: faddp    st(1)
0x0057844C: fstp     dword ptr [esp + 0x2c]
0x00578450: fld      dword ptr [esp + 0x30]
0x00578454: fld      dword ptr [esp + 0x2c]
0x00578458: fcompp   
0x0057845A: fnstsw   ax
0x0057845C: test     ah, 0x41
0x0057845F: jp       0x578491
0x00578461: mov      edx, ecx
0x00578463: mov      ecx, dword ptr [edx + 0x1b4]
0x00578469: mov      dword ptr [esp + 0x24], ebp
0x0057846D: mov      eax, dword ptr [ecx]
0x0057846F: mov      eax, dword ptr [eax + 8]
0x00578472: push     1
0x00578474: lea      edx, [esp + 0x28]
0x00578478: push     edx
0x00578479: mov      dword ptr [esp + 0x11c], 2
0x00578484: call     eax
0x00578486: mov      dword ptr [esp + 0x114], 0xffffffff
0x00578491: fld      dword ptr [esp + 0x2c]
0x00578495: fld      dword ptr [esp + 0x30]
0x00578499: fcompp   
0x0057849B: fnstsw   ax
0x0057849D: test     ah, 0x41
0x005784A0: jp       0x5784d0
0x005784A2: mov      ecx, dword ptr [edi + 0x1b4]
0x005784A8: mov      dword ptr [esp + 0x24], ebp
0x005784AC: mov      edx, dword ptr [ecx]
0x005784AE: mov      edx, dword ptr [edx + 8]
0x005784B1: push     1
0x005784B3: lea      eax, [esp + 0x28]
0x005784B7: push     eax
0x005784B8: mov      dword ptr [esp + 0x11c], 3
0x005784C3: call     edx
0x005784C5: mov      dword ptr [esp + 0x114], 0xffffffff
0x005784D0: lea      ecx, [esp + 0x84]
0x005784D7: call     0x57a760
0x005784DC: mov      eax, dword ptr [esi + 8]
0x005784DF: movzx    ecx, byte ptr [eax + 1]
0x005784E3: mov      edx, dword ptr [eax + 4]
0x005784E6: mov      eax, dword ptr [edx + 0x1c]
0x005784E9: mov      eax, dword ptr [eax + ecx*4]
0x005784EC: fld      dword ptr [eax + 0xc]
0x005784EF: fstp     dword ptr [esp + 0x14]
0x005784F3: fld      dword ptr [eax + 0x10]
0x005784F6: fstp     dword ptr [esp + 0x18]
0x005784FA: fld      dword ptr [eax + 0x14]
0x005784FD: fstp     dword ptr [esp + 0x1c]
0x00578501: fld      dword ptr [eax + 0x18]
0x00578504: mov      eax, dword ptr [esp + 0x34]
0x00578508: fstp     dword ptr [esp + 0x20]
0x0057850C: movzx    ecx, byte ptr [eax + 1]
0x00578510: fld      dword ptr [esp + 0x14]
0x00578514: mov      edx, dword ptr [eax + 4]
0x00578517: fstp     dword ptr [esp + 0xa4]
0x0057851E: mov      eax, dword ptr [edx + 0x1c]
0x00578521: fld      dword ptr [esp + 0x18]
0x00578525: mov      eax, dword ptr [eax + ecx*4]
0x00578528: fstp     dword ptr [esp + 0xa8]
0x0057852F: lea      ecx, [esp + 0x74]
0x00578533: fld      dword ptr [esp + 0x1c]
0x00578537: push     ecx
0x00578538: fstp     dword ptr [esp + 0xb0]
0x0057853F: lea      edx, [esp + 0x18]
0x00578543: fld      dword ptr [esp + 0x24]
0x00578547: push     edx
0x00578548: fstp     dword ptr [esp + 0xb8]
0x0057854F: mov      ecx, esi
0x00578551: fld      dword ptr [eax + 0xc]
0x00578554: fstp     dword ptr [esp + 0x1c]
0x00578558: fld      dword ptr [eax + 0x10]
0x0057855B: fstp     dword ptr [esp + 0x20]
0x0057855F: fld      dword ptr [eax + 0x14]
0x00578562: fstp     dword ptr [esp + 0x24]
0x00578566: fld      dword ptr [eax + 0x18]
0x00578569: lea      eax, [esp + 0x8c]
0x00578570: fstp     dword ptr [esp + 0x28]
0x00578574: push     eax
0x00578575: fld      dword ptr [esp + 0x20]
0x00578579: fstp     dword ptr [esp + 0xc0]
0x00578580: fld      dword ptr [esp + 0x24]
0x00578584: fstp     dword ptr [esp + 0xc4]
0x0057858B: fld      dword ptr [esp + 0x28]
0x0057858F: fstp     dword ptr [esp + 0xc8]
0x00578596: fld      dword ptr [esp + 0x2c]
0x0057859A: fstp     dword ptr [esp + 0xcc]
0x005785A1: fld      dword ptr [esp + 0x44]
0x005785A5: fstp     dword ptr [esp + 0x90]
0x005785AC: fld      dword ptr [esp + 0x48]
0x005785B0: fstp     dword ptr [esp + 0x94]
0x005785B7: fld      dword ptr [esp + 0x4c]
0x005785BB: fstp     dword ptr [esp + 0x98]
0x005785C2: fld      dword ptr [esp + 0x50]
0x005785C6: fstp     dword ptr [esp + 0x9c]
0x005785CD: fld      dword ptr [esp + 0x54]
0x005785D1: fstp     dword ptr [esp + 0xa0]
0x005785D8: fld      dword ptr [esp + 0x58]
0x005785DC: fstp     dword ptr [esp + 0xa4]
0x005785E3: fld      dword ptr [esp + 0x5c]
0x005785E7: fstp     dword ptr [esp + 0xa8]
0x005785EE: fld      dword ptr [esp + 0x60]
0x005785F2: fstp     dword ptr [esp + 0xac]
0x005785F9: fld      dword ptr [esp + 0x3c]
0x005785FD: fstp     dword ptr [esp + 0xd0]
0x00578604: fld      dword ptr [esp + 0x38]
0x00578608: fstp     dword ptr [esp + 0xd4]
0x0057860F: fldz     
0x00578611: fst      dword ptr [esp + 0x20]
0x00578615: fst      dword ptr [esp + 0x24]
0x00578619: fst      dword ptr [esp + 0x80]
0x00578620: fstp     dword ptr [esp + 0x84]
0x00578627: call     0x576e30
0x0057862C: fld      dword ptr [esp + 0x14]
0x00578630: mov      ecx, dword ptr [esi + 0x40]
0x00578633: fstp     dword ptr [ecx + 0x28c]
0x00578639: mov      edx, dword ptr [esi + 0x40]
0x0057863C: fld      dword ptr [esp + 0x18]
0x00578640: fstp     dword ptr [edx + 0x290]
0x00578646: mov      eax, dword ptr [esi + 0x40]
0x00578649: cmp      dword ptr [eax + 0x23c], 0
0x00578650: je       0x5786e7
0x00578656: lea      ecx, [eax + 0x28c]
0x0057865C: push     ecx
0x0057865D: add      eax, 0xc70
0x00578662: push     eax
0x00578663: call     0x509710
0x00578668: fcomp    dword ptr [0x96665c] ; [f32=0, u32=0x00000000]
0x0057866E: add      esp, 8
0x00578671: fnstsw   ax
0x00578673: test     ah, 1
0x00578676: jne      0x57867c
0x00578678: fld1     
0x0057867A: jmp      0x578682
0x0057867C: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00578682: mov      eax, dword ptr [esi + 0x40]
0x00578685: fstp     dword ptr [esp + 0x24]
0x00578689: fld      dword ptr [esp + 0x24]
0x0057868D: push     ecx
0x0057868E: mov      edx, eax
0x00578690: fstp     dword ptr [esp]
0x00578693: add      edx, 0xc70
0x00578699: lea      ebp, [eax + 0x28c]
0x0057869F: push     edx
0x005786A0: lea      eax, [esp + 0x1c]
0x005786A4: push     eax
0x005786A5: call     0x51ac00
0x005786AA: add      esp, 8
0x005786AD: mov      ecx, ebp
0x005786AF: mov      dword ptr [esp + 0x28], eax
0x005786B3: call     0x51bc60
0x005786B8: mov      eax, dword ptr [esp + 0x28]
0x005786BC: push     ecx
0x005786BD: mov      ecx, eax
0x005786BF: fstp     dword ptr [esp]
0x005786C2: lea      eax, [esp + 0xd4]
0x005786C9: call     0x576970
0x005786CE: mov      ecx, eax
0x005786D0: add      esp, 4
0x005786D3: lea      eax, [esp + 0x5c]
0x005786D7: call     0x576940
0x005786DC: add      esp, 4
0x005786DF: push     eax
0x005786E0: mov      ecx, ebp
0x005786E2: call     0x506bf0
0x005786E7: cmp      dword ptr [edi + 0x23c], 0
0x005786EE: fld      dword ptr [esp + 0x74]
0x005786F2: lea      ebp, [edi + 0x28c]
0x005786F8: fstp     dword ptr [ebp]
0x005786FB: fld      dword ptr [esp + 0x78]
0x005786FF: fstp     dword ptr [edi + 0x290]
0x00578705: je       0x578792
0x0057870B: lea      eax, [edi + 0xc70]
0x00578711: push     ebp
0x00578712: push     eax
0x00578713: call     0x509710
0x00578718: fcomp    dword ptr [0x96665c] ; [f32=0, u32=0x00000000]
0x0057871E: add      esp, 8
0x00578721: fnstsw   ax
0x00578723: test     ah, 1
0x00578726: jne      0x57872c
0x00578728: fld1     
0x0057872A: jmp      0x578732
0x0057872C: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00578732: push     ecx
0x00578733: fstp     dword ptr [esp + 0x28]
0x00578737: fld      dword ptr [esp + 0x28]
0x0057873B: lea      eax, [edi + 0xc70]
0x00578741: fstp     dword ptr [esp]
0x00578744: push     eax
0x00578745: lea      ecx, [esp + 0x60]
0x00578749: push     ecx
0x0057874A: call     0x51ac00
0x0057874F: add      esp, 8
0x00578752: mov      ecx, ebp
0x00578754: mov      dword ptr [esp + 0x28], eax
0x00578758: call     0x51bc60
0x0057875D: mov      eax, dword ptr [esp + 0x28]
0x00578761: push     ecx
0x00578762: mov      ecx, eax
0x00578764: fstp     dword ptr [esp]
0x00578767: lea      eax, [esp + 0xd4]
0x0057876E: call     0x576970
0x00578773: mov      ecx, eax
0x00578775: add      esp, 4
0x00578778: lea      eax, [esp + 0x78]
0x0057877C: call     0x576940
0x00578781: add      esp, 4
0x00578784: lea      ebp, [edi + 0x28c]
0x0057878A: push     eax
0x0057878B: mov      ecx, ebp
0x0057878D: call     0x506bf0
0x00578792: lea      edx, [esp + 0x58]
0x00578796: push     ebp
0x00578797: push     edx
0x00578798: call     0x51ac00
0x0057879D: mov      dword ptr [esp + 0x2c], eax
0x005787A1: mov      eax, dword ptr [esi + 0x40]
0x005787A4: add      eax, 0x28c
0x005787A9: push     eax
0x005787AA: lea      ecx, [esp + 0xd8]
0x005787B1: push     ecx
0x005787B2: call     0x51ac00
0x005787B7: mov      ecx, dword ptr [esp + 0x34]
0x005787BB: fld      dword ptr [ecx + 4]
0x005787BE: add      esp, 0x10
0x005787C1: fmul     dword ptr [eax + 4]
0x005787C4: fld      dword ptr [eax]
0x005787C6: fmul     dword ptr [ecx]
0x005787C8: faddp    st(1)
0x005787CA: fld      dword ptr [ecx + 8]
0x005787CD: fmul     dword ptr [eax + 8]
0x005787D0: faddp    st(1)
0x005787D2: fstp     dword ptr [esp + 0x24]
0x005787D6: fld      dword ptr [esp + 0x24]
0x005787DA: fcomp    qword ptr [0x992ae8] ; [f32=2, f64=0.85, u32=0x40000000]
0x005787E0: fnstsw   ax
0x005787E2: test     ah, 0x41
0x005787E5: jne      0x57884c
0x005787E7: mov      eax, dword ptr [esi + 0x40]
0x005787EA: fld      dword ptr [esp + 0x2c]
0x005787EE: lea      ecx, [eax + 0x28c]
0x005787F4: fstp     qword ptr [esp + 0x24]
0x005787F8: mov      dword ptr [esp + 0x34], ecx
0x005787FC: call     0x51bc60
0x00578801: fmul     dword ptr [esp + 0x30]
0x00578805: mov      ecx, ebp
0x00578807: fstp     qword ptr [esp + 0x14]
0x0057880B: call     0x51bc60
0x00578810: fld      qword ptr [esp + 0x24]
0x00578814: push     ecx
0x00578815: fmul     st(0), st(0)
0x00578817: fmulp    st(1)
0x00578819: fcomp    qword ptr [esp + 0x18]
0x0057881D: fnstsw   ax
0x0057881F: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00578825: test     ah, 5
0x00578828: fstp     dword ptr [esp]
0x0057882B: lea      eax, [esp + 0x5c]
0x0057882F: jp       0x57883a
0x00578831: mov      ecx, ebp
0x00578833: call     0x576940
0x00578838: jmp      0x578843
0x0057883A: mov      ecx, dword ptr [esp + 0x38]
0x0057883E: call     0x576940
0x00578843: add      esp, 4
0x00578846: push     eax
0x00578847: call     0x506bf0
0x0057884C: mov      eax, dword ptr [esi + 0x40]
0x0057884F: lea      ecx, [eax + 0x28c]
0x00578855: call     0x51bc60
0x0057885A: mov      eax, dword ptr [esi + 0x40]
0x0057885D: mov      edx, dword ptr [eax + 0x1e4]
0x00578863: fld      dword ptr [edx + 0x14]
0x00578866: fcompp   
0x00578868: fnstsw   ax
0x0057886A: test     ah, 5
0x0057886D: jp       0x5788b2
0x0057886F: mov      eax, dword ptr [esi + 0x40]
0x00578872: mov      ecx, dword ptr [eax + 0x1e4]
0x00578878: fld      dword ptr [ecx + 0x14]
0x0057887B: push     ecx
0x0057887C: add      eax, 0x28c
0x00578881: fstp     dword ptr [esp]
0x00578884: push     eax
0x00578885: lea      edx, [esp + 0x60]
0x00578889: push     edx
0x0057888A: call     0x51ac00
0x0057888F: mov      ecx, eax
0x00578891: add      esp, 8
0x00578894: lea      eax, [esp + 0xd0]
0x0057889B: call     0x576940
0x005788A0: mov      ecx, dword ptr [esi + 0x40]
0x005788A3: add      esp, 4
0x005788A6: push     eax
0x005788A7: add      ecx, 0x28c
0x005788AD: call     0x506bf0
0x005788B2: mov      ecx, ebp
0x005788B4: call     0x51bc60
0x005788B9: mov      ecx, dword ptr [esi + 0x40]
0x005788BC: mov      eax, dword ptr [ecx + 0x1e4]
0x005788C2: fld      dword ptr [eax + 0x14]
0x005788C5: fcompp   
0x005788C7: fnstsw   ax
0x005788C9: test     ah, 5
0x005788CC: jp       0x578902
0x005788CE: mov      ecx, dword ptr [ecx + 0x1e4]
0x005788D4: fld      dword ptr [ecx + 0x14]
0x005788D7: push     ecx
0x005788D8: fstp     dword ptr [esp]
0x005788DB: lea      edx, [esp + 0x5c]
0x005788DF: push     ebp
0x005788E0: push     edx
0x005788E1: call     0x51ac00
0x005788E6: mov      ecx, eax
0x005788E8: add      esp, 8
0x005788EB: lea      eax, [esp + 0xd0]
0x005788F2: call     0x576940
0x005788F7: add      esp, 4
0x005788FA: push     eax
0x005788FB: mov      ecx, ebp
0x005788FD: call     0x506bf0
0x00578902: mov      eax, dword ptr [esi + 0x40]
0x00578905: cmp      dword ptr [eax + 0x23c], 0
0x0057890C: push     ebx
0x0057890D: jne      0x578924
0x0057890F: lea      ecx, [esp + 0x78]
0x00578913: push     ecx
0x00578914: mov      ecx, esi
0x00578916: call     0x575c30
0x0057891B: fld      dword ptr [esp + 0x74]
0x0057891F: fadd     dword ptr [esi + 0x44]
0x00578922: jmp      0x578937
0x00578924: lea      edx, [esp + 0x78]
0x00578928: push     edx
0x00578929: mov      ecx, esi
0x0057892B: call     0x575e60
0x00578930: fld      dword ptr [esi + 0x44]
0x00578933: fadd     dword ptr [esp + 0x74]
0x00578937: fstp     dword ptr [esi + 0x44]
0x0057893A: mov      eax, dword ptr [esi + 0x40]
0x0057893D: fld      dword ptr [esp + 0x78]
0x00578941: lea      ecx, [esp + 0x58]
0x00578945: fadd     dword ptr [esi + 0x48]
0x00578948: push     ecx
0x00578949: lea      ecx, [esp + 0xd0]
0x00578950: mov      dword ptr [esp + 0x5c], edi
0x00578954: fstp     dword ptr [esi + 0x48]
0x00578957: fld      dword ptr [esi + 0x4c]
0x0057895A: fadd     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00578960: fstp     dword ptr [esi + 0x4c]
0x00578963: fld      dword ptr [ebx + 0x1c]
0x00578966: fstp     dword ptr [esp + 0x18]
0x0057896A: fld      dword ptr [ebx + 0x20]
0x0057896D: fstp     dword ptr [esp + 0x1c]
0x00578971: fld      dword ptr [ebx + 0x24]
0x00578974: fstp     dword ptr [esp + 0x20]
0x00578978: fld      dword ptr [ebx + 0x28]
0x0057897B: mov      ebx, dword ptr [eax + 0x1b4]
0x00578981: fstp     dword ptr [esp + 0x24]
0x00578985: fld      dword ptr [esp + 0x18]
0x00578989: fstp     dword ptr [esp + 0x60]
0x0057898D: fld      dword ptr [esp + 0x1c]
0x00578991: fstp     dword ptr [esp + 0x64]
0x00578995: fld      dword ptr [esp + 0x20]
0x00578999: fstp     dword ptr [esp + 0x68]
0x0057899D: fld      dword ptr [esp + 0x24]
0x005789A1: fstp     dword ptr [esp + 0x6c]
0x005789A5: fld      dword ptr [esp + 0x34]
0x005789A9: fstp     dword ptr [esp + 0x70]
0x005789AD: fld      dword ptr [esp + 0x30]
0x005789B1: fstp     dword ptr [esp + 0x74]
0x005789B5: call     0x57ad30
0x005789BA: mov      edx, dword ptr [ebx]
0x005789BC: push     1
0x005789BE: push     eax
0x005789BF: mov      eax, dword ptr [edx + 8]
0x005789C2: mov      ecx, ebx
0x005789C4: mov      dword ptr [esp + 0x11c], 4
0x005789CF: call     eax
0x005789D1: fld      dword ptr [esp + 0x30]
0x005789D5: mov      ecx, dword ptr [esi + 0x40]
0x005789D8: fstp     dword ptr [esp + 0x70]
0x005789DC: fld      dword ptr [esp + 0x2c]
0x005789E0: mov      edi, dword ptr [edi + 0x1b4]
0x005789E6: lea      edx, [esp + 0x58]
0x005789EA: fstp     dword ptr [esp + 0x6c]
0x005789EE: mov      dword ptr [esp + 0x58], ecx
0x005789F2: push     edx
0x005789F3: lea      ecx, [esp + 0xf0]
0x005789FA: call     0x57ad30
0x005789FF: mov      edx, dword ptr [edi]
0x00578A01: push     1
0x00578A03: push     eax
0x00578A04: mov      eax, dword ptr [edx + 8]
0x00578A07: mov      ecx, edi
0x00578A09: mov      dword ptr [esp + 0x11c], 5
0x00578A14: call     eax
0x00578A16: mov      ecx, dword ptr [esp + 0x10c]
0x00578A1D: mov      dword ptr fs:[0], ecx
0x00578A24: pop      ecx
0x00578A25: pop      edi
0x00578A26: pop      esi
0x00578A27: pop      ebp
0x00578A28: pop      ebx
0x00578A29: add      esp, 0x104
0x00578A2F: ret      4
0x00578A32: int3     
0x00578A33: int3     
0x00578A34: int3     
0x00578A35: int3     
0x00578A36: int3     
0x00578A37: int3     
0x00578A38: int3     
0x00578A39: int3     
0x00578A3A: int3     
0x00578A3B: int3     
0x00578A3C: int3     
0x00578A3D: int3     
0x00578A3E: int3     
0x00578A3F: int3     
0x00578A40: push     esi
0x00578A41: mov      esi, ecx
0x00578A43: mov      ecx, dword ptr [esp + 8]
0x00578A47: mov      eax, dword ptr [ecx + 8]
0x00578A4A: mov      eax, dword ptr [eax + 0x11c]
0x00578A50: movzx    edx, byte ptr [eax + 1]
0x00578A54: mov      eax, dword ptr [eax + 4]
0x00578A57: mov      eax, dword ptr [eax + 0x38]
0x00578A5A: mov      edx, dword ptr [eax + edx*4]
0x00578A5D: mov      eax, dword ptr [esi + 0x40]
0x00578A60: push     ecx
0x00578A61: fld      dword ptr [edx + 0x3c]
0x00578A64: mov      ecx, esi
0x00578A66: fstp     dword ptr [eax + 0xc54]
0x00578A6C: mov      edx, dword ptr [esi + 0x40]
0x00578A6F: mov      dword ptr [edx + 0x26c], 1
0x00578A79: call     0x577f30
0x00578A7E: mov      eax, dword ptr [esi + 0x40]
0x00578A81: fld1     
0x00578A83: pop      esi
0x00578A84: fstp     dword ptr [eax + 0xc54]
0x00578A8A: ret      4
0x00578A8D: int3     
0x00578A8E: int3     
0x00578A8F: int3     
0x00578A90: push     -1
0x00578A92: push     0x9486cd
0x00578A97: mov      eax, dword ptr fs:[0]
0x00578A9D: push     eax
0x00578A9E: sub      esp, 0x28
0x00578AA1: push     ebp
0x00578AA2: push     esi
0x00578AA3: push     edi
0x00578AA4: mov      eax, dword ptr [0xb089c8]
0x00578AA9: xor      eax, esp
0x00578AAB: push     eax
0x00578AAC: lea      eax, [esp + 0x38]
0x00578AB0: mov      dword ptr fs:[0], eax
0x00578AB6: mov      ebp, ecx
0x00578AB8: mov      edi, dword ptr [esp + 0x48]
0x00578ABC: mov      eax, dword ptr [edi + 8]
0x00578ABF: mov      ecx, dword ptr [eax + 0x11c]
0x00578AC5: movzx    eax, byte ptr [ecx + 1]
0x00578AC9: mov      ecx, dword ptr [ecx + 4]
0x00578ACC: mov      edx, dword ptr [ecx + 8]
0x00578ACF: test     dword ptr [edx + eax*4], 0x40000
0x00578AD6: je       0x578b1e
0x00578AD8: mov      ecx, dword ptr [ecx + 0x14]
0x00578ADB: lea      eax, [eax + eax*8]
0x00578ADE: lea      eax, [ecx + eax*4]
0x00578AE1: mov      ecx, 0x1c
0x00578AE6: cmp      byte ptr [eax + 0x14], cl
0x00578AE9: jne      0x578af0
0x00578AEB: mov      eax, dword ptr [eax + 4]
0x00578AEE: jmp      0x578b20
0x00578AF0: cmp      byte ptr [eax + 0x15], cl
0x00578AF3: jne      0x578afa
0x00578AF5: mov      eax, dword ptr [eax + 8]
0x00578AF8: jmp      0x578b20
0x00578AFA: cmp      byte ptr [eax + 0x16], cl
0x00578AFD: jne      0x578b04
0x00578AFF: mov      eax, dword ptr [eax + 0xc]
0x00578B02: jmp      0x578b20
0x00578B04: cmp      byte ptr [eax + 0x17], cl
0x00578B07: jne      0x578b0e
0x00578B09: mov      eax, dword ptr [eax + 0x10]
0x00578B0C: jmp      0x578b20
0x00578B0E: mov      eax, dword ptr [eax]
0x00578B10: test     eax, eax
0x00578B12: je       0x578b1e
0x00578B14: push     ecx
0x00578B15: mov      ecx, eax
0x00578B17: call     0x461400
0x00578B1C: jmp      0x578b20
0x00578B1E: xor      eax, eax
0x00578B20: mov      esi, dword ptr [eax + 0x1a8]
0x00578B26: mov      eax, dword ptr [ebp + 0x40]
0x00578B29: cmp      esi, eax
0x00578B2B: je       0x578bef
0x00578B31: mov      edx, dword ptr [esi + 0xd44]
0x00578B37: cmp      edx, dword ptr [eax + 0xd44]
0x00578B3D: je       0x578bef
0x00578B43: cmp      dword ptr [esi + 0x23c], 0
0x00578B4A: je       0x578bef
0x00578B50: mov      ecx, esi
0x00578B52: call     0x540520
0x00578B57: mov      dword ptr [esi + 0xd58], 1
0x00578B61: fld      dword ptr [edi + 0x1c]
0x00578B64: mov      eax, dword ptr [ebp + 0x40]
0x00578B67: fstp     dword ptr [esp + 0x10]
0x00578B6B: fld      dword ptr [edi + 0x20]
0x00578B6E: mov      ecx, dword ptr [eax + 0x1b4]
0x00578B74: fstp     dword ptr [esp + 0x14]
0x00578B78: mov      dword ptr [esp + 0x20], 0x992b34
0x00578B80: fld      dword ptr [edi + 0x24]
0x00578B83: mov      dword ptr [esp + 0x34], esi
0x00578B87: fstp     dword ptr [esp + 0x18]
0x00578B8B: fld      dword ptr [edi + 0x28]
0x00578B8E: fstp     dword ptr [esp + 0x1c]
0x00578B92: fld      dword ptr [esp + 0x10]
0x00578B96: fstp     dword ptr [esp + 0x24]
0x00578B9A: fld      dword ptr [esp + 0x14]
0x00578B9E: fstp     dword ptr [esp + 0x28]
0x00578BA2: fld      dword ptr [esp + 0x18]
0x00578BA6: fstp     dword ptr [esp + 0x2c]
0x00578BAA: fld      dword ptr [esp + 0x1c]
0x00578BAE: fstp     dword ptr [esp + 0x30]
0x00578BB2: mov      edx, dword ptr [ecx]
0x00578BB4: mov      edx, dword ptr [edx + 8]
0x00578BB7: push     1
0x00578BB9: lea      eax, [esp + 0x24]
0x00578BBD: push     eax
0x00578BBE: mov      dword ptr [esp + 0x48], 0
0x00578BC6: call     edx
0x00578BC8: mov      eax, dword ptr [ebp + 0x40]
0x00578BCB: mov      ecx, dword ptr [eax + 0x1b4]
0x00578BD1: mov      dword ptr [esp + 0x48], 0x992a3c
0x00578BD9: mov      edx, dword ptr [ecx]
0x00578BDB: mov      edx, dword ptr [edx + 8]
0x00578BDE: push     1
0x00578BE0: lea      eax, [esp + 0x4c]
0x00578BE4: push     eax
0x00578BE5: mov      dword ptr [esp + 0x48], 1
0x00578BED: call     edx
0x00578BEF: mov      ecx, dword ptr [esp + 0x38]
0x00578BF3: mov      dword ptr fs:[0], ecx
0x00578BFA: pop      ecx
0x00578BFB: pop      edi
0x00578BFC: pop      esi
0x00578BFD: pop      ebp
0x00578BFE: add      esp, 0x34
0x00578C01: ret      4
0x00578C04: int3     
0x00578C05: int3     
0x00578C06: int3     
0x00578C07: int3     
0x00578C08: int3     
0x00578C09: int3     
0x00578C0A: int3     
0x00578C0B: int3     
0x00578C0C: int3     
0x00578C0D: int3     
0x00578C0E: int3     
0x00578C0F: int3     
0x00578C10: push     -1
0x00578C12: push     0x9486f0
0x00578C17: mov      eax, dword ptr fs:[0]
0x00578C1D: push     eax
0x00578C1E: sub      esp, 0x28
0x00578C21: push     ebx
0x00578C22: push     esi
0x00578C23: push     edi
0x00578C24: mov      eax, dword ptr [0xb089c8]
0x00578C29: xor      eax, esp
0x00578C2B: push     eax
0x00578C2C: lea      eax, [esp + 0x38]
0x00578C30: mov      dword ptr fs:[0], eax
0x00578C36: mov      esi, ecx
0x00578C38: mov      edi, dword ptr [esp + 0x48]
0x00578C3C: mov      eax, dword ptr [edi + 8]
0x00578C3F: mov      ecx, dword ptr [eax + 0x11c]
0x00578C45: movzx    eax, byte ptr [ecx + 1]
0x00578C49: mov      ecx, dword ptr [ecx + 4]
0x00578C4C: mov      edx, dword ptr [ecx + 8]
0x00578C4F: test     dword ptr [edx + eax*4], 0x40000
0x00578C56: je       0x578cae
0x00578C58: mov      ecx, dword ptr [ecx + 0x14]
0x00578C5B: lea      eax, [eax + eax*8]
0x00578C5E: lea      eax, [ecx + eax*4]
0x00578C61: mov      ecx, 0x1c
0x00578C66: cmp      byte ptr [eax + 0x14], cl
0x00578C69: jne      0x578c72
0x00578C6B: mov      eax, dword ptr [eax + 4]
0x00578C6E: mov      ebx, eax
0x00578C70: jmp      0x578cb0
0x00578C72: cmp      byte ptr [eax + 0x15], cl
0x00578C75: jne      0x578c7e
0x00578C77: mov      eax, dword ptr [eax + 8]
0x00578C7A: mov      ebx, eax
0x00578C7C: jmp      0x578cb0
0x00578C7E: cmp      byte ptr [eax + 0x16], cl
0x00578C81: jne      0x578c8a
0x00578C83: mov      eax, dword ptr [eax + 0xc]
0x00578C86: mov      ebx, eax
0x00578C88: jmp      0x578cb0
0x00578C8A: cmp      byte ptr [eax + 0x17], cl
0x00578C8D: jne      0x578c96
0x00578C8F: mov      eax, dword ptr [eax + 0x10]
0x00578C92: mov      ebx, eax
0x00578C94: jmp      0x578cb0
0x00578C96: mov      eax, dword ptr [eax]
0x00578C98: test     eax, eax
0x00578C9A: je       0x578ca8
0x00578C9C: push     ecx
0x00578C9D: mov      ecx, eax
0x00578C9F: call     0x461400
0x00578CA4: mov      ebx, eax
0x00578CA6: jmp      0x578cb0
0x00578CA8: xor      eax, eax
0x00578CAA: mov      ebx, eax
0x00578CAC: jmp      0x578cb0
0x00578CAE: xor      ebx, ebx
0x00578CB0: mov      eax, dword ptr [ebx + 0x1a8]
0x00578CB6: cmp      byte ptr [eax + 0x11], 0
0x00578CBA: je       0x578d48
0x00578CC0: mov      ecx, dword ptr [esi + 0x40]
0x00578CC3: call     0x540520
0x00578CC8: mov      eax, dword ptr [esi + 0x40]
0x00578CCB: mov      edx, 1
0x00578CD0: mov      dword ptr [eax + 0xd58], edx
0x00578CD6: mov      ecx, dword ptr [esi + 0x40]
0x00578CD9: mov      dword ptr [ecx + 0xe04], edx
0x00578CDF: fld      dword ptr [edi + 0x1c]
0x00578CE2: mov      ecx, dword ptr [esi + 0x40]
0x00578CE5: fstp     dword ptr [esp + 0x10]
0x00578CE9: fld      dword ptr [edi + 0x20]
0x00578CEC: mov      ecx, dword ptr [ecx + 0x1b4]
0x00578CF2: mov      eax, dword ptr [ebx + 8]
0x00578CF5: fstp     dword ptr [esp + 0x14]
0x00578CF9: fld      dword ptr [edi + 0x24]
0x00578CFC: mov      dword ptr [esp + 0x20], 0x992b48
0x00578D04: fstp     dword ptr [esp + 0x18]
0x00578D08: mov      dword ptr [esp + 0x34], eax
0x00578D0C: fld      dword ptr [edi + 0x28]
0x00578D0F: fstp     dword ptr [esp + 0x1c]
0x00578D13: fld      dword ptr [esp + 0x10]
0x00578D17: fstp     dword ptr [esp + 0x24]
0x00578D1B: fld      dword ptr [esp + 0x14]
0x00578D1F: fstp     dword ptr [esp + 0x28]
0x00578D23: fld      dword ptr [esp + 0x18]
0x00578D27: fstp     dword ptr [esp + 0x2c]
0x00578D2B: fld      dword ptr [esp + 0x1c]
0x00578D2F: fstp     dword ptr [esp + 0x30]
0x00578D33: mov      eax, dword ptr [ecx]
0x00578D35: mov      eax, dword ptr [eax + 8]
0x00578D38: push     edx
0x00578D39: lea      edx, [esp + 0x24]
0x00578D3D: push     edx
0x00578D3E: mov      dword ptr [esp + 0x48], 0
0x00578D46: call     eax
0x00578D48: mov      ecx, dword ptr [esp + 0x38]
0x00578D4C: mov      dword ptr fs:[0], ecx
0x00578D53: pop      ecx
0x00578D54: pop      edi
0x00578D55: pop      esi
0x00578D56: pop      ebx
0x00578D57: add      esp, 0x34
0x00578D5A: ret      4
0x00578D5D: int3     
0x00578D5E: int3     
0x00578D5F: int3     
0x00578D60: push     -1
0x00578D62: push     0x948713
0x00578D67: mov      eax, dword ptr fs:[0]
0x00578D6D: push     eax
0x00578D6E: sub      esp, 0x28
0x00578D71: push     esi
0x00578D72: mov      eax, dword ptr [0xb089c8]
0x00578D77: xor      eax, esp
0x00578D79: push     eax
0x00578D7A: lea      eax, [esp + 0x30]
0x00578D7E: mov      dword ptr fs:[0], eax
0x00578D84: mov      esi, ecx
0x00578D86: mov      ecx, dword ptr [esi + 0x40]
0x00578D89: call     0x540520
0x00578D8E: mov      eax, dword ptr [esi + 0x40]
0x00578D91: mov      edx, 1
0x00578D96: mov      dword ptr [eax + 0xd58], edx
0x00578D9C: mov      eax, dword ptr [esp + 0x40]
0x00578DA0: mov      ecx, dword ptr [esi + 0x40]
0x00578DA3: mov      dword ptr [ecx + 0xe04], edx
0x00578DA9: fld      dword ptr [eax + 0x1c]
0x00578DAC: mov      ecx, dword ptr [esi + 0x40]
0x00578DAF: fstp     dword ptr [esp + 8]
0x00578DB3: fld      dword ptr [eax + 0x20]
0x00578DB6: mov      ecx, dword ptr [ecx + 0x1b4]
0x00578DBC: fstp     dword ptr [esp + 0xc]
0x00578DC0: mov      dword ptr [esp + 0x18], 0x992b48
0x00578DC8: fld      dword ptr [eax + 0x24]
0x00578DCB: fstp     dword ptr [esp + 0x10]
0x00578DCF: fld      dword ptr [eax + 0x28]
0x00578DD2: mov      eax, dword ptr [eax + 8]
0x00578DD5: mov      eax, dword ptr [eax + 0x11c]
0x00578DDB: fstp     dword ptr [esp + 0x14]
0x00578DDF: fld      dword ptr [esp + 8]
0x00578DE3: mov      dword ptr [esp + 0x2c], eax
0x00578DE7: fstp     dword ptr [esp + 0x1c]
0x00578DEB: fld      dword ptr [esp + 0xc]
0x00578DEF: fstp     dword ptr [esp + 0x20]
0x00578DF3: fld      dword ptr [esp + 0x10]
0x00578DF7: fstp     dword ptr [esp + 0x24]
0x00578DFB: fld      dword ptr [esp + 0x14]
0x00578DFF: fstp     dword ptr [esp + 0x28]
0x00578E03: mov      eax, dword ptr [ecx]
0x00578E05: mov      eax, dword ptr [eax + 8]
0x00578E08: push     edx
0x00578E09: lea      edx, [esp + 0x1c]
0x00578E0D: push     edx
0x00578E0E: mov      dword ptr [esp + 0x40], 0
0x00578E16: call     eax
0x00578E18: mov      ecx, dword ptr [esp + 0x30]
0x00578E1C: mov      dword ptr fs:[0], ecx
0x00578E23: pop      ecx
0x00578E24: pop      esi
0x00578E25: add      esp, 0x34
0x00578E28: ret      4
0x00578E2B: int3     
0x00578E2C: int3     
0x00578E2D: int3     
0x00578E2E: int3     
0x00578E2F: int3     
0x00578E30: push     -1
0x00578E32: push     0x948736
0x00578E37: mov      eax, dword ptr fs:[0]
0x00578E3D: push     eax
0x00578E3E: sub      esp, 0x28
0x00578E41: push     esi
0x00578E42: mov      eax, dword ptr [0xb089c8]
0x00578E47: xor      eax, esp
0x00578E49: push     eax
0x00578E4A: lea      eax, [esp + 0x30]
0x00578E4E: mov      dword ptr fs:[0], eax
0x00578E54: mov      esi, ecx
0x00578E56: mov      ecx, dword ptr [esi + 0x40]
0x00578E59: call     0x540520
0x00578E5E: mov      eax, dword ptr [esi + 0x40]
0x00578E61: mov      edx, 1
0x00578E66: mov      dword ptr [eax + 0xd58], edx
0x00578E6C: mov      eax, dword ptr [esp + 0x40]
0x00578E70: mov      ecx, dword ptr [esi + 0x40]
0x00578E73: mov      dword ptr [ecx + 0xe04], edx
0x00578E79: fld      dword ptr [eax + 0x1c]
0x00578E7C: mov      ecx, dword ptr [esi + 0x40]
0x00578E7F: fstp     dword ptr [esp + 8]
0x00578E83: fld      dword ptr [eax + 0x20]
0x00578E86: mov      ecx, dword ptr [ecx + 0x1b4]
0x00578E8C: fstp     dword ptr [esp + 0xc]
0x00578E90: mov      dword ptr [esp + 0x18], 0x992b48
0x00578E98: fld      dword ptr [eax + 0x24]
0x00578E9B: fstp     dword ptr [esp + 0x10]
0x00578E9F: fld      dword ptr [eax + 0x28]
0x00578EA2: mov      eax, dword ptr [eax + 8]
0x00578EA5: mov      eax, dword ptr [eax + 0x11c]
0x00578EAB: fstp     dword ptr [esp + 0x14]
0x00578EAF: fld      dword ptr [esp + 8]
0x00578EB3: mov      dword ptr [esp + 0x2c], eax
0x00578EB7: fstp     dword ptr [esp + 0x1c]
0x00578EBB: fld      dword ptr [esp + 0xc]
0x00578EBF: fstp     dword ptr [esp + 0x20]
0x00578EC3: fld      dword ptr [esp + 0x10]
0x00578EC7: fstp     dword ptr [esp + 0x24]
0x00578ECB: fld      dword ptr [esp + 0x14]
0x00578ECF: fstp     dword ptr [esp + 0x28]
0x00578ED3: mov      eax, dword ptr [ecx]
0x00578ED5: mov      eax, dword ptr [eax + 8]
0x00578ED8: push     edx
0x00578ED9: lea      edx, [esp + 0x1c]
0x00578EDD: push     edx
0x00578EDE: mov      dword ptr [esp + 0x40], 0
0x00578EE6: call     eax
0x00578EE8: mov      ecx, dword ptr [esp + 0x30]
0x00578EEC: mov      dword ptr fs:[0], ecx
0x00578EF3: pop      ecx
0x00578EF4: pop      esi
0x00578EF5: add      esp, 0x34
0x00578EF8: ret      4
0x00578EFB: int3     
0x00578EFC: int3     
0x00578EFD: int3     
0x00578EFE: int3     
0x00578EFF: int3     
0x00578F00: mov      ecx, dword ptr [esp + 8]
0x00578F04: jmp      0x577ed0
0x00578F09: int3     
0x00578F0A: int3     
0x00578F0B: int3     
0x00578F0C: int3     
0x00578F0D: int3     
0x00578F0E: int3     
0x00578F0F: int3     
0x00578F10: mov      eax, dword ptr [esp + 4]
0x00578F14: mov      eax, dword ptr [eax + 4]
0x00578F17: mov      ecx, dword ptr [esp + 8]
0x00578F1B: mov      edx, dword ptr [ecx + 0x40]
0x00578F1E: push     eax
0x00578F1F: mov      dword ptr [edx + 0x26c], 1
0x00578F29: call     0x577f30
0x00578F2E: ret      
0x00578F2F: int3     
0x00578F30: push     -1
0x00578F32: push     0x9487e8
0x00578F37: mov      eax, dword ptr fs:[0]
0x00578F3D: push     eax
0x00578F3E: sub      esp, 0xe0
0x00578F44: push     ebx
0x00578F45: push     ebp
0x00578F46: push     esi
0x00578F47: push     edi
0x00578F48: mov      eax, dword ptr [0xb089c8]
0x00578F4D: xor      eax, esp
0x00578F4F: push     eax
0x00578F50: lea      eax, [esp + 0xf4]
0x00578F57: mov      dword ptr fs:[0], eax
0x00578F5D: mov      esi, ecx
0x00578F5F: mov      ebx, dword ptr [esp + 0x104]
0x00578F66: mov      eax, dword ptr [ebx + 8]
0x00578F69: mov      ebp, dword ptr [eax + 0x11c]
0x00578F6F: movzx    eax, byte ptr [ebp + 1]
0x00578F73: mov      ecx, dword ptr [ebp + 4]
0x00578F76: mov      edx, dword ptr [ecx + 8]
0x00578F79: test     dword ptr [edx + eax*4], 0x40000
0x00578F80: mov      dword ptr [esp + 0x40], ebp
0x00578F84: je       0x578fdc
0x00578F86: mov      ecx, dword ptr [ecx + 0x14]
0x00578F89: lea      eax, [eax + eax*8]
0x00578F8C: lea      eax, [ecx + eax*4]
0x00578F8F: mov      ecx, 0x1c
0x00578F94: cmp      byte ptr [eax + 0x14], cl
0x00578F97: jne      0x578fa0
0x00578F99: mov      eax, dword ptr [eax + 4]
0x00578F9C: mov      edx, eax
0x00578F9E: jmp      0x578fde
0x00578FA0: cmp      byte ptr [eax + 0x15], cl
0x00578FA3: jne      0x578fac
0x00578FA5: mov      eax, dword ptr [eax + 8]
0x00578FA8: mov      edx, eax
0x00578FAA: jmp      0x578fde
0x00578FAC: cmp      byte ptr [eax + 0x16], cl
0x00578FAF: jne      0x578fb8
0x00578FB1: mov      eax, dword ptr [eax + 0xc]
0x00578FB4: mov      edx, eax
0x00578FB6: jmp      0x578fde
0x00578FB8: cmp      byte ptr [eax + 0x17], cl
0x00578FBB: jne      0x578fc4
0x00578FBD: mov      eax, dword ptr [eax + 0x10]
0x00578FC0: mov      edx, eax
0x00578FC2: jmp      0x578fde
0x00578FC4: mov      eax, dword ptr [eax]
0x00578FC6: test     eax, eax
0x00578FC8: je       0x578fd6
0x00578FCA: push     ecx
0x00578FCB: mov      ecx, eax
0x00578FCD: call     0x461400
0x00578FD2: mov      edx, eax
0x00578FD4: jmp      0x578fde
0x00578FD6: xor      eax, eax
0x00578FD8: mov      edx, eax
0x00578FDA: jmp      0x578fde
0x00578FDC: xor      edx, edx
0x00578FDE: fld      dword ptr [ebx + 0x1c]
0x00578FE1: mov      ecx, dword ptr [esi + 0x40]
0x00578FE4: fstp     dword ptr [esp + 0x50]
0x00578FE8: mov      ecx, dword ptr [ecx + 0x1b4]
0x00578FEE: fld      dword ptr [ebx + 0x20]
0x00578FF1: lea      edi, [ebx + 0xc]
0x00578FF4: fstp     dword ptr [esp + 0x54]
0x00578FF8: movzx    eax, byte ptr [ebx + 0x46]
0x00578FFC: fld      dword ptr [ebx + 0x24]
0x00578FFF: mov      dword ptr [esp + 0xa4], 0x992b20
0x0057900A: fstp     dword ptr [esp + 0x58]
0x0057900E: mov      dword ptr [esp + 0xa8], edx
0x00579015: fld      dword ptr [ebx + 0x28]
0x00579018: mov      dword ptr [esp + 0xcc], eax
0x0057901F: fstp     dword ptr [esp + 0x5c]
0x00579023: fld      dword ptr [edi]
0x00579025: fstp     dword ptr [esp + 0x84]
0x0057902C: fld      dword ptr [edi + 4]
0x0057902F: fstp     dword ptr [esp + 0x88]
0x00579036: fld      dword ptr [edi + 8]
0x00579039: fstp     dword ptr [esp + 0x8c]
0x00579040: fld      dword ptr [edi + 0xc]
0x00579043: fstp     dword ptr [esp + 0x90]
0x0057904A: fld      dword ptr [esp + 0x50]
0x0057904E: fstp     dword ptr [esp + 0xac]
0x00579055: fld      dword ptr [esp + 0x54]
0x00579059: fstp     dword ptr [esp + 0xb0]
0x00579060: fld      dword ptr [esp + 0x58]
0x00579064: fstp     dword ptr [esp + 0xb4]
0x0057906B: fld      dword ptr [esp + 0x5c]
0x0057906F: fstp     dword ptr [esp + 0xb8]
0x00579076: fld      dword ptr [esp + 0x84]
0x0057907D: fstp     dword ptr [esp + 0xbc]
0x00579084: fld      dword ptr [esp + 0x88]
0x0057908B: fstp     dword ptr [esp + 0xc0]
0x00579092: fld      dword ptr [esp + 0x8c]
0x00579099: fstp     dword ptr [esp + 0xc4]
0x005790A0: fld      dword ptr [esp + 0x90]
0x005790A7: fstp     dword ptr [esp + 0xc8]
0x005790AE: mov      edx, dword ptr [ecx]
0x005790B0: mov      edx, dword ptr [edx + 8]
0x005790B3: push     1
0x005790B5: lea      eax, [esp + 0xa8]
0x005790BC: push     eax
0x005790BD: mov      dword ptr [esp + 0x104], 0
0x005790C8: call     edx
0x005790CA: fldz     
0x005790CC: movzx    eax, byte ptr [ebp + 1]
0x005790D0: fld1     
0x005790D2: mov      ecx, dword ptr [ebp + 4]
0x005790D5: fxch     st(1)
0x005790D7: mov      edx, dword ptr [ecx + 0x38]
0x005790DA: mov      eax, dword ptr [edx + eax*4]
0x005790DD: cmp      byte ptr [eax + 0x38], 0
0x005790E1: mov      dword ptr [esp + 0xfc], 0xffffffff
0x005790EC: mov      dword ptr [esp + 0x70], eax
0x005790F0: je       0x57949b
0x005790F6: mov      ecx, dword ptr [esi + 0x40]
0x005790F9: fcom     dword ptr [ecx + 0xd54]
0x005790FF: fnstsw   ax
0x00579101: test     ah, 5
0x00579104: jnp      0x57949b
0x0057910A: cmp      dword ptr [ecx + 0xd74], 0
0x00579111: jne      0x57949b
0x00579117: mov      eax, dword ptr [ebx + 0x48]
0x0057911A: movzx    ebp, byte ptr [eax + 0x28]
0x0057911E: xor      edx, edx
0x00579120: mov      dword ptr [esp + 0x3c], ebp
0x00579124: test     ebp, ebp
0x00579126: jbe      0x5791b4
0x0057912C: mov      ecx, dword ptr [eax + 0x24]
0x0057912F: fld      qword ptr [0x992b60] ; [f64=0.95, u32=0x60000000]
0x00579135: add      ecx, 0x14
0x00579138: mov      eax, dword ptr [ecx - 0xc]
0x0057913B: mov      eax, dword ptr [eax + 0x11c]
0x00579141: test     eax, eax
0x00579143: je       0x5791aa
0x00579145: movzx    ebp, byte ptr [eax + 1]
0x00579149: mov      eax, dword ptr [eax + 4]
0x0057914C: mov      eax, dword ptr [eax + 0x38]
0x0057914F: mov      eax, dword ptr [eax + ebp*4]
0x00579152: mov      ebp, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x00579158: cmp      dword ptr [eax + 0x28], ebp
0x0057915B: je       0x579168
0x0057915D: mov      ebp, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x00579163: cmp      dword ptr [eax + 0x28], ebp
0x00579166: jne      0x5791a6
0x00579168: cmp      byte ptr [eax + 0x38], 0
0x0057916C: jne      0x5791a6
0x0057916E: fld      dword ptr [edi + 4]
0x00579171: fmul     dword ptr [ecx - 4]
0x00579174: fld      dword ptr [ecx - 8]
0x00579177: fmul     dword ptr [edi]
0x00579179: faddp    st(1)
0x0057917B: fld      dword ptr [edi + 8]
0x0057917E: fmul     dword ptr [ecx]
0x00579180: faddp    st(1)
0x00579182: fstp     dword ptr [esp + 0x4c]
0x00579186: fld      dword ptr [esp + 0x4c]
0x0057918A: fcomp    st(1)
0x0057918C: fnstsw   ax
0x0057918E: test     ah, 0x41
0x00579191: jne      0x5791a6
0x00579193: fld      dword ptr [ecx + 0x28]
0x00579196: fld      dword ptr [ebx + 0x3c]
0x00579199: fcompp   
0x0057919B: fnstsw   ax
0x0057919D: test     ah, 5
0x005791A0: jnp      0x579499
0x005791A6: mov      ebp, dword ptr [esp + 0x3c]
0x005791AA: inc      edx
0x005791AB: add      ecx, 0x4c
0x005791AE: cmp      edx, ebp
0x005791B0: jb       0x579138
0x005791B2: fstp     st(2)
0x005791B4: mov      ecx, dword ptr [esi + 0x40]
0x005791B7: fstp     st(1)
0x005791B9: mov      ebp, 3
0x005791BE: fstp     st(0)
0x005791C0: lea      edx, [esp + 0xa4]
0x005791C7: mov      dword ptr [esp + 0xbc], ebp
0x005791CE: mov      dword ptr [esp + 0xa8], 0x7fff
0x005791D9: mov      ecx, dword ptr [ecx + 0x1b4]
0x005791DF: mov      dword ptr [esp + 0x30], edx
0x005791E3: mov      edx, dword ptr [esp + 0x44]
0x005791E7: mov      eax, 0x1f4
0x005791EC: mov      dword ptr [esp + 0x2c], 0x983b04
0x005791F4: mov      dword ptr [esp + 0x34], edx
0x005791F8: mov      dword ptr [esp + 0x38], eax
0x005791FC: mov      eax, dword ptr [ecx]
0x005791FE: mov      eax, dword ptr [eax + 8]
0x00579201: push     1
0x00579203: lea      edx, [esp + 0x30]
0x00579207: push     edx
0x00579208: mov      dword ptr [esp + 0x104], 1
0x00579213: call     eax
0x00579215: mov      ecx, dword ptr [esi + 0x40]
0x00579218: mov      ecx, dword ptr [ecx + 8]
0x0057921B: mov      dword ptr [esp + 0xfc], 0xffffffff
0x00579226: call     0x7f9590
0x0057922B: fldz     
0x0057922D: mov      ecx, dword ptr [esi + 0x40]
0x00579230: fcom     dword ptr [ecx + 0x230]
0x00579236: fnstsw   ax
0x00579238: test     ah, 5
0x0057923B: jp       0x579243
0x0057923D: fst      dword ptr [ecx + 0x230]
0x00579243: fld1     
0x00579245: mov      ecx, dword ptr [esi + 0x40]
0x00579248: fcom     dword ptr [ecx + 0xd48]
0x0057924E: fnstsw   ax
0x00579250: test     ah, 0x44
0x00579253: jnp      0x5793b0
0x00579259: fcom     dword ptr [ecx + 0xd4c]
0x0057925F: fnstsw   ax
0x00579261: test     ah, 0x44
0x00579264: jnp      0x5793b0
0x0057926A: mov      edi, dword ptr [esp + 0x70]
0x0057926E: fstp     st(0)
0x00579270: add      edi, 0x48
0x00579273: fstp     st(0)
0x00579275: push     0
0x00579277: mov      ecx, edi
0x00579279: call     0x499af0
0x0057927E: test     eax, eax
0x00579280: je       0x579379
0x00579286: push     0
0x00579288: mov      ecx, edi
0x0057928A: call     0x499af0
0x0057928F: movzx    ecx, byte ptr [eax + 1]
0x00579293: mov      eax, dword ptr [eax + 4]
0x00579296: lea      edx, [ecx + ecx*8]
0x00579299: mov      ecx, dword ptr [eax + 0x14]
0x0057929C: lea      eax, [ecx + edx*4]
0x0057929F: mov      ecx, 0x1f
0x005792A4: cmp      byte ptr [eax + 0x14], cl
0x005792A7: jne      0x5792ae
0x005792A9: mov      edi, dword ptr [eax + 4]
0x005792AC: jmp      0x5792e0
0x005792AE: cmp      byte ptr [eax + 0x15], cl
0x005792B1: jne      0x5792b8
0x005792B3: mov      edi, dword ptr [eax + 8]
0x005792B6: jmp      0x5792e0
0x005792B8: cmp      byte ptr [eax + 0x16], cl
0x005792BB: jne      0x5792c2
0x005792BD: mov      edi, dword ptr [eax + 0xc]
0x005792C0: jmp      0x5792e0
0x005792C2: cmp      byte ptr [eax + 0x17], cl
0x005792C5: jne      0x5792cc
0x005792C7: mov      edi, dword ptr [eax + 0x10]
0x005792CA: jmp      0x5792e0
0x005792CC: mov      eax, dword ptr [eax]
0x005792CE: test     eax, eax
0x005792D0: je       0x5792de
0x005792D2: push     ecx
0x005792D3: mov      ecx, eax
0x005792D5: call     0x461400
0x005792DA: mov      edi, eax
0x005792DC: jmp      0x5792e0
0x005792DE: xor      edi, edi
0x005792E0: mov      ecx, dword ptr [edi + 0x184]
0x005792E6: mov      eax, dword ptr [esi + 0x40]
0x005792E9: cmp      eax, ecx
0x005792EB: je       0x579379
0x005792F1: cmp      dword ptr [eax + 0xdfc], 0
0x005792F8: je       0x57936a
0x005792FA: mov      ecx, dword ptr [eax + 0x1b4]
0x00579300: mov      eax, dword ptr [eax + 0xdfc]
0x00579306: mov      dword ptr [esp + 0x40], 0x98b378
0x0057930E: mov      dword ptr [esp + 0x44], eax
0x00579312: mov      edx, dword ptr [ecx]
0x00579314: mov      edx, dword ptr [edx + 8]
0x00579317: push     1
0x00579319: lea      eax, [esp + 0x44]
0x0057931D: push     eax
0x0057931E: mov      dword ptr [esp + 0x104], 5
0x00579329: call     edx
0x0057932B: mov      eax, dword ptr [esi + 0x40]
0x0057932E: mov      ecx, dword ptr [eax + 0xdfc]
0x00579334: mov      ecx, dword ptr [ecx + 0x1b4]
0x0057933A: mov      dword ptr [esp + 0x40], 0x98b364
0x00579342: mov      dword ptr [esp + 0x44], eax
0x00579346: mov      edx, dword ptr [ecx]
0x00579348: mov      edx, dword ptr [edx + 8]
0x0057934B: push     1
0x0057934D: lea      eax, [esp + 0x44]
0x00579351: push     eax
0x00579352: mov      dword ptr [esp + 0x104], 6
0x0057935D: call     edx
0x0057935F: mov      dword ptr [esp + 0xfc], 0xffffffff
0x0057936A: mov      edi, dword ptr [edi + 0x184]
0x00579370: mov      eax, dword ptr [esi + 0x40]
0x00579373: mov      dword ptr [eax + 0xdfc], edi
0x00579379: mov      ecx, dword ptr [esi + 0x40]
0x0057937C: call     0x5409f0
0x00579381: mov      ecx, dword ptr [esi + 0x40]
0x00579384: mov      ecx, dword ptr [ecx + 0x1b4]
0x0057938A: mov      dword ptr [esp + 0x18], 0x992214
0x00579392: mov      edx, dword ptr [ecx]
0x00579394: mov      edx, dword ptr [edx + 8]
0x00579397: push     1
0x00579399: lea      eax, [esp + 0x1c]
0x0057939D: push     eax
0x0057939E: mov      dword ptr [esp + 0x104], 7
0x005793A9: call     edx
0x005793AB: jmp      0x57a417
0x005793B0: fcomp    dword ptr [ecx + 0xd48]
0x005793B6: fnstsw   ax
0x005793B8: test     ah, 0x44
0x005793BB: mov      eax, dword ptr [esi + 0x40]
0x005793BE: jp       0x5793e4
0x005793C0: fstp     dword ptr [eax + 0xd48]
0x005793C6: mov      ecx, dword ptr [esi + 0x40]
0x005793C9: mov      ecx, dword ptr [ecx + 0x1b4]
0x005793CF: mov      dword ptr [esp + 0x18], 0x9929b0
0x005793D7: mov      dword ptr [esp + 0xfc], 2
0x005793E2: jmp      0x579402
0x005793E4: fstp     dword ptr [eax + 0xd4c]
0x005793EA: mov      ecx, dword ptr [esi + 0x40]
0x005793ED: mov      ecx, dword ptr [ecx + 0x1b4]
0x005793F3: mov      dword ptr [esp + 0x18], 0x9929c4
0x005793FB: mov      dword ptr [esp + 0xfc], ebp
0x00579402: mov      edx, dword ptr [ecx]
0x00579404: mov      edx, dword ptr [edx + 8]
0x00579407: push     1
0x00579409: lea      eax, [esp + 0x1c]
0x0057940D: push     eax
0x0057940E: call     edx
0x00579410: mov      ecx, dword ptr [esi + 0x40]
0x00579413: cmp      dword ptr [ecx + 0x23c], 0
0x0057941A: mov      dword ptr [esp + 0xfc], 0xffffffff
0x00579425: je       0x57942c
0x00579427: call     0x540520
0x0057942C: mov      eax, dword ptr [esi + 0x40]
0x0057942F: mov      ecx, dword ptr [eax + 0x1e4]
0x00579435: fld      dword ptr [ecx + 0x58]
0x00579438: fmul     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x0057943E: fstp     dword ptr [esp + 0x18]
0x00579442: fld      dword ptr [esp + 0x18]
0x00579446: fstp     dword ptr [eax + 0xd54]
0x0057944C: mov      eax, dword ptr [esi + 0x40]
0x0057944F: mov      edx, dword ptr [eax + 0x1e4]
0x00579455: fld      dword ptr [edx + 0x58]
0x00579458: fstp     dword ptr [eax + 0xd50]
0x0057945E: mov      eax, dword ptr [esi + 0x40]
0x00579461: mov      ecx, dword ptr [eax + 0x1b4]
0x00579467: mov      dword ptr [esp + 0x18], 0x992a64
0x0057946F: mov      edx, dword ptr [ecx]
0x00579471: mov      edx, dword ptr [edx + 8]
0x00579474: push     1
0x00579476: lea      eax, [esp + 0x1c]
0x0057947A: push     eax
0x0057947B: mov      dword ptr [esp + 0x104], 4
0x00579486: call     edx
0x00579488: fld1     
0x0057948A: fldz     
0x0057948C: mov      dword ptr [esp + 0xfc], 0xffffffff
0x00579497: jmp      0x57949b
0x00579499: fstp     st(0)
0x0057949B: mov      edx, dword ptr [esp + 0x70]
0x0057949F: mov      eax, dword ptr [esi + 0x40]
0x005794A2: fld      dword ptr [edx + 0x3c]
0x005794A5: fstp     dword ptr [eax + 0xc54]
0x005794AB: cmp      byte ptr [edx + 0x3a], 0
0x005794AF: mov      dword ptr [esp + 0x4c], 0
0x005794B7: jne      0x57a37c
0x005794BD: mov      eax, dword ptr [ebx + 0x48]
0x005794C0: mov      ecx, 1
0x005794C5: cmp      byte ptr [eax + 0x29], cl
0x005794C8: jbe      0x5794dc
0x005794CA: mov      ebp, dword ptr [ebx + 8]
0x005794CD: cmp      ebp, dword ptr [eax + 0x20]
0x005794D0: je       0x5794dc
0x005794D2: xor      ecx, ecx
0x005794D4: mov      dword ptr [esp + 0x4c], 1
0x005794DC: fcom     dword ptr [edx + 0x44]
0x005794DF: fnstsw   ax
0x005794E1: test     ah, 0x44
0x005794E4: jp       0x57951e
0x005794E6: mov      eax, dword ptr [esi + 0x40]
0x005794E9: fld      dword ptr [eax + 0x290]
0x005794EF: add      eax, 0x28c
0x005794F4: fmul     dword ptr [edi + 4]
0x005794F7: fld      dword ptr [eax]
0x005794F9: fmul     dword ptr [edi]
0x005794FB: faddp    st(1)
0x005794FD: fld      dword ptr [eax + 8]
0x00579500: fmul     dword ptr [edi + 8]
0x00579503: faddp    st(1)
0x00579505: fstp     dword ptr [esp + 0x18]
0x00579509: fld      dword ptr [esp + 0x18]
0x0057950D: fcomp    qword ptr [0x984040] ; [f64=0.1, u32=0xA0000000]
0x00579513: fnstsw   ax
0x00579515: test     ah, 0x41
0x00579518: je       0x57a26d
0x0057951E: test     ecx, ecx
0x00579520: je       0x57a26d
0x00579526: mov      eax, dword ptr [ebx + 8]
0x00579529: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x0057952F: mov      ecx, dword ptr [eax + 0x40]
0x00579532: cmp      dword ptr [ecx], 9
0x00579535: jne      0x579625
0x0057953B: fxch     st(1)
0x0057953D: add      eax, 0x64
0x00579540: fst      dword ptr [esp + 0xa4]
0x00579547: mov      dword ptr [esp + 0x18], eax
0x0057954B: fst      dword ptr [esp + 0xac]
0x00579552: mov      dword ptr [esp + 0x3c], 0
0x0057955A: fst      dword ptr [esp + 0xb8]
0x00579561: lea      ebp, [esp + 0xa4]
0x00579568: fst      dword ptr [esp + 0xbc]
0x0057956F: fst      dword ptr [esp + 0xc4]
0x00579576: fst      dword ptr [esp + 0xcc]
0x0057957D: fst      dword ptr [esp + 0xd8]
0x00579584: fstp     dword ptr [esp + 0xdc]
0x0057958B: fxch     st(1)
0x0057958D: fst      dword ptr [esp + 0xa8]
0x00579594: fst      dword ptr [esp + 0xb0]
0x0057959B: fst      dword ptr [esp + 0xb4]
0x005795A2: fst      dword ptr [esp + 0xc0]
0x005795A9: fst      dword ptr [esp + 0xd0]
0x005795B0: fstp     dword ptr [esp + 0xe0]
0x005795B7: fst      dword ptr [esp + 0xc8]
0x005795BE: fstp     dword ptr [esp + 0xd4]
0x005795C5: mov      edx, dword ptr [esp + 0x18]
0x005795C9: push     ebp
0x005795CA: push     edx
0x005795CB: call     0x6b1d00
0x005795D0: fld      dword ptr [ebp + 4]
0x005795D3: fmul     dword ptr [edi + 4]
0x005795D6: add      esp, 8
0x005795D9: fld      dword ptr [edi]
0x005795DB: fmul     dword ptr [ebp]
0x005795DE: faddp    st(1)
0x005795E0: fld      dword ptr [ebp + 8]
0x005795E3: fmul     dword ptr [edi + 8]
0x005795E6: faddp    st(1)
0x005795E8: fstp     dword ptr [esp + 0x14]
0x005795EC: fld      dword ptr [esp + 0x14]
0x005795F0: fabs     
0x005795F2: fstp     dword ptr [esp + 0x14]
0x005795F6: fld      dword ptr [esp + 0x14]
0x005795FA: fcomp    qword ptr [0x97df78] ; [f64=0.999, u32=0xE0000000]
0x00579600: fnstsw   ax
0x00579602: test     ah, 1
0x00579605: je       0x57961f
0x00579607: mov      eax, dword ptr [esp + 0x3c]
0x0057960B: inc      eax
0x0057960C: add      ebp, 0x10
0x0057960F: cmp      eax, 4
0x00579612: mov      dword ptr [esp + 0x3c], eax
0x00579616: jl       0x5795c5
0x00579618: fldz     
0x0057961A: jmp      0x57a273
0x0057961F: fld1     
0x00579621: fldz     
0x00579623: jmp      0x579627
0x00579625: fstp     st(0)
0x00579627: mov      eax, dword ptr [esp + 0x70]
0x0057962B: fldz     
0x0057962D: cmp      byte ptr [eax + 0x3b], 0
0x00579631: je       0x57994b
0x00579637: mov      ecx, dword ptr [ebx + 8]
0x0057963A: mov      edx, dword ptr [ecx + 0x40]
0x0057963D: cmp      dword ptr [edx], 9
0x00579640: jne      0x57994b
0x00579646: fxch     st(1)
0x00579648: mov      eax, edx
0x0057964A: mov      ebp, dword ptr [eax + 4]
0x0057964D: fst      dword ptr [esp + 0x1c]
0x00579651: fst      dword ptr [esp + 0x20]
0x00579655: add      ebp, 0x20
0x00579658: fst      dword ptr [esp + 0x24]
0x0057965C: fxch     st(2)
0x0057965E: fst      dword ptr [esp + 0x28]
0x00579662: fld      dword ptr [ebp]
0x00579665: fld      dword ptr [ebp + 4]
0x00579668: fcompp   
0x0057966A: fnstsw   ax
0x0057966C: test     ah, 0x41
0x0057966F: jne      0x57967b
0x00579671: fstp     st(1)
0x00579673: fstp     st(1)
0x00579675: fstp     dword ptr [esp + 0x20]
0x00579679: jmp      0x579696
0x0057967B: fld      dword ptr [ebp + 4]
0x0057967E: fld      dword ptr [ebp]
0x00579681: fcompp   
0x00579683: fnstsw   ax
0x00579685: test     ah, 0x41
0x00579688: jne      0x579738
0x0057968E: fstp     st(1)
0x00579690: fstp     st(1)
0x00579692: fstp     dword ptr [esp + 0x1c]
0x00579696: lea      edx, [esp + 0x1c]
0x0057969A: push     edx
0x0057969B: add      ecx, 0x64
0x0057969E: push     ecx
0x0057969F: call     0x6b1d00
0x005796A4: fld      dword ptr [edi + 4]
0x005796A7: fmul     dword ptr [esp + 0x28]
0x005796AB: add      esp, 8
0x005796AE: fld      dword ptr [esp + 0x1c]
0x005796B2: fmul     dword ptr [edi]
0x005796B4: faddp    st(1)
0x005796B6: fld      dword ptr [edi + 8]
0x005796B9: fmul     dword ptr [esp + 0x24]
0x005796BD: faddp    st(1)
0x005796BF: fstp     dword ptr [esp + 0x14]
0x005796C3: fld      dword ptr [esp + 0x14]
0x005796C7: fabs     
0x005796C9: fstp     dword ptr [esp + 0x14]
0x005796CD: fld      dword ptr [esp + 0x14]
0x005796D1: fcomp    qword ptr [0x992500] ; [f32=-2, f64=0.9, u32=0xC0000000]
0x005796D7: fnstsw   ax
0x005796D9: test     ah, 0x41
0x005796DC: je       0x579618
0x005796E2: fldz     
0x005796E4: fldz     
0x005796E6: fxch     st(1)
0x005796E8: mov      eax, dword ptr [esi + 0x40]
0x005796EB: cmp      dword ptr [eax + 0x204], 0
0x005796F2: jne      0x579951
0x005796F8: mov      ecx, dword ptr [esi + 8]
0x005796FB: movzx    eax, byte ptr [ecx + 1]
0x005796FF: mov      ecx, dword ptr [ecx + 4]
0x00579702: mov      edx, dword ptr [ecx + 0x1c]
0x00579705: add      eax, eax
0x00579707: add      eax, eax
0x00579709: mov      edx, dword ptr [eax + edx]
0x0057970C: mov      dword ptr [esp + 0x3c], edx
0x00579710: test     edx, edx
0x00579712: je       0x57973c
0x00579714: mov      edx, dword ptr [ecx + 0xc]
0x00579717: test     dword ptr [eax + edx], 0x200
0x0057971E: mov      edx, dword ptr [esp + 0x3c]
0x00579722: je       0x57973c
0x00579724: test     byte ptr [edx + 8], 8
0x00579728: je       0x57973c
0x0057972A: mov      ecx, dword ptr [ecx + 0x20]
0x0057972D: add      eax, ecx
0x0057972F: cmp      dword ptr [eax], 0
0x00579732: je       0x57973c
0x00579734: mov      eax, dword ptr [eax]
0x00579736: jmp      0x57973e
0x00579738: fstp     st(0)
0x0057973A: jmp      0x5796e8
0x0057973C: mov      eax, edx
0x0057973E: fld      dword ptr [eax + 0xc]
0x00579741: fstp     dword ptr [esp + 0x60]
0x00579745: fld      dword ptr [eax + 0x10]
0x00579748: mov      eax, dword ptr [ebx + 8]
0x0057974B: fstp     dword ptr [esp + 0x64]
0x0057974F: fld      dword ptr [eax + 0x54]
0x00579752: fadd     dword ptr [ebp]
0x00579755: fstp     dword ptr [esp + 0xa4]
0x0057975C: fld      dword ptr [eax + 0x58]
0x0057975F: fadd     dword ptr [ebp + 4]
0x00579762: fstp     dword ptr [esp + 0xa8]
0x00579769: fld      dword ptr [eax + 0x5c]
0x0057976C: fadd     dword ptr [ebp + 8]
0x0057976F: fstp     dword ptr [esp + 0xac]
0x00579776: fld      dword ptr [eax + 0x54]
0x00579779: fsub     dword ptr [ebp]
0x0057977C: fstp     dword ptr [esp + 0xb4]
0x00579783: fld      dword ptr [eax + 0x58]
0x00579786: fsub     dword ptr [ebp + 4]
0x00579789: fstp     dword ptr [esp + 0xb8]
0x00579790: fld      dword ptr [eax + 0x5c]
0x00579793: fsub     dword ptr [ebp + 8]
0x00579796: fstp     dword ptr [esp + 0xbc]
0x0057979D: fld      dword ptr [eax + 0x54]
0x005797A0: fsub     dword ptr [ebp]
0x005797A3: fstp     dword ptr [esp + 0xc4]
0x005797AA: fld      dword ptr [eax + 0x58]
0x005797AD: fadd     dword ptr [ebp + 4]
0x005797B0: fstp     dword ptr [esp + 0xc8]
0x005797B7: fld      dword ptr [eax + 0x54]
0x005797BA: fadd     dword ptr [ebp]
0x005797BD: fstp     dword ptr [esp + 0xd4]
0x005797C4: fld      dword ptr [eax + 0x58]
0x005797C7: fsub     dword ptr [ebp + 4]
0x005797CA: fstp     dword ptr [esp + 0xd8]
0x005797D1: fld      dword ptr [esp + 0xa4]
0x005797D8: fld      dword ptr [esp + 0x60]
0x005797DC: fld      st(0)
0x005797DE: fsubp    st(2)
0x005797E0: fxch     st(1)
0x005797E2: fstp     dword ptr [esp + 0x2c]
0x005797E6: fld      dword ptr [esp + 0xa8]
0x005797ED: fld      dword ptr [esp + 0x64]
0x005797F1: fld      st(0)
0x005797F3: fsubp    st(2)
0x005797F5: fxch     st(1)
0x005797F7: fstp     dword ptr [esp + 0x30]
0x005797FB: fld      dword ptr [esp + 0xac]
0x00579802: fsub     st(3)
0x00579804: fstp     dword ptr [esp + 0x34]
0x00579808: fld      dword ptr [esp + 0x2c]
0x0057980C: fld      dword ptr [esp + 0x30]
0x00579810: fld      dword ptr [esp + 0x34]
0x00579814: fld      st(1)
0x00579816: fmulp    st(2)
0x00579818: fld      st(2)
0x0057981A: fmulp    st(3)
0x0057981C: fxch     st(1)
0x0057981E: faddp    st(2)
0x00579820: fmul     st(0), st(0)
0x00579822: faddp    st(1)
0x00579824: fstp     dword ptr [esp + 0x50]
0x00579828: fld      dword ptr [esp + 0xb4]
0x0057982F: fsub     st(2)
0x00579831: fstp     dword ptr [esp + 0x2c]
0x00579835: fld      dword ptr [esp + 0xb8]
0x0057983C: fsub     st(1)
0x0057983E: fstp     dword ptr [esp + 0x30]
0x00579842: fld      dword ptr [esp + 0xbc]
0x00579849: fsub     st(3)
0x0057984B: fstp     dword ptr [esp + 0x34]
0x0057984F: fld      dword ptr [esp + 0x2c]
0x00579853: fld      dword ptr [esp + 0x30]
0x00579857: fld      dword ptr [esp + 0x34]
0x0057985B: fld      st(1)
0x0057985D: fmulp    st(2)
0x0057985F: fld      st(2)
0x00579861: fmulp    st(3)
0x00579863: fxch     st(1)
0x00579865: faddp    st(2)
0x00579867: fmul     st(0), st(0)
0x00579869: faddp    st(1)
0x0057986B: fstp     dword ptr [esp + 0x54]
0x0057986F: fld      dword ptr [esp + 0xc4]
0x00579876: fsub     st(2)
0x00579878: fstp     dword ptr [esp + 0x2c]
0x0057987C: fld      dword ptr [esp + 0xc8]
0x00579883: fsub     st(1)
0x00579885: fstp     dword ptr [esp + 0x30]
0x00579889: fld      st(2)
0x0057988B: fsubrp   st(3)
0x0057988D: fxch     st(2)
0x0057988F: fstp     dword ptr [esp + 0x14]
0x00579893: fld      dword ptr [esp + 0x14]
0x00579897: fst      dword ptr [esp + 0x34]
0x0057989B: fld      dword ptr [esp + 0x2c]
0x0057989F: fld      dword ptr [esp + 0x30]
0x005798A3: fld      dword ptr [esp + 0x34]
0x005798A7: fld      st(1)
0x005798A9: fmulp    st(2)
0x005798AB: fld      st(2)
0x005798AD: fmulp    st(3)
0x005798AF: fxch     st(1)
0x005798B1: faddp    st(2)
0x005798B3: fmul     st(0), st(0)
0x005798B5: faddp    st(1)
0x005798B7: fstp     dword ptr [esp + 0x58]
0x005798BB: fld      dword ptr [esp + 0xd4]
0x005798C2: fsubrp   st(2)
0x005798C4: fxch     st(1)
0x005798C6: fstp     dword ptr [esp + 0x2c]
0x005798CA: fld      dword ptr [esp + 0xd8]
0x005798D1: fsubrp   st(2)
0x005798D3: fxch     st(1)
0x005798D5: fstp     dword ptr [esp + 0x30]
0x005798D9: fstp     dword ptr [esp + 0x34]
0x005798DD: fld      dword ptr [esp + 0x2c]
0x005798E1: fld      dword ptr [esp + 0x30]
0x005798E5: fld      dword ptr [esp + 0x34]
0x005798E9: fld      st(1)
0x005798EB: fmulp    st(2)
0x005798ED: fld      st(2)
0x005798EF: fmulp    st(3)
0x005798F1: fxch     st(1)
0x005798F3: faddp    st(2)
0x005798F5: fmul     st(0), st(0)
0x005798F7: faddp    st(1)
0x005798F9: fstp     dword ptr [esp + 0x5c]
0x005798FD: fld      dword ptr [esp + 0x50]
0x00579901: fld      qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x00579907: fcom     st(1)
0x00579909: fnstsw   ax
0x0057990B: fstp     st(1)
0x0057990D: test     ah, 0x41
0x00579910: jp       0x57a271
0x00579916: fld      dword ptr [esp + 0x54]
0x0057991A: fcomp    st(1)
0x0057991C: fnstsw   ax
0x0057991E: test     ah, 1
0x00579921: jne      0x57a271
0x00579927: fld      dword ptr [esp + 0x58]
0x0057992B: fcomp    st(1)
0x0057992D: fnstsw   ax
0x0057992F: test     ah, 1
0x00579932: jne      0x57a271
0x00579938: fld      dword ptr [esp + 0x5c]
0x0057993C: fcompp   
0x0057993E: fnstsw   ax
0x00579940: test     ah, 1
0x00579943: jne      0x57a273
0x00579949: jmp      0x579953
0x0057994B: fstp     st(2)
0x0057994D: fstp     st(1)
0x0057994F: jmp      0x579953
0x00579951: fstp     st(0)
0x00579953: mov      eax, dword ptr [esi + 0x40]
0x00579956: mov      ecx, dword ptr [ebx + 8]
0x00579959: cmp      dword ptr [eax + 0x234], ecx
0x0057995F: jne      0x5799ae
0x00579961: fld      dword ptr [eax + 0x214]
0x00579967: lea      ecx, [eax + 0x210]
0x0057996D: fmul     dword ptr [edi + 4]
0x00579970: fld      dword ptr [ecx]
0x00579972: fmul     dword ptr [edi]
0x00579974: faddp    st(1)
0x00579976: fld      dword ptr [ecx + 8]
0x00579979: fmul     dword ptr [edi + 8]
0x0057997C: faddp    st(1)
0x0057997E: fstp     dword ptr [esp + 0x14]
0x00579982: fld      dword ptr [esp + 0x14]
0x00579986: fabs     
0x00579988: fstp     dword ptr [esp + 0x14]
0x0057998C: fld      dword ptr [esp + 0x14]
0x00579990: fcomp    qword ptr [0x992990] ; [f32=-0, f64=0.99, u32=0x80000000]
0x00579996: fnstsw   ax
0x00579998: test     ah, 5
0x0057999B: jp       0x5799ae
0x0057999D: push     ecx
0x0057999E: fstp     st(0)
0x005799A0: mov      ecx, esi
0x005799A2: call     0x5765f0
0x005799A7: fldz     
0x005799A9: jmp      0x57a27e
0x005799AE: fld      dword ptr [edi]
0x005799B0: mov      eax, dword ptr [esi + 8]
0x005799B3: fchs     
0x005799B5: fstp     dword ptr [esp + 0x1c]
0x005799B9: fld      dword ptr [edi + 4]
0x005799BC: fchs     
0x005799BE: fstp     dword ptr [esp + 0x20]
0x005799C2: fld      dword ptr [edi + 8]
0x005799C5: fchs     
0x005799C7: fstp     dword ptr [esp + 0x24]
0x005799CB: movzx    edx, byte ptr [eax + 1]
0x005799CF: mov      ecx, dword ptr [eax + 4]
0x005799D2: mov      ecx, dword ptr [ecx + 0x34]
0x005799D5: mov      ecx, dword ptr [ecx + edx*4]
0x005799D8: mov      edx, dword ptr [ecx + 0x98]
0x005799DE: mov      ecx, dword ptr [edx + 0x40]
0x005799E1: mov      edx, dword ptr [ecx + 4]
0x005799E4: fld      dword ptr [edx + 0x10]
0x005799E7: fmul     qword ptr [0x97f0b0] ; [f32=0, f64=1.5, u32=0x00000000]
0x005799ED: fstp     dword ptr [esp + 0x14]
0x005799F1: fld      dword ptr [esp + 0x14]
0x005799F5: fld      st(0)
0x005799F7: fmul     dword ptr [esp + 0x1c]
0x005799FB: fstp     dword ptr [esp + 0x1c]
0x005799FF: fld      st(0)
0x00579A01: fmul     dword ptr [esp + 0x20]
0x00579A05: fstp     dword ptr [esp + 0x20]
0x00579A09: fmul     dword ptr [esp + 0x24]
0x00579A0D: fstp     dword ptr [esp + 0x24]
0x00579A11: movzx    ecx, byte ptr [eax + 1]
0x00579A15: mov      eax, dword ptr [eax + 4]
0x00579A18: mov      edx, dword ptr [eax + 0x1c]
0x00579A1B: add      ecx, ecx
0x00579A1D: add      ecx, ecx
0x00579A1F: mov      edx, dword ptr [ecx + edx]
0x00579A22: test     edx, edx
0x00579A24: je       0x579a46
0x00579A26: mov      ebp, dword ptr [eax + 0xc]
0x00579A29: test     dword ptr [ecx + ebp], 0x200
0x00579A30: je       0x579a46
0x00579A32: test     byte ptr [edx + 8], 8
0x00579A36: je       0x579a46
0x00579A38: mov      eax, dword ptr [eax + 0x20]
0x00579A3B: add      ecx, eax
0x00579A3D: cmp      dword ptr [ecx], 0
0x00579A40: je       0x579a46
0x00579A42: mov      eax, dword ptr [ecx]
0x00579A44: jmp      0x579a48
0x00579A46: mov      eax, edx
0x00579A48: fld      dword ptr [eax + 0xc]
0x00579A4B: push     0
0x00579A4D: fstp     dword ptr [esp + 0x30]
0x00579A51: mov      ebp, 1
0x00579A56: fld      dword ptr [eax + 0x10]
0x00579A59: push     ebp
0x00579A5A: fstp     dword ptr [esp + 0x38]
0x00579A5E: push     0
0x00579A60: fld      dword ptr [eax + 0x14]
0x00579A63: push     0
0x00579A65: fstp     dword ptr [esp + 0x44]
0x00579A69: lea      ecx, [esp + 0x2c]
0x00579A6D: fld      dword ptr [eax + 0x18]
0x00579A70: mov      eax, dword ptr [ebx + 8]
0x00579A73: push     ecx
0x00579A74: fstp     dword ptr [esp + 0x4c]
0x00579A78: lea      edx, [esp + 0x40]
0x00579A7C: push     edx
0x00579A7D: fstp     dword ptr [esp + 0x4c]
0x00579A81: push     eax
0x00579A82: call     0x621d30
0x00579A87: add      esp, 0x1c
0x00579A8A: test     eax, eax
0x00579A8C: je       0x579618
0x00579A92: mov      eax, dword ptr [esi + 0x40]
0x00579A95: fld      dword ptr [eax + 0x220]
0x00579A9B: mov      ecx, dword ptr [eax + 0x234]
0x00579AA1: fstp     dword ptr [esp + 0x84]
0x00579AA8: mov      dword ptr [esp + 0x3c], ecx
0x00579AAC: fld      dword ptr [eax + 0x224]
0x00579AB2: fstp     dword ptr [esp + 0x88]
0x00579AB9: fld      dword ptr [eax + 0x228]
0x00579ABF: fstp     dword ptr [esp + 0x8c]
0x00579AC6: fld      dword ptr [eax + 0x22c]
0x00579ACC: fstp     dword ptr [esp + 0x90]
0x00579AD3: fldz     
0x00579AD5: fst      dword ptr [esp + 0x50]
0x00579AD9: fst      dword ptr [esp + 0x54]
0x00579ADD: fst      dword ptr [esp + 0x58]
0x00579AE1: fst      dword ptr [eax + 0xc54]
0x00579AE7: mov      edx, dword ptr [esi + 0x40]
0x00579AEA: mov      dword ptr [edx + 0x204], ebp
0x00579AF0: mov      eax, dword ptr [esi + 0x40]
0x00579AF3: mov      dword ptr [eax + 0xd68], ebp
0x00579AF9: fld      dword ptr [edi]
0x00579AFB: mov      eax, dword ptr [esi + 0x40]
0x00579AFE: fstp     dword ptr [esp + 0x1c]
0x00579B02: fld      dword ptr [edi + 4]
0x00579B05: add      eax, 0x210
0x00579B0A: fstp     dword ptr [esp + 0x20]
0x00579B0E: fld      dword ptr [edi + 8]
0x00579B11: fstp     dword ptr [esp + 0x24]
0x00579B15: fld      dword ptr [edi + 0xc]
0x00579B18: fstp     dword ptr [esp + 0x28]
0x00579B1C: fld      dword ptr [esp + 0x1c]
0x00579B20: fstp     dword ptr [eax]
0x00579B22: fld      dword ptr [esp + 0x20]
0x00579B26: fstp     dword ptr [eax + 4]
0x00579B29: fld      dword ptr [esp + 0x24]
0x00579B2D: fstp     dword ptr [eax + 8]
0x00579B30: fld      dword ptr [esp + 0x28]
0x00579B34: fstp     dword ptr [eax + 0xc]
0x00579B37: mov      ecx, dword ptr [esi + 0x40]
0x00579B3A: mov      edx, dword ptr [ebx + 8]
0x00579B3D: mov      dword ptr [ecx + 0x234], edx
0x00579B43: mov      eax, dword ptr [esi + 0x40]
0x00579B46: cmp      dword ptr [eax + 0x23c], 0
0x00579B4D: je       0x579b5a
0x00579B4F: mov      ecx, eax
0x00579B51: fstp     st(0)
0x00579B53: call     0x540520
0x00579B58: fldz     
0x00579B5A: mov      eax, dword ptr [esp + 0x70]
0x00579B5E: fld      dword ptr [eax + 0x40]
0x00579B61: mov      ecx, dword ptr [esi + 0x40]
0x00579B64: fstp     dword ptr [ecx + 0x20c]
0x00579B6A: mov      edx, dword ptr [esi + 0x40]
0x00579B6D: fld      dword ptr [eax + 0x44]
0x00579B70: fstp     dword ptr [edx + 0x230]
0x00579B76: mov      eax, dword ptr [esi + 0x40]
0x00579B79: fcom     dword ptr [eax + 0x230]
0x00579B7F: fnstsw   ax
0x00579B81: test     ah, 5
0x00579B84: jp       0x579cea
0x00579B8A: lea      ecx, [esp + 0xa4]
0x00579B91: fstp     st(0)
0x00579B93: push     ecx
0x00579B94: mov      ecx, dword ptr [esi + 0x40]
0x00579B97: call     0x540780
0x00579B9C: fldz     
0x00579B9E: fst      dword ptr [esp + 0x74]
0x00579BA2: push     eax
0x00579BA3: fst      dword ptr [esp + 0x7c]
0x00579BA7: lea      edx, [esp + 0x78]
0x00579BAB: fstp     dword ptr [esp + 0x80]
0x00579BB2: push     edx
0x00579BB3: fld1     
0x00579BB5: fstp     dword ptr [esp + 0x88]
0x00579BBC: call     0x6b2160
0x00579BC1: fstp     st(0)
0x00579BC3: fldz     
0x00579BC5: lea      eax, [esp + 0x7c]
0x00579BC9: fst      dword ptr [esp + 0x24]
0x00579BCD: push     eax
0x00579BCE: fstp     dword ptr [esp + 0x2c]
0x00579BD2: lea      ecx, [esp + 0x28]
0x00579BD6: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00579BDC: push     ecx
0x00579BDD: fstp     dword ptr [esp + 0x34]
0x00579BE1: lea      edx, [esp + 0x70]
0x00579BE5: fld1     
0x00579BE7: push     edx
0x00579BE8: fstp     dword ptr [esp + 0x3c]
0x00579BEC: call     0x56d4a0
0x00579BF1: mov      ecx, dword ptr [esi + 0x40]
0x00579BF4: fld      dword ptr [ecx + 0x214]
0x00579BFA: add      ecx, 0x210
0x00579C00: fmul     dword ptr [esp + 0x78]
0x00579C04: add      esp, 0x14
0x00579C07: fld      dword ptr [ecx]
0x00579C09: fmul     dword ptr [esp + 0x60]
0x00579C0D: faddp    st(1)
0x00579C0F: fld      dword ptr [ecx + 8]
0x00579C12: fmul     dword ptr [esp + 0x68]
0x00579C16: faddp    st(1)
0x00579C18: fstp     dword ptr [esp + 0x14]
0x00579C1C: fldz     
0x00579C1E: fcom     dword ptr [esp + 0x14]
0x00579C22: fnstsw   ax
0x00579C24: test     ah, 0x41
0x00579C27: jp       0x579c2d
0x00579C29: fld1     
0x00579C2B: jmp      0x579c33
0x00579C2D: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00579C33: fstp     dword ptr [esp + 0x7c]
0x00579C37: push     ecx
0x00579C38: lea      eax, [esp + 0x78]
0x00579C3C: fst      dword ptr [esp + 0x78]
0x00579C40: push     eax
0x00579C41: fstp     dword ptr [esp + 0x80]
0x00579C48: lea      ecx, [esp + 0xac]
0x00579C4F: fld1     
0x00579C51: push     ecx
0x00579C52: fstp     dword ptr [esp + 0x8c]
0x00579C59: call     0x56d4a0
0x00579C5E: fld      dword ptr [eax]
0x00579C60: mov      ecx, dword ptr [esi + 0x40]
0x00579C63: fstp     dword ptr [ecx + 0x220]
0x00579C69: fld      dword ptr [eax + 4]
0x00579C6C: add      ecx, 0x220
0x00579C72: fstp     dword ptr [ecx + 4]
0x00579C75: fld      dword ptr [eax + 8]
0x00579C78: fstp     dword ptr [ecx + 8]
0x00579C7B: fld      dword ptr [eax + 0xc]
0x00579C7E: fstp     dword ptr [ecx + 0xc]
0x00579C81: mov      edx, dword ptr [esi + 0x40]
0x00579C84: fldz     
0x00579C86: fst      dword ptr [edx + 0x228]
0x00579C8C: lea      ecx, [esp + 0x28]
0x00579C90: fld1     
0x00579C92: mov      eax, dword ptr [esi + 0x40]
0x00579C95: fst      dword ptr [eax + 0x22c]
0x00579C9B: fxch     st(1)
0x00579C9D: mov      eax, dword ptr [esi + 0x40]
0x00579CA0: fst      dword ptr [esp + 0x28]
0x00579CA4: fst      dword ptr [esp + 0x2c]
0x00579CA8: add      eax, 0x220
0x00579CAD: fstp     dword ptr [esp + 0x30]
0x00579CB1: push     eax
0x00579CB2: push     ecx
0x00579CB3: fstp     dword ptr [esp + 0x3c]
0x00579CB7: call     0x6b2160
0x00579CBC: mov      eax, dword ptr [esi + 0x40]
0x00579CBF: fstp     st(0)
0x00579CC1: fld      dword ptr [esp + 0x30]
0x00579CC5: add      esp, 0x14
0x00579CC8: fstp     dword ptr [eax + 0x220]
0x00579CCE: add      eax, 0x220
0x00579CD3: fld      dword ptr [esp + 0x20]
0x00579CD7: fstp     dword ptr [eax + 4]
0x00579CDA: fld      dword ptr [esp + 0x24]
0x00579CDE: fstp     dword ptr [eax + 8]
0x00579CE1: fld      dword ptr [esp + 0x28]
0x00579CE5: fstp     dword ptr [eax + 0xc]
0x00579CE8: fldz     
0x00579CEA: mov      eax, dword ptr [esi + 8]
0x00579CED: movzx    edx, byte ptr [eax + 1]
0x00579CF1: mov      ecx, dword ptr [eax + 4]
0x00579CF4: mov      ecx, dword ptr [ecx + 0x1c]
0x00579CF7: mov      ecx, dword ptr [ecx + edx*4]
0x00579CFA: fld      dword ptr [ecx + 0xc]
0x00579CFD: fstp     dword ptr [esp + 0x1c]
0x00579D01: fld      dword ptr [ecx + 0x10]
0x00579D04: fstp     dword ptr [esp + 0x20]
0x00579D08: fld      dword ptr [ecx + 0x14]
0x00579D0B: movzx    ecx, byte ptr [eax + 1]
0x00579D0F: mov      eax, dword ptr [eax + 4]
0x00579D12: fstp     dword ptr [esp + 0x24]
0x00579D16: mov      edx, dword ptr [eax + 0x1c]
0x00579D19: add      ecx, ecx
0x00579D1B: add      ecx, ecx
0x00579D1D: mov      edx, dword ptr [ecx + edx]
0x00579D20: test     edx, edx
0x00579D22: je       0x579d44
0x00579D24: mov      ebp, dword ptr [eax + 0xc]
0x00579D27: test     dword ptr [ecx + ebp], 0x200
0x00579D2E: je       0x579d44
0x00579D30: test     byte ptr [edx + 8], 8
0x00579D34: je       0x579d44
0x00579D36: mov      eax, dword ptr [eax + 0x20]
0x00579D39: add      ecx, eax
0x00579D3B: cmp      dword ptr [ecx], 0
0x00579D3E: je       0x579d44
0x00579D40: mov      eax, dword ptr [ecx]
0x00579D42: jmp      0x579d46
0x00579D44: mov      eax, edx
0x00579D46: fld      dword ptr [eax + 0xc]
0x00579D49: fstp     dword ptr [esp + 0x94]
0x00579D50: fld      dword ptr [eax + 0x10]
0x00579D53: fstp     dword ptr [esp + 0x98]
0x00579D5A: fld      dword ptr [eax + 0x14]
0x00579D5D: mov      eax, dword ptr [ebx + 8]
0x00579D60: fstp     dword ptr [esp + 0x9c]
0x00579D67: fld      dword ptr [esp + 0x94]
0x00579D6E: fsub     dword ptr [esp + 0x1c]
0x00579D72: fstp     dword ptr [esp + 0x2c]
0x00579D76: fld      dword ptr [esp + 0x98]
0x00579D7D: fsub     dword ptr [esp + 0x20]
0x00579D81: fstp     dword ptr [esp + 0x30]
0x00579D85: fld      dword ptr [esp + 0x9c]
0x00579D8C: fsub     dword ptr [esp + 0x24]
0x00579D90: fstp     dword ptr [esp + 0x34]
0x00579D94: mov      ecx, dword ptr [eax + 0x40]
0x00579D97: cmp      dword ptr [ecx], 9
0x00579D9A: jne      0x57a01c
0x00579DA0: mov      ecx, dword ptr [esi + 8]
0x00579DA3: fstp     st(0)
0x00579DA5: movzx    edx, byte ptr [ecx + 1]
0x00579DA9: mov      ecx, dword ptr [ecx + 4]
0x00579DAC: mov      ecx, dword ptr [ecx + 0x34]
0x00579DAF: mov      ecx, dword ptr [ecx + edx*4]
0x00579DB2: mov      edx, dword ptr [ecx + 0x98]
0x00579DB8: mov      ecx, dword ptr [edx + 0x40]
0x00579DBB: mov      edx, dword ptr [ecx + 4]
0x00579DBE: mov      ecx, dword ptr [esi + 0x40]
0x00579DC1: fld      dword ptr [edx + 0x10]
0x00579DC4: mov      edx, dword ptr [ecx + 0x1e4]
0x00579DCA: fstp     dword ptr [esp + 0x14]
0x00579DCE: lea      ecx, [esp + 0x60]
0x00579DD2: fld      dword ptr [edx + 0x70]
0x00579DD5: fmul     dword ptr [esp + 0x14]
0x00579DD9: fstp     dword ptr [esp + 0x4c]
0x00579DDD: fld      dword ptr [edi]
0x00579DDF: fstp     dword ptr [esp + 0x74]
0x00579DE3: fld      dword ptr [edi + 4]
0x00579DE6: fstp     dword ptr [esp + 0x78]
0x00579DEA: fld      dword ptr [edi + 8]
0x00579DED: fstp     dword ptr [esp + 0x7c]
0x00579DF1: fld      dword ptr [edi + 0xc]
0x00579DF4: fstp     dword ptr [esp + 0x80]
0x00579DFB: fld      dword ptr [eax + 0x64]
0x00579DFE: fchs     
0x00579E00: fstp     dword ptr [esp + 0x60]
0x00579E04: fld      dword ptr [eax + 0x68]
0x00579E07: fchs     
0x00579E09: fstp     dword ptr [esp + 0x64]
0x00579E0D: fld      dword ptr [eax + 0x6c]
0x00579E10: fchs     
0x00579E12: fstp     dword ptr [esp + 0x68]
0x00579E16: fld      dword ptr [eax + 0x70]
0x00579E19: lea      eax, [esp + 0x74]
0x00579E1D: push     eax
0x00579E1E: fstp     dword ptr [esp + 0x70]
0x00579E22: push     ecx
0x00579E23: call     0x6b1d00
0x00579E28: mov      ecx, dword ptr [ebx + 8]
0x00579E2B: mov      edx, dword ptr [ecx + 0x40]
0x00579E2E: mov      eax, dword ptr [edx + 4]
0x00579E31: fld      dword ptr [eax + 0x20]
0x00579E34: add      eax, 0x20
0x00579E37: fmul     dword ptr [esp + 0x7c]
0x00579E3B: add      ecx, 0x64
0x00579E3E: fstp     dword ptr [esp + 0xec]
0x00579E45: fld      dword ptr [eax + 4]
0x00579E48: fmul     dword ptr [esp + 0x80]
0x00579E4F: fstp     dword ptr [esp + 0xf0]
0x00579E56: fld      dword ptr [eax + 8]
0x00579E59: lea      eax, [esp + 0xec]
0x00579E60: fmul     dword ptr [esp + 0x84]
0x00579E67: push     eax
0x00579E68: push     ecx
0x00579E69: fstp     dword ptr [esp + 0xfc]
0x00579E70: call     0x6b1d00
0x00579E75: mov      eax, dword ptr [ebx + 8]
0x00579E78: fld      dword ptr [eax + 0x54]
0x00579E7B: add      esp, 0x10
0x00579E7E: fadd     dword ptr [esp + 0xe4]
0x00579E85: add      eax, 0x54
0x00579E88: fstp     dword ptr [esp + 0xe4]
0x00579E8F: fld      dword ptr [eax + 4]
0x00579E92: fadd     dword ptr [esp + 0xe8]
0x00579E99: fstp     dword ptr [esp + 0xe8]
0x00579EA0: fld      dword ptr [eax + 8]
0x00579EA3: fadd     dword ptr [esp + 0xec]
0x00579EAA: fstp     dword ptr [esp + 0xec]
0x00579EB1: fld      dword ptr [edi]
0x00579EB3: fchs     
0x00579EB5: fstp     dword ptr [esp + 0x14]
0x00579EB9: fld      dword ptr [esp + 0x14]
0x00579EBD: fst      dword ptr [esp + 0x18]
0x00579EC1: fld      dword ptr [ebx + 0x10]
0x00579EC4: fchs     
0x00579EC6: fstp     dword ptr [esp + 0x14]
0x00579ECA: fld      dword ptr [esp + 0x14]
0x00579ECE: fst      dword ptr [esp + 0x14]
0x00579ED2: fld      dword ptr [esp + 0x18]
0x00579ED6: fld      st(0)
0x00579ED8: mov      eax, dword ptr [esi + 8]
0x00579EDB: fchs     
0x00579EDD: movzx    ecx, byte ptr [eax + 1]
0x00579EE1: fmul     dword ptr [esp + 0xe4]
0x00579EE8: mov      edx, dword ptr [eax + 4]
0x00579EEB: fld      dword ptr [esp + 0xe8]
0x00579EF2: mov      eax, dword ptr [edx + 0x1c]
0x00579EF5: fld      dword ptr [esp + 0x14]
0x00579EF9: mov      eax, dword ptr [eax + ecx*4]
0x00579EFC: fld      st(0)
0x00579EFE: mov      ecx, 0x800
0x00579F03: fmulp    st(2)
0x00579F05: fxch     st(2)
0x00579F07: fsubrp   st(1)
0x00579F09: fstp     dword ptr [esp + 0x14]
0x00579F0D: fld      dword ptr [esp + 0x98]
0x00579F14: fld      st(0)
0x00579F16: fmulp    st(2)
0x00579F18: fld      dword ptr [esp + 0x94]
0x00579F1F: fld      st(0)
0x00579F21: fmulp    st(4)
0x00579F23: fxch     st(2)
0x00579F25: faddp    st(3)
0x00579F27: fld      dword ptr [esp + 0x14]
0x00579F2B: faddp    st(3)
0x00579F2D: fxch     st(2)
0x00579F2F: fstp     dword ptr [esp + 0x14]
0x00579F33: fld      dword ptr [esp + 0x14]
0x00579F37: fabs     
0x00579F39: fstp     dword ptr [esp + 0x14]
0x00579F3D: fld      dword ptr [esp + 0x14]
0x00579F41: fstp     dword ptr [esp + 0x14]
0x00579F45: fxch     st(3)
0x00579F47: fstp     dword ptr [esp + 0x60]
0x00579F4B: fxch     st(1)
0x00579F4D: fstp     dword ptr [esp + 0x64]
0x00579F51: fld      dword ptr [esp + 0x60]
0x00579F55: fld      dword ptr [esp + 0x14]
0x00579F59: fld      st(0)
0x00579F5B: fmulp    st(2)
0x00579F5D: fld      st(3)
0x00579F5F: faddp    st(2)
0x00579F61: fxch     st(1)
0x00579F63: fstp     dword ptr [esp + 0xa4]
0x00579F6A: fmul     dword ptr [esp + 0x64]
0x00579F6E: fadd     st(1)
0x00579F70: fstp     dword ptr [esp + 0xa8]
0x00579F77: fld      dword ptr [esp + 0x4c]
0x00579F7B: fld      st(0)
0x00579F7D: fmul     dword ptr [edi]
0x00579F7F: fadd     dword ptr [esp + 0xa4]
0x00579F86: fstp     dword ptr [esp + 0x60]
0x00579F8A: fmul     dword ptr [edi + 4]
0x00579F8D: fadd     dword ptr [esp + 0xa8]
0x00579F94: fstp     dword ptr [esp + 0x64]
0x00579F98: fld      dword ptr [esp + 0x60]
0x00579F9C: fst      dword ptr [eax + 0xc]
0x00579F9F: fld      dword ptr [esp + 0x64]
0x00579FA3: fst      dword ptr [eax + 0x10]
0x00579FA6: fldz     
0x00579FA8: fst      dword ptr [eax + 0x14]
0x00579FAB: or       word ptr [eax + 8], cx
0x00579FAF: mov      ecx, dword ptr [esi + 8]
0x00579FB2: movzx    eax, byte ptr [ecx + 1]
0x00579FB6: mov      ecx, dword ptr [ecx + 4]
0x00579FB9: mov      edx, dword ptr [ecx + 0x1c]
0x00579FBC: add      eax, eax
0x00579FBE: add      eax, eax
0x00579FC0: mov      edx, dword ptr [eax + edx]
0x00579FC3: test     edx, edx
0x00579FC5: je       0x579fe5
0x00579FC7: mov      ebp, dword ptr [ecx + 0xc]
0x00579FCA: test     dword ptr [eax + ebp], 0x200
0x00579FD1: je       0x579fe5
0x00579FD3: test     byte ptr [edx + 8], 8
0x00579FD7: je       0x579fe5
0x00579FD9: mov      ecx, dword ptr [ecx + 0x20]
0x00579FDC: add      eax, ecx
0x00579FDE: cmp      dword ptr [eax], 0
0x00579FE1: je       0x579fe5
0x00579FE3: mov      edx, dword ptr [eax]
0x00579FE5: fxch     st(2)
0x00579FE7: mov      eax, 0x800
0x00579FEC: fst      dword ptr [edx + 0xc]
0x00579FEF: fxch     st(1)
0x00579FF1: fst      dword ptr [edx + 0x10]
0x00579FF4: fxch     st(2)
0x00579FF6: fst      dword ptr [edx + 0x14]
0x00579FF9: or       word ptr [edx + 8], ax
0x00579FFD: fxch     st(1)
0x00579FFF: fsubrp   st(4)
0x0057A001: fxch     st(3)
0x0057A003: fstp     dword ptr [esp + 0x50]
0x0057A007: fsubrp   st(1)
0x0057A009: fstp     dword ptr [esp + 0x54]
0x0057A00D: fld      dword ptr [esp + 0x9c]
0x0057A014: fldz     
0x0057A016: fsubrp   st(1)
0x0057A018: fstp     dword ptr [esp + 0x58]
0x0057A01C: mov      ecx, dword ptr [esp + 0x3c]
0x0057A020: cmp      ecx, dword ptr [ebx + 8]
0x0057A023: jne      0x57a169
0x0057A029: fcom     dword ptr [esp + 0x84]
0x0057A030: fnstsw   ax
0x0057A032: test     ah, 0x44
0x0057A035: jp       0x57a04b
0x0057A037: fcomp    dword ptr [esp + 0x88]
0x0057A03E: fnstsw   ax
0x0057A040: test     ah, 0x44
0x0057A043: jnp      0x57a16b
0x0057A049: jmp      0x57a04d
0x0057A04B: fstp     st(0)
0x0057A04D: lea      edx, [esp + 0x2c]
0x0057A051: push     edx
0x0057A052: mov      eax, edx
0x0057A054: push     eax
0x0057A055: call     0x6b2160
0x0057A05A: fstp     st(0)
0x0057A05C: fld      dword ptr [esp + 0x8c]
0x0057A063: add      esp, 8
0x0057A066: fld      st(0)
0x0057A068: fmul     dword ptr [esp + 0x2c]
0x0057A06C: fld      dword ptr [esp + 0x30]
0x0057A070: fld      dword ptr [esp + 0x88]
0x0057A077: fld      st(0)
0x0057A079: fmulp    st(2)
0x0057A07B: fxch     st(2)
0x0057A07D: faddp    st(1)
0x0057A07F: fld      dword ptr [esp + 0x34]
0x0057A083: fld      dword ptr [esp + 0x8c]
0x0057A08A: fld      st(0)
0x0057A08C: fmulp    st(2)
0x0057A08E: fxch     st(2)
0x0057A090: faddp    st(1)
0x0057A092: fstp     dword ptr [esp + 0x14]
0x0057A096: fld      dword ptr [esp + 0x14]
0x0057A09A: fcomp    qword ptr [0x992500] ; [f32=-2, f64=0.9, u32=0xC0000000]
0x0057A0A0: fnstsw   ax
0x0057A0A2: test     ah, 5
0x0057A0A5: jp       0x57a165
0x0057A0AB: mov      eax, dword ptr [esi + 8]
0x0057A0AE: fld      dword ptr [esp + 0x1c]
0x0057A0B2: movzx    ecx, byte ptr [eax + 1]
0x0057A0B6: mov      edx, dword ptr [eax + 4]
0x0057A0B9: mov      eax, dword ptr [edx + 0x1c]
0x0057A0BC: mov      eax, dword ptr [eax + ecx*4]
0x0057A0BF: mov      ecx, 0x800
0x0057A0C4: fstp     dword ptr [eax + 0xc]
0x0057A0C7: fld      dword ptr [esp + 0x20]
0x0057A0CB: fstp     dword ptr [eax + 0x10]
0x0057A0CE: fld      dword ptr [esp + 0x24]
0x0057A0D2: fstp     dword ptr [eax + 0x14]
0x0057A0D5: or       word ptr [eax + 8], cx
0x0057A0D9: mov      ecx, dword ptr [esi + 8]
0x0057A0DC: movzx    eax, byte ptr [ecx + 1]
0x0057A0E0: mov      ecx, dword ptr [ecx + 4]
0x0057A0E3: mov      edx, dword ptr [ecx + 0x1c]
0x0057A0E6: add      eax, eax
0x0057A0E8: add      eax, eax
0x0057A0EA: mov      edx, dword ptr [eax + edx]
0x0057A0ED: test     edx, edx
0x0057A0EF: je       0x57a111
0x0057A0F1: mov      ebp, dword ptr [ecx + 0xc]
0x0057A0F4: test     dword ptr [eax + ebp], 0x200
0x0057A0FB: je       0x57a111
0x0057A0FD: test     byte ptr [edx + 8], 8
0x0057A101: je       0x57a111
0x0057A103: mov      ecx, dword ptr [ecx + 0x20]
0x0057A106: add      eax, ecx
0x0057A108: cmp      dword ptr [eax], 0
0x0057A10B: je       0x57a111
0x0057A10D: mov      eax, dword ptr [eax]
0x0057A10F: jmp      0x57a113
0x0057A111: mov      eax, edx
0x0057A113: fld      dword ptr [esp + 0x94]
0x0057A11A: mov      edx, 0x800
0x0057A11F: fstp     dword ptr [eax + 0xc]
0x0057A122: push     edi
0x0057A123: fld      dword ptr [esp + 0x9c]
0x0057A12A: mov      ecx, esi
0x0057A12C: fstp     dword ptr [eax + 0x10]
0x0057A12F: fld      dword ptr [esp + 0xa0]
0x0057A136: fstp     dword ptr [eax + 0x14]
0x0057A139: or       word ptr [eax + 8], dx
0x0057A13D: mov      eax, dword ptr [esi + 0x40]
0x0057A140: fxch     st(2)
0x0057A142: add      eax, 0x220
0x0057A147: fstp     dword ptr [eax]
0x0057A149: fstp     dword ptr [eax + 4]
0x0057A14C: fstp     dword ptr [eax + 8]
0x0057A14F: fld      dword ptr [esp + 0x94]
0x0057A156: fstp     dword ptr [eax + 0xc]
0x0057A159: call     0x5765f0
0x0057A15E: fldz     
0x0057A160: jmp      0x57a27e
0x0057A165: fstp     st(2)
0x0057A167: fstp     st(0)
0x0057A169: fstp     st(0)
0x0057A16B: mov      eax, dword ptr [esi + 0x40]
0x0057A16E: mov      edx, dword ptr [esp + 0x40]
0x0057A172: mov      ecx, dword ptr [eax + 8]
0x0057A175: push     0
0x0057A177: push     0
0x0057A179: push     9
0x0057A17B: push     0
0x0057A17D: push     edx
0x0057A17E: call     0x7f8e80
0x0057A183: fld      dword ptr [esp + 0x1c]
0x0057A187: mov      eax, dword ptr [esi + 8]
0x0057A18A: movzx    ecx, byte ptr [eax + 1]
0x0057A18E: mov      edx, dword ptr [eax + 4]
0x0057A191: mov      eax, dword ptr [edx + 0x1c]
0x0057A194: mov      eax, dword ptr [eax + ecx*4]
0x0057A197: mov      ecx, 0x800
0x0057A19C: fstp     dword ptr [eax + 0xc]
0x0057A19F: fld      dword ptr [esp + 0x20]
0x0057A1A3: fstp     dword ptr [eax + 0x10]
0x0057A1A6: fld      dword ptr [esp + 0x24]
0x0057A1AA: fstp     dword ptr [eax + 0x14]
0x0057A1AD: or       word ptr [eax + 8], cx
0x0057A1B1: mov      ecx, dword ptr [esi + 8]
0x0057A1B4: movzx    eax, byte ptr [ecx + 1]
0x0057A1B8: mov      ecx, dword ptr [ecx + 4]
0x0057A1BB: mov      edx, dword ptr [ecx + 0x1c]
0x0057A1BE: add      eax, eax
0x0057A1C0: add      eax, eax
0x0057A1C2: mov      edx, dword ptr [eax + edx]
0x0057A1C5: test     edx, edx
0x0057A1C7: je       0x57a1e7
0x0057A1C9: mov      edi, dword ptr [ecx + 0xc]
0x0057A1CC: test     dword ptr [eax + edi], 0x200
0x0057A1D3: je       0x57a1e7
0x0057A1D5: test     byte ptr [edx + 8], 8
0x0057A1D9: je       0x57a1e7
0x0057A1DB: mov      ecx, dword ptr [ecx + 0x20]
0x0057A1DE: add      eax, ecx
0x0057A1E0: cmp      dword ptr [eax], 0
0x0057A1E3: je       0x57a1e7
0x0057A1E5: mov      edx, dword ptr [eax]
0x0057A1E7: fld      dword ptr [esp + 0x94]
0x0057A1EE: mov      eax, 0x800
0x0057A1F3: fstp     dword ptr [edx + 0xc]
0x0057A1F6: fld      dword ptr [esp + 0x98]
0x0057A1FD: fstp     dword ptr [edx + 0x10]
0x0057A200: fld      dword ptr [esp + 0x9c]
0x0057A207: fstp     dword ptr [edx + 0x14]
0x0057A20A: or       word ptr [edx + 8], ax
0x0057A20E: fld      dword ptr [esi + 0x44]
0x0057A211: fadd     dword ptr [esp + 0x50]
0x0057A215: fstp     dword ptr [esi + 0x44]
0x0057A218: fld      dword ptr [esp + 0x54]
0x0057A21C: fadd     dword ptr [esi + 0x48]
0x0057A21F: fstp     dword ptr [esi + 0x48]
0x0057A222: fld      dword ptr [esp + 0x58]
0x0057A226: fadd     dword ptr [esi + 0x4c]
0x0057A229: fstp     dword ptr [esi + 0x4c]
0x0057A22C: mov      eax, dword ptr [esi + 0x40]
0x0057A22F: fld      dword ptr [eax + 0x230]
0x0057A235: fstp     dword ptr [esp + 0x40]
0x0057A239: fld      dword ptr [eax + 0x220]
0x0057A23F: fld      dword ptr [esp + 0x40]
0x0057A243: fld      st(0)
0x0057A245: fmulp    st(2)
0x0057A247: fxch     st(1)
0x0057A249: fstp     dword ptr [eax + 0x28c]
0x0057A24F: fld      dword ptr [eax + 0x224]
0x0057A255: fmul     st(1)
0x0057A257: fstp     dword ptr [eax + 0x290]
0x0057A25D: fmul     dword ptr [eax + 0x228]
0x0057A263: fstp     dword ptr [eax + 0x294]
0x0057A269: fldz     
0x0057A26B: jmp      0x57a27e
0x0057A26D: fstp     st(1)
0x0057A26F: jmp      0x57a273
0x0057A271: fstp     st(0)
0x0057A273: cmp      dword ptr [esp + 0x4c], 0
0x0057A278: je       0x57a351
0x0057A27E: mov      ecx, dword ptr [esi + 0x40]
0x0057A281: fcomp    dword ptr [ecx + 0x230]
0x0057A287: mov      ecx, dword ptr [ecx + 0x1b4]
0x0057A28D: fnstsw   ax
0x0057A28F: test     ah, 5
0x0057A292: jp       0x57a2ec
0x0057A294: mov      dword ptr [esp + 0x40], 0x992a14
0x0057A29C: mov      edx, dword ptr [ecx]
0x0057A29E: mov      edx, dword ptr [edx + 8]
0x0057A2A1: push     1
0x0057A2A3: lea      eax, [esp + 0x44]
0x0057A2A7: push     eax
0x0057A2A8: mov      dword ptr [esp + 0x104], 8
0x0057A2B3: call     edx
0x0057A2B5: mov      eax, dword ptr [esi + 0x40]
0x0057A2B8: mov      ecx, dword ptr [eax + 0x1b4]
0x0057A2BE: mov      dword ptr [esp + 0x40], 0x98b3f0
0x0057A2C6: mov      dword ptr [esp + 0x44], 1
0x0057A2CE: mov      edx, dword ptr [ecx]
0x0057A2D0: mov      edx, dword ptr [edx + 8]
0x0057A2D3: push     1
0x0057A2D5: lea      eax, [esp + 0x44]
0x0057A2D9: push     eax
0x0057A2DA: mov      dword ptr [esp + 0x104], 9
0x0057A2E5: call     edx
0x0057A2E7: jmp      0x57a40c
0x0057A2EC: mov      dword ptr [esp + 0x40], 0x992a28
0x0057A2F4: mov      eax, dword ptr [ecx]
0x0057A2F6: mov      eax, dword ptr [eax + 8]
0x0057A2F9: push     1
0x0057A2FB: lea      edx, [esp + 0x44]
0x0057A2FF: push     edx
0x0057A300: mov      dword ptr [esp + 0x104], 0xa
0x0057A30B: call     eax
0x0057A30D: cmp      byte ptr [ebx + 0x46], 0
0x0057A311: mov      dword ptr [esp + 0xfc], 0xffffffff
0x0057A31C: je       0x57a40c
0x0057A322: mov      ecx, dword ptr [esi + 0x40]
0x0057A325: mov      ecx, dword ptr [ecx + 0x1b4]
0x0057A32B: mov      dword ptr [esp + 0x40], 0x992ab4
0x0057A333: mov      edx, dword ptr [ecx]
0x0057A335: mov      edx, dword ptr [edx + 8]
0x0057A338: push     1
0x0057A33A: lea      eax, [esp + 0x44]
0x0057A33E: push     eax
0x0057A33F: mov      dword ptr [esp + 0x104], 0xb
0x0057A34A: call     edx
0x0057A34C: jmp      0x57a40c
0x0057A351: mov      ecx, dword ptr [esi + 0x40]
0x0057A354: cmp      dword ptr [ecx + 0x204], 0
0x0057A35B: je       0x57a37e
0x0057A35D: fcomp    dword ptr [ecx + 0x230]
0x0057A363: fnstsw   ax
0x0057A365: test     ah, 5
0x0057A368: mov      eax, 1
0x0057A36D: jnp      0x57a374
0x0057A36F: mov      eax, 2
0x0057A374: push     eax
0x0057A375: call     0x5405d0
0x0057A37A: jmp      0x57a380
0x0057A37C: fstp     st(1)
0x0057A37E: fstp     st(0)
0x0057A380: mov      eax, dword ptr [esi + 0x40]
0x0057A383: push     ebx
0x0057A384: mov      ecx, esi
0x0057A386: mov      dword ptr [eax + 0x26c], 1
0x0057A390: call     0x577f30
0x0057A395: mov      ecx, dword ptr [esi + 0x40]
0x0057A398: mov      ecx, dword ptr [ecx + 0x1b4]
0x0057A39E: mov      dword ptr [esp + 0x40], 0x992aa0
0x0057A3A6: mov      edx, dword ptr [ecx]
0x0057A3A8: mov      edx, dword ptr [edx + 8]
0x0057A3AB: push     1
0x0057A3AD: lea      eax, [esp + 0x44]
0x0057A3B1: push     eax
0x0057A3B2: mov      dword ptr [esp + 0x104], 0xc
0x0057A3BD: call     edx
0x0057A3BF: fldz     
0x0057A3C1: mov      ecx, dword ptr [esi + 0x40]
0x0057A3C4: fcomp    dword ptr [ecx + 0xd50]
0x0057A3CA: mov      dword ptr [esp + 0xfc], 0xffffffff
0x0057A3D5: fnstsw   ax
0x0057A3D7: test     ah, 0x44
0x0057A3DA: jp       0x57a40c
0x0057A3DC: cmp      dword ptr [ecx + 0xd74], 0
0x0057A3E3: jne      0x57a40c
0x0057A3E5: mov      ecx, dword ptr [ecx + 0x1b4]
0x0057A3EB: mov      dword ptr [esp + 0x40], 0x992a00
0x0057A3F3: mov      eax, dword ptr [ecx]
0x0057A3F5: mov      eax, dword ptr [eax + 8]
0x0057A3F8: push     1
0x0057A3FA: lea      edx, [esp + 0x44]
0x0057A3FE: push     edx
0x0057A3FF: mov      dword ptr [esp + 0x104], 0xd
0x0057A40A: call     eax
0x0057A40C: fld1     
0x0057A40E: mov      ecx, dword ptr [esi + 0x40]
0x0057A411: fstp     dword ptr [ecx + 0xc54]
0x0057A417: mov      ecx, dword ptr [esp + 0xf4]
0x0057A41E: mov      dword ptr fs:[0], ecx
0x0057A425: pop      ecx
0x0057A426: pop      edi
0x0057A427: pop      esi
0x0057A428: pop      ebp
0x0057A429: pop      ebx
0x0057A42A: add      esp, 0xec
0x0057A430: ret      4
0x0057A433: int3     
0x0057A434: int3     
0x0057A435: int3     
0x0057A436: int3     
0x0057A437: int3     
0x0057A438: int3     
0x0057A439: int3     
0x0057A43A: int3     
0x0057A43B: int3     
0x0057A43C: int3     
0x0057A43D: int3     
0x0057A43E: int3     
0x0057A43F: int3     
0x0057A440: mov      eax, dword ptr [esp + 4]
0x0057A444: mov      ecx, dword ptr [eax + 4]
0x0057A447: push     ecx
0x0057A448: mov      ecx, dword ptr [esp + 0xc]
0x0057A44C: call     0x5780c0
0x0057A451: ret      
0x0057A452: int3     
0x0057A453: int3     
0x0057A454: int3     
0x0057A455: int3     
0x0057A456: int3     
0x0057A457: int3     
0x0057A458: int3     
0x0057A459: int3     
0x0057A45A: int3     
0x0057A45B: int3     
0x0057A45C: int3     
0x0057A45D: int3     
0x0057A45E: int3     
0x0057A45F: int3     
0x0057A460: mov      eax, dword ptr [esp + 4]
0x0057A464: mov      eax, dword ptr [eax + 4]
0x0057A467: mov      ecx, dword ptr [eax + 8]
0x0057A46A: mov      ecx, dword ptr [ecx + 0x11c]
0x0057A470: movzx    edx, byte ptr [ecx + 1]
0x0057A474: mov      ecx, dword ptr [ecx + 4]
0x0057A477: mov      ecx, dword ptr [ecx + 0x38]
0x0057A47A: mov      edx, dword ptr [ecx + edx*4]
0x0057A47D: push     esi
0x0057A47E: mov      esi, dword ptr [esp + 0xc]
0x0057A482: mov      ecx, dword ptr [esi + 0x40]
0x0057A485: fld      dword ptr [edx + 0x3c]
0x0057A488: push     eax
0x0057A489: fstp     dword ptr [ecx + 0xc54]
0x0057A48F: mov      edx, dword ptr [esi + 0x40]
0x0057A492: mov      ecx, esi
0x0057A494: mov      dword ptr [edx + 0x26c], 1
0x0057A49E: call     0x577f30
0x0057A4A3: mov      eax, dword ptr [esi + 0x40]
0x0057A4A6: fld1     
0x0057A4A8: fstp     dword ptr [eax + 0xc54]
0x0057A4AE: pop      esi
0x0057A4AF: ret      
0x0057A4B0: mov      eax, dword ptr [esp + 4]
0x0057A4B4: mov      ecx, dword ptr [eax + 4]
0x0057A4B7: push     ecx
0x0057A4B8: mov      ecx, dword ptr [esp + 0xc]
0x0057A4BC: call     0x578a90
0x0057A4C1: ret      
0x0057A4C2: int3     
0x0057A4C3: int3     
0x0057A4C4: int3     
0x0057A4C5: int3     
0x0057A4C6: int3     
0x0057A4C7: int3     
0x0057A4C8: int3     
0x0057A4C9: int3     
0x0057A4CA: int3     
0x0057A4CB: int3     
0x0057A4CC: int3     
0x0057A4CD: int3     
0x0057A4CE: int3     
0x0057A4CF: int3     
0x0057A4D0: mov      eax, dword ptr [esp + 4]
0x0057A4D4: mov      ecx, dword ptr [eax + 4]
0x0057A4D7: push     ecx
0x0057A4D8: mov      ecx, dword ptr [esp + 0xc]
0x0057A4DC: call     0x578c10
0x0057A4E1: ret      
0x0057A4E2: int3     
0x0057A4E3: int3     
0x0057A4E4: int3     
0x0057A4E5: int3     
0x0057A4E6: int3     
0x0057A4E7: int3     
0x0057A4E8: int3     
0x0057A4E9: int3     
0x0057A4EA: int3     
0x0057A4EB: int3     
0x0057A4EC: int3     
0x0057A4ED: int3     
0x0057A4EE: int3     
0x0057A4EF: int3     
0x0057A4F0: mov      eax, dword ptr [esp + 4]
0x0057A4F4: mov      ecx, dword ptr [eax + 4]
0x0057A4F7: push     ecx
0x0057A4F8: mov      ecx, dword ptr [esp + 0xc]
0x0057A4FC: call     0x578d60
0x0057A501: ret      
0x0057A502: int3     
0x0057A503: int3     
0x0057A504: int3     
0x0057A505: int3     
0x0057A506: int3     
0x0057A507: int3     
0x0057A508: int3     
0x0057A509: int3     
0x0057A50A: int3     
0x0057A50B: int3     
0x0057A50C: int3     
0x0057A50D: int3     
0x0057A50E: int3     
0x0057A50F: int3     
0x0057A510: mov      eax, dword ptr [esp + 4]
0x0057A514: mov      ecx, dword ptr [eax + 4]
0x0057A517: push     ecx
0x0057A518: mov      ecx, dword ptr [esp + 0xc]
0x0057A51C: call     0x578e30
0x0057A521: ret      
0x0057A522: int3     
0x0057A523: int3     
0x0057A524: int3     
0x0057A525: int3     
0x0057A526: int3     
0x0057A527: int3     
0x0057A528: int3     
0x0057A529: int3     
0x0057A52A: int3     
0x0057A52B: int3     
0x0057A52C: int3     
0x0057A52D: int3     
0x0057A52E: int3     
0x0057A52F: int3     
0x0057A530: mov      eax, dword ptr [esp + 4]
0x0057A534: mov      ecx, dword ptr [eax + 4]
0x0057A537: push     ecx
0x0057A538: mov      ecx, dword ptr [esp + 0xc]
0x0057A53C: call     0x578f30
0x0057A541: ret      
0x0057A542: int3     
0x0057A543: int3     
0x0057A544: int3     
0x0057A545: int3     
0x0057A546: int3     
0x0057A547: int3     
0x0057A548: int3     
0x0057A549: int3     
0x0057A54A: int3     
0x0057A54B: int3     
0x0057A54C: int3     
0x0057A54D: int3     
0x0057A54E: int3     
0x0057A54F: int3     
0x0057A550: push     esi
0x0057A551: push     edi
0x0057A552: mov      edi, ecx
0x0057A554: mov      eax, dword ptr [edi + 0xc]
0x0057A557: mov      edx, dword ptr [eax + 0x18]
0x0057A55A: push     edi
0x0057A55B: lea      esi, [edi + 0xc]
0x0057A55E: push     0x578040
0x0057A563: push     0xb49ea8
0x0057A568: mov      ecx, esi
0x0057A56A: call     edx
0x0057A56C: mov      eax, dword ptr [esi]
0x0057A56E: mov      edx, dword ptr [eax + 0x18]
0x0057A571: push     edi
0x0057A572: push     0x577a00
0x0057A577: push     0xb49eac
0x0057A57C: mov      ecx, esi
0x0057A57E: call     edx
0x0057A580: mov      eax, dword ptr [esi]
0x0057A582: mov      edx, dword ptr [eax + 0x18]
0x0057A585: push     edi
0x0057A586: push     0x578f10
0x0057A58B: push     0xb49eb0
0x0057A590: mov      ecx, esi
0x0057A592: call     edx
0x0057A594: mov      eax, dword ptr [esi]
0x0057A596: mov      edx, dword ptr [eax + 0x18]
0x0057A599: push     edi
0x0057A59A: push     0x57a530
0x0057A59F: push     0xb49eb4
0x0057A5A4: mov      ecx, esi
0x0057A5A6: call     edx
0x0057A5A8: mov      eax, dword ptr [esi]
0x0057A5AA: mov      edx, dword ptr [eax + 0x18]
0x0057A5AD: push     edi
0x0057A5AE: push     0x578080
0x0057A5B3: push     0xb28088
0x0057A5B8: mov      ecx, esi
0x0057A5BA: call     edx
0x0057A5BC: mov      eax, dword ptr [esi]
0x0057A5BE: mov      edx, dword ptr [eax + 0x18]
0x0057A5C1: push     edi
0x0057A5C2: push     0x5780a0
0x0057A5C7: push     0xb49eb8
0x0057A5CC: mov      ecx, esi
0x0057A5CE: call     edx
0x0057A5D0: mov      eax, dword ptr [esi]
0x0057A5D2: mov      edx, dword ptr [eax + 0x18]
0x0057A5D5: push     edi
0x0057A5D6: push     0x57a440
0x0057A5DB: push     0xb2808c
0x0057A5E0: mov      ecx, esi
0x0057A5E2: call     edx
0x0057A5E4: mov      eax, dword ptr [esi]
0x0057A5E6: mov      edx, dword ptr [eax + 0x18]
0x0057A5E9: push     edi
0x0057A5EA: push     0x57a460
0x0057A5EF: push     0xb49ec0
0x0057A5F4: mov      ecx, esi
0x0057A5F6: call     edx
0x0057A5F8: mov      eax, dword ptr [esi]
0x0057A5FA: mov      edx, dword ptr [eax + 0x18]
0x0057A5FD: push     edi
0x0057A5FE: push     0x57a4b0
0x0057A603: push     0xb49ebc
0x0057A608: mov      ecx, esi
0x0057A60A: call     edx
0x0057A60C: mov      eax, dword ptr [esi]
0x0057A60E: mov      edx, dword ptr [eax + 0x18]
0x0057A611: push     edi
0x0057A612: push     0x57a4d0
0x0057A617: push     0xb1bc3c
0x0057A61C: mov      ecx, esi
0x0057A61E: call     edx
0x0057A620: mov      eax, dword ptr [esi]
0x0057A622: mov      edx, dword ptr [eax + 0x18]
0x0057A625: push     edi
0x0057A626: push     0x57a4f0
0x0057A62B: push     0xb1bc74
0x0057A630: mov      ecx, esi
0x0057A632: call     edx
0x0057A634: mov      eax, dword ptr [esi]
0x0057A636: mov      edx, dword ptr [eax + 0x18]
0x0057A639: push     edi
0x0057A63A: push     0x57a510
0x0057A63F: push     0xb1bc78
0x0057A644: mov      ecx, esi
0x0057A646: call     edx
0x0057A648: mov      eax, dword ptr [esi]
0x0057A64A: mov      edx, dword ptr [eax + 0x18]
0x0057A64D: push     edi
0x0057A64E: push     0x578f00
0x0057A653: push     0xb1b9c4
0x0057A658: mov      ecx, esi
0x0057A65A: call     edx
0x0057A65C: pop      edi
0x0057A65D: pop      esi
0x0057A65E: ret      
0x0057A65F: int3     
0x0057A660: push     esi
0x0057A661: mov      esi, ecx
0x0057A663: call     0x56d6f0
0x0057A668: mov      dword ptr [esi], 0x992b68
0x0057A66E: mov      eax, esi
0x0057A670: pop      esi
0x0057A671: ret      
0x0057A672: int3     
0x0057A673: int3     
0x0057A674: int3     
0x0057A675: int3     
0x0057A676: int3     
0x0057A677: int3     
0x0057A678: int3     
0x0057A679: int3     
0x0057A67A: int3     
0x0057A67B: int3     
0x0057A67C: int3     
0x0057A67D: int3     
0x0057A67E: int3     
0x0057A67F: int3     
0x0057A680: push     -1
0x0057A682: push     0x948811
0x0057A687: mov      eax, dword ptr fs:[0]
0x0057A68D: push     eax
0x0057A68E: push     ecx
0x0057A68F: push     esi
0x0057A690: mov      eax, dword ptr [0xb089c8]
0x0057A695: xor      eax, esp
0x0057A697: push     eax
0x0057A698: lea      eax, [esp + 0xc]
0x0057A69C: mov      dword ptr fs:[0], eax
0x0057A6A2: mov      esi, ecx
0x0057A6A4: mov      dword ptr [esp + 8], esi
0x0057A6A8: mov      dword ptr [esi], 0x992b68
0x0057A6AE: mov      dword ptr [esp + 0x14], 0
0x0057A6B6: call     dword ptr [0x992b94] ; [u32=0x00575C00]
0x0057A6BC: mov      ecx, esi
0x0057A6BE: mov      dword ptr [esi + 4], 0
0x0057A6C5: mov      dword ptr [esi + 8], 0
0x0057A6CC: mov      dword ptr [esp + 0x14], 0xffffffff
0x0057A6D4: call     0x56d750
0x0057A6D9: mov      ecx, dword ptr [esp + 0xc]
0x0057A6DD: mov      dword ptr fs:[0], ecx
0x0057A6E4: pop      ecx
0x0057A6E5: pop      esi
0x0057A6E6: add      esp, 0x10
0x0057A6E9: ret      
0x0057A6EA: int3     
0x0057A6EB: int3     
0x0057A6EC: int3     
0x0057A6ED: int3     
0x0057A6EE: int3     
0x0057A6EF: int3     
0x0057A6F0: mov      eax, dword ptr [esp + 8]
0x0057A6F4: fld      dword ptr [eax]
0x0057A6F6: mov      ecx, dword ptr [esp + 4]
0x0057A6FA: fchs     
0x0057A6FC: fstp     dword ptr [ecx]
0x0057A6FE: fld      dword ptr [eax + 4]
0x0057A701: fchs     
0x0057A703: fstp     dword ptr [ecx + 4]
0x0057A706: fld      dword ptr [eax + 8]
0x0057A709: fchs     
0x0057A70B: fstp     dword ptr [ecx + 8]
0x0057A70E: fld      dword ptr [eax + 0xc]
0x0057A711: fstp     dword ptr [ecx + 0xc]
0x0057A714: ret      
0x0057A715: int3     
0x0057A716: int3     
0x0057A717: int3     
0x0057A718: int3     
0x0057A719: int3     
0x0057A71A: int3     
0x0057A71B: int3     
0x0057A71C: int3     
0x0057A71D: int3     
0x0057A71E: int3     
0x0057A71F: int3     
0x0057A720: sub      esp, 0x10
0x0057A723: mov      eax, dword ptr [esp + 0x14]
0x0057A727: fld      dword ptr [eax]
0x0057A729: lea      ecx, [esp]
0x0057A72C: fchs     
0x0057A72E: fstp     dword ptr [esp]
0x0057A731: fld      dword ptr [eax + 4]
0x0057A734: fchs     
0x0057A736: fstp     dword ptr [esp + 4]
0x0057A73A: fld      dword ptr [eax + 8]
0x0057A73D: fchs     
0x0057A73F: fstp     dword ptr [esp + 8]
0x0057A743: fld      dword ptr [eax + 0xc]
0x0057A746: mov      eax, dword ptr [esp + 0x18]
0x0057A74A: push     eax
0x0057A74B: fstp     dword ptr [esp + 0x10]
0x0057A74F: push     ecx
0x0057A750: call     0x6b1d00
0x0057A755: add      esp, 0x18
0x0057A758: ret      
0x0057A759: int3     
0x0057A75A: int3     
0x0057A75B: int3     
0x0057A75C: int3     
0x0057A75D: int3     
0x0057A75E: int3     
0x0057A75F: int3     
0x0057A760: fldz     
0x0057A762: mov      eax, ecx
0x0057A764: fst      dword ptr [eax]
0x0057A766: fst      dword ptr [eax + 4]
0x0057A769: fst      dword ptr [eax + 8]
0x0057A76C: fld1     
0x0057A76E: fst      dword ptr [eax + 0xc]
0x0057A771: fst      dword ptr [eax + 0x1c]
0x0057A774: fxch     st(1)
0x0057A776: fst      dword ptr [eax + 0x10]
0x0057A779: fst      dword ptr [eax + 0x14]
0x0057A77C: fst      dword ptr [eax + 0x18]
0x0057A77F: fst      dword ptr [eax + 0x20]
0x0057A782: fst      dword ptr [eax + 0x24]
0x0057A785: fst      dword ptr [eax + 0x28]
0x0057A788: fxch     st(1)
0x0057A78A: fst      dword ptr [eax + 0x2c]
0x0057A78D: fstp     dword ptr [eax + 0x3c]
0x0057A790: fst      dword ptr [eax + 0x30]
0x0057A793: fst      dword ptr [eax + 0x34]
0x0057A796: fstp     dword ptr [eax + 0x38]
0x0057A799: ret      
0x0057A79A: int3     
0x0057A79B: int3     
0x0057A79C: int3     
0x0057A79D: int3     
0x0057A79E: int3     
0x0057A79F: int3     
0x0057A7A0: xor      eax, eax
0x0057A7A2: cmp      dword ptr [esp + 4], 0xb1bc08
0x0057A7AA: sete     al
0x0057A7AD: ret      4
0x0057A7B0: mov      eax, 0xb1bc08
0x0057A7B5: ret      
0x0057A7B6: int3     
0x0057A7B7: int3     
0x0057A7B8: int3     
0x0057A7B9: int3     
0x0057A7BA: int3     
0x0057A7BB: int3     
0x0057A7BC: int3     
0x0057A7BD: int3     
0x0057A7BE: int3     
0x0057A7BF: int3     
0x0057A7C0: xor      eax, eax
0x0057A7C2: cmp      dword ptr [esp + 4], 0xb1bc0c
0x0057A7CA: sete     al
0x0057A7CD: ret      4
0x0057A7D0: mov      eax, 0xb1bc0c
0x0057A7D5: ret      
0x0057A7D6: int3     
0x0057A7D7: int3     
0x0057A7D8: int3     
0x0057A7D9: int3     
0x0057A7DA: int3     
0x0057A7DB: int3     
0x0057A7DC: int3     
0x0057A7DD: int3     
0x0057A7DE: int3     
0x0057A7DF: int3     
0x0057A7E0: xor      eax, eax
0x0057A7E2: cmp      dword ptr [esp + 4], 0xb49e80
0x0057A7EA: sete     al
0x0057A7ED: ret      4
0x0057A7F0: mov      eax, 0xb49e80
0x0057A7F5: ret      
0x0057A7F6: int3     
0x0057A7F7: int3     
0x0057A7F8: int3     
0x0057A7F9: int3     
0x0057A7FA: int3     
0x0057A7FB: int3     
0x0057A7FC: int3     
0x0057A7FD: int3     
0x0057A7FE: int3     
0x0057A7FF: int3     
0x0057A800: xor      eax, eax
0x0057A802: cmp      dword ptr [esp + 4], 0xb49e84
0x0057A80A: sete     al
0x0057A80D: ret      4
0x0057A810: mov      eax, 0xb49e84
0x0057A815: ret      
0x0057A816: int3     
0x0057A817: int3     
0x0057A818: int3     
0x0057A819: int3     
0x0057A81A: int3     
0x0057A81B: int3     
0x0057A81C: int3     
0x0057A81D: int3     
0x0057A81E: int3     
0x0057A81F: int3     
0x0057A820: mov      eax, 0x20
0x0057A825: ret      
0x0057A826: int3     
0x0057A827: int3     
0x0057A828: int3     
0x0057A829: int3     
0x0057A82A: int3     
0x0057A82B: int3     
0x0057A82C: int3     
0x0057A82D: int3     
0x0057A82E: int3     
0x0057A82F: int3     
0x0057A830: xor      eax, eax
0x0057A832: cmp      dword ptr [esp + 4], 0xb49ccc
0x0057A83A: sete     al
0x0057A83D: ret      4
0x0057A840: mov      eax, 0xb49ccc
0x0057A845: ret      
0x0057A846: int3     
0x0057A847: int3     
0x0057A848: int3     
0x0057A849: int3     
0x0057A84A: int3     
0x0057A84B: int3     
0x0057A84C: int3     
0x0057A84D: int3     
0x0057A84E: int3     
0x0057A84F: int3     
0x0057A850: mov      eax, 0x18
0x0057A855: ret      
0x0057A856: int3     
0x0057A857: int3     
0x0057A858: int3     
0x0057A859: int3     
0x0057A85A: int3     
0x0057A85B: int3     
0x0057A85C: int3     
0x0057A85D: int3     
0x0057A85E: int3     
0x0057A85F: int3     
0x0057A860: xor      eax, eax
0x0057A862: cmp      dword ptr [esp + 4], 0xb1bc24
0x0057A86A: sete     al
0x0057A86D: ret      4
0x0057A870: mov      eax, 0xb1bc24
0x0057A875: ret      
0x0057A876: int3     
0x0057A877: int3     
0x0057A878: int3     
0x0057A879: int3     
0x0057A87A: int3     
0x0057A87B: int3     
0x0057A87C: int3     
0x0057A87D: int3     
0x0057A87E: int3     
0x0057A87F: int3     
0x0057A880: mov      eax, 0x2c
0x0057A885: ret      
0x0057A886: int3     
0x0057A887: int3     
0x0057A888: int3     
0x0057A889: int3     
0x0057A88A: int3     
0x0057A88B: int3     
0x0057A88C: int3     
0x0057A88D: int3     
0x0057A88E: int3     
0x0057A88F: int3     
0x0057A890: xor      eax, eax
0x0057A892: cmp      dword ptr [esp + 4], 0xb1bc18
0x0057A89A: sete     al
0x0057A89D: ret      4
0x0057A8A0: mov      eax, 0xb1bc18
0x0057A8A5: ret      
0x0057A8A6: int3     
0x0057A8A7: int3     
0x0057A8A8: int3     
0x0057A8A9: int3     
0x0057A8AA: int3     
0x0057A8AB: int3     
0x0057A8AC: int3     
0x0057A8AD: int3     
0x0057A8AE: int3     
0x0057A8AF: int3     
0x0057A8B0: xor      eax, eax
0x0057A8B2: cmp      dword ptr [esp + 4], 0xb1bc1c
0x0057A8BA: sete     al
0x0057A8BD: ret      4
0x0057A8C0: mov      eax, 0xb1bc1c
0x0057A8C5: ret      
0x0057A8C6: int3     
0x0057A8C7: int3     
0x0057A8C8: int3     
0x0057A8C9: int3     
0x0057A8CA: int3     
0x0057A8CB: int3     
0x0057A8CC: int3     
0x0057A8CD: int3     
0x0057A8CE: int3     
0x0057A8CF: int3     
0x0057A8D0: xor      eax, eax
0x0057A8D2: cmp      dword ptr [esp + 4], 0xb1bc20
0x0057A8DA: sete     al
0x0057A8DD: ret      4
0x0057A8E0: mov      eax, 0xb1bc20
0x0057A8E5: ret      
0x0057A8E6: int3     
0x0057A8E7: int3     
0x0057A8E8: int3     
0x0057A8E9: int3     
0x0057A8EA: int3     
0x0057A8EB: int3     
0x0057A8EC: int3     
0x0057A8ED: int3     
0x0057A8EE: int3     
0x0057A8EF: int3     
0x0057A8F0: xor      eax, eax
0x0057A8F2: cmp      dword ptr [esp + 4], 0xb26554
0x0057A8FA: sete     al
0x0057A8FD: ret      4
0x0057A900: mov      eax, 0xb26554
0x0057A905: ret      
0x0057A906: int3     
0x0057A907: int3     
0x0057A908: int3     
0x0057A909: int3     
0x0057A90A: int3     
0x0057A90B: int3     
0x0057A90C: int3     
0x0057A90D: int3     
0x0057A90E: int3     
0x0057A90F: int3     
0x0057A910: xor      eax, eax
0x0057A912: cmp      dword ptr [esp + 4], 0xb26558
0x0057A91A: sete     al
0x0057A91D: ret      4
0x0057A920: mov      eax, 0xb26558
0x0057A925: ret      
0x0057A926: int3     
0x0057A927: int3     
0x0057A928: int3     
0x0057A929: int3     
0x0057A92A: int3     
0x0057A92B: int3     
0x0057A92C: int3     
0x0057A92D: int3     
0x0057A92E: int3     
0x0057A92F: int3     
0x0057A930: xor      eax, eax
0x0057A932: cmp      dword ptr [esp + 4], 0xb2655c
0x0057A93A: sete     al
0x0057A93D: ret      4
0x0057A940: mov      eax, 0xb2655c
0x0057A945: ret      
0x0057A946: int3     
0x0057A947: int3     
0x0057A948: int3     
0x0057A949: int3     
0x0057A94A: int3     
0x0057A94B: int3     
0x0057A94C: int3     
0x0057A94D: int3     
0x0057A94E: int3     
0x0057A94F: int3     
0x0057A950: xor      eax, eax
0x0057A952: cmp      dword ptr [esp + 4], 0xb26564
0x0057A95A: sete     al
0x0057A95D: ret      4
0x0057A960: mov      eax, 0xb26564
0x0057A965: ret      
0x0057A966: int3     
0x0057A967: int3     
0x0057A968: int3     
0x0057A969: int3     
0x0057A96A: int3     
0x0057A96B: int3     
0x0057A96C: int3     
0x0057A96D: int3     
0x0057A96E: int3     
0x0057A96F: int3     
0x0057A970: xor      eax, eax
0x0057A972: cmp      dword ptr [esp + 4], 0xb26570
0x0057A97A: sete     al
0x0057A97D: ret      4
0x0057A980: mov      eax, 0xb26570
0x0057A985: ret      
0x0057A986: int3     
0x0057A987: int3     
0x0057A988: int3     
0x0057A989: int3     
0x0057A98A: int3     
0x0057A98B: int3     
0x0057A98C: int3     
0x0057A98D: int3     
0x0057A98E: int3     
0x0057A98F: int3     
0x0057A990: xor      eax, eax
0x0057A992: cmp      dword ptr [esp + 4], 0xb26574
0x0057A99A: sete     al
0x0057A99D: ret      4
0x0057A9A0: mov      eax, 0xb26574
0x0057A9A5: ret      
0x0057A9A6: int3     
0x0057A9A7: int3     
0x0057A9A8: int3     
0x0057A9A9: int3     
0x0057A9AA: int3     
0x0057A9AB: int3     
0x0057A9AC: int3     
0x0057A9AD: int3     
0x0057A9AE: int3     
0x0057A9AF: int3     
0x0057A9B0: xor      eax, eax
0x0057A9B2: cmp      dword ptr [esp + 4], 0xb26578
0x0057A9BA: sete     al
0x0057A9BD: ret      4
0x0057A9C0: mov      eax, 0xb26578
0x0057A9C5: ret      
0x0057A9C6: int3     
0x0057A9C7: int3     
0x0057A9C8: int3     
0x0057A9C9: int3     
0x0057A9CA: int3     
0x0057A9CB: int3     
0x0057A9CC: int3     
0x0057A9CD: int3     
0x0057A9CE: int3     
0x0057A9CF: int3     
0x0057A9D0: xor      eax, eax
0x0057A9D2: cmp      dword ptr [esp + 4], 0xb280a8
0x0057A9DA: sete     al
0x0057A9DD: ret      4
0x0057A9E0: mov      eax, 0xb280a8
0x0057A9E5: ret      
0x0057A9E6: int3     
0x0057A9E7: int3     
0x0057A9E8: int3     
0x0057A9E9: int3     
0x0057A9EA: int3     
0x0057A9EB: int3     
0x0057A9EC: int3     
0x0057A9ED: int3     
0x0057A9EE: int3     
0x0057A9EF: int3     
0x0057A9F0: xor      eax, eax
0x0057A9F2: cmp      dword ptr [esp + 4], 0xb280ac
0x0057A9FA: sete     al
0x0057A9FD: ret      4
0x0057AA00: mov      eax, 0xb280ac
0x0057AA05: ret      
0x0057AA06: int3     
0x0057AA07: int3     
0x0057AA08: int3     
0x0057AA09: int3     
0x0057AA0A: int3     
0x0057AA0B: int3     
0x0057AA0C: int3     
0x0057AA0D: int3     
0x0057AA0E: int3     
0x0057AA0F: int3     
0x0057AA10: xor      eax, eax
0x0057AA12: cmp      dword ptr [esp + 4], 0xb280b0
0x0057AA1A: sete     al
0x0057AA1D: ret      4
0x0057AA20: mov      eax, 0xb280b0
0x0057AA25: ret      
0x0057AA26: int3     
0x0057AA27: int3     
0x0057AA28: int3     
0x0057AA29: int3     
0x0057AA2A: int3     
0x0057AA2B: int3     
0x0057AA2C: int3     
0x0057AA2D: int3     
0x0057AA2E: int3     
0x0057AA2F: int3     
0x0057AA30: xor      eax, eax
0x0057AA32: cmp      dword ptr [esp + 4], 0xb280b8
0x0057AA3A: sete     al
0x0057AA3D: ret      4
0x0057AA40: mov      eax, 0xb280b8
0x0057AA45: ret      
0x0057AA46: int3     
0x0057AA47: int3     
0x0057AA48: int3     
0x0057AA49: int3     
0x0057AA4A: int3     
0x0057AA4B: int3     
0x0057AA4C: int3     
0x0057AA4D: int3     
0x0057AA4E: int3     
0x0057AA4F: int3     
0x0057AA50: mov      dword ptr [ecx], 0x979378
0x0057AA56: ret      
0x0057AA57: int3     
0x0057AA58: int3     
0x0057AA59: int3     
0x0057AA5A: int3     
0x0057AA5B: int3     
0x0057AA5C: int3     
0x0057AA5D: int3     
0x0057AA5E: int3     
0x0057AA5F: int3     
0x0057AA60: mov      eax, dword ptr [esp + 4]
0x0057AA64: push     0
0x0057AA66: push     eax
0x0057AA67: push     4
0x0057AA69: call     0x689060
0x0057AA6E: add      esp, 0xc
0x0057AA71: test     eax, eax
0x0057AA73: je       0x57aa7e
0x0057AA75: mov      dword ptr [eax], 0x9929b0
0x0057AA7B: ret      4
0x0057AA7E: xor      eax, eax
0x0057AA80: ret      4
0x0057AA83: int3     
0x0057AA84: int3     
0x0057AA85: int3     
0x0057AA86: int3     
0x0057AA87: int3     
0x0057AA88: int3     
0x0057AA89: int3     
0x0057AA8A: int3     
0x0057AA8B: int3     
0x0057AA8C: int3     
0x0057AA8D: int3     
0x0057AA8E: int3     
0x0057AA8F: int3     
0x0057AA90: mov      eax, dword ptr [esp + 4]
0x0057AA94: push     0
0x0057AA96: push     eax
0x0057AA97: push     4
0x0057AA99: call     0x689060
0x0057AA9E: add      esp, 0xc
0x0057AAA1: test     eax, eax
0x0057AAA3: je       0x57aaae
0x0057AAA5: mov      dword ptr [eax], 0x9929c4
0x0057AAAB: ret      4
0x0057AAAE: xor      eax, eax
0x0057AAB0: ret      4
0x0057AAB3: int3     
0x0057AAB4: int3     
0x0057AAB5: int3     
0x0057AAB6: int3     
0x0057AAB7: int3     
0x0057AAB8: int3     
0x0057AAB9: int3     
0x0057AABA: int3     
0x0057AABB: int3     
0x0057AABC: int3     
0x0057AABD: int3     
0x0057AABE: int3     
0x0057AABF: int3     
0x0057AAC0: mov      eax, dword ptr [esp + 4]
0x0057AAC4: push     esi
0x0057AAC5: push     0
0x0057AAC7: push     eax
0x0057AAC8: push     8
0x0057AACA: mov      esi, ecx
0x0057AACC: call     0x689060
0x0057AAD1: add      esp, 0xc
0x0057AAD4: test     eax, eax
0x0057AAD6: je       0x57aae8
0x0057AAD8: mov      dword ptr [eax], 0x9929d8
0x0057AADE: mov      ecx, dword ptr [esi + 4]
0x0057AAE1: mov      dword ptr [eax + 4], ecx
0x0057AAE4: pop      esi
0x0057AAE5: ret      4
0x0057AAE8: xor      eax, eax
0x0057AAEA: pop      esi
0x0057AAEB: ret      4
0x0057AAEE: int3     
0x0057AAEF: int3     
0x0057AAF0: mov      eax, dword ptr [esp + 4]
0x0057AAF4: push     0
0x0057AAF6: push     eax
0x0057AAF7: push     4
0x0057AAF9: call     0x689060
0x0057AAFE: add      esp, 0xc
0x0057AB01: test     eax, eax
0x0057AB03: je       0x57ab0e
0x0057AB05: mov      dword ptr [eax], 0x9929ec
0x0057AB0B: ret      4
0x0057AB0E: xor      eax, eax
0x0057AB10: ret      4
0x0057AB13: int3     
0x0057AB14: int3     
0x0057AB15: int3     
0x0057AB16: int3     
0x0057AB17: int3     
0x0057AB18: int3     
0x0057AB19: int3     
0x0057AB1A: int3     
0x0057AB1B: int3     
0x0057AB1C: int3     
0x0057AB1D: int3     
0x0057AB1E: int3     
0x0057AB1F: int3     
0x0057AB20: mov      eax, dword ptr [esp + 4]
0x0057AB24: push     0
0x0057AB26: push     eax
0x0057AB27: push     4
0x0057AB29: call     0x689060
0x0057AB2E: add      esp, 0xc
0x0057AB31: test     eax, eax
0x0057AB33: je       0x57ab3e
0x0057AB35: mov      dword ptr [eax], 0x992a00
0x0057AB3B: ret      4
0x0057AB3E: xor      eax, eax
0x0057AB40: ret      4
0x0057AB43: int3     
0x0057AB44: int3     
0x0057AB45: int3     
0x0057AB46: int3     
0x0057AB47: int3     
0x0057AB48: int3     
0x0057AB49: int3     
0x0057AB4A: int3     
0x0057AB4B: int3     
0x0057AB4C: int3     
0x0057AB4D: int3     
0x0057AB4E: int3     
0x0057AB4F: int3     
0x0057AB50: mov      eax, dword ptr [esp + 4]
0x0057AB54: push     0
0x0057AB56: push     eax
0x0057AB57: push     4
0x0057AB59: call     0x689060
0x0057AB5E: add      esp, 0xc
0x0057AB61: test     eax, eax
0x0057AB63: je       0x57ab6e
0x0057AB65: mov      dword ptr [eax], 0x992a14
0x0057AB6B: ret      4
0x0057AB6E: xor      eax, eax
0x0057AB70: ret      4
0x0057AB73: int3     
0x0057AB74: int3     
0x0057AB75: int3     
0x0057AB76: int3     
0x0057AB77: int3     
0x0057AB78: int3     
0x0057AB79: int3     
0x0057AB7A: int3     
0x0057AB7B: int3     
0x0057AB7C: int3     
0x0057AB7D: int3     
0x0057AB7E: int3     
0x0057AB7F: int3     
0x0057AB80: mov      eax, dword ptr [esp + 4]
0x0057AB84: push     0
0x0057AB86: push     eax
0x0057AB87: push     4
0x0057AB89: call     0x689060
0x0057AB8E: add      esp, 0xc
0x0057AB91: test     eax, eax
0x0057AB93: je       0x57ab9e
0x0057AB95: mov      dword ptr [eax], 0x992a28
0x0057AB9B: ret      4
0x0057AB9E: xor      eax, eax
0x0057ABA0: ret      4
0x0057ABA3: int3     
0x0057ABA4: int3     
0x0057ABA5: int3     
0x0057ABA6: int3     
0x0057ABA7: int3     
0x0057ABA8: int3     
0x0057ABA9: int3     
0x0057ABAA: int3     
0x0057ABAB: int3     
0x0057ABAC: int3     
0x0057ABAD: int3     
0x0057ABAE: int3     
0x0057ABAF: int3     
0x0057ABB0: mov      eax, dword ptr [esp + 4]
0x0057ABB4: push     0
0x0057ABB6: push     eax
0x0057ABB7: push     4
0x0057ABB9: call     0x689060
0x0057ABBE: add      esp, 0xc
0x0057ABC1: test     eax, eax
0x0057ABC3: je       0x57abce
0x0057ABC5: mov      dword ptr [eax], 0x992a3c
0x0057ABCB: ret      4
0x0057ABCE: xor      eax, eax
0x0057ABD0: ret      4
0x0057ABD3: int3     
0x0057ABD4: int3     
0x0057ABD5: int3     
0x0057ABD6: int3     
0x0057ABD7: int3     
0x0057ABD8: int3     
0x0057ABD9: int3     
0x0057ABDA: int3     
0x0057ABDB: int3     
0x0057ABDC: int3     
0x0057ABDD: int3     
0x0057ABDE: int3     
0x0057ABDF: int3     
0x0057ABE0: mov      eax, dword ptr [esp + 4]
0x0057ABE4: push     0
0x0057ABE6: push     eax
0x0057ABE7: push     4
0x0057ABE9: call     0x689060
0x0057ABEE: add      esp, 0xc
0x0057ABF1: test     eax, eax
0x0057ABF3: je       0x57abfe
0x0057ABF5: mov      dword ptr [eax], 0x992a50
0x0057ABFB: ret      4
0x0057ABFE: xor      eax, eax
0x0057AC00: ret      4
0x0057AC03: int3     
0x0057AC04: int3     
0x0057AC05: int3     
0x0057AC06: int3     
0x0057AC07: int3     
0x0057AC08: int3     
0x0057AC09: int3     
0x0057AC0A: int3     
0x0057AC0B: int3     
0x0057AC0C: int3     
0x0057AC0D: int3     
0x0057AC0E: int3     
0x0057AC0F: int3     
0x0057AC10: mov      eax, dword ptr [esp + 4]
0x0057AC14: push     0
0x0057AC16: push     eax
0x0057AC17: push     4
0x0057AC19: call     0x689060
0x0057AC1E: add      esp, 0xc
0x0057AC21: test     eax, eax
0x0057AC23: je       0x57ac2e
0x0057AC25: mov      dword ptr [eax], 0x992a64
0x0057AC2B: ret      4
0x0057AC2E: xor      eax, eax
0x0057AC30: ret      4
0x0057AC33: int3     
0x0057AC34: int3     
0x0057AC35: int3     
0x0057AC36: int3     
0x0057AC37: int3     
0x0057AC38: int3     
0x0057AC39: int3     
0x0057AC3A: int3     
0x0057AC3B: int3     
0x0057AC3C: int3     
0x0057AC3D: int3     
0x0057AC3E: int3     
0x0057AC3F: int3     
0x0057AC40: mov      eax, dword ptr [esp + 4]
0x0057AC44: push     0
0x0057AC46: push     eax
0x0057AC47: push     4
0x0057AC49: call     0x689060
0x0057AC4E: add      esp, 0xc
0x0057AC51: test     eax, eax
0x0057AC53: je       0x57ac5e
0x0057AC55: mov      dword ptr [eax], 0x992a78
0x0057AC5B: ret      4
0x0057AC5E: xor      eax, eax
0x0057AC60: ret      4
0x0057AC63: int3     
0x0057AC64: int3     
0x0057AC65: int3     
0x0057AC66: int3     
0x0057AC67: int3     
0x0057AC68: int3     
0x0057AC69: int3     
0x0057AC6A: int3     
0x0057AC6B: int3     
0x0057AC6C: int3     
0x0057AC6D: int3     
0x0057AC6E: int3     
0x0057AC6F: int3     
0x0057AC70: mov      eax, dword ptr [esp + 4]
0x0057AC74: push     0
0x0057AC76: push     eax
0x0057AC77: push     4
0x0057AC79: call     0x689060
0x0057AC7E: add      esp, 0xc
0x0057AC81: test     eax, eax
0x0057AC83: je       0x57ac8e
0x0057AC85: mov      dword ptr [eax], 0x992a8c
0x0057AC8B: ret      4
0x0057AC8E: xor      eax, eax
0x0057AC90: ret      4
0x0057AC93: int3     
0x0057AC94: int3     
0x0057AC95: int3     
0x0057AC96: int3     
0x0057AC97: int3     
0x0057AC98: int3     
0x0057AC99: int3     
0x0057AC9A: int3     
0x0057AC9B: int3     
0x0057AC9C: int3     
0x0057AC9D: int3     
0x0057AC9E: int3     
0x0057AC9F: int3     
0x0057ACA0: mov      eax, dword ptr [esp + 4]
0x0057ACA4: push     0
0x0057ACA6: push     eax
0x0057ACA7: push     4
0x0057ACA9: call     0x689060
0x0057ACAE: add      esp, 0xc
0x0057ACB1: test     eax, eax
0x0057ACB3: je       0x57acbe
0x0057ACB5: mov      dword ptr [eax], 0x992aa0
0x0057ACBB: ret      4
0x0057ACBE: xor      eax, eax
0x0057ACC0: ret      4
0x0057ACC3: int3     
0x0057ACC4: int3     
0x0057ACC5: int3     
0x0057ACC6: int3     
0x0057ACC7: int3     
0x0057ACC8: int3     
0x0057ACC9: int3     
0x0057ACCA: int3     
0x0057ACCB: int3     
0x0057ACCC: int3     
0x0057ACCD: int3     
0x0057ACCE: int3     
0x0057ACCF: int3     
0x0057ACD0: mov      eax, dword ptr [esp + 4]
0x0057ACD4: push     0
0x0057ACD6: push     eax
0x0057ACD7: push     4
0x0057ACD9: call     0x689060
0x0057ACDE: add      esp, 0xc
0x0057ACE1: test     eax, eax
0x0057ACE3: je       0x57acee
0x0057ACE5: mov      dword ptr [eax], 0x992ab4
0x0057ACEB: ret      4
0x0057ACEE: xor      eax, eax
0x0057ACF0: ret      4
0x0057ACF3: int3     
0x0057ACF4: int3     
0x0057ACF5: int3     
0x0057ACF6: int3     
0x0057ACF7: int3     
0x0057ACF8: int3     
0x0057ACF9: int3     
0x0057ACFA: int3     
0x0057ACFB: int3     
0x0057ACFC: int3     
0x0057ACFD: int3     
0x0057ACFE: int3     
0x0057ACFF: int3     
0x0057AD00: mov      eax, dword ptr [esp + 4]
0x0057AD04: push     esi
0x0057AD05: push     0
0x0057AD07: push     eax
0x0057AD08: push     8
0x0057AD0A: mov      esi, ecx
0x0057AD0C: call     0x689060
0x0057AD11: add      esp, 0xc
0x0057AD14: test     eax, eax
0x0057AD16: je       0x57ad28
0x0057AD18: mov      dword ptr [eax], 0x992ac8
0x0057AD1E: mov      ecx, dword ptr [esi + 4]
0x0057AD21: mov      dword ptr [eax + 4], ecx
0x0057AD24: pop      esi
0x0057AD25: ret      4
0x0057AD28: xor      eax, eax
0x0057AD2A: pop      esi
0x0057AD2B: ret      4
0x0057AD2E: int3     
0x0057AD2F: int3     
0x0057AD30: mov      eax, ecx
0x0057AD32: mov      ecx, dword ptr [esp + 4]
0x0057AD36: mov      dword ptr [eax], 0x992af8
0x0057AD3C: mov      edx, dword ptr [ecx]
0x0057AD3E: mov      dword ptr [eax + 4], edx
0x0057AD41: fld      dword ptr [ecx + 4]
0x0057AD44: fstp     dword ptr [eax + 8]
0x0057AD47: fld      dword ptr [ecx + 8]
0x0057AD4A: fstp     dword ptr [eax + 0xc]
0x0057AD4D: fld      dword ptr [ecx + 0xc]
0x0057AD50: fstp     dword ptr [eax + 0x10]
0x0057AD53: fld      dword ptr [ecx + 0x10]
0x0057AD56: fstp     dword ptr [eax + 0x14]
0x0057AD59: fld      dword ptr [ecx + 0x14]
0x0057AD5C: fstp     dword ptr [eax + 0x18]
0x0057AD5F: fld      dword ptr [ecx + 0x18]
0x0057AD62: fstp     dword ptr [eax + 0x1c]
0x0057AD65: ret      4
0x0057AD68: int3     
0x0057AD69: int3     
0x0057AD6A: int3     
0x0057AD6B: int3     
0x0057AD6C: int3     
0x0057AD6D: int3     
0x0057AD6E: int3     
0x0057AD6F: int3     
0x0057AD70: mov      eax, dword ptr [esp + 4]
0x0057AD74: push     esi
0x0057AD75: push     0
0x0057AD77: push     eax
0x0057AD78: push     0x20
0x0057AD7A: mov      esi, ecx
0x0057AD7C: call     0x689060
0x0057AD81: add      esp, 0xc
0x0057AD84: test     eax, eax
0x0057AD86: je       0x57adbc
0x0057AD88: mov      dword ptr [eax], 0x992af8
0x0057AD8E: mov      ecx, dword ptr [esi + 4]
0x0057AD91: mov      dword ptr [eax + 4], ecx
0x0057AD94: fld      dword ptr [esi + 8]
0x0057AD97: fstp     dword ptr [eax + 8]
0x0057AD9A: fld      dword ptr [esi + 0xc]
0x0057AD9D: fstp     dword ptr [eax + 0xc]
0x0057ADA0: fld      dword ptr [esi + 0x10]
0x0057ADA3: fstp     dword ptr [eax + 0x10]
0x0057ADA6: fld      dword ptr [esi + 0x14]
0x0057ADA9: fstp     dword ptr [eax + 0x14]
0x0057ADAC: fld      dword ptr [esi + 0x18]
0x0057ADAF: fstp     dword ptr [eax + 0x18]
0x0057ADB2: fld      dword ptr [esi + 0x1c]
0x0057ADB5: pop      esi
0x0057ADB6: fstp     dword ptr [eax + 0x1c]
0x0057ADB9: ret      4
0x0057ADBC: xor      eax, eax
0x0057ADBE: pop      esi
0x0057ADBF: ret      4
0x0057ADC2: int3     
0x0057ADC3: int3     
0x0057ADC4: int3     
0x0057ADC5: int3     
0x0057ADC6: int3     
0x0057ADC7: int3     
0x0057ADC8: int3     
0x0057ADC9: int3     
0x0057ADCA: int3     
0x0057ADCB: int3     
0x0057ADCC: int3     
0x0057ADCD: int3     
0x0057ADCE: int3     
0x0057ADCF: int3     
0x0057ADD0: mov      eax, dword ptr [esp + 4]
0x0057ADD4: push     esi
0x0057ADD5: push     0
0x0057ADD7: push     eax
0x0057ADD8: push     0x18
0x0057ADDA: mov      esi, ecx
0x0057ADDC: call     0x689060
0x0057ADE1: add      esp, 0xc
0x0057ADE4: test     eax, eax
0x0057ADE6: je       0x57ae10
0x0057ADE8: fld      dword ptr [esi + 8]
0x0057ADEB: mov      dword ptr [eax], 0x992b0c
0x0057ADF1: mov      ecx, dword ptr [esi + 4]
0x0057ADF4: fstp     dword ptr [eax + 8]
0x0057ADF7: fld      dword ptr [esi + 0xc]
0x0057ADFA: mov      dword ptr [eax + 4], ecx
0x0057ADFD: fstp     dword ptr [eax + 0xc]
0x0057AE00: fld      dword ptr [esi + 0x10]
0x0057AE03: fstp     dword ptr [eax + 0x10]
0x0057AE06: fld      dword ptr [esi + 0x14]
0x0057AE09: pop      esi
0x0057AE0A: fstp     dword ptr [eax + 0x14]
0x0057AE0D: ret      4
0x0057AE10: xor      eax, eax
0x0057AE12: pop      esi
0x0057AE13: ret      4
0x0057AE16: int3     
0x0057AE17: int3     
0x0057AE18: int3     
0x0057AE19: int3     
0x0057AE1A: int3     
0x0057AE1B: int3     
0x0057AE1C: int3     
0x0057AE1D: int3     
0x0057AE1E: int3     
0x0057AE1F: int3     
0x0057AE20: mov      eax, dword ptr [esp + 4]
0x0057AE24: push     esi
0x0057AE25: push     0
0x0057AE27: push     eax
0x0057AE28: push     0x2c
0x0057AE2A: mov      esi, ecx
0x0057AE2C: call     0x689060
0x0057AE31: add      esp, 0xc
0x0057AE34: test     eax, eax
0x0057AE36: je       0x57ae7e
0x0057AE38: mov      dword ptr [eax], 0x992b20
0x0057AE3E: mov      ecx, dword ptr [esi + 4]
0x0057AE41: mov      dword ptr [eax + 4], ecx
0x0057AE44: fld      dword ptr [esi + 8]
0x0057AE47: fstp     dword ptr [eax + 8]
0x0057AE4A: fld      dword ptr [esi + 0xc]
0x0057AE4D: fstp     dword ptr [eax + 0xc]
0x0057AE50: fld      dword ptr [esi + 0x10]
0x0057AE53: fstp     dword ptr [eax + 0x10]
0x0057AE56: fld      dword ptr [esi + 0x14]
0x0057AE59: fstp     dword ptr [eax + 0x14]
0x0057AE5C: fld      dword ptr [esi + 0x18]
0x0057AE5F: fstp     dword ptr [eax + 0x18]
0x0057AE62: fld      dword ptr [esi + 0x1c]
0x0057AE65: fstp     dword ptr [eax + 0x1c]
0x0057AE68: fld      dword ptr [esi + 0x20]
0x0057AE6B: fstp     dword ptr [eax + 0x20]
0x0057AE6E: fld      dword ptr [esi + 0x24]
0x0057AE71: fstp     dword ptr [eax + 0x24]
0x0057AE74: mov      edx, dword ptr [esi + 0x28]
0x0057AE77: mov      dword ptr [eax + 0x28], edx
0x0057AE7A: pop      esi
0x0057AE7B: ret      4
0x0057AE7E: xor      eax, eax
0x0057AE80: pop      esi
0x0057AE81: ret      4
0x0057AE84: int3     
0x0057AE85: int3     
0x0057AE86: int3     
0x0057AE87: int3     
0x0057AE88: int3     
0x0057AE89: int3     
0x0057AE8A: int3     
0x0057AE8B: int3     
0x0057AE8C: int3     
0x0057AE8D: int3     
0x0057AE8E: int3     
0x0057AE8F: int3     
0x0057AE90: mov      eax, dword ptr [esp + 4]
0x0057AE94: push     esi
0x0057AE95: push     0
0x0057AE97: push     eax
0x0057AE98: push     0x18
0x0057AE9A: mov      esi, ecx
0x0057AE9C: call     0x689060
0x0057AEA1: add      esp, 0xc
0x0057AEA4: test     eax, eax
0x0057AEA6: je       0x57aed0
0x0057AEA8: mov      dword ptr [eax], 0x992b34
0x0057AEAE: fld      dword ptr [esi + 4]
0x0057AEB1: fstp     dword ptr [eax + 4]
0x0057AEB4: fld      dword ptr [esi + 8]
0x0057AEB7: fstp     dword ptr [eax + 8]
0x0057AEBA: fld      dword ptr [esi + 0xc]
0x0057AEBD: fstp     dword ptr [eax + 0xc]
0x0057AEC0: fld      dword ptr [esi + 0x10]
0x0057AEC3: fstp     dword ptr [eax + 0x10]
0x0057AEC6: mov      ecx, dword ptr [esi + 0x14]
0x0057AEC9: mov      dword ptr [eax + 0x14], ecx
0x0057AECC: pop      esi
0x0057AECD: ret      4
0x0057AED0: xor      eax, eax
0x0057AED2: pop      esi
0x0057AED3: ret      4
0x0057AED6: int3     
0x0057AED7: int3     
0x0057AED8: int3     
0x0057AED9: int3     
0x0057AEDA: int3     
0x0057AEDB: int3     
0x0057AEDC: int3     
0x0057AEDD: int3     
0x0057AEDE: int3     
0x0057AEDF: int3     
0x0057AEE0: mov      eax, dword ptr [esp + 4]
0x0057AEE4: push     esi
0x0057AEE5: push     0
0x0057AEE7: push     eax
0x0057AEE8: push     0x18
0x0057AEEA: mov      esi, ecx
0x0057AEEC: call     0x689060
0x0057AEF1: add      esp, 0xc
0x0057AEF4: test     eax, eax
0x0057AEF6: je       0x57af20
0x0057AEF8: mov      dword ptr [eax], 0x992b48
0x0057AEFE: fld      dword ptr [esi + 4]
0x0057AF01: fstp     dword ptr [eax + 4]
0x0057AF04: fld      dword ptr [esi + 8]
0x0057AF07: fstp     dword ptr [eax + 8]
0x0057AF0A: fld      dword ptr [esi + 0xc]
0x0057AF0D: fstp     dword ptr [eax + 0xc]
0x0057AF10: fld      dword ptr [esi + 0x10]
0x0057AF13: fstp     dword ptr [eax + 0x10]
0x0057AF16: mov      ecx, dword ptr [esi + 0x14]
0x0057AF19: mov      dword ptr [eax + 0x14], ecx
0x0057AF1C: pop      esi
0x0057AF1D: ret      4
0x0057AF20: xor      eax, eax
0x0057AF22: pop      esi
0x0057AF23: ret      4
0x0057AF26: int3     
0x0057AF27: int3     
0x0057AF28: int3     
0x0057AF29: int3     
0x0057AF2A: int3     
0x0057AF2B: int3     
0x0057AF2C: int3     
0x0057AF2D: int3     
0x0057AF2E: int3     
0x0057AF2F: int3     
0x0057AF30: mov      eax, 0xb49ed4
0x0057AF35: ret      
0x0057AF36: int3     
0x0057AF37: int3     
0x0057AF38: int3     
0x0057AF39: int3     
0x0057AF3A: int3     
0x0057AF3B: int3     
0x0057AF3C: int3     
0x0057AF3D: int3     
0x0057AF3E: int3     
0x0057AF3F: int3     
0x0057AF40: push     esi
0x0057AF41: mov      esi, ecx
0x0057AF43: call     0x57a680
0x0057AF48: test     byte ptr [esp + 8], 1
0x0057AF4D: je       0x57af58
0x0057AF4F: push     esi
0x0057AF50: call     0x688fb0
0x0057AF55: add      esp, 4
0x0057AF58: mov      eax, esi
0x0057AF5A: pop      esi
0x0057AF5B: ret      4
0x0057AF5E: int3     
0x0057AF5F: int3     
0x0057AF60: mov      eax, 0xb49ee8
0x0057AF65: ret      
0x0057AF66: int3     
0x0057AF67: int3     
0x0057AF68: int3     
0x0057AF69: int3     
0x0057AF6A: int3     
0x0057AF6B: int3     
0x0057AF6C: int3     
0x0057AF6D: int3     
0x0057AF6E: int3     
0x0057AF6F: int3     
0x0057AF70: push     esi
0x0057AF71: mov      esi, ecx
0x0057AF73: call     0x57ce30
0x0057AF78: test     byte ptr [esp + 8], 1
0x0057AF7D: je       0x57af88
0x0057AF7F: push     esi
0x0057AF80: call     0x688fb0
0x0057AF85: add      esp, 4
0x0057AF88: mov      eax, esi
0x0057AF8A: pop      esi
0x0057AF8B: ret      4
0x0057AF8E: int3     
0x0057AF8F: int3     
0x0057AF90: push     -1
0x0057AF92: push     0x94884d
0x0057AF97: mov      eax, dword ptr fs:[0]
0x0057AF9D: push     eax
0x0057AF9E: push     ebx
0x0057AF9F: push     esi
0x0057AFA0: push     edi
0x0057AFA1: mov      eax, dword ptr [0xb089c8]
0x0057AFA6: xor      eax, esp
0x0057AFA8: push     eax
0x0057AFA9: lea      eax, [esp + 0x10]
0x0057AFAD: mov      dword ptr fs:[0], eax
0x0057AFB3: mov      ebx, dword ptr [esp + 0x20]
0x0057AFB7: lea      edi, [ebx + 0x1a8]
0x0057AFBD: push     0xd47fc179
0x0057AFC2: mov      ecx, edi
0x0057AFC4: call     0x569250
0x0057AFC9: mov      esi, eax
0x0057AFCB: test     esi, esi
0x0057AFCD: je       0x57afea
0x0057AFCF: push     esi
0x0057AFD0: mov      ecx, edi
0x0057AFD2: call     0x5696c0
0x0057AFD7: mov      eax, dword ptr [esi]
0x0057AFD9: mov      edx, dword ptr [eax + 0xc]
0x0057AFDC: mov      ecx, esi
0x0057AFDE: call     edx
0x0057AFE0: mov      eax, dword ptr [esi]
0x0057AFE2: mov      edx, dword ptr [eax]
0x0057AFE4: push     1
0x0057AFE6: mov      ecx, esi
0x0057AFE8: call     edx
0x0057AFEA: mov      eax, dword ptr [0xb01b28]
0x0057AFEF: push     0
0x0057AFF1: push     1
0x0057AFF3: push     0
0x0057AFF5: push     1
0x0057AFF7: push     0
0x0057AFF9: push     eax
0x0057AFFA: push     0x64
0x0057AFFC: call     0x688fe0
0x0057B001: mov      esi, eax
0x0057B003: add      esp, 0x1c
0x0057B006: mov      dword ptr [esp + 0x20], esi
0x0057B00A: mov      dword ptr [esp + 0x18], 0
0x0057B012: test     esi, esi
0x0057B014: je       0x57b025
0x0057B016: mov      ecx, esi
0x0057B018: call     0x573540
0x0057B01D: mov      dword ptr [esi], 0x992b9c
0x0057B023: jmp      0x57b027
0x0057B025: xor      esi, esi
0x0057B027: push     esi
0x0057B028: mov      ecx, edi
0x0057B02A: mov      dword ptr [esp + 0x1c], 0xffffffff
0x0057B032: call     0x5696a0
0x0057B037: mov      edx, dword ptr [esi]
0x0057B039: mov      eax, dword ptr [edx + 8]
0x0057B03C: push     ebx
0x0057B03D: mov      ecx, esi
0x0057B03F: call     eax
0x0057B041: mov      edx, dword ptr [esi]
0x0057B043: mov      eax, dword ptr [edx + 0x10]
0x0057B046: mov      ecx, esi
0x0057B048: call     eax
0x0057B04A: mov      ecx, dword ptr [esp + 0x10]
0x0057B04E: mov      dword ptr fs:[0], ecx
0x0057B055: pop      ecx
0x0057B056: pop      edi
0x0057B057: pop      esi
0x0057B058: pop      ebx
0x0057B059: add      esp, 0xc
0x0057B05C: ret      
0x0057B05D: int3     
0x0057B05E: int3     
0x0057B05F: int3     
0x0057B060: xor      eax, eax
0x0057B062: ret      
0x0057B063: int3     
0x0057B064: int3     
0x0057B065: int3     
0x0057B066: int3     
0x0057B067: int3     
0x0057B068: int3     
0x0057B069: int3     
0x0057B06A: int3     
0x0057B06B: int3     
0x0057B06C: int3     
0x0057B06D: int3     
0x0057B06E: int3     
0x0057B06F: int3     
0x0057B070: ret      
0x0057B071: int3     
0x0057B072: int3     
0x0057B073: int3     
0x0057B074: int3     
0x0057B075: int3     
0x0057B076: int3     
0x0057B077: int3     
0x0057B078: int3     
0x0057B079: int3     
0x0057B07A: int3     
0x0057B07B: int3     
0x0057B07C: int3     
0x0057B07D: int3     
0x0057B07E: int3     
0x0057B07F: int3     
0x0057B080: sub      esp, 0x18
0x0057B083: push     esi
0x0057B084: mov      esi, dword ptr [esp + 0x20]
0x0057B088: fld      dword ptr [esi + 4]
0x0057B08B: push     edi
0x0057B08C: mov      edi, dword ptr [esp + 0x28]
0x0057B090: fld      dword ptr [esi]
0x0057B092: fld      dword ptr [esi + 8]
0x0057B095: fld      dword ptr [edi + 4]
0x0057B098: fstp     qword ptr [esp + 0x10]
0x0057B09C: fld      dword ptr [edi]
0x0057B09E: fstp     qword ptr [esp + 8]
0x0057B0A2: fld      dword ptr [edi + 8]
0x0057B0A5: fstp     qword ptr [esp + 0x18]
0x0057B0A9: fld      st(1)
0x0057B0AB: fmulp    st(2)
0x0057B0AD: fld      st(2)
0x0057B0AF: fmulp    st(3)
0x0057B0B1: fxch     st(1)
0x0057B0B3: faddp    st(2)
0x0057B0B5: fmul     st(0), st(0)
0x0057B0B7: faddp    st(1)
0x0057B0B9: fstp     dword ptr [esp + 0x24]
0x0057B0BD: fld      dword ptr [esp + 0x24]
0x0057B0C1: call     0x8eb930
0x0057B0C6: fstp     dword ptr [esp + 0x24]
0x0057B0CA: fld      dword ptr [esp + 0x24]
0x0057B0CE: fstp     dword ptr [esp + 0x28]
0x0057B0D2: fld      qword ptr [esp + 8]
0x0057B0D6: fmul     st(0), st(0)
0x0057B0D8: fld      qword ptr [esp + 0x10]
0x0057B0DC: fmul     st(0), st(0)
0x0057B0DE: faddp    st(1)
0x0057B0E0: fld      qword ptr [esp + 0x18]
0x0057B0E4: fmul     st(0), st(0)
0x0057B0E6: faddp    st(1)
0x0057B0E8: fstp     dword ptr [esp + 0x24]
0x0057B0EC: fld      dword ptr [esp + 0x24]
0x0057B0F0: call     0x8eb930
0x0057B0F5: fstp     dword ptr [esp + 0x24]
0x0057B0F9: fld      dword ptr [esp + 0x24]
0x0057B0FD: fmul     dword ptr [esp + 0x28]
0x0057B101: fstp     dword ptr [esp + 0x24]
0x0057B105: fldz     
0x0057B107: fld      st(0)
0x0057B109: fld      dword ptr [esp + 0x24]
0x0057B10D: fucom    st(1)
0x0057B10F: fnstsw   ax
0x0057B111: fstp     st(1)
0x0057B113: test     ah, 0x44
0x0057B116: jnp      0x57b186
0x0057B118: fld      dword ptr [esi]
0x0057B11A: fmul     dword ptr [edi]
0x0057B11C: fld      dword ptr [esi + 4]
0x0057B11F: fmul     dword ptr [edi + 4]
0x0057B122: faddp    st(1)
0x0057B124: fld      dword ptr [esi + 8]
0x0057B127: fmul     dword ptr [edi + 8]
0x0057B12A: faddp    st(1)
0x0057B12C: fstp     dword ptr [esp + 0x24]
0x0057B130: fdivr    dword ptr [esp + 0x24]
0x0057B134: fstp     dword ptr [esp + 0x28]
0x0057B138: fld      dword ptr [esi]
0x0057B13A: fmul     dword ptr [edi + 4]
0x0057B13D: fld      dword ptr [edi]
0x0057B13F: fmul     dword ptr [esi + 4]
0x0057B142: fsubp    st(1)
0x0057B144: fstp     dword ptr [esp + 0x24]
0x0057B148: fcomp    dword ptr [esp + 0x24]
0x0057B14C: mov      dword ptr [esp + 0x24], 1
0x0057B154: fnstsw   ax
0x0057B156: test     ah, 0x41
0x0057B159: jnp      0x57b163
0x0057B15B: mov      dword ptr [esp + 0x24], 0xffffffff
0x0057B163: fld      dword ptr [esp + 0x28]
0x0057B167: call     0x8ebfe0
0x0057B16C: fstp     dword ptr [esp + 0x28]
0x0057B170: fld      dword ptr [esp + 0x28]
0x0057B174: pop      edi
0x0057B175: fimul    dword ptr [esp + 0x20]
0x0057B179: pop      esi
0x0057B17A: fstp     dword ptr [esp + 0x1c]
0x0057B17E: fld      dword ptr [esp + 0x1c]
0x0057B182: add      esp, 0x18
0x0057B185: ret      
0x0057B186: pop      edi
0x0057B187: fstp     st(0)
0x0057B189: pop      esi
0x0057B18A: add      esp, 0x18
0x0057B18D: ret      
0x0057B18E: int3     
0x0057B18F: int3     
0x0057B190: sub      esp, 0x10
0x0057B193: mov      eax, dword ptr [esp + 0x18]
0x0057B197: fld      dword ptr [eax]
0x0057B199: push     esi
0x0057B19A: mov      esi, dword ptr [esp + 0x20]
0x0057B19E: fsub     dword ptr [esi]
0x0057B1A0: push     ecx
0x0057B1A1: fstp     dword ptr [esp + 8]
0x0057B1A5: fld      dword ptr [eax + 4]
0x0057B1A8: fsub     dword ptr [esi + 4]
0x0057B1AB: fstp     dword ptr [esp + 0xc]
0x0057B1AF: fld      dword ptr [eax + 8]
0x0057B1B2: lea      eax, [esp + 8]
0x0057B1B6: fsub     dword ptr [esi + 8]
0x0057B1B9: fstp     dword ptr [esp + 0x10]
0x0057B1BD: fld      dword ptr [esp + 0x28]
0x0057B1C1: fstp     dword ptr [esp]
0x0057B1C4: push     eax
0x0057B1C5: call     0x6b2e60
0x0057B1CA: fld      dword ptr [esi]
0x0057B1CC: fadd     dword ptr [esp + 0xc]
0x0057B1D0: mov      eax, dword ptr [esp + 0x20]
0x0057B1D4: add      esp, 8
0x0057B1D7: fstp     dword ptr [eax]
0x0057B1D9: fld      dword ptr [esp + 8]
0x0057B1DD: fadd     dword ptr [esi + 4]
0x0057B1E0: fstp     dword ptr [eax + 4]
0x0057B1E3: fld      dword ptr [esi + 8]
0x0057B1E6: pop      esi
0x0057B1E7: fadd     dword ptr [esp + 8]
0x0057B1EB: fstp     dword ptr [eax + 8]
0x0057B1EE: add      esp, 0x10
0x0057B1F1: ret      
0x0057B1F2: int3     
0x0057B1F3: int3     
0x0057B1F4: int3     
0x0057B1F5: int3     
0x0057B1F6: int3     
0x0057B1F7: int3     
0x0057B1F8: int3     
0x0057B1F9: int3     
0x0057B1FA: int3     
0x0057B1FB: int3     
0x0057B1FC: int3     
0x0057B1FD: int3     
0x0057B1FE: int3     
0x0057B1FF: int3     
0x0057B200: push     esi
0x0057B201: mov      esi, ecx
0x0057B203: mov      eax, dword ptr [esi + 8]
0x0057B206: mov      dword ptr [esi], 0x992bd0
0x0057B20C: test     eax, eax
0x0057B20E: je       0x57b219
0x0057B210: push     eax
0x0057B211: call     0x688fb0
0x0057B216: add      esp, 4
0x0057B219: mov      esi, dword ptr [esi + 4]
0x0057B21C: test     esi, esi
0x0057B21E: je       0x57b229
0x0057B220: push     esi
0x0057B221: call     0x688fb0
0x0057B226: add      esp, 4
0x0057B229: pop      esi
0x0057B22A: ret      
0x0057B22B: int3     
0x0057B22C: int3     
0x0057B22D: int3     
0x0057B22E: int3     
0x0057B22F: int3     
0x0057B230: mov      eax, dword ptr [esp + 4]
0x0057B234: push     esi
0x0057B235: push     edi
0x0057B236: mov      esi, ecx
0x0057B238: mov      ecx, dword ptr [esi + 0xc]
0x0057B23B: push     eax
0x0057B23C: call     0x57b8e0
0x0057B241: fld      dword ptr [esp + 0x10]
0x0057B245: push     ecx
0x0057B246: mov      ecx, dword ptr [esi + 0xc]
0x0057B249: fstp     dword ptr [esp]
0x0057B24C: mov      edi, eax
0x0057B24E: push     edi
0x0057B24F: call     0x57b930
0x0057B254: mov      ecx, dword ptr [esi + 8]
0x0057B257: mov      byte ptr [edi + ecx], al
0x0057B25A: pop      edi
0x0057B25B: xor      eax, eax
0x0057B25D: pop      esi
0x0057B25E: ret      8
0x0057B261: int3     
0x0057B262: int3     
0x0057B263: int3     
0x0057B264: int3     
0x0057B265: int3     
0x0057B266: int3     
0x0057B267: int3     
0x0057B268: int3     
0x0057B269: int3     
0x0057B26A: int3     
0x0057B26B: int3     
0x0057B26C: int3     
0x0057B26D: int3     
0x0057B26E: int3     
0x0057B26F: int3     
0x0057B270: mov      eax, dword ptr [esp + 4]
0x0057B274: mov      edx, dword ptr [ecx + 4]
0x0057B277: push     eax
0x0057B278: mov      eax, dword ptr [ecx + 8]
0x0057B27B: mov      ecx, dword ptr [ecx + 0xc]
0x0057B27E: push     edx
0x0057B27F: push     eax
0x0057B280: call     0x57c340
0x0057B285: ret      4
0x0057B288: int3     
0x0057B289: int3     
0x0057B28A: int3     
0x0057B28B: int3     
0x0057B28C: int3     
0x0057B28D: int3     
0x0057B28E: int3     
0x0057B28F: int3     
0x0057B290: push     -1
0x0057B292: push     0x94888d
0x0057B297: mov      eax, dword ptr fs:[0]
0x0057B29D: push     eax
0x0057B29E: push     ecx
0x0057B29F: push     esi
0x0057B2A0: mov      eax, dword ptr [0xb089c8]
0x0057B2A5: xor      eax, esp
0x0057B2A7: push     eax
0x0057B2A8: lea      eax, [esp + 0xc]
0x0057B2AC: mov      dword ptr fs:[0], eax
0x0057B2B2: mov      esi, ecx
0x0057B2B4: mov      eax, dword ptr [0xb01b28]
0x0057B2B9: push     0
0x0057B2BB: push     1
0x0057B2BD: push     0
0x0057B2BF: push     1
0x0057B2C1: push     0
0x0057B2C3: push     eax
0x0057B2C4: push     0x3c
0x0057B2C6: call     0x688fe0
0x0057B2CB: add      esp, 0x1c
0x0057B2CE: mov      dword ptr [esp + 8], eax
0x0057B2D2: mov      dword ptr [esp + 0x14], 0
0x0057B2DA: test     eax, eax
0x0057B2DC: je       0x57b2e7
0x0057B2DE: mov      ecx, eax
0x0057B2E0: call     0x57bbd0
0x0057B2E5: jmp      0x57b2e9
0x0057B2E7: xor      eax, eax
0x0057B2E9: mov      ecx, eax
0x0057B2EB: mov      dword ptr [esp + 0x14], 0xffffffff
0x0057B2F3: mov      dword ptr [esi + 0x14], eax
0x0057B2F6: call     0x57b5d0
0x0057B2FB: mov      ecx, dword ptr [esp + 0xc]
0x0057B2FF: mov      dword ptr fs:[0], ecx
0x0057B306: pop      ecx
0x0057B307: pop      esi
0x0057B308: add      esp, 0x10
0x0057B30B: ret      
0x0057B30C: int3     
0x0057B30D: int3     
0x0057B30E: int3     
0x0057B30F: int3     
0x0057B310: push     ebx
0x0057B311: push     esi
0x0057B312: mov      esi, ecx
0x0057B314: mov      ecx, dword ptr [esp + 0xc]
0x0057B318: push     edi
0x0057B319: mov      dword ptr [esi], 0x992bd0
0x0057B31F: mov      dword ptr [esi + 0xc], ecx
0x0057B322: call     0x57b920
0x0057B327: mov      ecx, dword ptr [esi + 0xc]
0x0057B32A: push     -1
0x0057B32C: mov      ebx, eax
0x0057B32E: call     0x57bab0
0x0057B333: push     0
0x0057B335: push     1
0x0057B337: push     0
0x0057B339: push     1
0x0057B33B: mov      edi, eax
0x0057B33D: mov      eax, dword ptr [0xb01b28]
0x0057B342: push     0
0x0057B344: push     eax
0x0057B345: push     edi
0x0057B346: call     0x688fe0
0x0057B34B: push     0
0x0057B34D: push     1
0x0057B34F: push     0
0x0057B351: push     1
0x0057B353: mov      dword ptr [esi + 4], eax
0x0057B356: mov      ecx, dword ptr [0xb01b28]
0x0057B35C: push     0
0x0057B35E: push     ecx
0x0057B35F: push     ebx
0x0057B360: call     0x688fe0
0x0057B365: add      esp, 0x38
0x0057B368: cmp      edi, 0xc00
0x0057B36E: mov      dword ptr [esi + 8], eax
0x0057B371: mov      eax, dword ptr [esi + 4]
0x0057B374: jg       0x57b386
0x0057B376: test     al, 0x7f
0x0057B378: je       0x57b386
0x0057B37A: push     edi
0x0057B37B: push     eax
0x0057B37C: call     0x6a9700
0x0057B381: add      esp, 8
0x0057B384: jmp      0x57b392
0x0057B386: push     edi
0x0057B387: push     0
0x0057B389: push     eax
0x0057B38A: call     0x8eb080
0x0057B38F: add      esp, 0xc
0x0057B392: cmp      ebx, 0xc00
0x0057B398: mov      eax, dword ptr [esi + 8]
0x0057B39B: jg       0x57b3b3
0x0057B39D: test     al, 0x7f
0x0057B39F: je       0x57b3b3
0x0057B3A1: push     ebx
0x0057B3A2: push     eax
0x0057B3A3: call     0x6a9700
0x0057B3A8: add      esp, 8
0x0057B3AB: pop      edi
0x0057B3AC: mov      eax, esi
0x0057B3AE: pop      esi
0x0057B3AF: pop      ebx
0x0057B3B0: ret      4
0x0057B3B3: push     ebx
0x0057B3B4: push     0
0x0057B3B6: push     eax
0x0057B3B7: call     0x8eb080
0x0057B3BC: add      esp, 0xc
0x0057B3BF: pop      edi
0x0057B3C0: mov      eax, esi
0x0057B3C2: pop      esi
0x0057B3C3: pop      ebx
0x0057B3C4: ret      4
0x0057B3C7: int3     
0x0057B3C8: int3     
0x0057B3C9: int3     
0x0057B3CA: int3     
0x0057B3CB: int3     
0x0057B3CC: int3     
0x0057B3CD: int3     
0x0057B3CE: int3     
0x0057B3CF: int3     
0x0057B3D0: mov      eax, dword ptr [esp + 4]
0x0057B3D4: push     esi
0x0057B3D5: mov      esi, ecx
0x0057B3D7: mov      ecx, dword ptr [esi + 0xc]
0x0057B3DA: push     eax
0x0057B3DB: call     0x57bb60
0x0057B3E0: mov      ecx, dword ptr [esi + 4]
0x0057B3E3: mov      edx, dword ptr [esi + 8]
0x0057B3E6: push     eax
0x0057B3E7: push     ecx
0x0057B3E8: mov      ecx, dword ptr [esi + 0xc]
0x0057B3EB: push     edx
0x0057B3EC: call     0x57c340
0x0057B3F1: pop      esi
0x0057B3F2: ret      4
0x0057B3F5: int3     
0x0057B3F6: int3     
0x0057B3F7: int3     
0x0057B3F8: int3     
0x0057B3F9: int3     
0x0057B3FA: int3     
0x0057B3FB: int3     
0x0057B3FC: int3     
0x0057B3FD: int3     
0x0057B3FE: int3     
0x0057B3FF: int3     
0x0057B400: push     -1
0x0057B402: push     0x9488c5
0x0057B407: mov      eax, dword ptr fs:[0]
0x0057B40D: push     eax
0x0057B40E: push     ecx
0x0057B40F: push     esi
0x0057B410: mov      eax, dword ptr [0xb089c8]
0x0057B415: xor      eax, esp
0x0057B417: push     eax
0x0057B418: lea      eax, [esp + 0xc]
0x0057B41C: mov      dword ptr fs:[0], eax
0x0057B422: mov      esi, ecx
0x0057B424: mov      eax, dword ptr [0xb01b28]
0x0057B429: push     0
0x0057B42B: push     1
0x0057B42D: push     0
0x0057B42F: push     1
0x0057B431: push     0
0x0057B433: push     eax
0x0057B434: push     0x10
0x0057B436: call     0x688fe0
0x0057B43B: add      esp, 0x1c
0x0057B43E: mov      dword ptr [esp + 8], eax
0x0057B442: mov      dword ptr [esp + 0x14], 0
0x0057B44A: test     eax, eax
0x0057B44C: je       0x57b45b
0x0057B44E: mov      ecx, dword ptr [esi + 0x14]
0x0057B451: push     ecx
0x0057B452: mov      ecx, eax
0x0057B454: call     0x57b310
0x0057B459: jmp      0x57b45d
0x0057B45B: xor      eax, eax
0x0057B45D: lea      edx, [esp + 8]
0x0057B461: add      esi, 4
0x0057B464: push     edx
0x0057B465: mov      ecx, esi
0x0057B467: mov      dword ptr [esp + 0x18], 0xffffffff
0x0057B46F: mov      dword ptr [esp + 0xc], eax
0x0057B473: call     0x54c930
0x0057B478: mov      eax, dword ptr [esi + 8]
0x0057B47B: sub      eax, dword ptr [esi + 4]
0x0057B47E: sar      eax, 2
0x0057B481: dec      eax
0x0057B482: mov      ecx, dword ptr [esp + 0xc]
0x0057B486: mov      dword ptr fs:[0], ecx
0x0057B48D: pop      ecx
0x0057B48E: pop      esi
0x0057B48F: add      esp, 0x10
0x0057B492: ret      
0x0057B493: int3     
0x0057B494: int3     
0x0057B495: int3     
0x0057B496: int3     
0x0057B497: int3     
0x0057B498: int3     
0x0057B499: int3     
0x0057B49A: int3     
0x0057B49B: int3     
0x0057B49C: int3     
0x0057B49D: int3     
0x0057B49E: int3     
0x0057B49F: int3     
0x0057B4A0: mov      eax, ecx
0x0057B4A2: xor      ecx, ecx
0x0057B4A4: mov      dword ptr [eax], 0x992bd4
0x0057B4AA: mov      dword ptr [eax + 8], ecx
0x0057B4AD: mov      dword ptr [eax + 0x10], ecx
0x0057B4B0: mov      dword ptr [eax + 0xc], ecx
0x0057B4B3: mov      dword ptr [eax + 0x14], ecx
0x0057B4B6: ret      
0x0057B4B7: int3     
0x0057B4B8: int3     
0x0057B4B9: int3     
0x0057B4BA: int3     
0x0057B4BB: int3     
0x0057B4BC: int3     
0x0057B4BD: int3     
0x0057B4BE: int3     
0x0057B4BF: int3     
0x0057B4C0: push     -1
0x0057B4C2: push     0x9488eb
0x0057B4C7: mov      eax, dword ptr fs:[0]
0x0057B4CD: push     eax
0x0057B4CE: push     ecx
0x0057B4CF: push     ebx
0x0057B4D0: push     esi
0x0057B4D1: push     edi
0x0057B4D2: mov      eax, dword ptr [0xb089c8]
0x0057B4D7: xor      eax, esp
0x0057B4D9: push     eax
0x0057B4DA: lea      eax, [esp + 0x14]
0x0057B4DE: mov      dword ptr fs:[0], eax
0x0057B4E4: mov      esi, ecx
0x0057B4E6: mov      dword ptr [esp + 0x10], esi
0x0057B4EA: mov      dword ptr [esi], 0x992bd4
0x0057B4F0: mov      ecx, dword ptr [esi + 0x14]
0x0057B4F3: mov      dword ptr [esp + 0x1c], 0
0x0057B4FB: test     ecx, ecx
0x0057B4FD: je       0x57b50f