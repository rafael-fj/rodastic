=== CPickUp (0x005354E0 .. 0x00535FF0) ===

--- CPickUp::ctor @ 0x005354E0 ---
0x005354E0: mov      eax, dword ptr [esp + 4]
0x005354E4: push     esi
0x005354E5: push     eax
0x005354E6: mov      esi, ecx
0x005354E8: call     0x506ab0
0x005354ED: fldz     
0x005354EF: mov      eax, dword ptr [esi + 8]
0x005354F2: fst      dword ptr [esi + 0x1c4]
0x005354F8: xor      ecx, ecx
0x005354FA: fstp     dword ptr [esi + 0x1c8]
0x00535500: mov      dword ptr [esi + 0x1a8], eax
0x00535506: mov      dword ptr [esi + 0x1ac], eax
0x0053550C: mov      dword ptr [esi], 0x98a1a0
0x00535512: mov      dword ptr [esi + 0x1bc], ecx
0x00535518: mov      dword ptr [esi + 0x1c0], 1
0x00535522: mov      dword ptr [esi + 0x1cc], ecx
0x00535528: mov      dword ptr [esi + 0x1e8], ecx
0x0053552E: mov      dword ptr [esi + 0x1d0], ecx
0x00535534: mov      dword ptr [esi + 0x1d8], ecx
0x0053553A: mov      eax, esi
0x0053553C: mov      dword ptr [0xb1bbf0], ecx
0x00535542: pop      esi
0x00535543: ret      4
0x00535546: int3     
0x00535547: int3     
0x00535548: int3     
0x00535549: int3     
0x0053554A: int3     
0x0053554B: int3     
0x0053554C: int3     
0x0053554D: int3     
0x0053554E: int3     
0x0053554F: int3     
0x00535550: mov      dword ptr [ecx], 0x98a1a0
0x00535556: jmp      0x506b40
0x0053555B: int3     
0x0053555C: int3     
0x0053555D: int3     
0x0053555E: int3     
0x0053555F: int3     
0x00535560: fldz     
0x00535562: xor      eax, eax
0x00535564: push     1
0x00535566: fst      dword ptr [ecx + 0x1c4]
0x0053556C: push     eax
0x0053556D: fstp     dword ptr [ecx + 0x1c8]
0x00535573: push     eax
0x00535574: mov      dword ptr [ecx + 0x1bc], eax
0x0053557A: mov      dword ptr [ecx + 0x1c0], eax
0x00535580: mov      dword ptr [ecx + 0x1cc], eax
0x00535586: mov      dword ptr [ecx + 0x1e8], eax
0x0053558C: mov      dword ptr [ecx + 0x1d0], eax
0x00535592: mov      dword ptr [ecx + 0x1d8], eax
0x00535598: mov      ecx, dword ptr [ecx + 8]
0x0053559B: push     eax
0x0053559C: call     0x7f8950
0x005355A1: ret      
0x005355A2: int3     
0x005355A3: int3     
0x005355A4: int3     
0x005355A5: int3     
0x005355A6: int3     
0x005355A7: int3     
0x005355A8: int3     
0x005355A9: int3     
0x005355AA: int3     
0x005355AB: int3     
0x005355AC: int3     
0x005355AD: int3     
0x005355AE: int3     
0x005355AF: int3     
0x005355B0: mov      ecx, dword ptr [ecx + 8]
0x005355B3: push     1
0x005355B5: push     0
0x005355B7: push     0
0x005355B9: push     0
0x005355BB: call     0x7f8950
0x005355C0: ret      
0x005355C1: int3     
0x005355C2: int3     
0x005355C3: int3     
0x005355C4: int3     
0x005355C5: int3     
0x005355C6: int3     
0x005355C7: int3     
0x005355C8: int3     
0x005355C9: int3     
0x005355CA: int3     
0x005355CB: int3     
0x005355CC: int3     
0x005355CD: int3     
0x005355CE: int3     
0x005355CF: int3     

--- CPickUp::vfunc_3 @ 0x005355D0 ---
0x005355D0: jmp      0x793040
0x005355D5: int3     
0x005355D6: int3     
0x005355D7: int3     
0x005355D8: int3     
0x005355D9: int3     
0x005355DA: int3     
0x005355DB: int3     
0x005355DC: int3     
0x005355DD: int3     
0x005355DE: int3     
0x005355DF: int3     

--- CPickUp::vfunc_43 @ 0x005355E0 ---
0x005355E0: push     ecx
0x005355E1: push     ebx
0x005355E2: push     esi
0x005355E3: push     edi
0x005355E4: mov      esi, ecx
0x005355E6: call     0x795870
0x005355EB: mov      ecx, dword ptr [esi + 0x1cc]
0x005355F1: xor      edi, edi
0x005355F3: mov      ebx, 1
0x005355F8: cmp      ecx, edi
0x005355FA: je       0x535675
0x005355FC: cmp      dword ptr [esi + 0x1d8], edi
0x00535602: jne      0x53563f
0x00535604: fld      dword ptr [esi + 0x1c8]
0x0053560A: fld      dword ptr [esi + 0x1c4]
0x00535610: fadd     qword ptr [0x97ea78] ; [f32=0, f64=3, u32=0x00000000]
0x00535616: fcompp   
0x00535618: fnstsw   ax
0x0053561A: test     ah, 0x41
0x0053561D: jne      0x53563f
0x0053561F: fld      dword ptr [0x9672e4] ; [f32=3, u32=0x40400000]
0x00535625: mov      dword ptr [esi + 0x1d8], ebx
0x0053562B: fstp     dword ptr [esi + 0x1dc]
0x00535631: mov      dword ptr [esi + 0x1e0], edi
0x00535637: fldz     
0x00535639: fstp     dword ptr [esi + 0x1e4]
0x0053563F: cmp      ecx, edi
0x00535641: je       0x535675
0x00535643: fld      dword ptr [esi + 0x1c8]
0x00535649: fld      dword ptr [esi + 0x1c4]
0x0053564F: fcompp   
0x00535651: fnstsw   ax
0x00535653: test     ah, 0x41
0x00535656: jne      0x535675
0x00535658: mov      ecx, dword ptr [0xb1bab8]
0x0053565E: lea      eax, [esi + 0x1a8]
0x00535664: push     eax
0x00535665: push     edi
0x00535666: push     ecx
0x00535667: call     0x52d190
0x0053566C: add      esp, 0xc
0x0053566F: mov      dword ptr [esi + 0x1bc], ebx
0x00535675: cmp      dword ptr [esi + 0x1c0], edi
0x0053567B: je       0x535697
0x0053567D: cmp      dword ptr [esi + 0x1bc], edi
0x00535683: je       0x535697
0x00535685: mov      ecx, dword ptr [esi + 8]
0x00535688: push     ebx
0x00535689: push     edi
0x0053568A: push     edi
0x0053568B: push     edi
0x0053568C: mov      dword ptr [esi + 0x1c0], edi
0x00535692: call     0x7f8950
0x00535697: fld      dword ptr [0xb76120]
0x0053569D: fadd     dword ptr [esi + 0x1c4]
0x005356A3: fstp     dword ptr [esi + 0x1c4]
0x005356A9: cmp      dword ptr [esi + 0x1d0], ebx
0x005356AF: jne      0x53573d
0x005356B5: fld      dword ptr [esi + 0x1d4]
0x005356BB: fsub     dword ptr [0xb76120]
0x005356C1: fstp     dword ptr [esp + 0xc]
0x005356C5: fld      dword ptr [esp + 0xc]
0x005356C9: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x005356CF: fnstsw   ax
0x005356D1: test     ah, 0x41
0x005356D4: jne      0x5356e0
0x005356D6: fstp     st(0)
0x005356D8: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x005356DE: jmp      0x5356f9
0x005356E0: fcom     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x005356E6: fnstsw   ax
0x005356E8: test     ah, 0x41
0x005356EB: je       0x5356f1
0x005356ED: fstp     st(0)
0x005356EF: fldz     
0x005356F1: fstp     dword ptr [esp + 0xc]
0x005356F5: fld      dword ptr [esp + 0xc]
0x005356F9: fstp     dword ptr [esp + 0xc]
0x005356FD: fld      dword ptr [esp + 0xc]
0x00535701: fst      dword ptr [esi + 0x1d4]
0x00535707: fldz     
0x00535709: fucomp   st(1)
0x0053570B: fnstsw   ax
0x0053570D: test     ah, 0x44
0x00535710: jp       0x53571f
0x00535712: push     ebx
0x00535713: fstp     st(0)
0x00535715: push     edi
0x00535716: mov      dword ptr [esi + 0x1d0], edi
0x0053571C: push     ebx
0x0053571D: jmp      0x535734
0x0053571F: fmul     qword ptr [0x982fb0] ; [f32=0, f64=8, u32=0x00000000]
0x00535725: call     0x8ebdc0
0x0053572A: push     edi
0x0053572B: push     edi
0x0053572C: test     bl, al
0x0053572E: je       0x535733
0x00535730: push     ebx
0x00535731: jmp      0x535734
0x00535733: push     edi
0x00535734: mov      ecx, dword ptr [esi + 8]
0x00535737: push     ebx
0x00535738: call     0x7f8950
0x0053573D: cmp      dword ptr [esi + 0x1d8], edi
0x00535743: je       0x535857
0x00535749: cmp      dword ptr [esi + 0x1c0], edi
0x0053574F: je       0x535857
0x00535755: fld      dword ptr [esi + 0x1dc]
0x0053575B: fsub     dword ptr [0xb76120]
0x00535761: fstp     dword ptr [esp + 0xc]
0x00535765: fld      dword ptr [esp + 0xc]
0x00535769: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x0053576F: fnstsw   ax
0x00535771: test     ah, 0x41
0x00535774: jne      0x535780
0x00535776: fstp     st(0)
0x00535778: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x0053577E: jmp      0x535799
0x00535780: fcom     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00535786: fnstsw   ax
0x00535788: test     ah, 0x41
0x0053578B: je       0x535791
0x0053578D: fstp     st(0)
0x0053578F: fldz     
0x00535791: fstp     dword ptr [esp + 0xc]
0x00535795: fld      dword ptr [esp + 0xc]
0x00535799: fstp     dword ptr [esp + 0xc]
0x0053579D: fld      dword ptr [esp + 0xc]
0x005357A1: fst      dword ptr [esi + 0x1dc]
0x005357A7: fldz     
0x005357A9: fld      st(0)
0x005357AB: fucomp   st(2)
0x005357AD: fnstsw   ax
0x005357AF: test     ah, 0x44
0x005357B2: jp       0x5357c9
0x005357B4: mov      dword ptr [esi + 0x1d8], edi
0x005357BA: fstp     st(1)
0x005357BC: pop      edi
0x005357BD: fstp     st(0)
0x005357BF: mov      dword ptr [esi + 0x1bc], ebx
0x005357C5: pop      esi
0x005357C6: pop      ebx
0x005357C7: pop      ecx
0x005357C8: ret      
0x005357C9: fld      dword ptr [esi + 0x1e4]
0x005357CF: fsub     dword ptr [0xb76120]
0x005357D5: fstp     dword ptr [esp + 0xc]
0x005357D9: fld      dword ptr [esp + 0xc]
0x005357DD: fst      dword ptr [esi + 0x1e4]
0x005357E3: fcompp   
0x005357E5: fnstsw   ax
0x005357E7: test     ah, 0x41
0x005357EA: jp       0x535835
0x005357EC: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x005357F2: sub      esp, 0xc
0x005357F5: fstp     dword ptr [esp + 8]
0x005357F9: fld      dword ptr [0x966d3c] ; [f32=0.1, f64=2, u32=0x3DCCCCCD]
0x005357FF: fstp     dword ptr [esp + 4]
0x00535803: fdiv     qword ptr [0x98a2a8] ; [f32=0, f64=10, u32=0x00000000]
0x00535809: fstp     dword ptr [esp + 0x18]
0x0053580D: fld      dword ptr [esp + 0x18]
0x00535811: fstp     dword ptr [esp]
0x00535814: call     0x509740
0x00535819: fstp     dword ptr [esi + 0x1e4]
0x0053581F: xor      edx, edx
0x00535821: add      esp, 0xc
0x00535824: cmp      dword ptr [esi + 0x1e0], edi
0x0053582A: sete     dl
0x0053582D: mov      dword ptr [esi + 0x1e0], edx
0x00535833: jmp      0x535837
0x00535835: fstp     st(0)
0x00535837: mov      ecx, dword ptr [esi + 8]
0x0053583A: push     edi
0x0053583B: push     edi
0x0053583C: cmp      dword ptr [esi + 0x1e0], edi
0x00535842: je       0x535850
0x00535844: push     ebx
0x00535845: push     ebx
0x00535846: call     0x7f8950
0x0053584B: pop      edi
0x0053584C: pop      esi
0x0053584D: pop      ebx
0x0053584E: pop      ecx
0x0053584F: ret      
0x00535850: push     edi
0x00535851: push     ebx
0x00535852: call     0x7f8950
0x00535857: pop      edi
0x00535858: pop      esi
0x00535859: pop      ebx
0x0053585A: pop      ecx
0x0053585B: ret      
0x0053585C: int3     
0x0053585D: int3     
0x0053585E: int3     
0x0053585F: int3     
0x00535860: mov      eax, 1
0x00535865: cmp      dword ptr [esp + 4], eax
0x00535869: jne      0x53588b
0x0053586B: fld1     
0x0053586D: push     0
0x0053586F: push     0
0x00535871: fstp     dword ptr [ecx + 0x1d4]
0x00535877: push     0
0x00535879: mov      dword ptr [ecx + 0x1d0], eax
0x0053587F: mov      ecx, dword ptr [ecx + 8]
0x00535882: push     eax
0x00535883: call     0x7f8950
0x00535888: ret      4
0x0053588B: push     eax
0x0053588C: push     0
0x0053588E: push     eax
0x0053588F: mov      dword ptr [ecx + 0x1d0], 0
0x00535899: mov      ecx, dword ptr [ecx + 8]
0x0053589C: push     eax
0x0053589D: call     0x7f8950
0x005358A2: ret      4
0x005358A5: int3     
0x005358A6: int3     
0x005358A7: int3     
0x005358A8: int3     
0x005358A9: int3     
0x005358AA: int3     
0x005358AB: int3     
0x005358AC: int3     
0x005358AD: int3     
0x005358AE: int3     
0x005358AF: int3     

--- CPickUp::vfunc_13 @ 0x005358B0 ---
0x005358B0: mov      eax, dword ptr [ecx + 8]
0x005358B3: movzx    edx, byte ptr [eax + 1]
0x005358B7: mov      eax, dword ptr [eax + 4]
0x005358BA: mov      eax, dword ptr [eax + 0x34]
0x005358BD: cmp      dword ptr [eax + edx*4], 0
0x005358C1: je       0x5358df
0x005358C3: mov      eax, dword ptr [ecx + 8]
0x005358C6: movzx    ecx, byte ptr [eax + 1]
0x005358CA: mov      edx, dword ptr [eax + 4]
0x005358CD: mov      edx, dword ptr [edx + 0x34]
0x005358D0: mov      ecx, dword ptr [edx + ecx*4]
0x005358D3: mov      edx, dword ptr [ecx + 0x98]
0x005358D9: mov      dword ptr [edx + 0x11c], eax
0x005358DF: ret      

--- CPickUp::vfunc_7 @ 0x005358E0 ---
0x005358E0: cmp      dword ptr [esp + 4], 0
0x005358E5: jne      0x535b80
0x005358EB: mov      eax, dword ptr [ecx + 8]
0x005358EE: movzx    edx, byte ptr [eax + 1]
0x005358F2: push     ebp
0x005358F3: push     esi
0x005358F4: mov      esi, dword ptr [eax + 4]
0x005358F7: mov      esi, dword ptr [esi + 0x38]
0x005358FA: mov      edx, dword ptr [esi + edx*4]
0x005358FD: lea      ebp, [edx + 0x38]
0x00535900: mov      dword ptr [ecx + 0x1b0], ebp
0x00535906: mov      edx, dword ptr [ebp]
0x00535909: mov      dword ptr [ecx + 0x1b4], edx
0x0053590F: test     edx, edx
0x00535911: jne      0x535b7e
0x00535917: push     ebx
0x00535918: push     edi
0x00535919: test     ebp, ebp
0x0053591B: je       0x535abd
0x00535921: cmp      byte ptr [ebp + 0x60], dl
0x00535924: je       0x535abd
0x0053592A: movzx    edx, byte ptr [eax + 1]
0x0053592E: mov      esi, dword ptr [eax + 4]
0x00535931: mov      esi, dword ptr [esi + 0x64]
0x00535934: lea      esi, [esi + edx*2]
0x00535937: mov      dl, byte ptr [esi]
0x00535939: cmp      dl, 0xff
0x0053593C: je       0x535abd
0x00535942: mov      edi, dword ptr [0xb78a28]
0x00535948: movzx    esi, byte ptr [esi + 1]
0x0053594C: movzx    edx, dl
0x0053594F: lea      edx, [edx + edx*2]
0x00535952: mov      edx, dword ptr [edi + edx*4 + 8]
0x00535956: mov      edx, dword ptr [edx + 0x78]
0x00535959: cmp      dword ptr [edx + esi*4], 0
0x0053595D: je       0x535abd
0x00535963: movzx    edx, byte ptr [eax + 1]
0x00535967: mov      eax, dword ptr [eax + 4]
0x0053596A: mov      eax, dword ptr [eax + 0x64]
0x0053596D: lea      edx, [eax + edx*2]
0x00535970: mov      al, byte ptr [edx]
0x00535972: cmp      al, 0xff
0x00535974: jne      0x53597a
0x00535976: xor      eax, eax
0x00535978: jmp      0x53598e
0x0053597A: movzx    edx, byte ptr [edx + 1]
0x0053597E: movzx    eax, al
0x00535981: lea      eax, [eax + eax*2]
0x00535984: mov      eax, dword ptr [edi + eax*4 + 8]
0x00535988: mov      eax, dword ptr [eax + 0x78]
0x0053598B: mov      eax, dword ptr [eax + edx*4]
0x0053598E: movzx    edx, byte ptr [eax + 1]
0x00535992: mov      eax, dword ptr [eax + 4]
0x00535995: mov      eax, dword ptr [eax + 0x64]
0x00535998: lea      edx, [eax + edx*2]
0x0053599B: mov      al, byte ptr [edx]
0x0053599D: cmp      al, 0xff
0x0053599F: je       0x535abd
0x005359A5: movzx    edx, byte ptr [edx + 1]
0x005359A9: movzx    eax, al
0x005359AC: lea      eax, [eax + eax*2]
0x005359AF: mov      eax, dword ptr [edi + eax*4 + 8]
0x005359B3: mov      eax, dword ptr [eax + 0x78]
0x005359B6: cmp      dword ptr [eax + edx*4], 0
0x005359BA: je       0x535abd
0x005359C0: xor      ebx, ebx
0x005359C2: mov      dword ptr [0xb1bbf0], ebx
0x005359C8: mov      eax, dword ptr [ecx + 8]
0x005359CB: movzx    edx, byte ptr [eax + 1]
0x005359CF: mov      eax, dword ptr [eax + 4]
0x005359D2: mov      eax, dword ptr [eax + 0x64]
0x005359D5: lea      eax, [eax + edx*2]
0x005359D8: mov      dl, byte ptr [eax]
0x005359DA: cmp      dl, 0xff
0x005359DD: jne      0x5359e3
0x005359DF: xor      eax, eax
0x005359E1: jmp      0x5359f7
0x005359E3: movzx    eax, byte ptr [eax + 1]
0x005359E7: movzx    edx, dl
0x005359EA: lea      edx, [edx + edx*2]
0x005359ED: mov      edx, dword ptr [edi + edx*4 + 8]
0x005359F1: mov      edx, dword ptr [edx + 0x78]
0x005359F4: mov      eax, dword ptr [edx + eax*4]
0x005359F7: movzx    edx, byte ptr [eax + 1]
0x005359FB: mov      eax, dword ptr [eax + 4]
0x005359FE: mov      eax, dword ptr [eax + 0x64]
0x00535A01: lea      edx, [eax + edx*2]
0x00535A04: mov      al, byte ptr [edx]
0x00535A06: cmp      al, 0xff
0x00535A08: jne      0x535a0e
0x00535A0A: xor      eax, eax
0x00535A0C: jmp      0x535a22
0x00535A0E: movzx    edx, byte ptr [edx + 1]
0x00535A12: movzx    eax, al
0x00535A15: lea      eax, [eax + eax*2]
0x00535A18: mov      eax, dword ptr [edi + eax*4 + 8]
0x00535A1C: mov      eax, dword ptr [eax + 0x78]
0x00535A1F: mov      eax, dword ptr [eax + edx*4]
0x00535A22: movzx    edx, byte ptr [eax + 1]
0x00535A26: mov      eax, dword ptr [eax + 4]
0x00535A29: mov      eax, dword ptr [eax + 0x58]
0x00535A2C: lea      edx, [eax + edx*2]
0x00535A2F: mov      al, byte ptr [edx]
0x00535A31: cmp      al, 0xff
0x00535A33: jne      0x535a39
0x00535A35: xor      esi, esi
0x00535A37: jmp      0x535a4d
0x00535A39: movzx    edx, byte ptr [edx + 1]
0x00535A3D: movzx    eax, al
0x00535A40: lea      eax, [eax + eax*2]
0x00535A43: mov      eax, dword ptr [edi + eax*4 + 8]
0x00535A47: mov      eax, dword ptr [eax + 0x78]
0x00535A4A: mov      esi, dword ptr [eax + edx*4]
0x00535A4D: test     esi, esi
0x00535A4F: je       0x535aca
0x00535A51: mov      eax, dword ptr [ecx + 8]
0x00535A54: movzx    edx, byte ptr [eax + 1]
0x00535A58: mov      eax, dword ptr [eax + 4]
0x00535A5B: mov      eax, dword ptr [eax + 0x64]
0x00535A5E: lea      edx, [eax + edx*2]
0x00535A61: mov      al, byte ptr [edx]
0x00535A63: cmp      al, 0xff
0x00535A65: jne      0x535a6b
0x00535A67: xor      eax, eax
0x00535A69: jmp      0x535a7f
0x00535A6B: movzx    edx, byte ptr [edx + 1]
0x00535A6F: movzx    eax, al
0x00535A72: lea      eax, [eax + eax*2]
0x00535A75: mov      eax, dword ptr [edi + eax*4 + 8]
0x00535A79: mov      eax, dword ptr [eax + 0x78]
0x00535A7C: mov      eax, dword ptr [eax + edx*4]
0x00535A7F: cmp      esi, eax
0x00535A81: je       0x535aca
0x00535A83: movzx    edx, byte ptr [esi + 1]
0x00535A87: mov      eax, dword ptr [esi + 4]
0x00535A8A: mov      eax, dword ptr [eax + 0x5c]
0x00535A8D: lea      edx, [eax + edx*2]
0x00535A90: mov      al, byte ptr [edx]
0x00535A92: cmp      al, 0xff
0x00535A94: jne      0x535a9a
0x00535A96: xor      eax, eax
0x00535A98: jmp      0x535aae
0x00535A9A: movzx    edx, byte ptr [edx + 1]
0x00535A9E: movzx    eax, al
0x00535AA1: lea      eax, [eax + eax*2]
0x00535AA4: mov      eax, dword ptr [edi + eax*4 + 8]
0x00535AA8: mov      eax, dword ptr [eax + 0x78]
0x00535AAB: mov      eax, dword ptr [eax + edx*4]
0x00535AAE: inc      ebx
0x00535AAF: mov      esi, eax
0x00535AB1: mov      dword ptr [0xb1bbf0], ebx
0x00535AB7: test     eax, eax
0x00535AB9: jne      0x535a51
0x00535ABB: jmp      0x535aca
0x00535ABD: mov      ebx, dword ptr [0xb1bbf0]
0x00535AC3: inc      ebx
0x00535AC4: mov      dword ptr [0xb1bbf0], ebx
0x00535ACA: imul     ebx, ebx, 0x343fd
0x00535AD0: add      ebx, 0x269ec3
0x00535AD6: mov      eax, ebx
0x00535AD8: mov      dword ptr [0xb01b34], eax
0x00535ADD: shr      eax, 0x10
0x00535AE0: and      eax, 0x7fff
0x00535AE5: and      eax, 0x80000003
0x00535AEA: jns      0x535af1
0x00535AEC: dec      eax
0x00535AED: or       eax, 0xfffffffc
0x00535AF0: inc      eax
0x00535AF1: inc      eax
0x00535AF2: sub      eax, 1
0x00535AF5: pop      edi
0x00535AF6: pop      ebx
0x00535AF7: je       0x535b63
0x00535AF9: sub      eax, 1
0x00535AFC: je       0x535b43
0x00535AFE: sub      eax, 1
0x00535B01: je       0x535b23
0x00535B03: mov      dword ptr [ecx + 0x1b4], 4
0x00535B0D: mov      edx, dword ptr [ebp + 0x3c]
0x00535B10: mov      eax, dword ptr [ebp + 0x38]
0x00535B13: push     edx
0x00535B14: mov      edx, dword ptr [ebp + 0x2c]
0x00535B17: push     eax
0x00535B18: push     edx
0x00535B19: call     0x5353d0
0x00535B1E: pop      esi
0x00535B1F: pop      ebp
0x00535B20: ret      4
0x00535B23: mov      dword ptr [ecx + 0x1b4], 3
0x00535B2D: mov      eax, dword ptr [ebp + 0x50]
0x00535B30: mov      edx, dword ptr [ebp + 0x4c]
0x00535B33: push     eax
0x00535B34: mov      eax, dword ptr [ebp + 0x40]
0x00535B37: push     edx
0x00535B38: push     eax
0x00535B39: call     0x5353d0
0x00535B3E: pop      esi
0x00535B3F: pop      ebp
0x00535B40: ret      4
0x00535B43: mov      dword ptr [ecx + 0x1b4], 2
0x00535B4D: mov      edx, dword ptr [ebp + 0x28]
0x00535B50: mov      eax, dword ptr [ebp + 0x24]
0x00535B53: push     edx
0x00535B54: mov      edx, dword ptr [ebp + 0x18]
0x00535B57: push     eax
0x00535B58: push     edx
0x00535B59: call     0x5353d0
0x00535B5E: pop      esi
0x00535B5F: pop      ebp
0x00535B60: ret      4
0x00535B63: mov      dword ptr [ecx + 0x1b4], 1
0x00535B6D: mov      eax, dword ptr [ebp + 0x14]
0x00535B70: mov      edx, dword ptr [ebp + 0x10]
0x00535B73: push     eax
0x00535B74: mov      eax, dword ptr [ebp + 4]
0x00535B77: push     edx
0x00535B78: push     eax
0x00535B79: call     0x5353d0
0x00535B7E: pop      esi
0x00535B7F: pop      ebp
0x00535B80: ret      4
0x00535B83: int3     
0x00535B84: int3     
0x00535B85: int3     
0x00535B86: int3     
0x00535B87: int3     
0x00535B88: int3     
0x00535B89: int3     
0x00535B8A: int3     
0x00535B8B: int3     
0x00535B8C: int3     
0x00535B8D: int3     
0x00535B8E: int3     
0x00535B8F: int3     
0x00535B90: push     esi
0x00535B91: mov      esi, dword ptr [ecx + 0x1b0]
0x00535B97: push     edi
0x00535B98: add      esi, 0x54
0x00535B9B: lea      edi, [esi + 8]
0x00535B9E: mov      ecx, edi
0x00535BA0: call     0x7bfe00
0x00535BA5: test     eax, eax
0x00535BA7: je       0x535bd4
0x00535BA9: mov      ecx, edi
0x00535BAB: call     0x7bfe00
0x00535BB0: test     eax, eax
0x00535BB2: je       0x535bd0
0x00535BB4: movzx    eax, byte ptr [edi]
0x00535BB7: mov      ecx, dword ptr [0xb78a28]
0x00535BBD: lea      eax, [eax + eax*2]
0x00535BC0: mov      edx, dword ptr [ecx + eax*4 + 8]
0x00535BC4: movzx    eax, byte ptr [edi + 1]
0x00535BC8: mov      ecx, dword ptr [edx + 0x78]
0x00535BCB: mov      eax, dword ptr [ecx + eax*4]
0x00535BCE: jmp      0x535bee
0x00535BD0: xor      eax, eax
0x00535BD2: jmp      0x535bee
0x00535BD4: mov      ecx, dword ptr [0xb79350]
0x00535BDA: test     ecx, ecx
0x00535BDC: je       0x535c44
0x00535BDE: mov      edx, dword ptr [esi + 4]
0x00535BE1: mov      eax, dword ptr [esi]
0x00535BE3: push     edx
0x00535BE4: push     0
0x00535BE6: push     0
0x00535BE8: push     eax
0x00535BE9: call     0x7cd120
0x00535BEE: test     eax, eax
0x00535BF0: je       0x535c44
0x00535BF2: movzx    ecx, byte ptr [eax + 1]
0x00535BF6: mov      edx, dword ptr [eax + 4]
0x00535BF9: mov      eax, dword ptr [edx + 0x14]
0x00535BFC: lea      ecx, [ecx + ecx*8]
0x00535BFF: lea      eax, [eax + ecx*4]
0x00535C02: mov      ecx, 0x2b
0x00535C07: cmp      byte ptr [eax + 0x14], cl
0x00535C0A: jne      0x535c12
0x00535C0C: mov      eax, dword ptr [eax + 4]
0x00535C0F: pop      edi
0x00535C10: pop      esi
0x00535C11: ret      
0x00535C12: cmp      byte ptr [eax + 0x15], cl
0x00535C15: jne      0x535c1d
0x00535C17: mov      eax, dword ptr [eax + 8]
0x00535C1A: pop      edi
0x00535C1B: pop      esi
0x00535C1C: ret      
0x00535C1D: cmp      byte ptr [eax + 0x16], cl
0x00535C20: jne      0x535c28
0x00535C22: mov      eax, dword ptr [eax + 0xc]
0x00535C25: pop      edi
0x00535C26: pop      esi
0x00535C27: ret      
0x00535C28: cmp      byte ptr [eax + 0x17], cl
0x00535C2B: jne      0x535c33
0x00535C2D: mov      eax, dword ptr [eax + 0x10]
0x00535C30: pop      edi
0x00535C31: pop      esi
0x00535C32: ret      
0x00535C33: mov      eax, dword ptr [eax]
0x00535C35: test     eax, eax
0x00535C37: je       0x535c44
0x00535C39: push     ecx
0x00535C3A: mov      ecx, eax
0x00535C3C: call     0x461400
0x00535C41: pop      edi
0x00535C42: pop      esi
0x00535C43: ret      
0x00535C44: pop      edi
0x00535C45: xor      eax, eax
0x00535C47: pop      esi
0x00535C48: ret      
0x00535C49: int3     
0x00535C4A: int3     
0x00535C4B: int3     
0x00535C4C: int3     
0x00535C4D: int3     
0x00535C4E: int3     
0x00535C4F: int3     

--- CPickUp::vfunc_0 @ 0x00535C50 ---
0x00535C50: push     esi
0x00535C51: mov      esi, ecx
0x00535C53: mov      dword ptr [esi], 0x98a1a0
0x00535C59: call     0x506b40
0x00535C5E: test     byte ptr [esp + 8], 1
0x00535C63: je       0x535c6e
0x00535C65: push     esi
0x00535C66: call     0x688fb0
0x00535C6B: add      esp, 4
0x00535C6E: mov      eax, esi
0x00535C70: pop      esi
0x00535C71: ret      4
0x00535C74: int3     
0x00535C75: int3     
0x00535C76: int3     
0x00535C77: int3     
0x00535C78: int3     
0x00535C79: int3     
0x00535C7A: int3     
0x00535C7B: int3     
0x00535C7C: int3     
0x00535C7D: int3     
0x00535C7E: int3     
0x00535C7F: int3     
0x00535C80: push     -1
0x00535C82: push     0x9453a4
0x00535C87: mov      eax, dword ptr fs:[0]
0x00535C8D: push     eax
0x00535C8E: push     ecx
0x00535C8F: push     esi
0x00535C90: mov      eax, dword ptr [0xb089c8]
0x00535C95: xor      eax, esp
0x00535C97: push     eax
0x00535C98: lea      eax, [esp + 0xc]
0x00535C9C: mov      dword ptr fs:[0], eax
0x00535CA2: mov      esi, ecx
0x00535CA4: mov      dword ptr [esp + 8], esi
0x00535CA8: mov      dword ptr [esi], 0x98a2d8
0x00535CAE: mov      eax, dword ptr [esi + 0x1ac]
0x00535CB4: mov      ecx, dword ptr [eax + 0x1b4]
0x00535CBA: mov      dword ptr [esp + 0x14], 2
0x00535CC2: test     ecx, ecx
0x00535CC4: je       0x535cd4
0x00535CC6: mov      edx, dword ptr [ecx]
0x00535CC8: mov      eax, dword ptr [esi + 0x204]
0x00535CCE: mov      edx, dword ptr [edx + 0x10]
0x00535CD1: push     eax
0x00535CD2: call     edx
0x00535CD4: mov      ecx, dword ptr [esi + 0x204]
0x00535CDA: test     ecx, ecx
0x00535CDC: je       0x535ce6
0x00535CDE: mov      eax, dword ptr [ecx]
0x00535CE0: mov      edx, dword ptr [eax]
0x00535CE2: push     1
0x00535CE4: call     edx
0x00535CE6: mov      eax, dword ptr [esi + 0x200]
0x00535CEC: push     eax
0x00535CED: mov      byte ptr [esp + 0x18], 1
0x00535CF2: call     0x52d1b0
0x00535CF7: mov      dword ptr [esi + 0x200], 0
0x00535D01: add      esp, 4
0x00535D04: mov      ecx, esi
0x00535D06: mov      dword ptr [esi + 0x1b0], 0x9836c0
0x00535D10: mov      dword ptr [esp + 0x14], 0xffffffff
0x00535D18: call     0x506b40
0x00535D1D: mov      ecx, dword ptr [esp + 0xc]
0x00535D21: mov      dword ptr fs:[0], ecx
0x00535D28: pop      ecx
0x00535D29: pop      esi
0x00535D2A: add      esp, 0x10
0x00535D2D: ret      
0x00535D2E: int3     
0x00535D2F: int3     

--- CPlayerBeamFeedback::vfunc_44 @ 0x00535D30 ---
0x00535D30: fldz     
0x00535D32: sub      esp, 0x70
0x00535D35: push     esi
0x00535D36: mov      esi, ecx
0x00535D38: fcom     dword ptr [esi + 0x1f8]
0x00535D3E: fnstsw   ax
0x00535D40: test     ah, 5
0x00535D43: jp       0x535d6e
0x00535D45: fld      dword ptr [esi + 0x1f8]
0x00535D4B: fsub     dword ptr [0xb76120]
0x00535D51: fstp     dword ptr [esp + 8]
0x00535D55: fld      dword ptr [esp + 8]
0x00535D59: fst      dword ptr [esi + 0x1f8]
0x00535D5F: fcomp    st(1)
0x00535D61: fnstsw   ax
0x00535D63: test     ah, 5
0x00535D66: jp       0x535d6e
0x00535D68: fst      dword ptr [esi + 0x1f8]
0x00535D6E: mov      ecx, dword ptr [esi + 0x1a8]
0x00535D74: test     ecx, ecx
0x00535D76: je       0x535f81
0x00535D7C: mov      eax, dword ptr [esi + 0x1ac]
0x00535D82: fld      dword ptr [eax + 0xd48]
0x00535D88: fstp     dword ptr [esp + 8]
0x00535D8C: fld1     
0x00535D8E: fcom     dword ptr [esp + 8]
0x00535D92: fnstsw   ax
0x00535D94: fld      qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x00535D9A: test     ah, 0x44
0x00535D9D: jnp      0x535e1d
0x00535D9F: fxch     st(2)
0x00535DA1: fcom     dword ptr [esi + 0x1f8]
0x00535DA7: fnstsw   ax
0x00535DA9: test     ah, 5
0x00535DAC: jnp      0x535e1b
0x00535DAE: movzx    edx, byte ptr [ecx + 1]
0x00535DB2: fld1     
0x00535DB4: fldz     
0x00535DB6: movzx    eax, byte ptr [ecx + 2]
0x00535DBA: fsub     st(1), st(0)
0x00535DBC: fmul     st(4)
0x00535DBE: movzx    ecx, byte ptr [ecx]
0x00535DC1: mov      dword ptr [esp + 4], edx
0x00535DC5: fild     dword ptr [esp + 4]
0x00535DC9: mov      dword ptr [esp + 4], eax
0x00535DCD: fmul     st(2)
0x00535DCF: fld      qword ptr [0x98a3e0] ; [f32=0, f64=0.00390625, u32=0x00000000]
0x00535DD5: fmul     st(1), st(0)
0x00535DD7: fxch     st(1)
0x00535DD9: fadd     st(2)
0x00535DDB: fstp     dword ptr [esp + 0xc]
0x00535DDF: fild     dword ptr [esp + 4]
0x00535DE3: mov      dword ptr [esp + 4], ecx
0x00535DE7: fmul     st(3)
0x00535DE9: fmul     st(1)
0x00535DEB: fadd     st(2)
0x00535DED: fstp     dword ptr [esp + 0x10]
0x00535DF1: fild     dword ptr [esp + 4]
0x00535DF5: fmulp    st(3)
0x00535DF7: fmulp    st(2)
0x00535DF9: faddp    st(1)
0x00535DFB: fstp     dword ptr [esp + 0x14]
0x00535DFF: fld      dword ptr [esp + 0xc]
0x00535E03: fstp     dword ptr [esp + 0x18]
0x00535E07: fld      dword ptr [esp + 0x10]
0x00535E0B: fstp     dword ptr [esp + 0x1c]
0x00535E0F: fld      dword ptr [0x98a2b0] ; [f32=0.5, u32=0x3F000000]
0x00535E15: fstp     dword ptr [esp + 0x20]
0x00535E19: jmp      0x535e3d
0x00535E1B: fxch     st(2)
0x00535E1D: fld      dword ptr [0x98a2b0] ; [f32=0.5, u32=0x3F000000]
0x00535E23: fst      dword ptr [esp + 0x14]
0x00535E27: fst      dword ptr [esp + 0x18]
0x00535E2B: fst      dword ptr [esp + 0x1c]
0x00535E2F: fstp     dword ptr [esp + 0x20]
0x00535E33: fxch     st(1)
0x00535E35: fst      dword ptr [esp + 8]
0x00535E39: fxch     st(1)
0x00535E3B: fxch     st(2)
0x00535E3D: fld      dword ptr [esi + 0x1f8]
0x00535E43: fld      dword ptr [0xafce38]
0x00535E49: fmulp    st(4)
0x00535E4B: fdivrp   st(3)
0x00535E4D: fxch     st(2)
0x00535E4F: fstp     dword ptr [esp + 4]
0x00535E53: fld      dword ptr [esp + 4]
0x00535E57: fucom    st(2)
0x00535E59: fnstsw   ax
0x00535E5B: fstp     st(2)
0x00535E5D: test     ah, 0x44
0x00535E60: jp       0x535e6e
0x00535E62: fstp     st(1)
0x00535E64: fstp     dword ptr [esp + 4]
0x00535E68: fld      dword ptr [esp + 4]
0x00535E6C: jmp      0x535e70
0x00535E6E: fstp     st(0)
0x00535E70: push     edi
0x00535E71: sub      esp, 0xc
0x00535E74: fst      dword ptr [esp + 8]
0x00535E78: lea      edi, [esi + 0x1b0]
0x00535E7E: fst      dword ptr [esp + 4]
0x00535E82: mov      ecx, edi
0x00535E84: fstp     dword ptr [esp]
0x00535E87: call     0x52e9e0
0x00535E8C: mov      eax, dword ptr [esi + 0x1f0]
0x00535E92: mov      ecx, dword ptr [esi + 0x1ec]
0x00535E98: lea      edx, [esp + 0x18]
0x00535E9C: push     edx
0x00535E9D: push     eax
0x00535E9E: push     0
0x00535EA0: push     ecx
0x00535EA1: call     0x64c750
0x00535EA6: fld1     
0x00535EA8: mov      eax, dword ptr [esi + 0x1f4]
0x00535EAE: fst      dword ptr [esp + 0x48]
0x00535EB2: mov      ecx, dword ptr [esi + 0x1ec]
0x00535EB8: fstp     dword ptr [esp + 0x4c]
0x00535EBC: fldz     
0x00535EBE: lea      edx, [esp + 0x48]
0x00535EC2: fstp     dword ptr [esp + 0x50]
0x00535EC6: push     edx
0x00535EC7: fld      dword ptr [esp + 0x20]
0x00535ECB: push     eax
0x00535ECC: fmul     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x00535ED2: push     0
0x00535ED4: push     ecx
0x00535ED5: fstp     dword ptr [esp + 0x64]
0x00535ED9: call     0x64c750
0x00535EDE: fldz     
0x00535EE0: mov      edx, dword ptr [esi + 0x1ac]
0x00535EE6: fst      dword ptr [esp + 0x48]
0x00535EEA: add      esp, 0x20
0x00535EED: fst      dword ptr [esp + 0x2c]
0x00535EF1: fld1     
0x00535EF3: fst      dword ptr [esp + 0x30]
0x00535EF7: fst      dword ptr [esp + 0x34]
0x00535EFB: cmp      dword ptr [edx + 0xe20], 0
0x00535F02: je       0x535f10
0x00535F04: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00535F0A: fstp     dword ptr [esp + 0xc]
0x00535F0E: jmp      0x535f14
0x00535F10: fst      dword ptr [esp + 0xc]
0x00535F14: fld      dword ptr [esp + 0xc]
0x00535F18: push     ecx
0x00535F19: fstp     dword ptr [esp + 0x4c]
0x00535F1D: lea      eax, [esp + 0x2c]
0x00535F21: fxch     st(1)
0x00535F23: lea      ecx, [esp + 0x6c]
0x00535F27: fst      dword ptr [esp + 0x50]
0x00535F2B: fstp     dword ptr [esp + 0x54]
0x00535F2F: fstp     dword ptr [esp + 0x58]
0x00535F33: fld      dword ptr [0x9837e4] ; [f32=-1.5708, f64=-1.44959e-06, u32=0xBFC90FDB]
0x00535F39: fstp     dword ptr [esp]
0x00535F3C: push     eax
0x00535F3D: push     ecx
0x00535F3E: call     0x6b0a50
0x00535F43: lea      edx, [esp + 0x54]
0x00535F47: push     edx
0x00535F48: lea      eax, [esp + 0x38]
0x00535F4C: push     eax
0x00535F4D: lea      ecx, [esp + 0x6c]
0x00535F51: push     ecx
0x00535F52: call     0x6b0cd0
0x00535F57: lea      edx, [esp + 0x80]
0x00535F5E: push     edx
0x00535F5F: lea      eax, [esp + 0x74]
0x00535F63: push     eax
0x00535F64: mov      ecx, eax
0x00535F66: push     ecx
0x00535F67: call     0x6b0250
0x00535F6C: add      esp, 0x24
0x00535F6F: lea      edx, [esp + 0x58]
0x00535F73: push     edx
0x00535F74: mov      ecx, edi
0x00535F76: call     0x509670
0x00535F7B: pop      edi
0x00535F7C: pop      esi
0x00535F7D: add      esp, 0x70
0x00535F80: ret      
0x00535F81: fstp     st(0)
0x00535F83: pop      esi
0x00535F84: add      esp, 0x70
0x00535F87: ret      
0x00535F88: int3     
0x00535F89: int3     
0x00535F8A: int3     
0x00535F8B: int3     
0x00535F8C: int3     
0x00535F8D: int3     
0x00535F8E: int3     
0x00535F8F: int3     
0x00535F90: mov      eax, dword ptr [esp + 4]
0x00535F94: mov      ecx, dword ptr [eax + 4]
0x00535F97: push     esi
0x00535F98: mov      esi, dword ptr [esp + 0xc]
0x00535F9C: push     1
0x00535F9E: push     ecx
0x00535F9F: mov      ecx, dword ptr [esi + 8]
0x00535FA2: call     0x7f8390
0x00535FA7: mov      eax, dword ptr [esi + 8]
0x00535FAA: movzx    edx, byte ptr [eax + 1]
0x00535FAE: mov      eax, dword ptr [eax + 4]
0x00535FB1: mov      ecx, dword ptr [eax + 0x18]
0x00535FB4: mov      al, byte ptr [esi + 0x1fc]
0x00535FBA: mov      edx, dword ptr [ecx + edx*4]
0x00535FBD: mov      byte ptr [edx + 2], al
0x00535FC0: pop      esi
0x00535FC1: ret      
0x00535FC2: int3     
0x00535FC3: int3     
0x00535FC4: int3     
0x00535FC5: int3     
0x00535FC6: int3     
0x00535FC7: int3     
0x00535FC8: int3     
0x00535FC9: int3     
0x00535FCA: int3     
0x00535FCB: int3     
0x00535FCC: int3     
0x00535FCD: int3     
0x00535FCE: int3     
0x00535FCF: int3     
0x00535FD0: push     esi
0x00535FD1: mov      esi, dword ptr [esp + 0xc]
0x00535FD5: mov      ecx, dword ptr [esi + 8]
0x00535FD8: push     1
0x00535FDA: push     0
0x00535FDC: call     0x7f8390
0x00535FE1: mov      eax, dword ptr [esi + 8]
0x00535FE4: movzx    ecx, byte ptr [eax + 1]
0x00535FE8: mov      edx, dword ptr [eax + 4]
0x00535FEB: mov      eax, dword ptr [edx + 0x18]