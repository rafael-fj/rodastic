=== CRotasticRope (0x00542FF0 .. 0x00543C20) ===

--- CRotasticRope::ctor @ 0x00542FF0 ---
0x00542FF0: mov      eax, dword ptr [esp + 4]
0x00542FF4: push     esi
0x00542FF5: push     eax
0x00542FF6: mov      esi, ecx
0x00542FF8: call     0x506ab0
0x00542FFD: fldz     
0x00542FFF: xor      eax, eax
0x00543001: fstp     dword ptr [esi + 0x1bc]
0x00543007: mov      dword ptr [esi + 0x1a8], eax
0x0054300D: mov      dword ptr [esi + 0x1ac], eax
0x00543013: mov      dword ptr [esi + 0x1c0], eax
0x00543019: mov      dword ptr [esi + 0x1b0], eax
0x0054301F: mov      dword ptr [esi + 0x1b4], eax
0x00543025: mov      dword ptr [esi + 0x1b8], eax
0x0054302B: mov      dword ptr [esi], 0x98b788
0x00543031: mov      eax, esi
0x00543033: pop      esi
0x00543034: ret      4
0x00543037: int3     
0x00543038: int3     
0x00543039: int3     
0x0054303A: int3     
0x0054303B: int3     
0x0054303C: int3     
0x0054303D: int3     
0x0054303E: int3     
0x0054303F: int3     
0x00543040: push     -1
0x00543042: push     0x946118
0x00543047: mov      eax, dword ptr fs:[0]
0x0054304D: push     eax
0x0054304E: push     ecx
0x0054304F: push     esi
0x00543050: mov      eax, dword ptr [0xb089c8]
0x00543055: xor      eax, esp
0x00543057: push     eax
0x00543058: lea      eax, [esp + 0xc]
0x0054305C: mov      dword ptr fs:[0], eax
0x00543062: mov      esi, ecx
0x00543064: mov      dword ptr [esp + 8], esi
0x00543068: mov      dword ptr [esi], 0x98b788
0x0054306E: mov      eax, dword ptr [esi + 0x1a8]
0x00543074: mov      ecx, dword ptr [eax + 0x1b4]
0x0054307A: mov      dword ptr [esp + 0x14], 0
0x00543082: test     ecx, ecx
0x00543084: je       0x543094
0x00543086: mov      edx, dword ptr [ecx]
0x00543088: mov      eax, dword ptr [esi + 0x1c0]
0x0054308E: mov      edx, dword ptr [edx + 0x10]
0x00543091: push     eax
0x00543092: call     edx
0x00543094: mov      ecx, dword ptr [esi + 0x1c0]
0x0054309A: test     ecx, ecx
0x0054309C: je       0x5430a6
0x0054309E: mov      eax, dword ptr [ecx]
0x005430A0: mov      edx, dword ptr [eax]
0x005430A2: push     1
0x005430A4: call     edx
0x005430A6: mov      ecx, esi
0x005430A8: mov      dword ptr [esp + 0x14], 0xffffffff
0x005430B0: call     0x506b40
0x005430B5: mov      ecx, dword ptr [esp + 0xc]
0x005430B9: mov      dword ptr fs:[0], ecx
0x005430C0: pop      ecx
0x005430C1: pop      esi
0x005430C2: add      esp, 0x10
0x005430C5: ret      
0x005430C6: int3     
0x005430C7: int3     
0x005430C8: int3     
0x005430C9: int3     
0x005430CA: int3     
0x005430CB: int3     
0x005430CC: int3     
0x005430CD: int3     
0x005430CE: int3     
0x005430CF: int3     

--- CRotasticRope::vfunc_43 @ 0x005430D0 ---
0x005430D0: push     ecx
0x005430D1: push     esi
0x005430D2: mov      esi, ecx
0x005430D4: mov      eax, dword ptr [esi + 8]
0x005430D7: movzx    ecx, byte ptr [eax + 1]
0x005430DB: mov      edx, dword ptr [eax + 4]
0x005430DE: mov      edx, dword ptr [edx + 0xc]
0x005430E1: mov      ecx, dword ptr [edx + ecx*4]
0x005430E4: push     edi
0x005430E5: mov      dl, 2
0x005430E7: test     ecx, 0x100
0x005430ED: jne      0x543127
0x005430EF: movzx    ecx, byte ptr [eax + 1]
0x005430F3: mov      edi, dword ptr [eax + 4]
0x005430F6: mov      edi, dword ptr [edi + 0x34]
0x005430F9: mov      ecx, dword ptr [edi + ecx*4]
0x005430FC: test     byte ptr [ecx + 0x5c], dl
0x005430FF: jne      0x543127
0x00543101: mov      eax, dword ptr [esi + 0x1ac]
0x00543107: push     0
0x00543109: lea      edx, [eax + 0x4c]
0x0054310C: lea      ecx, [eax + 0x8c]
0x00543112: push     0
0x00543114: mov      dword ptr [eax + 0xd0], edx
0x0054311A: mov      dword ptr [eax + 0xd4], ecx
0x00543120: mov      eax, dword ptr [esi + 8]
0x00543123: push     1
0x00543125: jmp      0x543152
0x00543127: movzx    ecx, byte ptr [eax + 1]
0x0054312B: mov      edi, dword ptr [eax + 4]
0x0054312E: mov      edi, dword ptr [edi + 0xc]
0x00543131: test     dword ptr [edi + ecx*4], 0x100
0x00543138: je       0x543169
0x0054313A: movzx    ecx, byte ptr [eax + 1]
0x0054313E: mov      edi, dword ptr [eax + 4]
0x00543141: mov      edi, dword ptr [edi + 0x34]
0x00543144: mov      ecx, dword ptr [edi + ecx*4]
0x00543147: test     byte ptr [ecx + 0x5c], dl
0x0054314A: je       0x543169
0x0054314C: push     0
0x0054314E: push     0
0x00543150: push     0
0x00543152: movzx    edx, byte ptr [eax + 1]
0x00543156: mov      eax, dword ptr [eax + 4]
0x00543159: mov      ecx, dword ptr [eax + 0x34]
0x0054315C: mov      ecx, dword ptr [ecx + edx*4]
0x0054315F: mov      edx, dword ptr [ecx]
0x00543161: mov      eax, dword ptr [edx + 0x128]
0x00543167: call     eax
0x00543169: fldz     
0x0054316B: fcom     dword ptr [esi + 0x1bc]
0x00543171: fnstsw   ax
0x00543173: test     ah, 5
0x00543176: jp       0x5431a5
0x00543178: fld      dword ptr [esi + 0x1bc]
0x0054317E: fsub     dword ptr [0xb76120]
0x00543184: fstp     dword ptr [esp + 8]
0x00543188: fld      dword ptr [esp + 8]
0x0054318C: fst      dword ptr [esi + 0x1bc]
0x00543192: fcomp    st(1)
0x00543194: fnstsw   ax
0x00543196: test     ah, 5
0x00543199: jp       0x5431a5
0x0054319B: pop      edi
0x0054319C: fstp     dword ptr [esi + 0x1bc]
0x005431A2: pop      esi
0x005431A3: pop      ecx
0x005431A4: ret      
0x005431A5: pop      edi
0x005431A6: fstp     st(0)
0x005431A8: pop      esi
0x005431A9: pop      ecx
0x005431AA: ret      
0x005431AB: int3     
0x005431AC: int3     
0x005431AD: int3     
0x005431AE: int3     
0x005431AF: int3     
0x005431B0: mov      eax, dword ptr [esp + 8]
0x005431B4: mov      ecx, dword ptr [eax + 8]
0x005431B7: push     0
0x005431B9: push     0
0x005431BB: call     0x7f8390
0x005431C0: ret      
0x005431C1: int3     
0x005431C2: int3     
0x005431C3: int3     
0x005431C4: int3     
0x005431C5: int3     
0x005431C6: int3     
0x005431C7: int3     
0x005431C8: int3     
0x005431C9: int3     
0x005431CA: int3     
0x005431CB: int3     
0x005431CC: int3     
0x005431CD: int3     
0x005431CE: int3     
0x005431CF: int3     
0x005431D0: mov      eax, dword ptr [esp + 8]
0x005431D4: mov      ecx, dword ptr [eax + 8]
0x005431D7: push     0
0x005431D9: push     0
0x005431DB: call     0x7f8390
0x005431E0: ret      
0x005431E1: int3     
0x005431E2: int3     
0x005431E3: int3     
0x005431E4: int3     
0x005431E5: int3     
0x005431E6: int3     
0x005431E7: int3     
0x005431E8: int3     
0x005431E9: int3     
0x005431EA: int3     
0x005431EB: int3     
0x005431EC: int3     
0x005431ED: int3     
0x005431EE: int3     
0x005431EF: int3     
0x005431F0: mov      eax, dword ptr [esp + 4]
0x005431F4: mov      ecx, dword ptr [eax + 4]
0x005431F7: mov      edx, dword ptr [esp + 8]
0x005431FB: push     0
0x005431FD: push     ecx
0x005431FE: mov      ecx, dword ptr [edx + 8]
0x00543201: call     0x7f8390
0x00543206: ret      
0x00543207: int3     
0x00543208: int3     
0x00543209: int3     
0x0054320A: int3     
0x0054320B: int3     
0x0054320C: int3     
0x0054320D: int3     
0x0054320E: int3     
0x0054320F: int3     
0x00543210: fld      dword ptr [edx]
0x00543212: fsub     dword ptr [ecx]
0x00543214: fstp     dword ptr [eax]
0x00543216: fld      dword ptr [edx + 4]
0x00543219: fsub     dword ptr [ecx + 4]
0x0054321C: fstp     dword ptr [eax + 4]
0x0054321F: fld      dword ptr [edx + 8]
0x00543222: fsub     dword ptr [ecx + 8]
0x00543225: fstp     dword ptr [eax + 8]
0x00543228: fld      dword ptr [edx + 0xc]
0x0054322B: fsub     dword ptr [ecx + 0xc]
0x0054322E: fstp     dword ptr [eax + 0xc]
0x00543231: ret      
0x00543232: int3     
0x00543233: int3     
0x00543234: int3     
0x00543235: int3     
0x00543236: int3     
0x00543237: int3     
0x00543238: int3     
0x00543239: int3     
0x0054323A: int3     
0x0054323B: int3     
0x0054323C: int3     
0x0054323D: int3     
0x0054323E: int3     
0x0054323F: int3     
0x00543240: push     -1
0x00543242: push     0x946143
0x00543247: mov      eax, dword ptr fs:[0]
0x0054324D: push     eax
0x0054324E: sub      esp, 0x54
0x00543251: push     ebx
0x00543252: push     esi
0x00543253: push     edi
0x00543254: mov      eax, dword ptr [0xb089c8]
0x00543259: xor      eax, esp
0x0054325B: push     eax
0x0054325C: lea      eax, [esp + 0x64]
0x00543260: mov      dword ptr fs:[0], eax
0x00543266: mov      esi, ecx
0x00543268: mov      ecx, dword ptr [esp + 0x74]
0x0054326C: test     dword ptr [ecx + 0x20], 0x800000
0x00543273: je       0x5433cf
0x00543279: cmp      dword ptr [esi + 0xd8], 0
0x00543280: je       0x5433cf
0x00543286: mov      eax, dword ptr [esi + 0xd4]
0x0054328C: mov      edi, dword ptr [esp + 0x7c]
0x00543290: mov      edx, eax
0x00543292: sub      edx, esi
0x00543294: sub      edx, 0x8c
0x0054329A: and      edx, 0xfffffffc
0x0054329D: cmp      edx, 0x40
0x005432A0: jge      0x5432ab
0x005432A2: mov      dword ptr [eax], edi
0x005432A4: add      dword ptr [esi + 0xd4], 4
0x005432AB: lea      eax, [esi + 0x4c]
0x005432AE: cmp      eax, dword ptr [esi + 0xd0]
0x005432B4: je       0x5432c9
0x005432B6: cmp      dword ptr [eax], edi
0x005432B8: je       0x5433cf
0x005432BE: add      eax, 4
0x005432C1: cmp      eax, dword ptr [esi + 0xd0]
0x005432C7: jne      0x5432b6
0x005432C9: mov      eax, dword ptr [esp + 0x78]
0x005432CD: mov      ebx, dword ptr [edi + 0x11c]
0x005432D3: mov      dword ptr [esp + 0x1c], eax
0x005432D7: mov      eax, dword ptr [esp + 0x80]
0x005432DE: fld      dword ptr [eax + 0x20]
0x005432E1: mov      dword ptr [esp + 0x18], ecx
0x005432E5: fstp     dword ptr [esp + 0x24]
0x005432E9: mov      cl, byte ptr [esp + 0x88]
0x005432F0: fld      dword ptr [eax + 0x24]
0x005432F3: push     ebx
0x005432F4: fstp     dword ptr [esp + 0x2c]
0x005432F8: mov      dword ptr [esp + 0x24], edi
0x005432FC: fld      dword ptr [eax + 0x28]
0x005432FF: mov      byte ptr [esp + 0x60], cl
0x00543303: fstp     dword ptr [esp + 0x30]
0x00543307: fld      dword ptr [eax + 0x2c]
0x0054330A: fstp     dword ptr [esp + 0x34]
0x0054330E: fld      dword ptr [eax + 0x10]
0x00543311: fstp     dword ptr [esp + 0x38]
0x00543315: fld      dword ptr [eax + 0x14]
0x00543318: fstp     dword ptr [esp + 0x3c]
0x0054331C: fld      dword ptr [eax + 0x18]
0x0054331F: fstp     dword ptr [esp + 0x40]
0x00543323: fld      dword ptr [eax + 0x1c]
0x00543326: fstp     dword ptr [esp + 0x44]
0x0054332A: fld      dword ptr [eax + 0x30]
0x0054332D: fstp     dword ptr [esp + 0x58]
0x00543331: call     0x516190
0x00543336: add      esp, 4
0x00543339: test     eax, eax
0x0054333B: je       0x543377
0x0054333D: mov      edx, dword ptr [esi + 0xd8]
0x00543343: mov      eax, dword ptr [edx + 0x1a8]
0x00543349: mov      ecx, dword ptr [eax + 0x1b4]
0x0054334F: lea      eax, [esp + 0x18]
0x00543353: mov      dword ptr [esp + 0x10], 0x98b88c
0x0054335B: mov      dword ptr [esp + 0x14], eax
0x0054335F: mov      edx, dword ptr [ecx]
0x00543361: mov      edx, dword ptr [edx + 8]
0x00543364: push     1
0x00543366: lea      eax, [esp + 0x14]
0x0054336A: push     eax
0x0054336B: mov      dword ptr [esp + 0x74], 0
0x00543373: call     edx
0x00543375: jmp      0x5433cf
0x00543377: push     ebx
0x00543378: call     0x510680
0x0054337D: add      esp, 4
0x00543380: test     eax, eax
0x00543382: jne      0x5433cf
0x00543384: movzx    eax, word ptr [edi + 0x2e]
0x00543388: mov      ecx, dword ptr [edi + 0x30]
0x0054338B: mov      edx, dword ptr [ecx + 0x20]
0x0054338E: test     dword ptr [edx + eax*8], 0x400000
0x00543395: je       0x5433cf
0x00543397: mov      eax, dword ptr [esi + 0xd8]
0x0054339D: mov      eax, dword ptr [eax + 0x1a8]
0x005433A3: mov      ecx, dword ptr [eax + 0x1b4]
0x005433A9: lea      edx, [esp + 0x18]
0x005433AD: mov      dword ptr [esp + 0x10], 0x98b8a0
0x005433B5: mov      dword ptr [esp + 0x14], edx
0x005433B9: mov      eax, dword ptr [ecx]
0x005433BB: mov      eax, dword ptr [eax + 8]
0x005433BE: push     1
0x005433C0: lea      edx, [esp + 0x14]
0x005433C4: push     edx
0x005433C5: mov      dword ptr [esp + 0x74], 1
0x005433CD: call     eax
0x005433CF: mov      eax, 1
0x005433D4: mov      ecx, dword ptr [esp + 0x64]
0x005433D8: mov      dword ptr fs:[0], ecx
0x005433DF: pop      ecx
0x005433E0: pop      edi
0x005433E1: pop      esi
0x005433E2: pop      ebx
0x005433E3: add      esp, 0x60
0x005433E6: ret      0x18
0x005433E9: int3     
0x005433EA: int3     
0x005433EB: int3     
0x005433EC: int3     
0x005433ED: int3     
0x005433EE: int3     
0x005433EF: int3     

--- CRotasticRope::vfunc_13 @ 0x005433F0 ---
0x005433F0: push     -1
0x005433F2: push     0x94617b
0x005433F7: mov      eax, dword ptr fs:[0]
0x005433FD: push     eax
0x005433FE: push     ecx
0x005433FF: push     esi
0x00543400: push     edi
0x00543401: mov      eax, dword ptr [0xb089c8]
0x00543406: xor      eax, esp
0x00543408: push     eax
0x00543409: lea      eax, [esp + 0x10]
0x0054340D: mov      dword ptr fs:[0], eax
0x00543413: mov      esi, ecx
0x00543415: mov      eax, dword ptr [esi + 8]
0x00543418: movzx    ecx, byte ptr [eax + 1]
0x0054341C: mov      edx, dword ptr [eax + 4]
0x0054341F: mov      edx, dword ptr [edx + 0x34]
0x00543422: mov      ecx, dword ptr [edx + ecx*4]
0x00543425: test     ecx, ecx
0x00543427: je       0x543442
0x00543429: movzx    ecx, byte ptr [eax + 1]
0x0054342D: mov      edx, dword ptr [eax + 4]
0x00543430: mov      edx, dword ptr [edx + 0x34]
0x00543433: mov      ecx, dword ptr [edx + ecx*4]
0x00543436: mov      ecx, dword ptr [ecx + 0x98]
0x0054343C: mov      dword ptr [ecx + 0x11c], eax
0x00543442: mov      edx, dword ptr [0xb01b28]
0x00543448: push     0
0x0054344A: push     1
0x0054344C: push     0
0x0054344E: push     1
0x00543450: push     0
0x00543452: push     edx
0x00543453: push     0xdc
0x00543458: call     0x688fe0
0x0054345D: mov      edi, eax
0x0054345F: add      esp, 0x1c
0x00543462: mov      dword ptr [esp + 0xc], edi
0x00543466: mov      dword ptr [esp + 0x18], 0
0x0054346E: test     edi, edi
0x00543470: je       0x543487
0x00543472: mov      ecx, edi
0x00543474: call     0x56d800
0x00543479: mov      dword ptr [edi], 0x98b754
0x0054347F: mov      dword ptr [edi + 0xd8], esi
0x00543485: jmp      0x543489
0x00543487: xor      edi, edi
0x00543489: mov      eax, dword ptr [esi + 8]
0x0054348C: mov      dword ptr [esi + 0x1ac], edi
0x00543492: movzx    ecx, byte ptr [eax + 1]
0x00543496: mov      edx, dword ptr [eax + 4]
0x00543499: mov      eax, dword ptr [edx + 0x34]
0x0054349C: mov      ecx, dword ptr [eax + ecx*4]
0x0054349F: mov      edx, dword ptr [ecx]
0x005434A1: mov      eax, dword ptr [edx + 0x100]
0x005434A7: push     edi
0x005434A8: mov      dword ptr [esp + 0x1c], 0xffffffff
0x005434B0: call     eax
0x005434B2: mov      esi, dword ptr [esi + 8]
0x005434B5: mov      edx, dword ptr [esi + 4]
0x005434B8: movzx    ecx, byte ptr [esi + 1]
0x005434BC: mov      eax, dword ptr [edx + 0x34]
0x005434BF: mov      ecx, dword ptr [eax + ecx*4]
0x005434C2: mov      edx, dword ptr [ecx + 0x98]
0x005434C8: mov      dword ptr [edx + 0x11c], esi
0x005434CE: mov      ecx, dword ptr [esp + 0x10]
0x005434D2: mov      dword ptr fs:[0], ecx
0x005434D9: pop      ecx
0x005434DA: pop      edi
0x005434DB: pop      esi
0x005434DC: add      esp, 0x10
0x005434DF: ret      

--- CRotasticRope::vfunc_7 @ 0x005434E0 ---
0x005434E0: cmp      dword ptr [esp + 4], 0
0x005434E5: push     esi
0x005434E6: mov      esi, ecx
0x005434E8: jne      0x5435c5
0x005434EE: mov      ecx, dword ptr [esi + 0x34]
0x005434F1: mov      eax, dword ptr [ecx]
0x005434F3: mov      edx, dword ptr [eax + 0x7c]
0x005434F6: push     ebp
0x005434F7: push     edi
0x005434F8: push     0
0x005434FA: call     edx
0x005434FC: push     0
0x005434FE: push     1
0x00543500: push     0
0x00543502: mov      ebp, eax
0x00543504: mov      eax, dword ptr [0xb01b28]
0x00543509: push     1
0x0054350B: push     0
0x0054350D: push     eax
0x0054350E: xor      ecx, ecx
0x00543510: mov      eax, ebp
0x00543512: mov      edx, 4
0x00543517: mul      edx
0x00543519: seto     cl
0x0054351C: neg      ecx
0x0054351E: or       ecx, eax
0x00543520: push     ecx
0x00543521: call     0x688fe0
0x00543526: mov      edi, eax
0x00543528: lea      eax, [ebp*4]
0x0054352F: push     eax
0x00543530: push     0
0x00543532: push     edi
0x00543533: call     0x8eb080
0x00543538: mov      ecx, dword ptr [esi + 0x34]
0x0054353B: mov      edx, dword ptr [ecx]
0x0054353D: mov      eax, dword ptr [edx + 0x80]
0x00543543: add      esp, 0x28
0x00543546: push     0
0x00543548: push     ebp
0x00543549: push     edi
0x0054354A: call     eax
0x0054354C: mov      ecx, dword ptr [esi + 0x34]
0x0054354F: mov      edx, dword ptr [ecx + 0x64]
0x00543552: mov      eax, dword ptr [edi]
0x00543554: push     0
0x00543556: push     edx
0x00543557: push     eax
0x00543558: call     0x64c490
0x0054355D: push     -1
0x0054355F: push     0
0x00543561: push     0x98b734
0x00543566: mov      dword ptr [esi + 0x1b0], eax
0x0054356C: call     0x691560
0x00543571: mov      ecx, dword ptr [esi + 0x1b0]
0x00543577: movzx    edx, byte ptr [ecx + 0xc]
0x0054357B: push     eax
0x0054357C: mov      eax, dword ptr [ecx]
0x0054357E: push     0
0x00543580: push     edx
0x00543581: push     eax
0x00543582: call     0x648070
0x00543587: push     -1
0x00543589: push     0
0x0054358B: push     0x98b744
0x00543590: mov      dword ptr [esi + 0x1b4], eax
0x00543596: call     0x691560
0x0054359B: mov      ecx, dword ptr [esi + 0x1b0]
0x005435A1: movzx    edx, byte ptr [ecx + 0xc]
0x005435A5: push     eax
0x005435A6: mov      eax, dword ptr [ecx]
0x005435A8: push     0
0x005435AA: push     edx
0x005435AB: push     eax
0x005435AC: call     0x648130
0x005435B1: add      esp, 0x44
0x005435B4: push     edi
0x005435B5: mov      dword ptr [esi + 0x1b8], eax
0x005435BB: call     0x688fb0
0x005435C0: add      esp, 4
0x005435C3: pop      edi
0x005435C4: pop      ebp
0x005435C5: pop      esi
0x005435C6: ret      4
0x005435C9: int3     
0x005435CA: int3     
0x005435CB: int3     
0x005435CC: int3     
0x005435CD: int3     
0x005435CE: int3     
0x005435CF: int3     

--- CRotasticRope::vfunc_44 @ 0x005435D0 ---
0x005435D0: sub      esp, 0x58
0x005435D3: push     esi
0x005435D4: push     edi
0x005435D5: mov      edi, ecx
0x005435D7: mov      ecx, dword ptr [edi + 0x1a8]
0x005435DD: mov      esi, dword ptr [ecx + 0x23c]
0x005435E3: test     esi, esi
0x005435E5: je       0x54397f
0x005435EB: fldz     
0x005435ED: movzx    eax, byte ptr [esi + 1]
0x005435F1: mov      edx, dword ptr [esi + 4]
0x005435F4: fst      dword ptr [esp + 0x10]
0x005435F8: fst      dword ptr [esp + 0x14]
0x005435FC: fstp     dword ptr [esp + 0x18]
0x00543600: fld1     
0x00543602: fstp     dword ptr [esp + 0x1c]
0x00543606: mov      edx, dword ptr [edx + 0x1c]
0x00543609: mov      eax, dword ptr [edx + eax*4]
0x0054360C: fld      dword ptr [eax + 0xc]
0x0054360F: add      eax, 0xc
0x00543612: fstp     dword ptr [esp + 0x30]
0x00543616: fld      dword ptr [eax + 4]
0x00543619: fstp     dword ptr [esp + 0x34]
0x0054361D: fld      dword ptr [eax + 8]
0x00543620: fstp     dword ptr [esp + 0x38]
0x00543624: fld      dword ptr [eax + 0xc]
0x00543627: fstp     dword ptr [esp + 0x3c]
0x0054362B: mov      ecx, dword ptr [ecx + 8]
0x0054362E: movzx    eax, byte ptr [ecx + 1]
0x00543632: mov      ecx, dword ptr [ecx + 4]
0x00543635: mov      edx, dword ptr [ecx + 0x1c]
0x00543638: add      eax, eax
0x0054363A: add      eax, eax
0x0054363C: mov      edx, dword ptr [eax + edx]
0x0054363F: test     edx, edx
0x00543641: je       0x543665
0x00543643: push     ebx
0x00543644: mov      ebx, dword ptr [ecx + 0xc]
0x00543647: test     dword ptr [eax + ebx], 0x200
0x0054364E: pop      ebx
0x0054364F: je       0x543665
0x00543651: test     byte ptr [edx + 8], 8
0x00543655: je       0x543665
0x00543657: mov      ecx, dword ptr [ecx + 0x20]
0x0054365A: add      eax, ecx
0x0054365C: cmp      dword ptr [eax], 0
0x0054365F: je       0x543665
0x00543661: mov      eax, dword ptr [eax]
0x00543663: jmp      0x543667
0x00543665: mov      eax, edx
0x00543667: fld      dword ptr [eax + 0xc]
0x0054366A: lea      edx, [esp + 0x10]
0x0054366E: fstp     dword ptr [esp + 0x20]
0x00543672: push     edx
0x00543673: fld      dword ptr [eax + 0x10]
0x00543676: fstp     dword ptr [esp + 0x28]
0x0054367A: fld      dword ptr [eax + 0x14]
0x0054367D: fstp     dword ptr [esp + 0x2c]
0x00543681: fld      dword ptr [eax + 0x18]
0x00543684: mov      eax, edx
0x00543686: fstp     dword ptr [esp + 0x30]
0x0054368A: push     eax
0x0054368B: fld      dword ptr [esp + 0x28]
0x0054368F: fsub     dword ptr [esp + 0x38]
0x00543693: fstp     dword ptr [esp + 0x48]
0x00543697: fld      dword ptr [esp + 0x2c]
0x0054369B: fsub     dword ptr [esp + 0x3c]
0x0054369F: fstp     dword ptr [esp + 0x4c]
0x005436A3: fld      dword ptr [esp + 0x30]
0x005436A7: fsub     dword ptr [esp + 0x40]
0x005436AB: fstp     dword ptr [esp + 0x50]
0x005436AF: fld      dword ptr [esp + 0x34]
0x005436B3: fsub     dword ptr [esp + 0x44]
0x005436B7: fstp     dword ptr [esp + 0x54]
0x005436BB: fld      dword ptr [esp + 0x48]
0x005436BF: fstp     dword ptr [esp + 0x18]
0x005436C3: fld      dword ptr [esp + 0x4c]
0x005436C7: fstp     dword ptr [esp + 0x1c]
0x005436CB: fld      dword ptr [esp + 0x50]
0x005436CF: fstp     dword ptr [esp + 0x20]
0x005436D3: fld      dword ptr [esp + 0x54]
0x005436D7: fstp     dword ptr [esp + 0x24]
0x005436DB: call     0x6b2160
0x005436E0: movzx    ecx, byte ptr [esi + 1]
0x005436E4: fstp     dword ptr [esp + 0x10]
0x005436E8: mov      edx, dword ptr [esi + 4]
0x005436EB: mov      eax, dword ptr [edx + 0x1c]
0x005436EE: mov      eax, dword ptr [eax + ecx*4]
0x005436F1: mov      ecx, dword ptr [edi + 8]
0x005436F4: add      eax, 0xc
0x005436F7: add      esp, 8
0x005436FA: fld      dword ptr [eax]
0x005436FC: fstp     dword ptr [esp + 0x40]
0x00543700: fld      dword ptr [eax + 4]
0x00543703: fstp     dword ptr [esp + 0x44]
0x00543707: fld      dword ptr [eax + 8]
0x0054370A: movzx    eax, byte ptr [ecx + 1]
0x0054370E: mov      ecx, dword ptr [ecx + 4]
0x00543711: fstp     dword ptr [esp + 0x48]
0x00543715: mov      edx, dword ptr [ecx + 0x1c]
0x00543718: add      eax, eax
0x0054371A: add      eax, eax
0x0054371C: mov      edx, dword ptr [eax + edx]
0x0054371F: test     edx, edx
0x00543721: je       0x543743
0x00543723: mov      esi, dword ptr [ecx + 0xc]
0x00543726: test     dword ptr [eax + esi], 0x200
0x0054372D: je       0x543743
0x0054372F: test     byte ptr [edx + 8], 8
0x00543733: je       0x543743
0x00543735: mov      ecx, dword ptr [ecx + 0x20]
0x00543738: add      eax, ecx
0x0054373A: cmp      dword ptr [eax], 0
0x0054373D: je       0x543743
0x0054373F: mov      eax, dword ptr [eax]
0x00543741: jmp      0x543745
0x00543743: mov      eax, edx
0x00543745: fld      dword ptr [esp + 0x40]
0x00543749: mov      edx, 0x800
0x0054374E: fstp     dword ptr [eax + 0xc]
0x00543751: lea      ecx, [esp + 0x40]
0x00543755: fld      dword ptr [esp + 0x44]
0x00543759: fstp     dword ptr [eax + 0x10]
0x0054375C: fld      dword ptr [esp + 0x48]
0x00543760: fstp     dword ptr [eax + 0x14]
0x00543763: or       word ptr [eax + 8], dx
0x00543767: fldz     
0x00543769: lea      eax, [esp + 0x10]
0x0054376D: fst      dword ptr [esp + 0x40]
0x00543771: push     eax
0x00543772: fstp     dword ptr [esp + 0x48]
0x00543776: push     ecx
0x00543777: fld1     
0x00543779: lea      edx, [esp + 0x58]
0x0054377D: fst      dword ptr [esp + 0x50]
0x00543781: push     edx
0x00543782: fstp     dword ptr [esp + 0x58]
0x00543786: call     0x6b0cd0
0x0054378B: mov      ecx, dword ptr [edi + 8]
0x0054378E: movzx    eax, byte ptr [ecx + 1]
0x00543792: mov      ecx, dword ptr [ecx + 4]
0x00543795: mov      edx, dword ptr [ecx + 0x1c]
0x00543798: add      eax, eax
0x0054379A: add      eax, eax
0x0054379C: mov      edx, dword ptr [eax + edx]
0x0054379F: add      esp, 0xc
0x005437A2: test     edx, edx
0x005437A4: je       0x5437c6
0x005437A6: mov      esi, dword ptr [ecx + 0xc]
0x005437A9: test     dword ptr [eax + esi], 0x200
0x005437B0: je       0x5437c6
0x005437B2: test     byte ptr [edx + 8], 8
0x005437B6: je       0x5437c6
0x005437B8: mov      ecx, dword ptr [ecx + 0x20]
0x005437BB: add      eax, ecx
0x005437BD: cmp      dword ptr [eax], 0
0x005437C0: je       0x5437c6
0x005437C2: mov      ecx, dword ptr [eax]
0x005437C4: jmp      0x5437c8
0x005437C6: mov      ecx, edx
0x005437C8: lea      edx, [esp + 0x50]
0x005437CC: push     edx
0x005437CD: call     0x509670
0x005437D2: mov      ecx, dword ptr [edi + 8]
0x005437D5: movzx    eax, byte ptr [ecx + 1]
0x005437D9: mov      ecx, dword ptr [ecx + 4]
0x005437DC: mov      edx, dword ptr [ecx + 0x1c]
0x005437DF: add      eax, eax
0x005437E1: add      eax, eax
0x005437E3: mov      edx, dword ptr [eax + edx]
0x005437E6: test     edx, edx
0x005437E8: je       0x54380a
0x005437EA: mov      esi, dword ptr [ecx + 0xc]
0x005437ED: test     dword ptr [eax + esi], 0x200
0x005437F4: je       0x54380a
0x005437F6: test     byte ptr [edx + 8], 8
0x005437FA: je       0x54380a
0x005437FC: mov      ecx, dword ptr [ecx + 0x20]
0x005437FF: add      eax, ecx
0x00543801: cmp      dword ptr [eax], 0
0x00543804: je       0x54380a
0x00543806: mov      eax, dword ptr [eax]
0x00543808: jmp      0x54380c
0x0054380A: mov      eax, edx
0x0054380C: fld1     
0x0054380E: sub      esp, 0xc
0x00543811: fst      dword ptr [esp + 8]
0x00543815: mov      ecx, eax
0x00543817: fld      dword ptr [esp + 0x14]
0x0054381B: fdiv     qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x00543821: fstp     dword ptr [esp + 0x18]
0x00543825: fld      dword ptr [esp + 0x18]
0x00543829: fstp     dword ptr [esp + 4]
0x0054382D: fstp     dword ptr [esp]
0x00543830: call     0x52e9e0
0x00543835: mov      eax, dword ptr [edi + 8]
0x00543838: fld      dword ptr [0x96a85c] ; [f32=5, u32=0x40A00000]
0x0054383E: movzx    edx, byte ptr [eax + 1]
0x00543842: mov      eax, dword ptr [eax + 4]
0x00543845: mov      ecx, dword ptr [eax + 0x34]
0x00543848: mov      edx, dword ptr [ecx + edx*4]
0x0054384B: mov      eax, dword ptr [edx + 0x98]
0x00543851: mov      ecx, dword ptr [eax + 0x40]
0x00543854: mov      edx, dword ptr [ecx + 4]
0x00543857: fstp     dword ptr [edx + 0x20]
0x0054385A: mov      eax, dword ptr [edi + 0x1a8]
0x00543860: mov      eax, dword ptr [eax + 8]
0x00543863: fld      dword ptr [esp + 8]
0x00543867: movzx    ecx, byte ptr [eax + 1]
0x0054386B: mov      edx, dword ptr [eax + 4]
0x0054386E: mov      eax, dword ptr [edx + 0x34]
0x00543871: mov      ecx, dword ptr [eax + ecx*4]
0x00543874: mov      edx, dword ptr [ecx + 0x98]
0x0054387A: mov      eax, dword ptr [edx + 0x40]
0x0054387D: mov      ecx, dword ptr [eax + 4]
0x00543880: fsub     dword ptr [ecx + 0x10]
0x00543883: fstp     dword ptr [esp + 0xc]
0x00543887: fld      dword ptr [esp + 0xc]
0x0054388B: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x00543891: fnstsw   ax
0x00543893: test     ah, 0x41
0x00543896: jne      0x5438a2
0x00543898: fstp     st(0)
0x0054389A: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x005438A0: jmp      0x5438bb
0x005438A2: fcom     qword ptr [0x9795c8] ; [f32=0, f64=1, u32=0x00000000]
0x005438A8: fnstsw   ax
0x005438AA: test     ah, 0x41
0x005438AD: je       0x5438b3
0x005438AF: fstp     st(0)
0x005438B1: fld1     
0x005438B3: fstp     dword ptr [esp + 0xc]
0x005438B7: fld      dword ptr [esp + 0xc]
0x005438BB: mov      eax, dword ptr [edi + 8]
0x005438BE: fstp     dword ptr [esp + 0xc]
0x005438C2: movzx    edx, byte ptr [eax + 1]
0x005438C6: fld      dword ptr [esp + 0xc]
0x005438CA: mov      eax, dword ptr [eax + 4]
0x005438CD: mov      ecx, dword ptr [eax + 0x34]
0x005438D0: mov      edx, dword ptr [ecx + edx*4]
0x005438D3: mov      eax, dword ptr [edx + 0x98]
0x005438D9: mov      ecx, dword ptr [eax + 0x40]
0x005438DC: mov      edx, dword ptr [ecx + 4]
0x005438DF: push     1
0x005438E1: push     0
0x005438E3: fstp     dword ptr [edx + 0x24]
0x005438E6: mov      eax, dword ptr [edi + 8]
0x005438E9: movzx    ecx, byte ptr [eax + 1]
0x005438ED: mov      edx, dword ptr [eax + 4]
0x005438F0: mov      eax, dword ptr [edx + 0x34]
0x005438F3: mov      ecx, dword ptr [eax + ecx*4]
0x005438F6: mov      edx, dword ptr [ecx + 0x98]
0x005438FC: push     0
0x005438FE: push     edx
0x005438FF: call     0x59acf0
0x00543904: mov      ecx, dword ptr [edi + 0x1b4]
0x0054390A: fld1     
0x0054390C: mov      edx, dword ptr [edi + 0x1b0]
0x00543912: fstp     dword ptr [esp + 0x40]
0x00543916: lea      eax, [esp + 0x40]
0x0054391A: fld      dword ptr [esp + 0x18]
0x0054391E: push     eax
0x0054391F: fmul     qword ptr [0x98b8b8] ; [f32=0, f64=0.015625, u32=0x00000000]
0x00543925: push     ecx
0x00543926: push     0
0x00543928: push     edx
0x00543929: fstp     dword ptr [esp + 0x54]
0x0054392D: fldz     
0x0054392F: fst      dword ptr [esp + 0x58]
0x00543933: fstp     dword ptr [esp + 0x5c]
0x00543937: call     0x64c750
0x0054393C: fld      dword ptr [edi + 0x1bc]
0x00543942: fdiv     dword ptr [0xafce38]
0x00543948: mov      ecx, dword ptr [edi + 0x1b8]
0x0054394E: mov      edx, dword ptr [edi + 0x1b0]
0x00543954: lea      eax, [esp + 0x40]
0x00543958: push     eax
0x00543959: push     ecx
0x0054395A: push     0
0x0054395C: push     edx
0x0054395D: fstp     dword ptr [esp + 0x3c]
0x00543961: fld      dword ptr [esp + 0x3c]
0x00543965: fst      dword ptr [esp + 0x50]
0x00543969: fst      dword ptr [esp + 0x54]
0x0054396D: fstp     dword ptr [esp + 0x58]
0x00543971: fldz     
0x00543973: fstp     dword ptr [esp + 0x5c]
0x00543977: call     0x64c750
0x0054397C: add      esp, 0x30
0x0054397F: pop      edi
0x00543980: pop      esi
0x00543981: add      esp, 0x58
0x00543984: ret      
0x00543985: int3     
0x00543986: int3     
0x00543987: int3     
0x00543988: int3     
0x00543989: int3     
0x0054398A: int3     
0x0054398B: int3     
0x0054398C: int3     
0x0054398D: int3     
0x0054398E: int3     
0x0054398F: int3     

--- CRotasticRope::vfunc_4 @ 0x00543990 ---
0x00543990: push     -1
0x00543992: push     0x9461b3
0x00543997: mov      eax, dword ptr fs:[0]
0x0054399D: push     eax
0x0054399E: push     ebx
0x0054399F: push     esi
0x005439A0: push     edi
0x005439A1: mov      eax, dword ptr [0xb089c8]
0x005439A6: xor      eax, esp
0x005439A8: push     eax
0x005439A9: lea      eax, [esp + 0x10]
0x005439AD: mov      dword ptr fs:[0], eax
0x005439B3: mov      esi, ecx
0x005439B5: mov      eax, dword ptr [esi + 8]
0x005439B8: lea      ecx, [esi + 0x60]
0x005439BB: push     ecx
0x005439BC: push     eax
0x005439BD: call     0x5687c0
0x005439C2: mov      ecx, dword ptr [esi + 0xc]
0x005439C5: mov      edi, dword ptr [esp + 0x2c]
0x005439C9: add      esp, 8
0x005439CC: test     ecx, ecx
0x005439CE: je       0x5439f0
0x005439D0: mov      eax, dword ptr [esi + 8]
0x005439D3: movzx    edx, byte ptr [eax + 1]
0x005439D7: mov      ebx, dword ptr [eax + 4]
0x005439DA: mov      ebx, dword ptr [ebx + 0x38]
0x005439DD: cmp      ecx, dword ptr [ebx + edx*4]
0x005439E0: je       0x5439f0
0x005439E2: mov      edx, dword ptr [ecx]
0x005439E4: mov      edx, dword ptr [edx + 0x24]
0x005439E7: push     edi
0x005439E8: push     eax
0x005439E9: mov      eax, dword ptr [esp + 0x28]
0x005439ED: push     eax
0x005439EE: call     edx
0x005439F0: mov      eax, edi
0x005439F2: sub      eax, 2
0x005439F5: je       0x543a3f
0x005439F7: sub      eax, 7
0x005439FA: jne      0x543b5b
0x00543A00: mov      ecx, dword ptr [esi + 8]
0x00543A03: push     eax
0x00543A04: push     eax
0x00543A05: call     0x7f8390
0x00543A0A: mov      esi, dword ptr [esi + 8]
0x00543A0D: movzx    eax, byte ptr [esi + 1]
0x00543A11: mov      ecx, dword ptr [esi + 4]
0x00543A14: mov      edx, dword ptr [ecx + 0x34]
0x00543A17: mov      ecx, dword ptr [edx + eax*4]
0x00543A1A: mov      eax, dword ptr [ecx]
0x00543A1C: mov      edx, dword ptr [eax + 0x128]
0x00543A22: push     0
0x00543A24: push     0
0x00543A26: push     1
0x00543A28: call     edx
0x00543A2A: mov      ecx, dword ptr [esp + 0x10]
0x00543A2E: mov      dword ptr fs:[0], ecx
0x00543A35: pop      ecx
0x00543A36: pop      edi
0x00543A37: pop      esi
0x00543A38: pop      ebx
0x00543A39: add      esp, 0xc
0x00543A3C: ret      8
0x00543A3F: mov      eax, dword ptr [esi + 8]
0x00543A42: movzx    ecx, byte ptr [eax + 1]
0x00543A46: mov      edx, dword ptr [eax + 4]
0x00543A49: mov      eax, dword ptr [edx + 0x38]
0x00543A4C: mov      eax, dword ptr [eax + ecx*4]
0x00543A4F: push     0
0x00543A51: lea      ecx, [eax + 0x38]
0x00543A54: call     0x499af0
0x00543A59: movzx    ecx, byte ptr [eax + 1]
0x00543A5D: mov      eax, dword ptr [eax + 4]
0x00543A60: mov      edx, dword ptr [eax + 8]
0x00543A63: test     dword ptr [edx + ecx*4], 0x40000
0x00543A6A: je       0x543ab2
0x00543A6C: mov      edx, dword ptr [eax + 0x14]
0x00543A6F: lea      ecx, [ecx + ecx*8]
0x00543A72: lea      eax, [edx + ecx*4]
0x00543A75: mov      ecx, 0x1c
0x00543A7A: cmp      byte ptr [eax + 0x14], cl
0x00543A7D: jne      0x543a84
0x00543A7F: mov      eax, dword ptr [eax + 4]
0x00543A82: jmp      0x543ab4
0x00543A84: cmp      byte ptr [eax + 0x15], cl
0x00543A87: jne      0x543a8e
0x00543A89: mov      eax, dword ptr [eax + 8]
0x00543A8C: jmp      0x543ab4
0x00543A8E: cmp      byte ptr [eax + 0x16], cl
0x00543A91: jne      0x543a98
0x00543A93: mov      eax, dword ptr [eax + 0xc]
0x00543A96: jmp      0x543ab4
0x00543A98: cmp      byte ptr [eax + 0x17], cl
0x00543A9B: jne      0x543aa2
0x00543A9D: mov      eax, dword ptr [eax + 0x10]
0x00543AA0: jmp      0x543ab4
0x00543AA2: mov      eax, dword ptr [eax]
0x00543AA4: test     eax, eax
0x00543AA6: je       0x543ab2
0x00543AA8: push     ecx
0x00543AA9: mov      ecx, eax
0x00543AAB: call     0x461400
0x00543AB0: jmp      0x543ab4
0x00543AB2: xor      eax, eax
0x00543AB4: push     0
0x00543AB6: push     1
0x00543AB8: push     0
0x00543ABA: push     1
0x00543ABC: mov      dword ptr [esi + 0x1a8], eax
0x00543AC2: mov      eax, dword ptr [0xb01b28]
0x00543AC7: push     0
0x00543AC9: push     eax
0x00543ACA: push     0x30
0x00543ACC: call     0x688fe0
0x00543AD1: add      esp, 0x1c
0x00543AD4: mov      dword ptr [esp + 0x24], eax
0x00543AD8: mov      dword ptr [esp + 0x18], 0
0x00543AE0: test     eax, eax
0x00543AE2: je       0x543aed
0x00543AE4: mov      ecx, eax
0x00543AE6: call     0x50e290
0x00543AEB: jmp      0x543aef
0x00543AED: xor      eax, eax
0x00543AEF: mov      ecx, dword ptr [esi + 0x1a8]
0x00543AF5: mov      dword ptr [esi + 0x1c0], eax
0x00543AFB: mov      ecx, dword ptr [ecx + 0x1b4]
0x00543B01: mov      edx, dword ptr [ecx]
0x00543B03: push     0
0x00543B05: push     eax
0x00543B06: mov      eax, dword ptr [edx + 0xc]
0x00543B09: mov      dword ptr [esp + 0x20], 0xffffffff
0x00543B11: call     eax
0x00543B13: mov      ecx, dword ptr [esi + 0x1c0]
0x00543B19: mov      edx, dword ptr [ecx]
0x00543B1B: mov      eax, dword ptr [edx + 0x18]
0x00543B1E: push     esi
0x00543B1F: push     0x5431b0
0x00543B24: push     0xb1bc00
0x00543B29: call     eax
0x00543B2B: mov      ecx, dword ptr [esi + 0x1c0]
0x00543B31: mov      edx, dword ptr [ecx]
0x00543B33: mov      eax, dword ptr [edx + 0x18]
0x00543B36: push     esi
0x00543B37: push     0x5431f0
0x00543B3C: push     0xb1bc70
0x00543B41: call     eax
0x00543B43: mov      ecx, dword ptr [esi + 0x1c0]
0x00543B49: mov      edx, dword ptr [ecx]
0x00543B4B: mov      eax, dword ptr [edx + 0x18]
0x00543B4E: push     esi
0x00543B4F: push     0x5431d0
0x00543B54: push     0xb1bc48
0x00543B59: call     eax
0x00543B5B: mov      ecx, dword ptr [esp + 0x10]
0x00543B5F: mov      dword ptr fs:[0], ecx
0x00543B66: pop      ecx
0x00543B67: pop      edi
0x00543B68: pop      esi
0x00543B69: pop      ebx
0x00543B6A: add      esp, 0xc
0x00543B6D: ret      8
0x00543B70: xor      eax, eax
0x00543B72: cmp      dword ptr [esp + 4], 0xb1bc74
0x00543B7A: sete     al
0x00543B7D: ret      4
0x00543B80: mov      eax, 0xb1bc74
0x00543B85: ret      
0x00543B86: int3     
0x00543B87: int3     
0x00543B88: int3     
0x00543B89: int3     
0x00543B8A: int3     
0x00543B8B: int3     
0x00543B8C: int3     
0x00543B8D: int3     
0x00543B8E: int3     
0x00543B8F: int3     
0x00543B90: xor      eax, eax
0x00543B92: cmp      dword ptr [esp + 4], 0xb1bc78
0x00543B9A: sete     al
0x00543B9D: ret      4
0x00543BA0: mov      eax, 0xb1bc78
0x00543BA5: ret      
0x00543BA6: int3     
0x00543BA7: int3     
0x00543BA8: int3     
0x00543BA9: int3     
0x00543BAA: int3     
0x00543BAB: int3     
0x00543BAC: int3     
0x00543BAD: int3     
0x00543BAE: int3     
0x00543BAF: int3     

--- CRotasticRope::vfunc_0 @ 0x00543BB0 ---
0x00543BB0: push     esi
0x00543BB1: mov      esi, ecx
0x00543BB3: call     0x543040
0x00543BB8: test     byte ptr [esp + 8], 1
0x00543BBD: je       0x543bc8
0x00543BBF: push     esi
0x00543BC0: call     0x688fb0
0x00543BC5: add      esp, 4
0x00543BC8: mov      eax, esi
0x00543BCA: pop      esi
0x00543BCB: ret      4
0x00543BCE: int3     
0x00543BCF: int3     
0x00543BD0: mov      eax, dword ptr [esp + 4]
0x00543BD4: push     esi
0x00543BD5: push     0
0x00543BD7: push     eax
0x00543BD8: push     8
0x00543BDA: mov      esi, ecx
0x00543BDC: call     0x689060
0x00543BE1: add      esp, 0xc
0x00543BE4: test     eax, eax
0x00543BE6: je       0x543bf8
0x00543BE8: mov      dword ptr [eax], 0x98b88c
0x00543BEE: mov      ecx, dword ptr [esi + 4]
0x00543BF1: mov      dword ptr [eax + 4], ecx
0x00543BF4: pop      esi
0x00543BF5: ret      4
0x00543BF8: xor      eax, eax
0x00543BFA: pop      esi
0x00543BFB: ret      4
0x00543BFE: int3     
0x00543BFF: int3     
0x00543C00: mov      eax, dword ptr [esp + 4]
0x00543C04: push     esi
0x00543C05: push     0
0x00543C07: push     eax
0x00543C08: push     8
0x00543C0A: mov      esi, ecx
0x00543C0C: call     0x689060
0x00543C11: add      esp, 0xc
0x00543C14: test     eax, eax
0x00543C16: je       0x543c28
0x00543C18: mov      dword ptr [eax], 0x98b8a0