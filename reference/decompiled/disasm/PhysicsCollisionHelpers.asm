=== PhysicsCollisionHelpers (0x00510500 .. 0x00516500) ===
0x00510500: adc      edx, dword ptr [ebx - 0x75]
0x00510503: enter    -0x818, 0xe
0x00510507: cmc      
0x00510508: inc      dword ptr [ebp - 0x74f88b40]
0x0051050E: enter    0x4ce8, 0x50
0x00510512: add      al, byte ptr [eax]
0x00510514: inc      esi
0x00510515: cmp      esi, ebp
0x00510517: jl       0x5104b0
0x00510519: pop      ebx
0x0051051A: pop      edi
0x0051051B: pop      esi
0x0051051C: pop      ebp
0x0051051D: ret      
0x0051051E: int3     
0x0051051F: int3     

--- faSpawnAllPickUpOfColor::execute @ 0x00510520 ---
0x00510520: sub      esp, 0x10
0x00510523: push     ebx
0x00510524: push     ebp
0x00510525: mov      ebp, dword ptr [esp + 0x1c]
0x00510529: push     esi
0x0051052A: push     edi
0x0051052B: lea      esi, [ebp + 0x4c]
0x0051052E: lea      edi, [esi + 8]
0x00510531: mov      ecx, edi
0x00510533: call     0x7bfe00
0x00510538: test     eax, eax
0x0051053A: je       0x510545
0x0051053C: mov      ecx, edi
0x0051053E: call     0x7bfe00
0x00510543: jmp      0x51055f
0x00510545: mov      ecx, dword ptr [0xb79350]
0x0051054B: test     ecx, ecx
0x0051054D: je       0x51055f
0x0051054F: mov      eax, dword ptr [esi + 4]
0x00510552: mov      edx, dword ptr [esi]
0x00510554: push     eax
0x00510555: push     0
0x00510557: push     0
0x00510559: push     edx
0x0051055A: call     0x7cd120
0x0051055F: xor      edi, edi
0x00510561: push     edi
0x00510562: push     0xe
0x00510564: mov      ecx, esi
0x00510566: call     0x499c00
0x0051056B: mov      ecx, dword ptr [ebp + 0x58]
0x0051056E: mov      ebx, eax
0x00510570: movzx    eax, word ptr [ebp + 0x5c]
0x00510574: mov      dword ptr [esp + 0x14], eax
0x00510578: mov      eax, dword ptr [ebx + 0x1c]
0x0051057B: mov      dword ptr [esp + 0x1c], eax
0x0051057F: mov      dword ptr [esp + 0x24], edi
0x00510583: mov      dword ptr [esp + 0x10], ecx
0x00510587: test     eax, eax
0x00510589: jle      0x510660
0x0051058F: nop      
0x00510590: mov      edx, dword ptr [ebx + 0x20]
0x00510593: mov      eax, dword ptr [edx + edi*4]
0x00510596: movzx    ecx, byte ptr [eax + 1]
0x0051059A: mov      edx, dword ptr [eax + 4]
0x0051059D: mov      edx, dword ptr [edx + 0x38]
0x005105A0: mov      ecx, dword ptr [edx + ecx*4]
0x005105A3: mov      edx, dword ptr [ecx + 0x28]
0x005105A6: cmp      edx, dword ptr [0x95f4b0] ; [u32=0x1FEF4A96]
0x005105AC: jne      0x510655
0x005105B2: movzx    ecx, byte ptr [eax + 1]
0x005105B6: mov      eax, dword ptr [eax + 4]
0x005105B9: mov      edx, dword ptr [eax + 8]
0x005105BC: test     dword ptr [edx + ecx*4], 0x40000
0x005105C3: je       0x51061c
0x005105C5: mov      edx, dword ptr [eax + 0x14]
0x005105C8: lea      ecx, [ecx + ecx*8]
0x005105CB: cmp      byte ptr [edx + ecx*4 + 0x14], 0x1c
0x005105D0: lea      eax, [edx + ecx*4]
0x005105D3: jne      0x5105dc
0x005105D5: mov      eax, dword ptr [eax + 4]
0x005105D8: mov      esi, eax
0x005105DA: jmp      0x51061e
0x005105DC: cmp      byte ptr [eax + 0x15], 0x1c
0x005105E0: jne      0x5105e9
0x005105E2: mov      eax, dword ptr [eax + 8]
0x005105E5: mov      esi, eax
0x005105E7: jmp      0x51061e
0x005105E9: cmp      byte ptr [eax + 0x16], 0x1c
0x005105ED: jne      0x5105f6
0x005105EF: mov      eax, dword ptr [eax + 0xc]
0x005105F2: mov      esi, eax
0x005105F4: jmp      0x51061e
0x005105F6: cmp      byte ptr [eax + 0x17], 0x1c
0x005105FA: jne      0x510603
0x005105FC: mov      eax, dword ptr [eax + 0x10]
0x005105FF: mov      esi, eax
0x00510601: jmp      0x51061e
0x00510603: mov      eax, dword ptr [eax]
0x00510605: test     eax, eax
0x00510607: je       0x510616
0x00510609: push     0x1c
0x0051060B: mov      ecx, eax
0x0051060D: call     0x461400
0x00510612: mov      esi, eax
0x00510614: jmp      0x51061e
0x00510616: xor      eax, eax
0x00510618: mov      esi, eax
0x0051061A: jmp      0x51061e
0x0051061C: xor      esi, esi
0x0051061E: mov      ecx, esi
0x00510620: call     0x535310
0x00510625: cmp      eax, dword ptr [esp + 0x10]
0x00510629: jne      0x510655
0x0051062B: movsx    eax, byte ptr [ebp + 0x5e]
0x0051062F: push     eax
0x00510630: mov      ecx, esi
0x00510632: call     0x535860
0x00510637: movzx    ecx, word ptr [esp + 0x14]
0x0051063C: mov      dword ptr [esp + 0x18], ecx
0x00510640: push     ecx
0x00510641: mov      ecx, esi
0x00510643: fild     dword ptr [esp + 0x1c]
0x00510647: fstp     dword ptr [esp]
0x0051064A: push     1
0x0051064C: call     0x535370
0x00510651: inc      dword ptr [esp + 0x24]
0x00510655: inc      edi
0x00510656: cmp      edi, dword ptr [esp + 0x1c]
0x0051065A: jl       0x510590
0x00510660: mov      edx, dword ptr [esp + 0x24]
0x00510664: push     edx
0x00510665: mov      ecx, ebx
0x00510667: call     0x533980
0x0051066C: pop      edi
0x0051066D: pop      esi
0x0051066E: pop      ebp
0x0051066F: pop      ebx
0x00510670: add      esp, 0x10
0x00510673: ret      
0x00510674: int3     
0x00510675: int3     
0x00510676: int3     
0x00510677: int3     
0x00510678: int3     
0x00510679: int3     
0x0051067A: int3     
0x0051067B: int3     
0x0051067C: int3     
0x0051067D: int3     
0x0051067E: int3     
0x0051067F: int3     
0x00510680: mov      eax, dword ptr [esp + 4]
0x00510684: test     eax, eax
0x00510686: je       0x5106a6
0x00510688: movzx    ecx, byte ptr [eax + 1]
0x0051068C: mov      edx, dword ptr [eax + 4]
0x0051068F: mov      eax, dword ptr [edx + 0x38]
0x00510692: mov      ecx, dword ptr [eax + ecx*4]
0x00510695: mov      edx, dword ptr [ecx + 0x28]
0x00510698: cmp      edx, dword ptr [0x95f4b0] ; [u32=0x1FEF4A96]
0x0051069E: jne      0x5106a6
0x005106A0: mov      eax, 1
0x005106A5: ret      
0x005106A6: xor      eax, eax
0x005106A8: ret      
0x005106A9: int3     
0x005106AA: int3     
0x005106AB: int3     
0x005106AC: int3     
0x005106AD: int3     
0x005106AE: int3     
0x005106AF: int3     

--- ffRotasticPlayerComparePickup::execute @ 0x005106B0 ---
0x005106B0: xor      eax, eax
0x005106B2: ret      
0x005106B3: int3     
0x005106B4: int3     
0x005106B5: int3     
0x005106B6: int3     
0x005106B7: int3     
0x005106B8: int3     
0x005106B9: int3     
0x005106BA: int3     
0x005106BB: int3     
0x005106BC: int3     
0x005106BD: int3     
0x005106BE: int3     
0x005106BF: int3     

--- ffRotasticPlayerCompareScore::execute @ 0x005106C0 ---
0x005106C0: xor      eax, eax
0x005106C2: ret      
0x005106C3: int3     
0x005106C4: int3     
0x005106C5: int3     
0x005106C6: int3     
0x005106C7: int3     
0x005106C8: int3     
0x005106C9: int3     
0x005106CA: int3     
0x005106CB: int3     
0x005106CC: int3     
0x005106CD: int3     
0x005106CE: int3     
0x005106CF: int3     

--- faNotifyPlayerDeath::execute @ 0x005106D0 ---
0x005106D0: mov      ecx, dword ptr [esp + 4]
0x005106D4: push     0
0x005106D6: push     0x1c
0x005106D8: add      ecx, 0x4c
0x005106DB: call     0x499c00
0x005106E0: mov      ecx, eax
0x005106E2: jmp      0x5409f0
0x005106E7: int3     
0x005106E8: int3     
0x005106E9: int3     
0x005106EA: int3     
0x005106EB: int3     
0x005106EC: int3     
0x005106ED: int3     
0x005106EE: int3     
0x005106EF: int3     

--- faPlayerAllowInputForSpawn::execute @ 0x005106F0 ---
0x005106F0: push     esi
0x005106F1: mov      esi, dword ptr [esp + 8]
0x005106F5: push     0
0x005106F7: push     0x1c
0x005106F9: lea      ecx, [esi + 0x4c]
0x005106FC: call     0x507ed0
0x00510701: movsx    ecx, byte ptr [esi + 0x58]
0x00510705: mov      dword ptr [eax + 0x1f8], ecx
0x0051070B: pop      esi
0x0051070C: ret      
0x0051070D: int3     
0x0051070E: int3     
0x0051070F: int3     

--- faSpawnPlayer::execute @ 0x00510710 ---
0x00510710: mov      ecx, dword ptr [esp + 4]
0x00510714: push     0
0x00510716: push     0x1c
0x00510718: add      ecx, 0x4c
0x0051071B: call     0x507ed0
0x00510720: mov      ecx, eax
0x00510722: jmp      0x540de0
0x00510727: int3     
0x00510728: int3     
0x00510729: int3     
0x0051072A: int3     
0x0051072B: int3     
0x0051072C: int3     
0x0051072D: int3     
0x0051072E: int3     
0x0051072F: int3     

--- faPlayerDetachFromGlueWall::execute @ 0x00510730 ---
0x00510730: mov      ecx, dword ptr [esp + 4]
0x00510734: push     0
0x00510736: push     0x1c
0x00510738: add      ecx, 0x4c
0x0051073B: call     0x507ed0
0x00510740: mov      dword ptr [eax + 0x208], 1
0x0051074A: ret      
0x0051074B: int3     
0x0051074C: int3     
0x0051074D: int3     
0x0051074E: int3     
0x0051074F: int3     

--- faDesactiveAIPlayer::execute @ 0x00510750 ---
0x00510750: push     esi
0x00510751: mov      esi, dword ptr [esp + 8]
0x00510755: push     0
0x00510757: add      esi, 0x4c
0x0051075A: push     0x1c
0x0051075C: mov      ecx, esi
0x0051075E: call     0x507ed0
0x00510763: push     0
0x00510765: push     0
0x00510767: mov      ecx, eax
0x00510769: call     0x540470
0x0051076E: push     0
0x00510770: push     0x1c
0x00510772: mov      ecx, esi
0x00510774: call     0x507ed0
0x00510779: push     0
0x0051077B: push     0x1c
0x0051077D: mov      ecx, esi
0x0051077F: mov      dword ptr [eax + 0xe14], 1
0x00510789: call     0x507ed0
0x0051078E: mov      ecx, eax
0x00510790: pop      esi
0x00510791: jmp      0x540c70
0x00510796: int3     
0x00510797: int3     
0x00510798: int3     
0x00510799: int3     
0x0051079A: int3     
0x0051079B: int3     
0x0051079C: int3     
0x0051079D: int3     
0x0051079E: int3     
0x0051079F: int3     

--- ffRotasticPlayerFirstSpawnDone::execute @ 0x005107A0 ---
0x005107A0: mov      ecx, dword ptr [esp + 4]
0x005107A4: push     0
0x005107A6: push     0x1c
0x005107A8: add      ecx, 0x14
0x005107AB: call     0x507ed0
0x005107B0: mov      eax, dword ptr [eax + 0x200]
0x005107B6: ret      
0x005107B7: int3     
0x005107B8: int3     
0x005107B9: int3     
0x005107BA: int3     
0x005107BB: int3     
0x005107BC: int3     
0x005107BD: int3     
0x005107BE: int3     
0x005107BF: int3     

--- ffRotasticPlayerIsWaitingRespawn::execute @ 0x005107C0 ---
0x005107C0: mov      ecx, dword ptr [esp + 4]
0x005107C4: push     0
0x005107C6: push     0x1c
0x005107C8: add      ecx, 0x14
0x005107CB: call     0x507ed0
0x005107D0: mov      eax, dword ptr [eax + 0x1f4]
0x005107D6: ret      
0x005107D7: int3     
0x005107D8: int3     
0x005107D9: int3     
0x005107DA: int3     
0x005107DB: int3     
0x005107DC: int3     
0x005107DD: int3     
0x005107DE: int3     
0x005107DF: int3     
0x005107E0: jmp      0x7d9f50
0x005107E5: int3     
0x005107E6: int3     
0x005107E7: int3     
0x005107E8: int3     
0x005107E9: int3     
0x005107EA: int3     
0x005107EB: int3     
0x005107EC: int3     
0x005107ED: int3     
0x005107EE: int3     
0x005107EF: int3     
0x005107F0: push     esi
0x005107F1: mov      esi, dword ptr [esp + 8]
0x005107F5: movzx    eax, byte ptr [esi + 1]
0x005107F9: mov      ecx, dword ptr [esi + 4]
0x005107FC: mov      edx, dword ptr [ecx + 0x40]
0x005107FF: mov      eax, dword ptr [edx + eax*4]
0x00510802: push     edi
0x00510803: test     eax, eax
0x00510805: je       0x510813
0x00510807: mov      eax, dword ptr [eax + 0x20]
0x0051080A: test     eax, eax
0x0051080C: je       0x510813
0x0051080E: or       word ptr [eax + 8], 2
0x00510813: movzx    eax, byte ptr [esi + 1]
0x00510817: mov      ecx, dword ptr [esi + 4]
0x0051081A: mov      edx, dword ptr [ecx + 0x1c]
0x0051081D: add      eax, eax
0x0051081F: add      eax, eax
0x00510821: mov      edx, dword ptr [eax + edx]
0x00510824: test     edx, edx
0x00510826: je       0x510848
0x00510828: mov      edi, dword ptr [ecx + 0xc]
0x0051082B: test     dword ptr [eax + edi], 0x200
0x00510832: je       0x510848
0x00510834: test     byte ptr [edx + 8], 8
0x00510838: je       0x510848
0x0051083A: mov      edi, dword ptr [ecx + 0x20]
0x0051083D: add      edi, eax
0x0051083F: cmp      dword ptr [edi], 0
0x00510842: je       0x510848
0x00510844: mov      edi, dword ptr [edi]
0x00510846: jmp      0x51084a
0x00510848: mov      edi, edx
0x0051084A: test     edi, edi
0x0051084C: je       0x510879
0x0051084E: test     edx, edx
0x00510850: je       0x510872
0x00510852: mov      edi, dword ptr [ecx + 0xc]
0x00510855: test     dword ptr [eax + edi], 0x200
0x0051085C: je       0x510872
0x0051085E: test     byte ptr [edx + 8], 8
0x00510862: je       0x510872
0x00510864: mov      ecx, dword ptr [ecx + 0x20]
0x00510867: add      eax, ecx
0x00510869: cmp      dword ptr [eax], 0
0x0051086C: je       0x510872
0x0051086E: mov      eax, dword ptr [eax]
0x00510870: jmp      0x510874
0x00510872: mov      eax, edx
0x00510874: or       word ptr [eax + 8], 2
0x00510879: mov      eax, dword ptr [esi + 4]
0x0051087C: movzx    edx, byte ptr [esi + 1]
0x00510880: mov      ecx, dword ptr [eax + 0x1c]
0x00510883: mov      eax, dword ptr [ecx + edx*4]
0x00510886: test     eax, eax
0x00510888: je       0x51088f
0x0051088A: or       word ptr [eax + 8], 2
0x0051088F: mov      eax, dword ptr [esi + 4]
0x00510892: movzx    edx, byte ptr [esi + 1]
0x00510896: mov      ecx, dword ptr [eax + 0x3c]
0x00510899: mov      esi, dword ptr [ecx + edx*4]
0x0051089C: mov      edi, esi
0x0051089E: test     esi, esi
0x005108A0: je       0x5108b9
0x005108A2: mov      edx, dword ptr [esi + 0x10]
0x005108A5: push     edx
0x005108A6: call     0x5107f0
0x005108AB: mov      esi, dword ptr [esi + 0x1c]
0x005108AE: add      esp, 4
0x005108B1: cmp      esi, edi
0x005108B3: je       0x5108b9
0x005108B5: test     esi, esi
0x005108B7: jne      0x5108a2
0x005108B9: pop      edi
0x005108BA: pop      esi
0x005108BB: ret      
0x005108BC: int3     
0x005108BD: int3     
0x005108BE: int3     
0x005108BF: int3     
0x005108C0: fld      dword ptr [edx]
0x005108C2: fsub     dword ptr [ecx]
0x005108C4: fstp     dword ptr [eax]
0x005108C6: fld      dword ptr [edx + 4]
0x005108C9: fsub     dword ptr [ecx + 4]
0x005108CC: fstp     dword ptr [eax + 4]
0x005108CF: fld      dword ptr [edx + 8]
0x005108D2: fsub     dword ptr [ecx + 8]
0x005108D5: fstp     dword ptr [eax + 8]
0x005108D8: fld      dword ptr [edx + 0xc]
0x005108DB: fsub     dword ptr [ecx + 0xc]
0x005108DE: fstp     dword ptr [eax + 0xc]
0x005108E1: ret      
0x005108E2: int3     
0x005108E3: int3     
0x005108E4: int3     
0x005108E5: int3     
0x005108E6: int3     
0x005108E7: int3     
0x005108E8: int3     
0x005108E9: int3     
0x005108EA: int3     
0x005108EB: int3     
0x005108EC: int3     
0x005108ED: int3     
0x005108EE: int3     
0x005108EF: int3     
0x005108F0: push     -1
0x005108F2: push     0x9438a8
0x005108F7: mov      eax, dword ptr fs:[0]
0x005108FD: push     eax
0x005108FE: push     ecx
0x005108FF: push     esi
0x00510900: mov      eax, dword ptr [0xb089c8]
0x00510905: xor      eax, esp
0x00510907: push     eax
0x00510908: lea      eax, [esp + 0xc]
0x0051090C: mov      dword ptr fs:[0], eax
0x00510912: mov      esi, ecx
0x00510914: mov      dword ptr [esp + 8], esi
0x00510918: mov      dword ptr [esi], 0x9835d0
0x0051091E: mov      ecx, dword ptr [esi + 0x194]
0x00510924: mov      dword ptr [esp + 0x14], 0
0x0051092C: test     ecx, ecx
0x0051092E: je       0x510942
0x00510930: mov      eax, dword ptr [ecx]
0x00510932: mov      edx, dword ptr [eax]
0x00510934: push     1
0x00510936: call     edx
0x00510938: mov      dword ptr [esi + 0x194], 0
0x00510942: mov      ecx, esi
0x00510944: mov      dword ptr [esp + 0x14], 0xffffffff
0x0051094C: call     0x50dea0
0x00510951: mov      ecx, dword ptr [esp + 0xc]
0x00510955: mov      dword ptr fs:[0], ecx
0x0051095C: pop      ecx
0x0051095D: pop      esi
0x0051095E: add      esp, 0x10
0x00510961: ret      
0x00510962: int3     
0x00510963: int3     
0x00510964: int3     
0x00510965: int3     
0x00510966: int3     
0x00510967: int3     
0x00510968: int3     
0x00510969: int3     
0x0051096A: int3     
0x0051096B: int3     
0x0051096C: int3     
0x0051096D: int3     
0x0051096E: int3     
0x0051096F: int3     

--- CMecaSwitchObject::vfunc_7 @ 0x00510970 ---
0x00510970: ret      4
0x00510973: int3     
0x00510974: int3     
0x00510975: int3     
0x00510976: int3     
0x00510977: int3     
0x00510978: int3     
0x00510979: int3     
0x0051097A: int3     
0x0051097B: int3     
0x0051097C: int3     
0x0051097D: int3     
0x0051097E: int3     
0x0051097F: int3     
0x00510980: sub      esp, 0x24
0x00510983: push     ebx
0x00510984: mov      ebx, ecx
0x00510986: cmp      dword ptr [ebx + 0x160], 0
0x0051098D: push     ebp
0x0051098E: push     esi
0x0051098F: je       0x510a84
0x00510995: fldz     
0x00510997: mov      eax, dword ptr [ebx + 0x15c]
0x0051099D: fst      dword ptr [esp + 0x10]
0x005109A1: lea      edx, [esp + 0x10]
0x005109A5: fstp     dword ptr [esp + 0x14]
0x005109A9: fld1     
0x005109AB: fst      dword ptr [esp + 0x18]
0x005109AF: fstp     dword ptr [esp + 0x1c]
0x005109B3: movsx    ecx, byte ptr [eax + 0x11]
0x005109B7: xor      ecx, dword ptr [ebx + 0x178]
0x005109BD: lea      eax, [esp + 0x20]
0x005109C1: neg      ecx
0x005109C3: sbb      ecx, ecx
0x005109C5: and      ecx, 2
0x005109C8: dec      ecx
0x005109C9: mov      dword ptr [esp + 0xc], ecx
0x005109CD: push     ecx
0x005109CE: fild     dword ptr [esp + 0x10]
0x005109D2: fmul     qword ptr [0x9836a8] ; [f32=2, f64=0.523599, u32=0x40000000]
0x005109D8: fstp     dword ptr [esp + 0x10]
0x005109DC: fld      dword ptr [esp + 0x10]
0x005109E0: fstp     dword ptr [esp]
0x005109E3: push     edx
0x005109E4: push     eax
0x005109E5: call     0x6b0a50
0x005109EA: lea      ecx, [esp + 0x2c]
0x005109EE: push     ecx
0x005109EF: lea      edx, [ebx + 0x168]
0x005109F5: push     edx
0x005109F6: mov      eax, ecx
0x005109F8: push     eax
0x005109F9: call     0x6b0250
0x005109FE: mov      ecx, dword ptr [ebx + 0x160]
0x00510A04: movzx    edx, byte ptr [ecx + 1]
0x00510A08: mov      eax, dword ptr [ecx + 4]
0x00510A0B: mov      eax, dword ptr [eax + 0x40]
0x00510A0E: add      esp, 0x18
0x00510A11: cmp      dword ptr [eax + edx*4], 0
0x00510A15: je       0x510a41
0x00510A17: movzx    edx, byte ptr [ecx + 1]
0x00510A1B: mov      eax, dword ptr [ecx + 4]
0x00510A1E: mov      eax, dword ptr [eax + 0x40]
0x00510A21: mov      edx, dword ptr [eax + edx*4]
0x00510A24: cmp      dword ptr [edx + 0x20], 0
0x00510A28: je       0x510a41
0x00510A2A: movzx    edx, byte ptr [ecx + 1]
0x00510A2E: lea      eax, [esp + 0x20]
0x00510A32: push     eax
0x00510A33: mov      eax, dword ptr [ecx + 4]
0x00510A36: mov      ecx, dword ptr [eax + 0x40]
0x00510A39: mov      edx, dword ptr [ecx + edx*4]
0x00510A3C: mov      ecx, dword ptr [edx + 0x20]
0x00510A3F: jmp      0x510a7f
0x00510A41: movzx    eax, byte ptr [ecx + 1]
0x00510A45: mov      ecx, dword ptr [ecx + 4]
0x00510A48: mov      edx, dword ptr [ecx + 0x1c]
0x00510A4B: add      eax, eax
0x00510A4D: add      eax, eax
0x00510A4F: mov      edx, dword ptr [eax + edx]
0x00510A52: test     edx, edx
0x00510A54: je       0x510a76
0x00510A56: mov      esi, dword ptr [ecx + 0xc]
0x00510A59: test     dword ptr [eax + esi], 0x200
0x00510A60: je       0x510a76
0x00510A62: test     byte ptr [edx + 8], 8
0x00510A66: je       0x510a76
0x00510A68: mov      ecx, dword ptr [ecx + 0x20]
0x00510A6B: add      eax, ecx
0x00510A6D: cmp      dword ptr [eax], 0
0x00510A70: je       0x510a76
0x00510A72: mov      eax, dword ptr [eax]
0x00510A74: jmp      0x510a78
0x00510A76: mov      eax, edx
0x00510A78: lea      edx, [esp + 0x20]
0x00510A7C: push     edx
0x00510A7D: mov      ecx, eax
0x00510A7F: call     0x509670
0x00510A84: mov      esi, dword ptr [ebx + 0x15c]
0x00510A8A: push     edi
0x00510A8B: add      esi, 0x20
0x00510A8E: lea      edi, [esi + 8]
0x00510A91: mov      ecx, edi
0x00510A93: call     0x7bfe00
0x00510A98: test     eax, eax
0x00510A9A: je       0x510acb
0x00510A9C: mov      ecx, edi
0x00510A9E: call     0x7bfe00
0x00510AA3: test     eax, eax
0x00510AA5: je       0x510ac5
0x00510AA7: movzx    eax, byte ptr [edi]
0x00510AAA: mov      ecx, dword ptr [0xb78a28]
0x00510AB0: lea      eax, [eax + eax*2]
0x00510AB3: mov      edx, dword ptr [ecx + eax*4 + 8]
0x00510AB7: movzx    eax, byte ptr [edi + 1]
0x00510ABB: mov      ecx, dword ptr [edx + 0x78]
0x00510ABE: mov      eax, dword ptr [ecx + eax*4]
0x00510AC1: mov      ebp, eax
0x00510AC3: jmp      0x510aeb
0x00510AC5: xor      eax, eax
0x00510AC7: mov      ebp, eax
0x00510AC9: jmp      0x510aeb
0x00510ACB: mov      ecx, dword ptr [0xb79350]
0x00510AD1: test     ecx, ecx
0x00510AD3: je       0x510ae9
0x00510AD5: mov      edx, dword ptr [esi + 4]
0x00510AD8: mov      eax, dword ptr [esi]
0x00510ADA: push     edx
0x00510ADB: push     0
0x00510ADD: push     0
0x00510ADF: push     eax
0x00510AE0: call     0x7cd120
0x00510AE5: mov      ebp, eax
0x00510AE7: jmp      0x510aeb
0x00510AE9: xor      ebp, ebp
0x00510AEB: mov      esi, dword ptr [ebx + 0x15c]
0x00510AF1: add      esi, 0x2c
0x00510AF4: lea      edi, [esi + 8]
0x00510AF7: mov      ecx, edi
0x00510AF9: call     0x7bfe00
0x00510AFE: test     eax, eax
0x00510B00: je       0x510b2d
0x00510B02: mov      ecx, edi
0x00510B04: call     0x7bfe00
0x00510B09: test     eax, eax
0x00510B0B: je       0x510b29
0x00510B0D: movzx    eax, byte ptr [edi]
0x00510B10: mov      edx, dword ptr [0xb78a28]
0x00510B16: lea      ecx, [eax + eax*2]
0x00510B19: mov      eax, dword ptr [edx + ecx*4 + 8]
0x00510B1D: movzx    ecx, byte ptr [edi + 1]
0x00510B21: mov      edx, dword ptr [eax + 0x78]
0x00510B24: mov      eax, dword ptr [edx + ecx*4]
0x00510B27: jmp      0x510b47
0x00510B29: xor      eax, eax
0x00510B2B: jmp      0x510b47
0x00510B2D: mov      ecx, dword ptr [0xb79350]
0x00510B33: test     ecx, ecx
0x00510B35: je       0x510b60
0x00510B37: mov      eax, dword ptr [esi + 4]
0x00510B3A: mov      edx, dword ptr [esi]
0x00510B3C: push     eax
0x00510B3D: push     0
0x00510B3F: push     0
0x00510B41: push     edx
0x00510B42: call     0x7cd120
0x00510B47: test     eax, eax
0x00510B49: je       0x510b60
0x00510B4B: xor      ecx, ecx
0x00510B4D: cmp      dword ptr [ebx + 0x178], ecx
0x00510B53: push     1
0x00510B55: sete     cl
0x00510B58: push     ecx
0x00510B59: mov      ecx, eax
0x00510B5B: call     0x7f8390
0x00510B60: pop      edi
0x00510B61: test     ebp, ebp
0x00510B63: je       0x510b75
0x00510B65: mov      edx, dword ptr [ebx + 0x178]
0x00510B6B: push     1
0x00510B6D: push     edx
0x00510B6E: mov      ecx, ebp
0x00510B70: call     0x7f8390
0x00510B75: pop      esi
0x00510B76: pop      ebp
0x00510B77: pop      ebx
0x00510B78: add      esp, 0x24
0x00510B7B: ret      
0x00510B7C: int3     
0x00510B7D: int3     
0x00510B7E: int3     
0x00510B7F: int3     
0x00510B80: push     esi
0x00510B81: mov      esi, ecx
0x00510B83: mov      dword ptr [esi + 0x178], 0
0x00510B8D: mov      dword ptr [esi + 0x17c], 0
0x00510B97: call     0x510980
0x00510B9C: mov      eax, dword ptr [esi + 0x15c]
0x00510BA2: cmp      byte ptr [eax + 1], 0
0x00510BA6: je       0x510bcc
0x00510BA8: mov      ecx, dword ptr [esi + 0x178]
0x00510BAE: mov      dword ptr [esi + 0x18c], ecx
0x00510BB4: mov      edx, dword ptr [0xb1baf8]
0x00510BBA: add      esi, 0x188
0x00510BC0: push     esi
0x00510BC1: push     0
0x00510BC3: push     edx
0x00510BC4: call     0x52d190
0x00510BC9: add      esp, 0xc
0x00510BCC: pop      esi
0x00510BCD: ret      
0x00510BCE: int3     
0x00510BCF: int3     
0x00510BD0: mov      eax, dword ptr [esp + 4]
0x00510BD4: push     esi
0x00510BD5: mov      esi, ecx
0x00510BD7: mov      dword ptr [esi + 0x178], eax
0x00510BDD: mov      dword ptr [esi + 0x17c], 0
0x00510BE7: call     0x510980
0x00510BEC: mov      ecx, dword ptr [esi + 0x15c]
0x00510BF2: cmp      byte ptr [ecx + 1], 0
0x00510BF6: je       0x510c1b
0x00510BF8: mov      edx, dword ptr [esi + 0x178]
0x00510BFE: mov      dword ptr [esi + 0x18c], edx
0x00510C04: mov      eax, dword ptr [0xb1baf8]
0x00510C09: add      esi, 0x188
0x00510C0F: push     esi
0x00510C10: push     0
0x00510C12: push     eax
0x00510C13: call     0x52d190
0x00510C18: add      esp, 0xc
0x00510C1B: pop      esi
0x00510C1C: ret      4
0x00510C1F: int3     
0x00510C20: push     -1
0x00510C22: push     0x9438db
0x00510C27: mov      eax, dword ptr fs:[0]
0x00510C2D: push     eax
0x00510C2E: sub      esp, 0x30
0x00510C31: push     ebx
0x00510C32: push     ebp
0x00510C33: push     esi
0x00510C34: push     edi
0x00510C35: mov      eax, dword ptr [0xb089c8]
0x00510C3A: xor      eax, esp
0x00510C3C: push     eax
0x00510C3D: lea      eax, [esp + 0x44]
0x00510C41: mov      dword ptr fs:[0], eax
0x00510C47: mov      edi, ecx
0x00510C49: mov      eax, dword ptr [esp + 0x54]
0x00510C4D: mov      ecx, dword ptr [eax + 8]
0x00510C50: mov      ecx, dword ptr [ecx + 0x11c]
0x00510C56: movzx    eax, byte ptr [ecx + 1]
0x00510C5A: mov      ecx, dword ptr [ecx + 4]
0x00510C5D: mov      edx, dword ptr [ecx + 8]
0x00510C60: test     dword ptr [edx + eax*4], 0x40000
0x00510C67: je       0x510cbf
0x00510C69: mov      ecx, dword ptr [ecx + 0x14]
0x00510C6C: lea      eax, [eax + eax*8]
0x00510C6F: lea      eax, [ecx + eax*4]
0x00510C72: mov      ecx, 0x1c
0x00510C77: cmp      byte ptr [eax + 0x14], cl
0x00510C7A: jne      0x510c83
0x00510C7C: mov      eax, dword ptr [eax + 4]
0x00510C7F: mov      ebp, eax
0x00510C81: jmp      0x510cc1
0x00510C83: cmp      byte ptr [eax + 0x15], cl
0x00510C86: jne      0x510c8f
0x00510C88: mov      eax, dword ptr [eax + 8]
0x00510C8B: mov      ebp, eax
0x00510C8D: jmp      0x510cc1
0x00510C8F: cmp      byte ptr [eax + 0x16], cl
0x00510C92: jne      0x510c9b
0x00510C94: mov      eax, dword ptr [eax + 0xc]
0x00510C97: mov      ebp, eax
0x00510C99: jmp      0x510cc1
0x00510C9B: cmp      byte ptr [eax + 0x17], cl
0x00510C9E: jne      0x510ca7
0x00510CA0: mov      eax, dword ptr [eax + 0x10]
0x00510CA3: mov      ebp, eax
0x00510CA5: jmp      0x510cc1
0x00510CA7: mov      eax, dword ptr [eax]
0x00510CA9: test     eax, eax
0x00510CAB: je       0x510cb9
0x00510CAD: push     ecx
0x00510CAE: mov      ecx, eax
0x00510CB0: call     0x461400
0x00510CB5: mov      ebp, eax
0x00510CB7: jmp      0x510cc1
0x00510CB9: xor      eax, eax
0x00510CBB: mov      ebp, eax
0x00510CBD: jmp      0x510cc1
0x00510CBF: xor      ebp, ebp
0x00510CC1: mov      ecx, dword ptr [edi + 0x15c]
0x00510CC7: mov      eax, dword ptr [ecx + 4]
0x00510CCA: cmp      eax, 4
0x00510CCD: je       0x510ce0
0x00510CCF: mov      edx, dword ptr [ebp + 0x1dc]
0x00510CD5: movsx    edx, byte ptr [edx]
0x00510CD8: cmp      edx, eax
0x00510CDA: jne      0x510f9e
0x00510CE0: cmp      byte ptr [ecx], 0
0x00510CE3: je       0x510f9e
0x00510CE9: cmp      dword ptr [edi + 0x17c], 0
0x00510CF0: jne      0x510f9e
0x00510CF6: mov      eax, dword ptr [edi + 0x178]
0x00510CFC: test     eax, eax
0x00510CFE: je       0x510d12
0x00510D00: cmp      eax, 1
0x00510D03: jne      0x510f9e
0x00510D09: cmp      byte ptr [ecx + 0x10], al
0x00510D0C: jne      0x510f9e
0x00510D12: mov      ecx, dword ptr [edi + 0x160]
0x00510D18: movzx    eax, byte ptr [ecx + 1]
0x00510D1C: mov      edx, dword ptr [ecx + 4]
0x00510D1F: mov      esi, dword ptr [edx + 0x1c]
0x00510D22: add      eax, eax
0x00510D24: add      eax, eax
0x00510D26: mov      esi, dword ptr [eax + esi]
0x00510D29: test     esi, esi
0x00510D2B: je       0x510d4d
0x00510D2D: mov      ebx, dword ptr [edx + 0xc]
0x00510D30: test     dword ptr [eax + ebx], 0x200
0x00510D37: je       0x510d4d
0x00510D39: test     byte ptr [esi + 8], 8
0x00510D3D: je       0x510d4d
0x00510D3F: mov      edx, dword ptr [edx + 0x20]
0x00510D42: add      eax, edx
0x00510D44: cmp      dword ptr [eax], 0
0x00510D47: je       0x510d4d
0x00510D49: mov      eax, dword ptr [eax]
0x00510D4B: jmp      0x510d4f
0x00510D4D: mov      eax, esi
0x00510D4F: fld      dword ptr [eax + 0xc]
0x00510D52: mov      edx, dword ptr [ebp + 8]
0x00510D55: fstp     dword ptr [esp + 0x24]
0x00510D59: fld      dword ptr [eax + 0x10]
0x00510D5C: fstp     dword ptr [esp + 0x28]
0x00510D60: fld      dword ptr [eax + 0x14]
0x00510D63: movzx    eax, byte ptr [edx + 1]
0x00510D67: mov      edx, dword ptr [edx + 4]
0x00510D6A: fstp     dword ptr [esp + 0x2c]
0x00510D6E: mov      esi, dword ptr [edx + 0x1c]
0x00510D71: add      eax, eax
0x00510D73: add      eax, eax
0x00510D75: mov      esi, dword ptr [eax + esi]
0x00510D78: test     esi, esi
0x00510D7A: je       0x510d9c
0x00510D7C: mov      ebx, dword ptr [edx + 0xc]
0x00510D7F: test     dword ptr [eax + ebx], 0x200
0x00510D86: je       0x510d9c
0x00510D88: test     byte ptr [esi + 8], 8
0x00510D8C: je       0x510d9c
0x00510D8E: mov      edx, dword ptr [edx + 0x20]
0x00510D91: add      eax, edx
0x00510D93: cmp      dword ptr [eax], 0
0x00510D96: je       0x510d9c
0x00510D98: mov      eax, dword ptr [eax]
0x00510D9A: jmp      0x510d9e
0x00510D9C: mov      eax, esi
0x00510D9E: fld      dword ptr [eax + 0xc]
0x00510DA1: fstp     dword ptr [esp + 0x14]
0x00510DA5: fld      dword ptr [eax + 0x10]
0x00510DA8: fstp     dword ptr [esp + 0x18]
0x00510DAC: fld      dword ptr [eax + 0x14]
0x00510DAF: mov      dword ptr [edi + 0x184], ebp
0x00510DB5: fstp     dword ptr [esp + 0x1c]
0x00510DB9: movzx    eax, byte ptr [ecx + 1]
0x00510DBD: fld      dword ptr [esp + 0x14]
0x00510DC1: mov      ecx, dword ptr [ecx + 4]
0x00510DC4: fsub     dword ptr [esp + 0x24]
0x00510DC8: mov      edx, dword ptr [ecx + 0x1c]
0x00510DCB: add      eax, eax
0x00510DCD: add      eax, eax
0x00510DCF: mov      edx, dword ptr [eax + edx]
0x00510DD2: fstp     dword ptr [esp + 0x34]
0x00510DD6: fld      dword ptr [esp + 0x18]
0x00510DDA: fsub     dword ptr [esp + 0x28]
0x00510DDE: fstp     dword ptr [esp + 0x38]
0x00510DE2: fld      dword ptr [esp + 0x1c]
0x00510DE6: fsub     dword ptr [esp + 0x2c]
0x00510DEA: fstp     dword ptr [esp + 0x3c]
0x00510DEE: test     edx, edx
0x00510DF0: je       0x510e12
0x00510DF2: mov      esi, dword ptr [ecx + 0xc]
0x00510DF5: test     dword ptr [eax + esi], 0x200
0x00510DFC: je       0x510e12
0x00510DFE: test     byte ptr [edx + 8], 8
0x00510E02: je       0x510e12
0x00510E04: mov      ecx, dword ptr [ecx + 0x20]
0x00510E07: add      eax, ecx
0x00510E09: cmp      dword ptr [eax], 0
0x00510E0C: je       0x510e12
0x00510E0E: mov      eax, dword ptr [eax]
0x00510E10: jmp      0x510e14
0x00510E12: mov      eax, edx
0x00510E14: add      eax, 0x1c
0x00510E17: push     eax
0x00510E18: lea      edx, [esp + 0x18]
0x00510E1C: push     edx
0x00510E1D: call     0x6af9a0
0x00510E22: mov      eax, dword ptr [edi + 0x15c]
0x00510E28: add      esp, 8
0x00510E2B: cmp      byte ptr [eax + 0x11], 0
0x00510E2F: je       0x510e4f
0x00510E31: fld      dword ptr [esp + 0x14]
0x00510E35: fchs     
0x00510E37: fstp     dword ptr [esp + 0x14]
0x00510E3B: fld      dword ptr [esp + 0x18]
0x00510E3F: fchs     
0x00510E41: fstp     dword ptr [esp + 0x18]
0x00510E45: fld      dword ptr [esp + 0x1c]
0x00510E49: fchs     
0x00510E4B: fstp     dword ptr [esp + 0x1c]
0x00510E4F: fld      dword ptr [esp + 0x14]
0x00510E53: fmul     dword ptr [esp + 0x34]
0x00510E57: fld      dword ptr [esp + 0x38]
0x00510E5B: fmul     dword ptr [esp + 0x18]
0x00510E5F: faddp    st(1)
0x00510E61: fld      dword ptr [esp + 0x1c]
0x00510E65: fmul     dword ptr [esp + 0x3c]
0x00510E69: faddp    st(1)
0x00510E6B: fstp     dword ptr [esp + 0x54]
0x00510E6F: fld      dword ptr [esp + 0x54]
0x00510E73: fld      st(0)
0x00510E75: fabs     
0x00510E77: fstp     dword ptr [esp + 0x54]
0x00510E7B: fld      dword ptr [esp + 0x54]
0x00510E7F: fcomp    qword ptr [0x9836b0] ; [f64=0.2, u32=0xA0000000]
0x00510E85: fnstsw   ax
0x00510E87: test     ah, 1
0x00510E8A: jne      0x510f9c
0x00510E90: fldz     
0x00510E92: fcom     st(1)
0x00510E94: fnstsw   ax
0x00510E96: test     ah, 0x41
0x00510E99: jp       0x510eaa
0x00510E9B: mov      eax, dword ptr [edi + 0x178]
0x00510EA1: mov      ebx, 1
0x00510EA6: cmp      eax, ebx
0x00510EA8: je       0x510eca
0x00510EAA: fcompp   
0x00510EAC: fnstsw   ax
0x00510EAE: test     ah, 1
0x00510EB1: jne      0x510f9e
0x00510EB7: mov      eax, dword ptr [edi + 0x178]
0x00510EBD: test     eax, eax
0x00510EBF: jne      0x510f9e
0x00510EC5: lea      ebx, [eax + 1]
0x00510EC8: jmp      0x510ece
0x00510ECA: fstp     st(0)
0x00510ECC: fstp     st(0)
0x00510ECE: xor      ecx, ecx
0x00510ED0: test     eax, eax
0x00510ED2: sete     cl
0x00510ED5: mov      dword ptr [edi + 0x178], ecx
0x00510EDB: mov      ecx, edi
0x00510EDD: call     0x510980
0x00510EE2: mov      edx, dword ptr [edi + 0x15c]
0x00510EE8: cmp      byte ptr [edx + 1], 0
0x00510EEC: je       0x510f12
0x00510EEE: mov      eax, dword ptr [edi + 0x178]
0x00510EF4: lea      ecx, [edi + 0x188]
0x00510EFA: push     ecx
0x00510EFB: mov      dword ptr [edi + 0x18c], eax
0x00510F01: mov      edx, dword ptr [0xb1baf8]
0x00510F07: push     0
0x00510F09: push     edx
0x00510F0A: call     0x52d190
0x00510F0F: add      esp, 0xc
0x00510F12: mov      eax, dword ptr [edi + 0x15c]
0x00510F18: cmp      byte ptr [eax + 8], bl
0x00510F1B: jne      0x510f2c
0x00510F1D: mov      dword ptr [edi + 0x17c], ebx
0x00510F23: fld      dword ptr [eax + 0xc]
0x00510F26: fstp     dword ptr [edi + 0x180]
0x00510F2C: fldz     
0x00510F2E: mov      ecx, dword ptr [ebp + 0x1b4]
0x00510F34: fcomp    dword ptr [esp + 0x18]
0x00510F38: fnstsw   ax
0x00510F3A: test     ah, 0x41
0x00510F3D: jp       0x510f5e
0x00510F3F: mov      dword ptr [esp + 0x54], 0x9835a8
0x00510F47: mov      eax, dword ptr [ecx]
0x00510F49: mov      eax, dword ptr [eax + 8]
0x00510F4C: push     ebx
0x00510F4D: lea      edx, [esp + 0x58]
0x00510F51: push     edx
0x00510F52: mov      dword ptr [esp + 0x54], 0
0x00510F5A: call     eax
0x00510F5C: jmp      0x510f77
0x00510F5E: mov      dword ptr [esp + 0x54], 0x9835bc
0x00510F66: mov      edx, dword ptr [ecx]
0x00510F68: mov      edx, dword ptr [edx + 8]
0x00510F6B: push     ebx
0x00510F6C: lea      eax, [esp + 0x58]
0x00510F70: push     eax
0x00510F71: mov      dword ptr [esp + 0x54], ebx
0x00510F75: call     edx
0x00510F77: mov      dword ptr [esp + 0x54], 0x983594
0x00510F7F: mov      ecx, dword ptr [edi + 0x194]
0x00510F85: mov      eax, dword ptr [ecx]
0x00510F87: mov      eax, dword ptr [eax + 8]
0x00510F8A: push     ebx
0x00510F8B: lea      edx, [esp + 0x58]
0x00510F8F: push     edx
0x00510F90: mov      dword ptr [esp + 0x54], 2
0x00510F98: call     eax
0x00510F9A: jmp      0x510f9e
0x00510F9C: fstp     st(0)
0x00510F9E: mov      eax, 1
0x00510FA3: mov      ecx, dword ptr [esp + 0x44]
0x00510FA7: mov      dword ptr fs:[0], ecx
0x00510FAE: pop      ecx
0x00510FAF: pop      edi
0x00510FB0: pop      esi
0x00510FB1: pop      ebp
0x00510FB2: pop      ebx
0x00510FB3: add      esp, 0x3c
0x00510FB6: ret      4
0x00510FB9: int3     
0x00510FBA: int3     
0x00510FBB: int3     
0x00510FBC: int3     
0x00510FBD: int3     
0x00510FBE: int3     
0x00510FBF: int3     

--- CMecaSwitchObject::vfunc_4 @ 0x00510FC0 ---
0x00510FC0: push     -1
0x00510FC2: push     0x943913
0x00510FC7: mov      eax, dword ptr fs:[0]
0x00510FCD: push     eax
0x00510FCE: sub      esp, 0x40
0x00510FD1: push     ebx
0x00510FD2: push     esi
0x00510FD3: push     edi
0x00510FD4: mov      eax, dword ptr [0xb089c8]
0x00510FD9: xor      eax, esp
0x00510FDB: push     eax
0x00510FDC: lea      eax, [esp + 0x50]
0x00510FE0: mov      dword ptr fs:[0], eax
0x00510FE6: mov      esi, ecx
0x00510FE8: mov      eax, dword ptr [esi + 8]
0x00510FEB: lea      ecx, [esi + 0x14]
0x00510FEE: push     ecx
0x00510FEF: push     eax
0x00510FF0: call     0x5687c0
0x00510FF5: mov      edi, dword ptr [esp + 0x6c]
0x00510FF9: mov      edx, dword ptr [esp + 0x68]
0x00510FFD: add      esp, 8
0x00511000: push     edi
0x00511001: push     edx
0x00511002: mov      ecx, esi
0x00511004: call     0x79ac30
0x00511009: mov      eax, edi
0x0051100B: sub      eax, 2
0x0051100E: je       0x511244
0x00511014: sub      eax, 6
0x00511017: jne      0x511311
0x0051101D: mov      eax, dword ptr [esi + 0x160]
0x00511023: movzx    ecx, byte ptr [eax + 1]
0x00511027: mov      edx, dword ptr [eax + 4]
0x0051102A: mov      edx, dword ptr [edx + 0x40]
0x0051102D: cmp      dword ptr [edx + ecx*4], 0
0x00511031: je       0x511058
0x00511033: movzx    ecx, byte ptr [eax + 1]
0x00511037: mov      edx, dword ptr [eax + 4]
0x0051103A: mov      edx, dword ptr [edx + 0x40]
0x0051103D: mov      ecx, dword ptr [edx + ecx*4]
0x00511040: cmp      dword ptr [ecx + 0x20], 0
0x00511044: je       0x511058
0x00511046: movzx    edx, byte ptr [eax + 1]
0x0051104A: mov      eax, dword ptr [eax + 4]
0x0051104D: mov      ecx, dword ptr [eax + 0x40]
0x00511050: mov      edx, dword ptr [ecx + edx*4]
0x00511053: mov      eax, dword ptr [edx + 0x20]
0x00511056: jmp      0x511065
0x00511058: movzx    ecx, byte ptr [eax + 1]
0x0051105C: mov      edx, dword ptr [eax + 4]
0x0051105F: mov      eax, dword ptr [edx + 0x1c]
0x00511062: mov      eax, dword ptr [eax + ecx*4]
0x00511065: fld      dword ptr [eax + 0x1c]
0x00511068: add      eax, 0x1c
0x0051106B: fstp     dword ptr [esi + 0x168]
0x00511071: fld      dword ptr [eax + 4]
0x00511074: fstp     dword ptr [esi + 0x16c]
0x0051107A: fld      dword ptr [eax + 8]
0x0051107D: fstp     dword ptr [esi + 0x170]
0x00511083: fld      dword ptr [eax + 0xc]
0x00511086: fstp     dword ptr [esi + 0x174]
0x0051108C: mov      ecx, dword ptr [esi + 0x160]
0x00511092: push     ecx
0x00511093: call     0x5107f0
0x00511098: mov      eax, dword ptr [esi + 0x15c]
0x0051109E: add      esp, 4
0x005110A1: cmp      byte ptr [eax + 0x11], 0
0x005110A5: je       0x511228
0x005110AB: push     0
0x005110AD: lea      ecx, [eax + 0x38]
0x005110B0: call     0x499af0
0x005110B5: mov      ecx, dword ptr [esi + 0x15c]
0x005110BB: push     0
0x005110BD: add      ecx, 0x44
0x005110C0: mov      edi, eax
0x005110C2: call     0x499af0
0x005110C7: fldz     
0x005110C9: fld1     
0x005110CB: mov      ebx, eax
0x005110CD: test     edi, edi
0x005110CF: je       0x51115e
0x005110D5: fxch     st(1)
0x005110D7: push     ecx
0x005110D8: fst      dword ptr [esp + 0x14]
0x005110DC: lea      edx, [esp + 0x14]
0x005110E0: fstp     dword ptr [esp + 0x1c]
0x005110E4: lea      eax, [esp + 0x34]
0x005110E8: fst      dword ptr [esp + 0x18]
0x005110EC: fstp     dword ptr [esp + 0x20]
0x005110F0: fld      dword ptr [0x9836b8] ; [f32=3.14159, u32=0x40490FDB]
0x005110F6: fstp     dword ptr [esp]
0x005110F9: push     edx
0x005110FA: push     eax
0x005110FB: call     0x6b0a50
0x00511100: movzx    eax, byte ptr [edi + 1]
0x00511104: mov      edx, dword ptr [edi + 4]
0x00511107: mov      ecx, dword ptr [edx + 0x40]
0x0051110A: add      eax, eax
0x0051110C: add      eax, eax
0x0051110E: mov      ecx, dword ptr [eax + ecx]
0x00511111: add      esp, 0xc
0x00511114: test     ecx, ecx
0x00511116: je       0x511126
0x00511118: mov      ecx, dword ptr [ecx + 0x20]
0x0051111B: test     ecx, ecx
0x0051111D: je       0x511126
0x0051111F: lea      edx, [esp + 0x30]
0x00511123: push     edx
0x00511124: jmp      0x511153
0x00511126: mov      ecx, dword ptr [edx + 0x1c]
0x00511129: mov      ecx, dword ptr [eax + ecx]
0x0051112C: test     ecx, ecx
0x0051112E: je       0x51114e
0x00511130: mov      edi, dword ptr [edx + 0xc]
0x00511133: test     dword ptr [eax + edi], 0x200
0x0051113A: je       0x51114e
0x0051113C: test     byte ptr [ecx + 8], 8
0x00511140: je       0x51114e
0x00511142: mov      edx, dword ptr [edx + 0x20]
0x00511145: add      eax, edx
0x00511147: cmp      dword ptr [eax], 0
0x0051114A: je       0x51114e
0x0051114C: mov      ecx, dword ptr [eax]
0x0051114E: lea      eax, [esp + 0x30]
0x00511152: push     eax
0x00511153: call     0x509670
0x00511158: fld1     
0x0051115A: fldz     
0x0051115C: fxch     st(1)
0x0051115E: test     ebx, ebx
0x00511160: je       0x511224
0x00511166: fxch     st(1)
0x00511168: push     ecx
0x00511169: fst      dword ptr [esp + 0x24]
0x0051116D: lea      ecx, [esp + 0x24]
0x00511171: fstp     dword ptr [esp + 0x2c]
0x00511175: lea      edx, [esp + 0x44]
0x00511179: fst      dword ptr [esp + 0x28]
0x0051117D: fstp     dword ptr [esp + 0x30]
0x00511181: fld      dword ptr [0x9836b8] ; [f32=3.14159, u32=0x40490FDB]
0x00511187: fstp     dword ptr [esp]
0x0051118A: push     ecx
0x0051118B: push     edx
0x0051118C: call     0x6b0a50
0x00511191: movzx    eax, byte ptr [ebx + 1]
0x00511195: mov      edx, dword ptr [ebx + 4]
0x00511198: mov      ecx, dword ptr [edx + 0x40]
0x0051119B: add      eax, eax
0x0051119D: add      eax, eax
0x0051119F: mov      ecx, dword ptr [eax + ecx]
0x005111A2: add      esp, 0xc
0x005111A5: test     ecx, ecx
0x005111A7: je       0x5111d6
0x005111A9: mov      ecx, dword ptr [ecx + 0x20]
0x005111AC: test     ecx, ecx
0x005111AE: je       0x5111d6
0x005111B0: lea      edx, [esp + 0x40]
0x005111B4: push     edx
0x005111B5: call     0x509670
0x005111BA: mov      ecx, esi
0x005111BC: call     0x510980
0x005111C1: mov      ecx, dword ptr [esp + 0x50]
0x005111C5: mov      dword ptr fs:[0], ecx
0x005111CC: pop      ecx
0x005111CD: pop      edi
0x005111CE: pop      esi
0x005111CF: pop      ebx
0x005111D0: add      esp, 0x4c
0x005111D3: ret      8
0x005111D6: mov      ecx, dword ptr [edx + 0x1c]
0x005111D9: mov      ecx, dword ptr [eax + ecx]
0x005111DC: test     ecx, ecx
0x005111DE: je       0x5111fe
0x005111E0: mov      edi, dword ptr [edx + 0xc]
0x005111E3: test     dword ptr [eax + edi], 0x200
0x005111EA: je       0x5111fe
0x005111EC: test     byte ptr [ecx + 8], 8
0x005111F0: je       0x5111fe
0x005111F2: mov      edx, dword ptr [edx + 0x20]
0x005111F5: add      eax, edx
0x005111F7: cmp      dword ptr [eax], 0
0x005111FA: je       0x5111fe
0x005111FC: mov      ecx, dword ptr [eax]
0x005111FE: lea      eax, [esp + 0x40]
0x00511202: push     eax
0x00511203: call     0x509670
0x00511208: mov      ecx, esi
0x0051120A: call     0x510980
0x0051120F: mov      ecx, dword ptr [esp + 0x50]
0x00511213: mov      dword ptr fs:[0], ecx
0x0051121A: pop      ecx
0x0051121B: pop      edi
0x0051121C: pop      esi
0x0051121D: pop      ebx
0x0051121E: add      esp, 0x4c
0x00511221: ret      8
0x00511224: fstp     st(1)
0x00511226: fstp     st(0)
0x00511228: mov      ecx, esi
0x0051122A: call     0x510980
0x0051122F: mov      ecx, dword ptr [esp + 0x50]
0x00511233: mov      dword ptr fs:[0], ecx
0x0051123A: pop      ecx
0x0051123B: pop      edi
0x0051123C: pop      esi
0x0051123D: pop      ebx
0x0051123E: add      esp, 0x4c
0x00511241: ret      8
0x00511244: mov      eax, dword ptr [esi + 8]
0x00511247: movzx    ecx, byte ptr [eax + 1]
0x0051124B: mov      edx, dword ptr [eax + 4]
0x0051124E: mov      eax, dword ptr [edx + 0x38]
0x00511251: mov      eax, dword ptr [eax + ecx*4]
0x00511254: add      eax, 0x38
0x00511257: push     0
0x00511259: lea      ecx, [eax + 0x14]
0x0051125C: mov      dword ptr [esi + 0x15c], eax
0x00511262: call     0x499af0
0x00511267: mov      ecx, dword ptr [esi + 0x15c]
0x0051126D: push     0
0x0051126F: push     1
0x00511271: mov      dword ptr [esi + 0x160], eax
0x00511277: movsx    edx, byte ptr [ecx + 0x50]
0x0051127B: push     0
0x0051127D: push     1
0x0051127F: mov      dword ptr [esi + 0x190], edx
0x00511285: mov      eax, dword ptr [0xb01b28]
0x0051128A: push     0
0x0051128C: push     eax
0x0051128D: push     0xdc
0x00511292: call     0x688fe0
0x00511297: mov      edi, eax
0x00511299: add      esp, 0x1c
0x0051129C: mov      dword ptr [esp + 0x64], edi
0x005112A0: mov      dword ptr [esp + 0x58], 0
0x005112A8: test     edi, edi
0x005112AA: je       0x5112c1
0x005112AC: mov      ecx, edi
0x005112AE: call     0x56d800
0x005112B3: mov      dword ptr [edi], 0x983564
0x005112B9: mov      dword ptr [edi + 0xd8], esi
0x005112BF: jmp      0x5112c3
0x005112C1: xor      edi, edi
0x005112C3: mov      eax, dword ptr [esi + 0x160]
0x005112C9: mov      dword ptr [esi + 0x164], edi
0x005112CF: movzx    ecx, byte ptr [eax + 1]
0x005112D3: mov      edx, dword ptr [eax + 4]
0x005112D6: mov      eax, dword ptr [edx + 0x34]
0x005112D9: mov      ecx, dword ptr [eax + ecx*4]
0x005112DC: mov      edx, dword ptr [ecx]
0x005112DE: mov      eax, dword ptr [edx + 0x100]
0x005112E4: push     edi
0x005112E5: mov      dword ptr [esp + 0x5c], 0xffffffff
0x005112ED: call     eax
0x005112EF: mov      eax, dword ptr [esi + 0x160]
0x005112F5: movzx    ecx, byte ptr [eax + 1]
0x005112F9: mov      edx, dword ptr [eax + 4]
0x005112FC: mov      eax, dword ptr [edx + 0x34]
0x005112FF: mov      ecx, dword ptr [eax + ecx*4]
0x00511302: mov      edx, dword ptr [ecx + 0x98]
0x00511308: mov      eax, dword ptr [esi + 8]
0x0051130B: mov      dword ptr [edx + 0x11c], eax
0x00511311: mov      ecx, dword ptr [esp + 0x50]
0x00511315: mov      dword ptr fs:[0], ecx
0x0051131C: pop      ecx
0x0051131D: pop      edi
0x0051131E: pop      esi
0x0051131F: pop      ebx
0x00511320: add      esp, 0x4c
0x00511323: ret      8
0x00511326: int3     
0x00511327: int3     
0x00511328: int3     
0x00511329: int3     
0x0051132A: int3     
0x0051132B: int3     
0x0051132C: int3     
0x0051132D: int3     
0x0051132E: int3     
0x0051132F: int3     

--- CMecaSwitchObject::vfunc_43 @ 0x00511330 ---
0x00511330: push     ecx
0x00511331: push     esi
0x00511332: mov      esi, ecx
0x00511334: cmp      dword ptr [esi + 0x17c], 1
0x0051133B: jne      0x511405
0x00511341: mov      eax, dword ptr [esi + 0x15c]
0x00511347: cmp      byte ptr [eax], 0
0x0051134A: je       0x511405
0x00511350: fld      dword ptr [esi + 0x180]
0x00511356: fsub     dword ptr [0xb76120]
0x0051135C: fstp     dword ptr [esp + 4]
0x00511360: fld      dword ptr [esp + 4]
0x00511364: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x0051136A: fnstsw   ax
0x0051136C: fldz     
0x0051136E: test     ah, 0x41
0x00511371: jne      0x51137d
0x00511373: fstp     st(1)
0x00511375: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x0051137B: jmp      0x51139c
0x0051137D: fxch     st(1)
0x0051137F: fcom     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00511385: fnstsw   ax
0x00511387: test     ah, 0x41
0x0051138A: jne      0x511392
0x0051138C: fstp     dword ptr [esp + 4]
0x00511390: jmp      0x511398
0x00511392: fstp     st(0)
0x00511394: fst      dword ptr [esp + 4]
0x00511398: fld      dword ptr [esp + 4]
0x0051139C: fstp     dword ptr [esp + 4]
0x005113A0: fld      dword ptr [esp + 4]
0x005113A4: fst      dword ptr [esi + 0x180]
0x005113AA: fucompp  
0x005113AC: fnstsw   ax
0x005113AE: test     ah, 0x44
0x005113B1: jp       0x511405
0x005113B3: xor      ecx, ecx
0x005113B5: cmp      dword ptr [esi + 0x178], ecx
0x005113BB: mov      dword ptr [esi + 0x17c], 0
0x005113C5: sete     cl
0x005113C8: mov      dword ptr [esi + 0x178], ecx
0x005113CE: mov      ecx, esi
0x005113D0: call     0x510980
0x005113D5: mov      edx, dword ptr [esi + 0x15c]
0x005113DB: cmp      byte ptr [edx + 1], 0
0x005113DF: je       0x511405
0x005113E1: mov      eax, dword ptr [esi + 0x178]
0x005113E7: mov      dword ptr [esi + 0x18c], eax
0x005113ED: mov      ecx, dword ptr [0xb1baf8]
0x005113F3: add      esi, 0x188
0x005113F9: push     esi
0x005113FA: push     0
0x005113FC: push     ecx
0x005113FD: call     0x52d190
0x00511402: add      esp, 0xc
0x00511405: pop      esi
0x00511406: pop      ecx
0x00511407: ret      
0x00511408: int3     
0x00511409: int3     
0x0051140A: int3     
0x0051140B: int3     
0x0051140C: int3     
0x0051140D: int3     
0x0051140E: int3     
0x0051140F: int3     
0x00511410: mov      eax, dword ptr [esp + 4]
0x00511414: test     eax, eax
0x00511416: je       0x51143d
0x00511418: movzx    edx, byte ptr [eax + 1]
0x0051141C: mov      eax, dword ptr [eax + 4]
0x0051141F: mov      eax, dword ptr [eax + 0x38]
0x00511422: mov      edx, dword ptr [eax + edx*4]
0x00511425: mov      eax, dword ptr [edx + 0x28]
0x00511428: cmp      eax, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x0051142E: jne      0x51143d
0x00511430: mov      edx, dword ptr [esp + 8]
0x00511434: push     edx
0x00511435: call     0x510c20
0x0051143A: ret      8
0x0051143D: mov      eax, 1
0x00511442: ret      8
0x00511445: int3     
0x00511446: int3     
0x00511447: int3     
0x00511448: int3     
0x00511449: int3     
0x0051144A: int3     
0x0051144B: int3     
0x0051144C: int3     
0x0051144D: int3     
0x0051144E: int3     
0x0051144F: int3     

--- ffMecaSwitchObjectTestState::execute @ 0x00511450 ---
0x00511450: mov      ecx, dword ptr [esp + 4]
0x00511454: push     0
0x00511456: push     0x1f
0x00511458: add      ecx, 0x14
0x0051145B: call     0x507ed0
0x00511460: mov      eax, dword ptr [eax + 0x178]
0x00511466: ret      
0x00511467: int3     
0x00511468: int3     
0x00511469: int3     
0x0051146A: int3     
0x0051146B: int3     
0x0051146C: int3     
0x0051146D: int3     
0x0051146E: int3     
0x0051146F: int3     

--- faMecaSwitchObjectActive::execute @ 0x00511470 ---
0x00511470: push     esi
0x00511471: mov      esi, dword ptr [esp + 8]
0x00511475: push     0
0x00511477: push     0x1f
0x00511479: lea      ecx, [esi + 0x4c]
0x0051147C: call     0x507ed0
0x00511481: mov      cl, byte ptr [esi + 0x58]
0x00511484: mov      eax, dword ptr [eax + 0x15c]
0x0051148A: mov      byte ptr [eax], cl
0x0051148C: pop      esi
0x0051148D: ret      
0x0051148E: int3     
0x0051148F: int3     

--- faMecaSwitchObjectResetState::execute @ 0x00511490 ---
0x00511490: mov      ecx, dword ptr [esp + 4]
0x00511494: push     0
0x00511496: push     0x1f
0x00511498: add      ecx, 0x4c
0x0051149B: call     0x507ed0
0x005114A0: mov      ecx, eax
0x005114A2: jmp      0x510b80
0x005114A7: int3     
0x005114A8: int3     
0x005114A9: int3     
0x005114AA: int3     
0x005114AB: int3     
0x005114AC: int3     
0x005114AD: int3     
0x005114AE: int3     
0x005114AF: int3     

--- faMecaSwitchObjectSetState::execute @ 0x005114B0 ---
0x005114B0: push     esi
0x005114B1: mov      esi, dword ptr [esp + 8]
0x005114B5: push     0
0x005114B7: push     0x1f
0x005114B9: lea      ecx, [esi + 0x4c]
0x005114BC: call     0x507ed0
0x005114C1: movsx    ecx, byte ptr [esi + 0x58]
0x005114C5: push     ecx
0x005114C6: mov      ecx, eax
0x005114C8: call     0x510bd0
0x005114CD: pop      esi
0x005114CE: ret      
0x005114CF: int3     

--- faMecaSwitchObjectSetDecreaseObjective::execute @ 0x005114D0 ---
0x005114D0: push     esi
0x005114D1: mov      esi, dword ptr [esp + 8]
0x005114D5: push     0
0x005114D7: push     0x1f
0x005114D9: lea      ecx, [esi + 0x4c]
0x005114DC: call     0x507ed0
0x005114E1: movsx    ecx, byte ptr [esi + 0x58]
0x005114E5: mov      dword ptr [eax + 0x190], ecx
0x005114EB: pop      esi
0x005114EC: ret      
0x005114ED: int3     
0x005114EE: int3     
0x005114EF: int3     

--- CMecaSwitchObject::ctor @ 0x005114F0 ---
0x005114F0: push     -1
0x005114F2: push     0x943953
0x005114F7: mov      eax, dword ptr fs:[0]
0x005114FD: push     eax
0x005114FE: push     ecx
0x005114FF: push     esi
0x00511500: push     edi
0x00511501: mov      eax, dword ptr [0xb089c8]
0x00511506: xor      eax, esp
0x00511508: push     eax
0x00511509: lea      eax, [esp + 0x10]
0x0051150D: mov      dword ptr fs:[0], eax
0x00511513: mov      esi, ecx
0x00511515: mov      dword ptr [esp + 0xc], esi
0x00511519: mov      eax, dword ptr [esp + 0x20]
0x0051151D: push     eax
0x0051151E: call     0x50de10
0x00511523: fldz     
0x00511525: xor      edi, edi
0x00511527: push     edi
0x00511528: push     1
0x0051152A: mov      dword ptr [esi], 0x9835d0
0x00511530: mov      dword ptr [esi + 0x18c], edi
0x00511536: mov      dword ptr [esi + 0x190], 1
0x00511540: fstp     dword ptr [esi + 0x180]
0x00511546: mov      ecx, dword ptr [esi + 8]
0x00511549: push     edi
0x0051154A: push     1
0x0051154C: mov      dword ptr [esi + 0x164], edi
0x00511552: mov      dword ptr [esi + 0x160], edi
0x00511558: mov      dword ptr [esi + 0x178], edi
0x0051155E: mov      dword ptr [esi + 0x17c], edi
0x00511564: mov      dword ptr [esi + 0x188], ecx
0x0051156A: mov      edx, dword ptr [0xb01b28]
0x00511570: push     edi
0x00511571: push     edx
0x00511572: push     0x28
0x00511574: mov      dword ptr [esp + 0x34], edi
0x00511578: call     0x688fe0
0x0051157D: add      esp, 0x1c
0x00511580: mov      dword ptr [esp + 0x20], eax
0x00511584: mov      byte ptr [esp + 0x18], 1
0x00511589: cmp      eax, edi
0x0051158B: je       0x51159c
0x0051158D: mov      ecx, eax
0x0051158F: call     0x509c70
0x00511594: mov      dword ptr [esi + 0x194], eax
0x0051159A: jmp      0x5115a2
0x0051159C: mov      dword ptr [esi + 0x194], edi
0x005115A2: mov      eax, esi
0x005115A4: mov      ecx, dword ptr [esp + 0x10]
0x005115A8: mov      dword ptr fs:[0], ecx
0x005115AF: pop      ecx
0x005115B0: pop      edi
0x005115B1: pop      esi
0x005115B2: add      esp, 0x10
0x005115B5: ret      4
0x005115B8: int3     
0x005115B9: int3     
0x005115BA: int3     
0x005115BB: int3     
0x005115BC: int3     
0x005115BD: int3     
0x005115BE: int3     
0x005115BF: int3     
0x005115C0: xor      eax, eax
0x005115C2: cmp      dword ptr [esp + 4], 0xb1b9b4
0x005115CA: sete     al
0x005115CD: ret      4
0x005115D0: mov      eax, 0xb1b9b4
0x005115D5: ret      
0x005115D6: int3     
0x005115D7: int3     
0x005115D8: int3     
0x005115D9: int3     
0x005115DA: int3     
0x005115DB: int3     
0x005115DC: int3     
0x005115DD: int3     
0x005115DE: int3     
0x005115DF: int3     
0x005115E0: xor      eax, eax
0x005115E2: cmp      dword ptr [esp + 4], 0xb1b9b8
0x005115EA: sete     al
0x005115ED: ret      4
0x005115F0: mov      eax, 0xb1b9b8
0x005115F5: ret      
0x005115F6: int3     
0x005115F7: int3     
0x005115F8: int3     
0x005115F9: int3     
0x005115FA: int3     
0x005115FB: int3     
0x005115FC: int3     
0x005115FD: int3     
0x005115FE: int3     
0x005115FF: int3     
0x00511600: xor      eax, eax
0x00511602: cmp      dword ptr [esp + 4], 0xb1b9bc
0x0051160A: sete     al
0x0051160D: ret      4
0x00511610: mov      eax, 0xb1b9bc
0x00511615: ret      
0x00511616: int3     
0x00511617: int3     
0x00511618: int3     
0x00511619: int3     
0x0051161A: int3     
0x0051161B: int3     
0x0051161C: int3     
0x0051161D: int3     
0x0051161E: int3     
0x0051161F: int3     
0x00511620: mov      eax, dword ptr [ecx + 0xd4]
0x00511626: mov      edx, eax
0x00511628: sub      edx, ecx
0x0051162A: sub      edx, 0x8c
0x00511630: and      edx, 0xfffffffc
0x00511633: cmp      edx, 0x40
0x00511636: jge      0x511645
0x00511638: mov      edx, dword ptr [esp + 4]
0x0051163C: mov      dword ptr [eax], edx
0x0051163E: add      dword ptr [ecx + 0xd4], 4
0x00511645: ret      4
0x00511648: int3     
0x00511649: int3     
0x0051164A: int3     
0x0051164B: int3     
0x0051164C: int3     
0x0051164D: int3     
0x0051164E: int3     
0x0051164F: int3     
0x00511650: lea      eax, [ecx + 0x4c]
0x00511653: mov      ecx, dword ptr [ecx + 0xd0]
0x00511659: cmp      eax, ecx
0x0051165B: je       0x51166c
0x0051165D: mov      edx, dword ptr [esp + 4]
0x00511661: cmp      dword ptr [eax], edx
0x00511663: je       0x51166e
0x00511665: add      eax, 4
0x00511668: cmp      eax, ecx
0x0051166A: jne      0x511661
0x0051166C: xor      eax, eax
0x0051166E: ret      4
0x00511671: int3     
0x00511672: int3     
0x00511673: int3     
0x00511674: int3     
0x00511675: int3     
0x00511676: int3     
0x00511677: int3     
0x00511678: int3     
0x00511679: int3     
0x0051167A: int3     
0x0051167B: int3     
0x0051167C: int3     
0x0051167D: int3     
0x0051167E: int3     
0x0051167F: int3     
0x00511680: mov      eax, dword ptr [ecx + 8]
0x00511683: xor      eax, dword ptr [esp + 4]
0x00511687: and      eax, 1
0x0051168A: xor      dword ptr [ecx + 8], eax
0x0051168D: ret      4
0x00511690: mov      eax, 1
0x00511695: ret      0x18
0x00511698: int3     
0x00511699: int3     
0x0051169A: int3     
0x0051169B: int3     
0x0051169C: int3     
0x0051169D: int3     
0x0051169E: int3     
0x0051169F: int3     
0x005116A0: ret      0xc
0x005116A3: int3     
0x005116A4: int3     
0x005116A5: int3     
0x005116A6: int3     
0x005116A7: int3     
0x005116A8: int3     
0x005116A9: int3     
0x005116AA: int3     
0x005116AB: int3     
0x005116AC: int3     
0x005116AD: int3     
0x005116AE: int3     
0x005116AF: int3     
0x005116B0: mov      eax, dword ptr [esp + 4]
0x005116B4: push     0
0x005116B6: push     eax
0x005116B7: push     4
0x005116B9: call     0x689060
0x005116BE: add      esp, 0xc
0x005116C1: test     eax, eax
0x005116C3: je       0x5116ce
0x005116C5: mov      dword ptr [eax], 0x983594
0x005116CB: ret      4
0x005116CE: xor      eax, eax
0x005116D0: ret      4
0x005116D3: int3     
0x005116D4: int3     
0x005116D5: int3     
0x005116D6: int3     
0x005116D7: int3     
0x005116D8: int3     
0x005116D9: int3     
0x005116DA: int3     
0x005116DB: int3     
0x005116DC: int3     
0x005116DD: int3     
0x005116DE: int3     
0x005116DF: int3     
0x005116E0: mov      eax, dword ptr [esp + 4]
0x005116E4: push     0
0x005116E6: push     eax
0x005116E7: push     4
0x005116E9: call     0x689060
0x005116EE: add      esp, 0xc
0x005116F1: test     eax, eax
0x005116F3: je       0x5116fe
0x005116F5: mov      dword ptr [eax], 0x9835a8
0x005116FB: ret      4
0x005116FE: xor      eax, eax
0x00511700: ret      4
0x00511703: int3     
0x00511704: int3     
0x00511705: int3     
0x00511706: int3     
0x00511707: int3     
0x00511708: int3     
0x00511709: int3     
0x0051170A: int3     
0x0051170B: int3     
0x0051170C: int3     
0x0051170D: int3     
0x0051170E: int3     
0x0051170F: int3     
0x00511710: mov      eax, dword ptr [esp + 4]
0x00511714: push     0
0x00511716: push     eax
0x00511717: push     4
0x00511719: call     0x689060
0x0051171E: add      esp, 0xc
0x00511721: test     eax, eax
0x00511723: je       0x51172e
0x00511725: mov      dword ptr [eax], 0x9835bc
0x0051172B: ret      4
0x0051172E: xor      eax, eax
0x00511730: ret      4
0x00511733: int3     
0x00511734: int3     
0x00511735: int3     
0x00511736: int3     
0x00511737: int3     
0x00511738: int3     
0x00511739: int3     
0x0051173A: int3     
0x0051173B: int3     
0x0051173C: int3     
0x0051173D: int3     
0x0051173E: int3     
0x0051173F: int3     

--- CMecaSwitchObject::vfunc_0 @ 0x00511740 ---
0x00511740: push     esi
0x00511741: mov      esi, ecx
0x00511743: call     0x5108f0
0x00511748: test     byte ptr [esp + 8], 1
0x0051174D: je       0x511758
0x0051174F: push     esi
0x00511750: call     0x688fb0
0x00511755: add      esp, 4
0x00511758: mov      eax, esi
0x0051175A: pop      esi
0x0051175B: ret      4
0x0051175E: int3     
0x0051175F: int3     
0x00511760: mov      eax, dword ptr [esp + 8]
0x00511764: mov      eax, dword ptr [eax + 0x11c]
0x0051176A: sub      esp, 0x4c
0x0051176D: push     ebx
0x0051176E: mov      ebx, dword ptr [esp + 0x5c]
0x00511772: push     ebp
0x00511773: push     edi
0x00511774: mov      edi, dword ptr [ebx + 0x11c]
0x0051177A: mov      ebp, ecx
0x0051177C: test     edi, edi
0x0051177E: je       0x5118a5
0x00511784: movzx    ecx, byte ptr [eax + 1]
0x00511788: mov      edx, dword ptr [eax + 4]
0x0051178B: mov      eax, dword ptr [edx + 0xc]
0x0051178E: mov      eax, dword ptr [eax + ecx*4]
0x00511791: test     eax, 0x200
0x00511796: je       0x5118a5
0x0051179C: movzx    ecx, byte ptr [edi + 1]
0x005117A0: mov      edx, dword ptr [edi + 4]
0x005117A3: mov      eax, dword ptr [edx + 0xc]
0x005117A6: test     dword ptr [eax + ecx*4], 0x200
0x005117AD: je       0x5118a5
0x005117B3: mov      ecx, dword ptr [esp + 0x5c]
0x005117B7: test     dword ptr [ecx + 0x20], 0x800000
0x005117BE: je       0x5118a5
0x005117C4: cmp      dword ptr [ebp + 0xd8], 0
0x005117CB: je       0x5118a5
0x005117D1: push     ebx
0x005117D2: mov      ecx, ebp
0x005117D4: call     0x511620
0x005117D9: push     ebx
0x005117DA: mov      ecx, ebp
0x005117DC: call     0x511650
0x005117E1: test     eax, eax
0x005117E3: jne      0x5118a5
0x005117E9: push     esi
0x005117EA: mov      esi, dword ptr [esp + 0x6c]
0x005117EE: cmp      dword ptr [esp + 0x74], eax
0x005117F2: je       0x51180c
0x005117F4: fld      dword ptr [esi + 0x20]
0x005117F7: fchs     
0x005117F9: fstp     dword ptr [esi + 0x20]
0x005117FC: fld      dword ptr [esi + 0x24]
0x005117FF: fchs     
0x00511801: fstp     dword ptr [esi + 0x24]
0x00511804: fld      dword ptr [esi + 0x28]
0x00511807: fchs     
0x00511809: fstp     dword ptr [esi + 0x28]
0x0051180C: lea      edx, [esp + 0x10]
0x00511810: push     0x4c
0x00511812: test     dl, 0x7f
0x00511815: je       0x511824
0x00511817: mov      eax, edx
0x00511819: push     eax
0x0051181A: call     0x6a9700
0x0051181F: add      esp, 8
0x00511822: jmp      0x511833
0x00511824: lea      ecx, [esp + 0x14]
0x00511828: push     0
0x0051182A: push     ecx
0x0051182B: call     0x8eb080
0x00511830: add      esp, 0xc
0x00511833: fld      dword ptr [esi + 0x20]
0x00511836: mov      edx, dword ptr [esp + 0x60]
0x0051183A: fstp     dword ptr [esp + 0x1c]
0x0051183E: mov      cl, byte ptr [esp + 0x74]
0x00511842: fld      dword ptr [esi + 0x24]
0x00511845: mov      eax, dword ptr [esp + 0x64]
0x00511849: fstp     dword ptr [esp + 0x20]
0x0051184D: mov      dword ptr [esp + 0x10], edx
0x00511851: fld      dword ptr [esi + 0x28]
0x00511854: lea      edx, [esp + 0x10]
0x00511858: fstp     dword ptr [esp + 0x24]
0x0051185C: push     edx
0x0051185D: fld      dword ptr [esi + 0x2c]
0x00511860: mov      byte ptr [esp + 0x58], cl
0x00511864: mov      ecx, dword ptr [ebp + 0xd8]
0x0051186A: fstp     dword ptr [esp + 0x2c]
0x0051186E: fld      dword ptr [esi + 0x10]
0x00511871: push     edi
0x00511872: fstp     dword ptr [esp + 0x34]
0x00511876: mov      byte ptr [esp + 0x5e], 1
0x0051187B: fld      dword ptr [esi + 0x14]
0x0051187E: mov      dword ptr [esp + 0x1c], eax
0x00511882: fstp     dword ptr [esp + 0x38]
0x00511886: mov      dword ptr [esp + 0x20], ebx
0x0051188A: fld      dword ptr [esi + 0x18]
0x0051188D: fstp     dword ptr [esp + 0x3c]
0x00511891: fld      dword ptr [esi + 0x1c]
0x00511894: fstp     dword ptr [esp + 0x40]
0x00511898: fld      dword ptr [esi + 0x30]
0x0051189B: fstp     dword ptr [esp + 0x54]
0x0051189F: call     0x511410
0x005118A4: pop      esi
0x005118A5: pop      edi
0x005118A6: pop      ebp
0x005118A7: mov      eax, 1
0x005118AC: pop      ebx
0x005118AD: add      esp, 0x4c
0x005118B0: ret      0x18
0x005118B3: int3     
0x005118B4: int3     
0x005118B5: int3     
0x005118B6: int3     
0x005118B7: int3     
0x005118B8: int3     
0x005118B9: int3     
0x005118BA: int3     
0x005118BB: int3     
0x005118BC: int3     
0x005118BD: int3     
0x005118BE: int3     
0x005118BF: int3     
0x005118C0: mov      dword ptr [ecx], 0x9836c0
0x005118C6: ret      
0x005118C7: int3     
0x005118C8: int3     
0x005118C9: int3     
0x005118CA: int3     
0x005118CB: int3     
0x005118CC: int3     
0x005118CD: int3     
0x005118CE: int3     
0x005118CF: int3     
0x005118D0: fld      dword ptr [esp + 4]
0x005118D4: mov      eax, 0x800
0x005118D9: or       word ptr [ecx + 8], ax
0x005118DD: fstp     dword ptr [ecx + 0xc]
0x005118E0: fld      dword ptr [esp + 8]
0x005118E4: fstp     dword ptr [ecx + 0x10]
0x005118E7: fld      dword ptr [esp + 0xc]
0x005118EB: fstp     dword ptr [ecx + 0x14]
0x005118EE: fld1     
0x005118F0: fstp     dword ptr [ecx + 0x18]
0x005118F3: ret      0xc
0x005118F6: int3     
0x005118F7: int3     
0x005118F8: int3     
0x005118F9: int3     
0x005118FA: int3     
0x005118FB: int3     
0x005118FC: int3     
0x005118FD: int3     
0x005118FE: int3     
0x005118FF: int3     
0x00511900: fld      dword ptr [eax + 4]
0x00511903: push     ecx
0x00511904: mov      ecx, dword ptr [esp + 8]
0x00511908: push     edx
0x00511909: sub      esp, 8
0x0051190C: fstp     dword ptr [esp + 4]
0x00511910: fld      dword ptr [eax]
0x00511912: mov      eax, dword ptr [esp + 0x18]
0x00511916: fstp     dword ptr [esp]
0x00511919: push     eax
0x0051191A: push     ecx
0x0051191B: call     0x52a610
0x00511920: add      esp, 0x18
0x00511923: ret      
0x00511924: int3     
0x00511925: int3     
0x00511926: int3     
0x00511927: int3     
0x00511928: int3     
0x00511929: int3     
0x0051192A: int3     
0x0051192B: int3     
0x0051192C: int3     
0x0051192D: int3     
0x0051192E: int3     
0x0051192F: int3     
0x00511930: mov      ecx, dword ptr [0xafce30]
0x00511936: fld      dword ptr [eax + 4]
0x00511939: mov      edx, dword ptr [0xafce2c]
0x0051193F: push     ecx
0x00511940: mov      ecx, dword ptr [esp + 8]
0x00511944: push     edx
0x00511945: sub      esp, 8
0x00511948: fstp     dword ptr [esp + 4]
0x0051194C: fld      dword ptr [eax]
0x0051194E: mov      eax, dword ptr [esp + 0x18]
0x00511952: fstp     dword ptr [esp]
0x00511955: push     eax
0x00511956: push     ecx
0x00511957: call     0x52a610
0x0051195C: add      esp, 0x18
0x0051195F: ret      
0x00511960: push     -1
0x00511962: push     0x943986
0x00511967: mov      eax, dword ptr fs:[0]
0x0051196D: push     eax
0x0051196E: push     ecx
0x0051196F: push     esi
0x00511970: mov      eax, dword ptr [0xb089c8]
0x00511975: xor      eax, esp
0x00511977: push     eax
0x00511978: lea      eax, [esp + 0xc]
0x0051197C: mov      dword ptr fs:[0], eax
0x00511982: mov      esi, ecx
0x00511984: mov      dword ptr [esp + 8], esi
0x00511988: mov      dword ptr [esi], 0x9836c8
0x0051198E: mov      dword ptr [esi + 0x1dc], 0x9836c0
0x00511998: mov      eax, dword ptr [esi + 0x1ac]
0x0051199E: push     eax
0x0051199F: mov      dword ptr [esp + 0x18], 1
0x005119A7: call     0x52d1b0
0x005119AC: mov      dword ptr [esi + 0x1ac], 0
0x005119B6: mov      ecx, dword ptr [esi + 0x1a8]
0x005119BC: push     ecx
0x005119BD: mov      byte ptr [esp + 0x1c], 0
0x005119C2: call     0x52d1b0
0x005119C7: add      esp, 8
0x005119CA: mov      ecx, esi
0x005119CC: mov      dword ptr [esi + 0x1a8], 0
0x005119D6: mov      dword ptr [esp + 0x14], 0xffffffff
0x005119DE: call     0x506b40
0x005119E3: mov      ecx, dword ptr [esp + 0xc]
0x005119E7: mov      dword ptr fs:[0], ecx
0x005119EE: pop      ecx
0x005119EF: pop      esi
0x005119F0: add      esp, 0x10
0x005119F3: ret      
0x005119F4: int3     
0x005119F5: int3     
0x005119F6: int3     
0x005119F7: int3     
0x005119F8: int3     
0x005119F9: int3     
0x005119FA: int3     
0x005119FB: int3     
0x005119FC: int3     
0x005119FD: int3     
0x005119FE: int3     
0x005119FF: int3     

--- CPlayerSpawn::ctor @ 0x00511A00 ---
0x00511A00: push     -1
0x00511A02: push     0x9439c5
0x00511A07: mov      eax, dword ptr fs:[0]
0x00511A0D: push     eax
0x00511A0E: push     ecx
0x00511A0F: push     esi
0x00511A10: push     edi
0x00511A11: mov      eax, dword ptr [0xb089c8]
0x00511A16: xor      eax, esp
0x00511A18: push     eax
0x00511A19: lea      eax, [esp + 0x10]
0x00511A1D: mov      dword ptr fs:[0], eax
0x00511A23: mov      esi, ecx
0x00511A25: mov      dword ptr [esp + 0xc], esi
0x00511A29: mov      eax, dword ptr [esp + 0x20]
0x00511A2D: push     eax
0x00511A2E: call     0x506ab0
0x00511A33: xor      edi, edi
0x00511A35: mov      dword ptr [esi], 0x9836c8
0x00511A3B: mov      dword ptr [esp + 0x18], edi
0x00511A3F: mov      dword ptr [esi + 0x1a8], edi
0x00511A45: mov      dword ptr [esi + 0x1ac], edi
0x00511A4B: push     2
0x00511A4D: lea      ecx, [esi + 0x1dc]
0x00511A53: mov      byte ptr [esp + 0x1c], 2
0x00511A58: call     0x512b90
0x00511A5D: fldz     
0x00511A5F: fst      dword ptr [esi + 0x1b4]
0x00511A65: mov      dword ptr [esi + 0x1b0], edi
0x00511A6B: fstp     dword ptr [esi + 0x1d8]
0x00511A71: mov      byte ptr [esi + 0x1b8], 0xff
0x00511A78: mov      dword ptr [esi + 0x1bc], edi
0x00511A7E: mov      dword ptr [esi + 0x1d0], edi
0x00511A84: mov      dword ptr [esi + 0x1d4], 1
0x00511A8E: mov      eax, esi
0x00511A90: mov      ecx, dword ptr [esp + 0x10]
0x00511A94: mov      dword ptr fs:[0], ecx
0x00511A9B: pop      ecx
0x00511A9C: pop      edi
0x00511A9D: pop      esi
0x00511A9E: add      esp, 0x10
0x00511AA1: ret      4
0x00511AA4: int3     
0x00511AA5: int3     
0x00511AA6: int3     
0x00511AA7: int3     
0x00511AA8: int3     
0x00511AA9: int3     
0x00511AAA: int3     
0x00511AAB: int3     
0x00511AAC: int3     
0x00511AAD: int3     
0x00511AAE: int3     
0x00511AAF: int3     
0x00511AB0: sub      esp, 0x14
0x00511AB3: mov      eax, dword ptr [ecx + 8]
0x00511AB6: mov      edx, dword ptr [eax + 4]
0x00511AB9: mov      dword ptr [esp], ecx
0x00511ABC: movzx    ecx, byte ptr [eax + 1]
0x00511AC0: mov      eax, dword ptr [edx + 0x64]
0x00511AC3: lea      eax, [eax + ecx*2]
0x00511AC6: mov      cl, byte ptr [eax]
0x00511AC8: cmp      cl, 0xff
0x00511ACB: jne      0x511ad1
0x00511ACD: xor      ecx, ecx
0x00511ACF: jmp      0x511aeb
0x00511AD1: mov      edx, dword ptr [0xb78a28]
0x00511AD7: movzx    ecx, cl
0x00511ADA: lea      ecx, [ecx + ecx*2]
0x00511ADD: mov      ecx, dword ptr [edx + ecx*4 + 8]
0x00511AE1: movzx    edx, byte ptr [eax + 1]
0x00511AE5: mov      eax, dword ptr [ecx + 0x78]
0x00511AE8: mov      ecx, dword ptr [eax + edx*4]
0x00511AEB: movzx    eax, byte ptr [ecx + 1]
0x00511AEF: mov      ecx, dword ptr [ecx + 4]
0x00511AF2: mov      edx, dword ptr [ecx + 8]
0x00511AF5: test     dword ptr [edx + eax*4], 0x40000
0x00511AFC: push     ebx
0x00511AFD: push     ebp
0x00511AFE: push     esi
0x00511AFF: push     edi
0x00511B00: mov      ebx, 0x1c
0x00511B05: je       0x511b59
0x00511B07: mov      ecx, dword ptr [ecx + 0x14]
0x00511B0A: lea      eax, [eax + eax*8]
0x00511B0D: cmp      byte ptr [ecx + eax*4 + 0x14], bl
0x00511B11: lea      eax, [ecx + eax*4]
0x00511B14: jne      0x511b1d
0x00511B16: mov      eax, dword ptr [eax + 4]
0x00511B19: mov      edi, eax
0x00511B1B: jmp      0x511b5b
0x00511B1D: cmp      byte ptr [eax + 0x15], bl
0x00511B20: jne      0x511b29
0x00511B22: mov      eax, dword ptr [eax + 8]
0x00511B25: mov      edi, eax
0x00511B27: jmp      0x511b5b
0x00511B29: cmp      byte ptr [eax + 0x16], bl
0x00511B2C: jne      0x511b35
0x00511B2E: mov      eax, dword ptr [eax + 0xc]
0x00511B31: mov      edi, eax
0x00511B33: jmp      0x511b5b
0x00511B35: cmp      byte ptr [eax + 0x17], bl
0x00511B38: jne      0x511b41
0x00511B3A: mov      eax, dword ptr [eax + 0x10]
0x00511B3D: mov      edi, eax
0x00511B3F: jmp      0x511b5b
0x00511B41: mov      eax, dword ptr [eax]
0x00511B43: test     eax, eax
0x00511B45: je       0x511b53
0x00511B47: push     ebx
0x00511B48: mov      ecx, eax
0x00511B4A: call     0x461400
0x00511B4F: mov      edi, eax
0x00511B51: jmp      0x511b5b
0x00511B53: xor      eax, eax
0x00511B55: mov      edi, eax
0x00511B57: jmp      0x511b5b
0x00511B59: xor      edi, edi
0x00511B5B: mov      ebp, dword ptr [esp + 0x28]
0x00511B5F: movzx    eax, byte ptr [ebp + 1]
0x00511B63: lea      edx, [eax + eax*8]
0x00511B66: mov      eax, dword ptr [ebp + 4]
0x00511B69: mov      ecx, dword ptr [eax + 0x14]
0x00511B6C: cmp      byte ptr [ecx + edx*4 + 0x14], bl
0x00511B70: lea      eax, [ecx + edx*4]
0x00511B73: jne      0x511b7a
0x00511B75: mov      esi, dword ptr [eax + 4]
0x00511B78: jmp      0x511bac
0x00511B7A: cmp      byte ptr [eax + 0x15], bl
0x00511B7D: jne      0x511b84
0x00511B7F: mov      esi, dword ptr [eax + 8]
0x00511B82: jmp      0x511bac
0x00511B84: cmp      byte ptr [eax + 0x16], bl
0x00511B87: jne      0x511b8e
0x00511B89: mov      esi, dword ptr [eax + 0xc]
0x00511B8C: jmp      0x511bac
0x00511B8E: cmp      byte ptr [eax + 0x17], bl
0x00511B91: jne      0x511b98
0x00511B93: mov      esi, dword ptr [eax + 0x10]
0x00511B96: jmp      0x511bac
0x00511B98: mov      eax, dword ptr [eax]
0x00511B9A: test     eax, eax
0x00511B9C: je       0x511baa
0x00511B9E: push     ebx
0x00511B9F: mov      ecx, eax
0x00511BA1: call     0x461400
0x00511BA6: mov      esi, eax
0x00511BA8: jmp      0x511bac
0x00511BAA: xor      esi, esi
0x00511BAC: mov      eax, dword ptr [ebp + 4]
0x00511BAF: movzx    edx, byte ptr [ebp + 1]
0x00511BB3: mov      ecx, dword ptr [eax + 0x1c]
0x00511BB6: mov      eax, dword ptr [ecx + edx*4]
0x00511BB9: add      eax, 0xc
0x00511BBC: push     eax
0x00511BBD: push     0x6cc6b9bb
0x00511BC2: lea      ecx, [edi + 0x1a8]
0x00511BC8: call     0x5691a0
0x00511BCD: mov      ecx, eax
0x00511BCF: call     0x56a6b0
0x00511BD4: lea      edx, [esp + 0x14]
0x00511BD8: push     edx
0x00511BD9: mov      ecx, esi
0x00511BDB: call     0x545000
0x00511BE0: fld      dword ptr [esp + 0x14]
0x00511BE4: mov      eax, dword ptr [esp + 0x10]
0x00511BE8: fstp     dword ptr [edi + 0x28c]
0x00511BEE: fld      dword ptr [esp + 0x18]
0x00511BF2: fstp     dword ptr [edi + 0x290]
0x00511BF8: fld      dword ptr [esp + 0x1c]
0x00511BFC: fstp     dword ptr [edi + 0x294]
0x00511C02: fld      dword ptr [esp + 0x20]
0x00511C06: fstp     dword ptr [edi + 0x298]
0x00511C0C: pop      edi
0x00511C0D: fldz     
0x00511C0F: pop      esi
0x00511C10: pop      ebp
0x00511C11: fstp     dword ptr [eax + 0x1b4]
0x00511C17: pop      ebx
0x00511C18: add      esp, 0x14
0x00511C1B: ret      4
0x00511C1E: int3     
0x00511C1F: int3     
0x00511C20: sub      esp, 0x10
0x00511C23: push     esi
0x00511C24: mov      esi, dword ptr [0xb78a28]
0x00511C2A: push     edi
0x00511C2B: mov      edi, ecx
0x00511C2D: mov      eax, dword ptr [edi + 8]
0x00511C30: movzx    ecx, byte ptr [eax + 1]
0x00511C34: mov      edx, dword ptr [eax + 4]
0x00511C37: mov      edx, dword ptr [edx + 0x64]
0x00511C3A: lea      ecx, [edx + ecx*2]
0x00511C3D: mov      dl, byte ptr [ecx]
0x00511C3F: cmp      dl, 0xff
0x00511C42: jne      0x511c48
0x00511C44: xor      ecx, ecx
0x00511C46: jmp      0x511c5c
0x00511C48: movzx    ecx, byte ptr [ecx + 1]
0x00511C4C: movzx    edx, dl
0x00511C4F: lea      edx, [edx + edx*2]
0x00511C52: mov      edx, dword ptr [esi + edx*4 + 8]
0x00511C56: mov      edx, dword ptr [edx + 0x78]
0x00511C59: mov      ecx, dword ptr [edx + ecx*4]
0x00511C5C: mov      edx, dword ptr [esp + 0x1c]
0x00511C60: cmp      dword ptr [edx], ecx
0x00511C62: jne      0x511d97
0x00511C68: movzx    ecx, byte ptr [eax + 1]
0x00511C6C: mov      edx, dword ptr [eax + 4]
0x00511C6F: mov      eax, dword ptr [edx + 0x64]
0x00511C72: lea      ecx, [eax + ecx*2]
0x00511C75: mov      al, byte ptr [ecx]
0x00511C77: cmp      al, 0xff
0x00511C79: jne      0x511c7f
0x00511C7B: xor      ecx, ecx
0x00511C7D: jmp      0x511c93
0x00511C7F: movzx    ecx, byte ptr [ecx + 1]
0x00511C83: movzx    eax, al
0x00511C86: lea      edx, [eax + eax*2]
0x00511C89: mov      eax, dword ptr [esi + edx*4 + 8]
0x00511C8D: mov      edx, dword ptr [eax + 0x78]
0x00511C90: mov      ecx, dword ptr [edx + ecx*4]
0x00511C93: movzx    eax, byte ptr [ecx + 1]
0x00511C97: mov      ecx, dword ptr [ecx + 4]
0x00511C9A: mov      edx, dword ptr [ecx + 8]
0x00511C9D: test     dword ptr [edx + eax*4], 0x40000
0x00511CA4: je       0x511cfc
0x00511CA6: mov      ecx, dword ptr [ecx + 0x14]
0x00511CA9: lea      eax, [eax + eax*8]
0x00511CAC: lea      eax, [ecx + eax*4]
0x00511CAF: mov      ecx, 0x1c
0x00511CB4: cmp      byte ptr [eax + 0x14], cl
0x00511CB7: jne      0x511cc0
0x00511CB9: mov      eax, dword ptr [eax + 4]
0x00511CBC: mov      ecx, eax
0x00511CBE: jmp      0x511cfe
0x00511CC0: cmp      byte ptr [eax + 0x15], cl
0x00511CC3: jne      0x511ccc
0x00511CC5: mov      eax, dword ptr [eax + 8]
0x00511CC8: mov      ecx, eax
0x00511CCA: jmp      0x511cfe
0x00511CCC: cmp      byte ptr [eax + 0x16], cl
0x00511CCF: jne      0x511cd8
0x00511CD1: mov      eax, dword ptr [eax + 0xc]
0x00511CD4: mov      ecx, eax
0x00511CD6: jmp      0x511cfe
0x00511CD8: cmp      byte ptr [eax + 0x17], cl
0x00511CDB: jne      0x511ce4
0x00511CDD: mov      eax, dword ptr [eax + 0x10]
0x00511CE0: mov      ecx, eax
0x00511CE2: jmp      0x511cfe
0x00511CE4: mov      eax, dword ptr [eax]
0x00511CE6: test     eax, eax
0x00511CE8: je       0x511cf6
0x00511CEA: push     ecx
0x00511CEB: mov      ecx, eax
0x00511CED: call     0x461400
0x00511CF2: mov      ecx, eax
0x00511CF4: jmp      0x511cfe
0x00511CF6: xor      eax, eax
0x00511CF8: mov      ecx, eax
0x00511CFA: jmp      0x511cfe
0x00511CFC: xor      ecx, ecx
0x00511CFE: mov      edx, dword ptr [edi + 0x1b0]
0x00511D04: fld      dword ptr [ecx + 0xd54]
0x00511D0A: fld      dword ptr [edx + 0x6c]
0x00511D0D: fcompp   
0x00511D0F: fnstsw   ax
0x00511D11: test     ah, 0x41
0x00511D14: jne      0x511d1f
0x00511D16: fld      dword ptr [edx + 0x6c]
0x00511D19: fstp     dword ptr [ecx + 0xd54]
0x00511D1F: mov      eax, dword ptr [edi + 0x1bc]
0x00511D25: test     eax, eax
0x00511D27: jne      0x511d7d
0x00511D29: fld      dword ptr [ecx + 0x24c]
0x00511D2F: lea      edx, [esp + 8]
0x00511D33: fstp     dword ptr [esp + 8]
0x00511D37: push     edx
0x00511D38: fld      dword ptr [ecx + 0x250]
0x00511D3E: push     0x6cc6b9bb
0x00511D43: fstp     dword ptr [esp + 0x14]
0x00511D47: add      ecx, 0x1a8
0x00511D4D: fld      dword ptr [ecx + 0xac]
0x00511D53: fstp     dword ptr [esp + 0x18]
0x00511D57: fld      dword ptr [ecx + 0xb0]
0x00511D5D: fstp     dword ptr [esp + 0x1c]
0x00511D61: call     0x5691a0
0x00511D66: mov      ecx, eax
0x00511D68: call     0x56a6b0
0x00511D6D: fldz     
0x00511D6F: fstp     dword ptr [edi + 0x1b4]
0x00511D75: pop      edi
0x00511D76: pop      esi
0x00511D77: add      esp, 0x10
0x00511D7A: ret      4
0x00511D7D: push     eax
0x00511D7E: mov      ecx, edi
0x00511D80: call     0x511ab0
0x00511D85: fldz     
0x00511D87: fstp     dword ptr [edi + 0x1b4]
0x00511D8D: mov      dword ptr [edi + 0x1bc], 0
0x00511D97: pop      edi
0x00511D98: pop      esi
0x00511D99: add      esp, 0x10
0x00511D9C: ret      4
0x00511D9F: int3     
0x00511DA0: mov      eax, dword ptr [esp + 0xc]
0x00511DA4: mov      ecx, dword ptr [esp + 0x10]
0x00511DA8: push     eax
0x00511DA9: call     0x511c20
0x00511DAE: ret      
0x00511DAF: int3     

--- CPlayerSpawn::vfunc_43 @ 0x00511DB0 ---
0x00511DB0: sub      esp, 0x48
0x00511DB3: push     esi
0x00511DB4: mov      esi, ecx
0x00511DB6: mov      eax, dword ptr [esi + 8]
0x00511DB9: movzx    ecx, byte ptr [eax + 1]
0x00511DBD: mov      edx, dword ptr [eax + 4]
0x00511DC0: mov      eax, dword ptr [edx + 0x28]
0x00511DC3: mov      eax, dword ptr [eax + ecx*4]
0x00511DC6: mov      ecx, dword ptr [0x95fb20] ; [u32=0x914BDCB8]
0x00511DCC: push     0
0x00511DCE: push     0
0x00511DD0: push     ecx
0x00511DD1: mov      ecx, dword ptr [eax + 0x114]
0x00511DD7: mov      dword ptr [esp + 0x14], esi
0x00511DDB: call     0x7cd3c0
0x00511DE0: test     eax, eax
0x00511DE2: je       0x511e49
0x00511DE4: movzx    ecx, byte ptr [eax + 1]
0x00511DE8: mov      eax, dword ptr [eax + 4]
0x00511DEB: lea      edx, [ecx + ecx*8]
0x00511DEE: mov      ecx, dword ptr [eax + 0x14]
0x00511DF1: lea      eax, [ecx + edx*4]
0x00511DF4: mov      ecx, 0x1f
0x00511DF9: cmp      byte ptr [eax + 0x14], cl
0x00511DFC: jne      0x511e03
0x00511DFE: mov      eax, dword ptr [eax + 4]
0x00511E01: jmp      0x511e33
0x00511E03: cmp      byte ptr [eax + 0x15], cl
0x00511E06: jne      0x511e0d
0x00511E08: mov      eax, dword ptr [eax + 8]
0x00511E0B: jmp      0x511e33
0x00511E0D: cmp      byte ptr [eax + 0x16], cl
0x00511E10: jne      0x511e17
0x00511E12: mov      eax, dword ptr [eax + 0xc]
0x00511E15: jmp      0x511e33
0x00511E17: cmp      byte ptr [eax + 0x17], cl
0x00511E1A: jne      0x511e21
0x00511E1C: mov      eax, dword ptr [eax + 0x10]
0x00511E1F: jmp      0x511e33
0x00511E21: mov      eax, dword ptr [eax]
0x00511E23: test     eax, eax
0x00511E25: je       0x511e31
0x00511E27: push     ecx
0x00511E28: mov      ecx, eax
0x00511E2A: call     0x461400
0x00511E2F: jmp      0x511e33
0x00511E31: xor      eax, eax
0x00511E33: xor      edx, edx
0x00511E35: cmp      dword ptr [eax + 0x1dc], 3
0x00511E3C: sete     dl
0x00511E3F: mov      eax, edx
0x00511E41: test     eax, eax
0x00511E43: je       0x512615
0x00511E49: fldz     
0x00511E4B: push     edi
0x00511E4C: fcom     dword ptr [esi + 0x1b4]
0x00511E52: fnstsw   ax
0x00511E54: test     ah, 5
0x00511E57: jp       0x511f59
0x00511E5D: fld      dword ptr [esi + 0x1b4]
0x00511E63: fsub     dword ptr [0xb76120]
0x00511E69: fstp     dword ptr [esp + 8]
0x00511E6D: fld      dword ptr [esp + 8]
0x00511E71: fst      dword ptr [esi + 0x1b4]
0x00511E77: fcomp    st(1)
0x00511E79: fnstsw   ax
0x00511E7B: test     ah, 0x41
0x00511E7E: jp       0x511f59
0x00511E84: mov      eax, dword ptr [esi + 8]
0x00511E87: fst      dword ptr [esi + 0x1b4]
0x00511E8D: movzx    ecx, byte ptr [eax + 1]
0x00511E91: mov      edx, dword ptr [eax + 4]
0x00511E94: mov      edx, dword ptr [edx + 0x64]
0x00511E97: lea      edx, [edx + ecx*2]
0x00511E9A: mov      cl, byte ptr [edx]
0x00511E9C: cmp      cl, 0xff
0x00511E9F: je       0x511f59
0x00511EA5: mov      edi, dword ptr [0xb78a28]
0x00511EAB: movzx    edx, byte ptr [edx + 1]
0x00511EAF: movzx    ecx, cl
0x00511EB2: lea      ecx, [ecx + ecx*2]
0x00511EB5: mov      ecx, dword ptr [edi + ecx*4 + 8]
0x00511EB9: mov      ecx, dword ptr [ecx + 0x78]
0x00511EBC: cmp      dword ptr [ecx + edx*4], 0
0x00511EC0: je       0x511f59
0x00511EC6: movzx    edx, byte ptr [eax + 1]
0x00511ECA: fstp     st(0)
0x00511ECC: mov      eax, dword ptr [eax + 4]
0x00511ECF: mov      ecx, dword ptr [eax + 0x64]
0x00511ED2: mov      al, byte ptr [ecx + edx*2]
0x00511ED5: lea      ecx, [ecx + edx*2]
0x00511ED8: cmp      al, 0xff
0x00511EDA: jne      0x511ee0
0x00511EDC: xor      ecx, ecx
0x00511EDE: jmp      0x511ef4
0x00511EE0: movzx    ecx, byte ptr [ecx + 1]
0x00511EE4: movzx    eax, al
0x00511EE7: lea      edx, [eax + eax*2]
0x00511EEA: mov      eax, dword ptr [edi + edx*4 + 8]
0x00511EEE: mov      edx, dword ptr [eax + 0x78]
0x00511EF1: mov      ecx, dword ptr [edx + ecx*4]
0x00511EF4: movzx    eax, byte ptr [ecx + 1]
0x00511EF8: mov      ecx, dword ptr [ecx + 4]
0x00511EFB: mov      edx, dword ptr [ecx + 8]
0x00511EFE: test     dword ptr [edx + eax*4], 0x40000
0x00511F05: je       0x511f4e
0x00511F07: mov      ecx, dword ptr [ecx + 0x14]
0x00511F0A: lea      eax, [eax + eax*8]
0x00511F0D: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x00511F12: lea      eax, [ecx + eax*4]
0x00511F15: jne      0x511f1c
0x00511F17: mov      eax, dword ptr [eax + 4]
0x00511F1A: jmp      0x511f50
0x00511F1C: cmp      byte ptr [eax + 0x15], 0x1c
0x00511F20: jne      0x511f27
0x00511F22: mov      eax, dword ptr [eax + 8]
0x00511F25: jmp      0x511f50
0x00511F27: cmp      byte ptr [eax + 0x16], 0x1c
0x00511F2B: jne      0x511f32
0x00511F2D: mov      eax, dword ptr [eax + 0xc]
0x00511F30: jmp      0x511f50
0x00511F32: cmp      byte ptr [eax + 0x17], 0x1c
0x00511F36: jne      0x511f3d
0x00511F38: mov      eax, dword ptr [eax + 0x10]
0x00511F3B: jmp      0x511f50
0x00511F3D: mov      eax, dword ptr [eax]
0x00511F3F: test     eax, eax
0x00511F41: je       0x511f4e
0x00511F43: push     0x1c
0x00511F45: mov      ecx, eax
0x00511F47: call     0x461400
0x00511F4C: jmp      0x511f50
0x00511F4E: xor      eax, eax
0x00511F50: mov      ecx, eax
0x00511F52: call     0x540de0
0x00511F57: fldz     
0x00511F59: fcom     dword ptr [esi + 0x1d8]
0x00511F5F: fnstsw   ax
0x00511F61: test     ah, 5
0x00511F64: jp       0x512117
0x00511F6A: mov      eax, dword ptr [esi + 8]
0x00511F6D: movzx    edx, byte ptr [eax + 1]
0x00511F71: mov      eax, dword ptr [eax + 4]
0x00511F74: mov      ecx, dword ptr [eax + 0x64]
0x00511F77: mov      al, byte ptr [ecx + edx*2]
0x00511F7A: lea      ecx, [ecx + edx*2]
0x00511F7D: cmp      al, 0xff
0x00511F7F: jne      0x511f85
0x00511F81: xor      ecx, ecx
0x00511F83: jmp      0x511f9e
0x00511F85: movzx    eax, al
0x00511F88: lea      edx, [eax + eax*2]
0x00511F8B: mov      eax, dword ptr [0xb78a28]
0x00511F90: mov      edx, dword ptr [eax + edx*4 + 8]
0x00511F94: movzx    eax, byte ptr [ecx + 1]
0x00511F98: mov      ecx, dword ptr [edx + 0x78]
0x00511F9B: mov      ecx, dword ptr [ecx + eax*4]
0x00511F9E: movzx    eax, byte ptr [ecx + 1]
0x00511FA2: mov      ecx, dword ptr [ecx + 4]
0x00511FA5: mov      edx, dword ptr [ecx + 8]
0x00511FA8: test     dword ptr [edx + eax*4], 0x40000
0x00511FAF: je       0x51200c
0x00511FB1: mov      ecx, dword ptr [ecx + 0x14]
0x00511FB4: lea      eax, [eax + eax*8]
0x00511FB7: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x00511FBC: lea      eax, [ecx + eax*4]
0x00511FBF: jne      0x511fc8
0x00511FC1: mov      eax, dword ptr [eax + 4]
0x00511FC4: mov      ecx, eax
0x00511FC6: jmp      0x51200e
0x00511FC8: cmp      byte ptr [eax + 0x15], 0x1c
0x00511FCC: jne      0x511fd5
0x00511FCE: mov      eax, dword ptr [eax + 8]
0x00511FD1: mov      ecx, eax
0x00511FD3: jmp      0x51200e
0x00511FD5: cmp      byte ptr [eax + 0x16], 0x1c
0x00511FD9: jne      0x511fe2
0x00511FDB: mov      eax, dword ptr [eax + 0xc]
0x00511FDE: mov      ecx, eax
0x00511FE0: jmp      0x51200e
0x00511FE2: cmp      byte ptr [eax + 0x17], 0x1c
0x00511FE6: jne      0x511fef
0x00511FE8: mov      eax, dword ptr [eax + 0x10]
0x00511FEB: mov      ecx, eax
0x00511FED: jmp      0x51200e
0x00511FEF: mov      eax, dword ptr [eax]
0x00511FF1: test     eax, eax
0x00511FF3: je       0x512006
0x00511FF5: push     0x1c
0x00511FF7: fstp     st(0)
0x00511FF9: mov      ecx, eax
0x00511FFB: call     0x461400
0x00512000: fldz     
0x00512002: mov      ecx, eax
0x00512004: jmp      0x51200e
0x00512006: xor      eax, eax
0x00512008: mov      ecx, eax
0x0051200A: jmp      0x51200e
0x0051200C: xor      ecx, ecx
0x0051200E: fld      dword ptr [esi + 0x1d8]
0x00512014: fsub     dword ptr [0xb76120]
0x0051201A: fstp     dword ptr [esp + 8]
0x0051201E: fld      dword ptr [esp + 8]
0x00512022: fst      dword ptr [esi + 0x1d8]
0x00512028: fcompp   
0x0051202A: fnstsw   ax
0x0051202C: test     ah, 0x41
0x0051202F: jp       0x512119
0x00512035: mov      dword ptr [ecx + 0x1f8], 1
0x0051203F: mov      eax, dword ptr [esi + 0x1b0]
0x00512045: fld      dword ptr [eax + 0x64]
0x00512048: push     0
0x0051204A: lea      ecx, [eax + 0x48]
0x0051204D: fstp     dword ptr [esi + 0x1b4]
0x00512053: call     0x499af0
0x00512058: cmp      dword ptr [esi + 0x1d0], 0
0x0051205F: je       0x512119
0x00512065: test     eax, eax
0x00512067: je       0x512119
0x0051206D: movzx    ecx, byte ptr [eax + 1]
0x00512071: mov      eax, dword ptr [eax + 4]
0x00512074: mov      edx, dword ptr [eax + 8]
0x00512077: test     dword ptr [edx + ecx*4], 0x40000
0x0051207E: je       0x512107
0x00512084: mov      edx, dword ptr [eax + 0x14]
0x00512087: lea      ecx, [ecx + ecx*8]
0x0051208A: cmp      byte ptr [edx + ecx*4 + 0x14], 0x1c
0x0051208F: lea      eax, [edx + ecx*4]
0x00512092: jne      0x5120a5
0x00512094: mov      eax, dword ptr [eax + 4]
0x00512097: mov      edx, dword ptr [eax]
0x00512099: mov      ecx, eax
0x0051209B: mov      eax, dword ptr [edx + 0x108]
0x005120A1: call     eax
0x005120A3: jmp      0x512119
0x005120A5: cmp      byte ptr [eax + 0x15], 0x1c
0x005120A9: jne      0x5120bc
0x005120AB: mov      eax, dword ptr [eax + 8]
0x005120AE: mov      edx, dword ptr [eax]
0x005120B0: mov      ecx, eax
0x005120B2: mov      eax, dword ptr [edx + 0x108]
0x005120B8: call     eax
0x005120BA: jmp      0x512119
0x005120BC: cmp      byte ptr [eax + 0x16], 0x1c
0x005120C0: jne      0x5120d3
0x005120C2: mov      eax, dword ptr [eax + 0xc]
0x005120C5: mov      edx, dword ptr [eax]
0x005120C7: mov      ecx, eax
0x005120C9: mov      eax, dword ptr [edx + 0x108]
0x005120CF: call     eax
0x005120D1: jmp      0x512119
0x005120D3: cmp      byte ptr [eax + 0x17], 0x1c
0x005120D7: jne      0x5120ea
0x005120D9: mov      eax, dword ptr [eax + 0x10]
0x005120DC: mov      edx, dword ptr [eax]
0x005120DE: mov      ecx, eax
0x005120E0: mov      eax, dword ptr [edx + 0x108]
0x005120E6: call     eax
0x005120E8: jmp      0x512119
0x005120EA: mov      eax, dword ptr [eax]
0x005120EC: test     eax, eax
0x005120EE: je       0x512107
0x005120F0: push     0x1c
0x005120F2: mov      ecx, eax
0x005120F4: call     0x461400
0x005120F9: mov      edx, dword ptr [eax]
0x005120FB: mov      ecx, eax
0x005120FD: mov      eax, dword ptr [edx + 0x108]
0x00512103: call     eax
0x00512105: jmp      0x512119
0x00512107: xor      eax, eax
0x00512109: mov      edx, dword ptr [eax]
0x0051210B: mov      ecx, eax
0x0051210D: mov      eax, dword ptr [edx + 0x108]
0x00512113: call     eax
0x00512115: jmp      0x512119
0x00512117: fstp     st(0)
0x00512119: cmp      dword ptr [esi + 0x1bc], 0
0x00512120: je       0x512614
0x00512126: mov      ecx, dword ptr [esi + 0x1b0]
0x0051212C: push     0
0x0051212E: add      ecx, 0x48
0x00512131: call     0x499af0
0x00512136: mov      edi, eax
0x00512138: test     edi, edi
0x0051213A: je       0x512614
0x00512140: mov      eax, dword ptr [esi + 0x1bc]
0x00512146: movzx    ecx, byte ptr [eax + 1]
0x0051214A: mov      edx, dword ptr [eax + 4]
0x0051214D: mov      edx, dword ptr [edx + 0x58]
0x00512150: lea      edx, [edx + ecx*2]
0x00512153: mov      cl, byte ptr [edx]
0x00512155: cmp      cl, 0xff
0x00512158: je       0x512614
0x0051215E: mov      esi, dword ptr [0xb78a28]
0x00512164: movzx    edx, byte ptr [edx + 1]
0x00512168: movzx    ecx, cl
0x0051216B: lea      ecx, [ecx + ecx*2]
0x0051216E: mov      ecx, dword ptr [esi + ecx*4 + 8]
0x00512172: mov      ecx, dword ptr [ecx + 0x78]
0x00512175: cmp      dword ptr [ecx + edx*4], 0
0x00512179: je       0x512614
0x0051217F: movzx    edx, byte ptr [eax + 1]
0x00512183: mov      eax, dword ptr [eax + 4]
0x00512186: mov      ecx, dword ptr [eax + 0x58]
0x00512189: mov      al, byte ptr [ecx + edx*2]
0x0051218C: lea      ecx, [ecx + edx*2]
0x0051218F: cmp      al, 0xff
0x00512191: jne      0x512197
0x00512193: xor      eax, eax
0x00512195: jmp      0x5121ab
0x00512197: movzx    ecx, byte ptr [ecx + 1]
0x0051219B: movzx    eax, al
0x0051219E: lea      edx, [eax + eax*2]
0x005121A1: mov      eax, dword ptr [esi + edx*4 + 8]
0x005121A5: mov      edx, dword ptr [eax + 0x78]
0x005121A8: mov      eax, dword ptr [edx + ecx*4]
0x005121AB: movzx    ecx, byte ptr [eax + 1]
0x005121AF: mov      edx, dword ptr [eax + 4]
0x005121B2: mov      eax, dword ptr [edx + 0x14]
0x005121B5: lea      ecx, [ecx + ecx*8]
0x005121B8: lea      eax, [eax + ecx*4]
0x005121BB: mov      ecx, 0x27
0x005121C0: push     ebx
0x005121C1: push     ebp
0x005121C2: cmp      byte ptr [eax + 0x14], cl
0x005121C5: jne      0x5121cc
0x005121C7: mov      ebx, dword ptr [eax + 4]
0x005121CA: jmp      0x512204
0x005121CC: cmp      byte ptr [eax + 0x15], cl
0x005121CF: jne      0x5121d6
0x005121D1: mov      ebx, dword ptr [eax + 8]
0x005121D4: jmp      0x512204
0x005121D6: cmp      byte ptr [eax + 0x16], cl
0x005121D9: jne      0x5121e0
0x005121DB: mov      ebx, dword ptr [eax + 0xc]
0x005121DE: jmp      0x512204
0x005121E0: cmp      byte ptr [eax + 0x17], cl
0x005121E3: jne      0x5121ea
0x005121E5: mov      ebx, dword ptr [eax + 0x10]
0x005121E8: jmp      0x512204
0x005121EA: mov      eax, dword ptr [eax]
0x005121EC: test     eax, eax
0x005121EE: je       0x512202
0x005121F0: push     ecx
0x005121F1: mov      ecx, eax
0x005121F3: call     0x461400
0x005121F8: mov      esi, dword ptr [0xb78a28]
0x005121FE: mov      ebx, eax
0x00512200: jmp      0x512204
0x00512202: xor      ebx, ebx
0x00512204: movzx    ecx, byte ptr [edi + 1]
0x00512208: mov      edx, dword ptr [edi + 4]
0x0051220B: mov      eax, dword ptr [edx + 0x58]
0x0051220E: lea      ecx, [eax + ecx*2]
0x00512211: mov      al, byte ptr [ecx]
0x00512213: cmp      al, 0xff
0x00512215: jne      0x51221b
0x00512217: xor      eax, eax
0x00512219: jmp      0x51222f
0x0051221B: movzx    ecx, byte ptr [ecx + 1]
0x0051221F: movzx    eax, al
0x00512222: lea      edx, [eax + eax*2]
0x00512225: mov      eax, dword ptr [esi + edx*4 + 8]
0x00512229: mov      edx, dword ptr [eax + 0x78]
0x0051222C: mov      eax, dword ptr [edx + ecx*4]
0x0051222F: movzx    ecx, byte ptr [eax + 1]
0x00512233: mov      edx, dword ptr [eax + 4]
0x00512236: mov      eax, dword ptr [edx + 0x58]
0x00512239: lea      ecx, [eax + ecx*2]
0x0051223C: mov      al, byte ptr [ecx]
0x0051223E: cmp      al, 0xff
0x00512240: jne      0x512246
0x00512242: xor      eax, eax
0x00512244: jmp      0x51225a
0x00512246: movzx    ecx, byte ptr [ecx + 1]
0x0051224A: movzx    eax, al
0x0051224D: lea      edx, [eax + eax*2]
0x00512250: mov      eax, dword ptr [esi + edx*4 + 8]
0x00512254: mov      edx, dword ptr [eax + 0x78]
0x00512257: mov      eax, dword ptr [edx + ecx*4]
0x0051225A: movzx    ecx, byte ptr [eax + 1]
0x0051225E: mov      edx, dword ptr [eax + 4]
0x00512261: mov      eax, dword ptr [edx + 0x14]
0x00512264: lea      ecx, [ecx + ecx*8]
0x00512267: lea      eax, [eax + ecx*4]
0x0051226A: mov      ecx, 0x17
0x0051226F: cmp      byte ptr [eax + 0x14], cl
0x00512272: jne      0x512279
0x00512274: mov      ebp, dword ptr [eax + 4]
0x00512277: jmp      0x5122b1
0x00512279: cmp      byte ptr [eax + 0x15], cl
0x0051227C: jne      0x512283
0x0051227E: mov      ebp, dword ptr [eax + 8]
0x00512281: jmp      0x5122b1
0x00512283: cmp      byte ptr [eax + 0x16], cl
0x00512286: jne      0x51228d
0x00512288: mov      ebp, dword ptr [eax + 0xc]
0x0051228B: jmp      0x5122b1
0x0051228D: cmp      byte ptr [eax + 0x17], cl
0x00512290: jne      0x512297
0x00512292: mov      ebp, dword ptr [eax + 0x10]
0x00512295: jmp      0x5122b1
0x00512297: mov      eax, dword ptr [eax]
0x00512299: test     eax, eax
0x0051229B: je       0x5122af
0x0051229D: push     ecx
0x0051229E: mov      ecx, eax
0x005122A0: call     0x461400
0x005122A5: mov      esi, dword ptr [0xb78a28]
0x005122AB: mov      ebp, eax
0x005122AD: jmp      0x5122b1
0x005122AF: xor      ebp, ebp
0x005122B1: movzx    ecx, byte ptr [edi + 1]
0x005122B5: mov      edx, dword ptr [edi + 4]
0x005122B8: mov      eax, dword ptr [edx + 0x58]
0x005122BB: lea      ecx, [eax + ecx*2]
0x005122BE: mov      al, byte ptr [ecx]
0x005122C0: cmp      al, 0xff
0x005122C2: jne      0x5122c8
0x005122C4: xor      eax, eax
0x005122C6: jmp      0x5122dc
0x005122C8: movzx    ecx, byte ptr [ecx + 1]
0x005122CC: movzx    eax, al
0x005122CF: lea      edx, [eax + eax*2]
0x005122D2: mov      eax, dword ptr [esi + edx*4 + 8]
0x005122D6: mov      edx, dword ptr [eax + 0x78]
0x005122D9: mov      eax, dword ptr [edx + ecx*4]
0x005122DC: movzx    ecx, byte ptr [eax + 1]
0x005122E0: mov      edx, dword ptr [eax + 4]
0x005122E3: mov      eax, dword ptr [edx + 0x5c]
0x005122E6: lea      ecx, [eax + ecx*2]
0x005122E9: mov      al, byte ptr [ecx]
0x005122EB: cmp      al, 0xff
0x005122ED: jne      0x5122f3
0x005122EF: xor      ecx, ecx
0x005122F1: jmp      0x512307
0x005122F3: movzx    ecx, byte ptr [ecx + 1]
0x005122F7: movzx    eax, al
0x005122FA: lea      edx, [eax + eax*2]
0x005122FD: mov      eax, dword ptr [esi + edx*4 + 8]
0x00512301: mov      edx, dword ptr [eax + 0x78]
0x00512304: mov      ecx, dword ptr [edx + ecx*4]
0x00512307: movzx    eax, byte ptr [ecx + 1]
0x0051230B: mov      ecx, dword ptr [ecx + 4]
0x0051230E: mov      edx, dword ptr [ecx + 8]
0x00512311: test     dword ptr [edx + eax*4], 0x40000
0x00512318: je       0x512361
0x0051231A: mov      ecx, dword ptr [ecx + 0x14]
0x0051231D: lea      eax, [eax + eax*8]
0x00512320: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x00512325: lea      eax, [ecx + eax*4]
0x00512328: jne      0x51232f
0x0051232A: mov      eax, dword ptr [eax + 4]
0x0051232D: jmp      0x512363
0x0051232F: cmp      byte ptr [eax + 0x15], 0x1c
0x00512333: jne      0x51233a
0x00512335: mov      eax, dword ptr [eax + 8]
0x00512338: jmp      0x512363
0x0051233A: cmp      byte ptr [eax + 0x16], 0x1c
0x0051233E: jne      0x512345
0x00512340: mov      eax, dword ptr [eax + 0xc]
0x00512343: jmp      0x512363
0x00512345: cmp      byte ptr [eax + 0x17], 0x1c
0x00512349: jne      0x512350
0x0051234B: mov      eax, dword ptr [eax + 0x10]
0x0051234E: jmp      0x512363
0x00512350: mov      eax, dword ptr [eax]
0x00512352: test     eax, eax
0x00512354: je       0x512361
0x00512356: push     0x1c
0x00512358: mov      ecx, eax
0x0051235A: call     0x461400
0x0051235F: jmp      0x512363
0x00512361: xor      eax, eax
0x00512363: mov      esi, dword ptr [esp + 0x14]
0x00512367: fld1     
0x00512369: cmp      dword ptr [esi + 0x1d0], 0
0x00512370: jne      0x5123a2
0x00512372: fld      dword ptr [0x9837e8] ; [f32=-0.36, u32=0xBEB851EC]
0x00512378: mov      edx, 0x800
0x0051237D: or       word ptr [eax + 0x1b8], dx
0x00512384: fstp     dword ptr [eax + 0x1bc]
0x0051238A: fldz     
0x0051238C: fst      dword ptr [eax + 0x1c0]
0x00512392: fst      dword ptr [eax + 0x1c4]
0x00512398: fxch     st(1)
0x0051239A: fst      dword ptr [eax + 0x1c8]
0x005123A0: jmp      0x5123a6
0x005123A2: fldz     
0x005123A4: fxch     st(1)
0x005123A6: mov      eax, dword ptr [esi + 0x1b0]
0x005123AC: fxch     st(1)
0x005123AE: fst      dword ptr [esp + 0x28]
0x005123B2: add      eax, 0x54
0x005123B5: fst      dword ptr [esp + 0x2c]
0x005123B9: fst      dword ptr [esp + 0x30]
0x005123BD: fxch     st(1)
0x005123BF: fst      dword ptr [esp + 0x34]
0x005123C3: fld      dword ptr [eax]
0x005123C5: fstp     dword ptr [esp + 0x18]
0x005123C9: fld      dword ptr [eax + 4]
0x005123CC: fstp     dword ptr [esp + 0x1c]
0x005123D0: fld      dword ptr [eax + 8]
0x005123D3: fstp     dword ptr [esp + 0x20]
0x005123D7: fld      dword ptr [eax + 0xc]
0x005123DA: fstp     dword ptr [esp + 0x24]
0x005123DE: mov      eax, dword ptr [ebx + 0x290]
0x005123E4: mov      eax, dword ptr [eax + 0x40]
0x005123E7: cmp      eax, 1
0x005123EA: jne      0x51242e
0x005123EC: fxch     st(1)
0x005123EE: push     ecx
0x005123EF: fst      dword ptr [esp + 0x3c]
0x005123F3: lea      ecx, [esp + 0x3c]
0x005123F7: fstp     dword ptr [esp + 0x40]
0x005123FB: lea      edx, [esp + 0x2c]
0x005123FF: fst      dword ptr [esp + 0x44]
0x00512403: fstp     dword ptr [esp + 0x48]
0x00512407: fld      dword ptr [0x9836b8] ; [f32=3.14159, u32=0x40490FDB]
0x0051240D: fstp     dword ptr [esp]
0x00512410: push     ecx
0x00512411: push     edx
0x00512412: call     0x6b0a50
0x00512417: lea      eax, [esp + 0x24]
0x0051241B: push     eax
0x0051241C: lea      ecx, [esp + 0x38]
0x00512420: push     ecx
0x00512421: call     0x6b1d00
0x00512426: add      esp, 0x14
0x00512429: jmp      0x5124e8
0x0051242E: cmp      eax, 2
0x00512431: jne      0x51246a
0x00512433: fxch     st(1)
0x00512435: push     ecx
0x00512436: fst      dword ptr [esp + 0x3c]
0x0051243A: lea      edx, [esp + 0x3c]
0x0051243E: fstp     dword ptr [esp + 0x40]
0x00512442: lea      eax, [esp + 0x2c]
0x00512446: fst      dword ptr [esp + 0x44]
0x0051244A: fstp     dword ptr [esp + 0x48]
0x0051244E: fld      dword ptr [0x9837e4] ; [f32=-1.5708, f64=-1.44959e-06, u32=0xBFC90FDB]
0x00512454: fstp     dword ptr [esp]
0x00512457: push     edx
0x00512458: push     eax
0x00512459: call     0x6b0a50
0x0051245E: lea      ecx, [esp + 0x24]
0x00512462: push     ecx
0x00512463: lea      edx, [esp + 0x38]
0x00512467: push     edx
0x00512468: jmp      0x5124a4
0x0051246A: cmp      eax, 3
0x0051246D: jne      0x5124d2
0x0051246F: fxch     st(1)
0x00512471: push     ecx
0x00512472: fst      dword ptr [esp + 0x3c]
0x00512476: lea      eax, [esp + 0x3c]
0x0051247A: fstp     dword ptr [esp + 0x40]
0x0051247E: lea      ecx, [esp + 0x2c]
0x00512482: fst      dword ptr [esp + 0x44]
0x00512486: fstp     dword ptr [esp + 0x48]
0x0051248A: fld      dword ptr [0x9837e0] ; [f32=1.5708, f64=-0.195796, u32=0x3FC90FDB]
0x00512490: fstp     dword ptr [esp]
0x00512493: push     eax
0x00512494: push     ecx
0x00512495: call     0x6b0a50
0x0051249A: lea      edx, [esp + 0x24]
0x0051249E: push     edx
0x0051249F: lea      eax, [esp + 0x38]
0x005124A3: push     eax
0x005124A4: call     0x6b1d00
0x005124A9: fld      dword ptr [esp + 0x2c]
0x005124AD: fld      qword ptr [0x97e668] ; [f32=0, f64=2, u32=0x00000000]
0x005124B3: add      esp, 0x14
0x005124B6: fmul     st(1), st(0)
0x005124B8: fxch     st(1)
0x005124BA: fstp     dword ptr [esp + 0x18]
0x005124BE: fld      dword ptr [esp + 0x1c]
0x005124C2: fmul     st(1)
0x005124C4: fstp     dword ptr [esp + 0x1c]
0x005124C8: fmul     dword ptr [esp + 0x20]
0x005124CC: fstp     dword ptr [esp + 0x20]
0x005124D0: jmp      0x5124e8
0x005124D2: lea      ecx, [esp + 0x18]
0x005124D6: fstp     st(1)
0x005124D8: push     ecx
0x005124D9: fstp     st(0)
0x005124DB: lea      edx, [esp + 0x2c]
0x005124DF: push     edx
0x005124E0: call     0x6b1d00
0x005124E5: add      esp, 8
0x005124E8: mov      eax, dword ptr [esi + 0x1bc]
0x005124EE: movzx    ecx, byte ptr [eax + 1]
0x005124F2: mov      edx, dword ptr [eax + 4]
0x005124F5: mov      eax, dword ptr [edx + 0x1c]
0x005124F8: mov      eax, dword ptr [eax + ecx*4]
0x005124FB: mov      ecx, dword ptr [edi + 4]
0x005124FE: mov      edx, dword ptr [ecx + 0x1c]
0x00512501: fld      dword ptr [eax + 0xc]
0x00512504: add      eax, 0xc
0x00512507: fadd     dword ptr [esp + 0x18]
0x0051250B: fstp     dword ptr [esp + 0x38]
0x0051250F: fld      dword ptr [eax + 4]
0x00512512: fadd     dword ptr [esp + 0x1c]
0x00512516: fstp     dword ptr [esp + 0x3c]
0x0051251A: fld      dword ptr [eax + 8]
0x0051251D: movzx    eax, byte ptr [edi + 1]
0x00512521: fadd     dword ptr [esp + 0x20]
0x00512525: add      eax, eax
0x00512527: add      eax, eax
0x00512529: mov      edx, dword ptr [eax + edx]
0x0051252C: fstp     dword ptr [esp + 0x40]
0x00512530: test     edx, edx
0x00512532: je       0x512554
0x00512534: mov      esi, dword ptr [ecx + 0xc]
0x00512537: test     dword ptr [eax + esi], 0x200
0x0051253E: je       0x512554
0x00512540: test     byte ptr [edx + 8], 8
0x00512544: je       0x512554
0x00512546: mov      ecx, dword ptr [ecx + 0x20]
0x00512549: add      eax, ecx
0x0051254B: cmp      dword ptr [eax], 0
0x0051254E: je       0x512554
0x00512550: mov      eax, dword ptr [eax]
0x00512552: jmp      0x512556
0x00512554: mov      eax, edx
0x00512556: fld      dword ptr [esp + 0x38]
0x0051255A: mov      edx, 0x800
0x0051255F: fstp     dword ptr [eax + 0xc]
0x00512562: fld      dword ptr [esp + 0x3c]
0x00512566: fstp     dword ptr [eax + 0x10]
0x00512569: fld      dword ptr [esp + 0x40]
0x0051256D: fstp     dword ptr [eax + 0x14]
0x00512570: or       word ptr [eax + 8], dx
0x00512574: movzx    eax, byte ptr [edi + 1]
0x00512578: mov      ecx, dword ptr [edi + 4]
0x0051257B: mov      edx, dword ptr [ecx + 0x1c]
0x0051257E: add      eax, eax
0x00512580: add      eax, eax
0x00512582: mov      edx, dword ptr [eax + edx]
0x00512585: test     edx, edx
0x00512587: je       0x5125a9
0x00512589: mov      esi, dword ptr [ecx + 0xc]
0x0051258C: test     dword ptr [eax + esi], 0x200
0x00512593: je       0x5125a9
0x00512595: test     byte ptr [edx + 8], 8
0x00512599: je       0x5125a9
0x0051259B: mov      ecx, dword ptr [ecx + 0x20]
0x0051259E: add      eax, ecx
0x005125A0: cmp      dword ptr [eax], 0
0x005125A3: je       0x5125a9
0x005125A5: mov      eax, dword ptr [eax]
0x005125A7: jmp      0x5125ab
0x005125A9: mov      eax, edx
0x005125AB: push     1
0x005125AD: add      eax, 0xc
0x005125B0: push     eax
0x005125B1: lea      edx, [esp + 0x50]
0x005125B5: push     edx
0x005125B6: call     0x664dc0
0x005125BB: lea      eax, [esp + 0x54]
0x005125BF: push     ebp
0x005125C0: push     eax
0x005125C1: call     0x511930
0x005125C6: fldz     
0x005125C8: mov      edx, dword ptr [ebp]
0x005125CB: add      esp, 0x14
0x005125CE: mov      eax, dword ptr [edx + 0x16c]
0x005125D4: push     0
0x005125D6: push     0
0x005125D8: sub      esp, 0x10
0x005125DB: fst      dword ptr [esp + 0xc]
0x005125DF: mov      ecx, ebp
0x005125E1: fstp     dword ptr [esp + 8]
0x005125E5: fld      dword ptr [esp + 0x64]
0x005125E9: fsub     qword ptr [0x9837d8] ; [f32=0, f64=5, u32=0x00000000]
0x005125EF: fstp     dword ptr [esp + 0x2c]
0x005125F3: fld      dword ptr [esp + 0x2c]
0x005125F7: fstp     dword ptr [esp + 4]
0x005125FB: fld      dword ptr [esp + 0x60]
0x005125FF: fadd     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00512605: fstp     dword ptr [esp + 0x2c]
0x00512609: fld      dword ptr [esp + 0x2c]
0x0051260D: fstp     dword ptr [esp]
0x00512610: call     eax
0x00512612: pop      ebp
0x00512613: pop      ebx
0x00512614: pop      edi
0x00512615: pop      esi
0x00512616: add      esp, 0x48
0x00512619: ret      
0x0051261A: int3     
0x0051261B: int3     
0x0051261C: int3     
0x0051261D: int3     
0x0051261E: int3     
0x0051261F: int3     
0x00512620: push     ecx
0x00512621: push     ebx
0x00512622: push     esi
0x00512623: mov      esi, ecx
0x00512625: mov      eax, dword ptr [esi + 8]
0x00512628: movzx    ecx, byte ptr [eax + 1]
0x0051262C: mov      edx, dword ptr [eax + 4]
0x0051262F: mov      edx, dword ptr [edx + 0x64]
0x00512632: lea      ecx, [edx + ecx*2]
0x00512635: mov      dl, byte ptr [ecx]
0x00512637: xor      ebx, ebx
0x00512639: push     edi
0x0051263A: cmp      dl, 0xff
0x0051263D: jne      0x512643
0x0051263F: xor      ecx, ecx
0x00512641: jmp      0x51265d
0x00512643: mov      edi, dword ptr [0xb78a28]
0x00512649: movzx    ecx, byte ptr [ecx + 1]
0x0051264D: movzx    edx, dl
0x00512650: lea      edx, [edx + edx*2]
0x00512653: mov      edx, dword ptr [edi + edx*4 + 8]
0x00512657: mov      edx, dword ptr [edx + 0x78]
0x0051265A: mov      ecx, dword ptr [edx + ecx*4]
0x0051265D: mov      edx, dword ptr [esp + 0x14]
0x00512661: cmp      dword ptr [edx], ecx
0x00512663: jne      0x512a82
0x00512669: movzx    ecx, byte ptr [eax + 1]
0x0051266D: mov      edx, dword ptr [eax + 4]
0x00512670: mov      eax, dword ptr [edx + 0x28]
0x00512673: mov      eax, dword ptr [eax + ecx*4]
0x00512676: mov      ecx, dword ptr [0x95f978] ; [u32=0x2EE0407F]
0x0051267C: push     ebx
0x0051267D: push     ebx
0x0051267E: push     ecx
0x0051267F: mov      ecx, dword ptr [eax + 0x114]
0x00512685: call     0x7cd3c0
0x0051268A: test     eax, eax
0x0051268C: je       0x512696
0x0051268E: mov      dword ptr [esi + 0x1d0], ebx
0x00512694: jmp      0x5126a0
0x00512696: mov      dword ptr [esi + 0x1d0], 1
0x005126A0: mov      eax, dword ptr [esi + 0x1b0]
0x005126A6: push     ebp
0x005126A7: cmp      byte ptr [eax + 0x38], bl
0x005126AA: jne      0x512a5f
0x005126B0: cmp      dword ptr [esi + 0x1d0], ebx
0x005126B6: je       0x512770
0x005126BC: cmp      dword ptr [esi + 0x1d4], ebx
0x005126C2: jne      0x512770
0x005126C8: mov      eax, dword ptr [esi + 8]
0x005126CB: movzx    edx, byte ptr [eax + 1]
0x005126CF: mov      eax, dword ptr [eax + 4]
0x005126D2: mov      ecx, dword ptr [eax + 0x64]
0x005126D5: lea      eax, [ecx + edx*2]
0x005126D8: mov      cl, byte ptr [eax]
0x005126DA: cmp      cl, 0xff
0x005126DD: jne      0x5126e3
0x005126DF: xor      ecx, ecx
0x005126E1: jmp      0x5126fd
0x005126E3: movzx    eax, byte ptr [eax + 1]
0x005126E7: movzx    ecx, cl
0x005126EA: lea      edx, [ecx + ecx*2]
0x005126ED: mov      ecx, dword ptr [0xb78a28]
0x005126F3: mov      edx, dword ptr [ecx + edx*4 + 8]
0x005126F7: mov      ecx, dword ptr [edx + 0x78]
0x005126FA: mov      ecx, dword ptr [ecx + eax*4]
0x005126FD: movzx    eax, byte ptr [ecx + 1]
0x00512701: mov      ecx, dword ptr [ecx + 4]
0x00512704: mov      edx, dword ptr [ecx + 8]
0x00512707: test     dword ptr [edx + eax*4], 0x40000
0x0051270E: je       0x512757
0x00512710: mov      ecx, dword ptr [ecx + 0x14]
0x00512713: lea      eax, [eax + eax*8]
0x00512716: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x0051271B: lea      eax, [ecx + eax*4]
0x0051271E: jne      0x512725
0x00512720: mov      eax, dword ptr [eax + 4]
0x00512723: jmp      0x512759
0x00512725: cmp      byte ptr [eax + 0x15], 0x1c
0x00512729: jne      0x512730
0x0051272B: mov      eax, dword ptr [eax + 8]
0x0051272E: jmp      0x512759
0x00512730: cmp      byte ptr [eax + 0x16], 0x1c
0x00512734: jne      0x51273b
0x00512736: mov      eax, dword ptr [eax + 0xc]
0x00512739: jmp      0x512759
0x0051273B: cmp      byte ptr [eax + 0x17], 0x1c
0x0051273F: jne      0x512746
0x00512741: mov      eax, dword ptr [eax + 0x10]
0x00512744: jmp      0x512759
0x00512746: mov      eax, dword ptr [eax]
0x00512748: cmp      eax, ebx
0x0051274A: je       0x512757
0x0051274C: push     0x1c
0x0051274E: mov      ecx, eax
0x00512750: call     0x461400
0x00512755: jmp      0x512759
0x00512757: xor      eax, eax
0x00512759: mov      dword ptr [eax + 0x1f8], ebx
0x0051275F: mov      edx, dword ptr [esi + 0x1b0]
0x00512765: fld      dword ptr [edx + 0x68]
0x00512768: fstp     dword ptr [esi + 0x1d8]
0x0051276E: jmp      0x512779
0x00512770: fld      dword ptr [eax + 0x64]
0x00512773: fstp     dword ptr [esi + 0x1b4]
0x00512779: mov      dword ptr [esp + 0x10], ebx
0x0051277D: mov      dword ptr [esp + 0x18], ebx
0x00512781: mov      eax, dword ptr [esi + 0x1b0]
0x00512787: lea      edi, [eax + ebx + 0x74]
0x0051278B: lea      ebp, [edi + 8]
0x0051278E: mov      ecx, ebp
0x00512790: call     0x7bfe00
0x00512795: test     eax, eax
0x00512797: je       0x5127c5
0x00512799: mov      ecx, ebp
0x0051279B: call     0x7bfe00
0x005127A0: test     eax, eax
0x005127A2: je       0x5127c1
0x005127A4: movzx    eax, byte ptr [ebp]
0x005127A8: mov      edx, dword ptr [0xb78a28]
0x005127AE: lea      ecx, [eax + eax*2]
0x005127B1: mov      eax, dword ptr [edx + ecx*4 + 8]
0x005127B5: movzx    ecx, byte ptr [ebp + 1]
0x005127B9: mov      edx, dword ptr [eax + 0x78]
0x005127BC: mov      eax, dword ptr [edx + ecx*4]
0x005127BF: jmp      0x5127df
0x005127C1: xor      eax, eax
0x005127C3: jmp      0x5127df
0x005127C5: mov      ecx, dword ptr [0xb79350]
0x005127CB: test     ecx, ecx
0x005127CD: je       0x5127eb
0x005127CF: mov      eax, dword ptr [edi + 4]
0x005127D2: mov      edx, dword ptr [edi]
0x005127D4: push     eax
0x005127D5: push     0
0x005127D7: push     0
0x005127D9: push     edx
0x005127DA: call     0x7cd120
0x005127DF: test     eax, eax
0x005127E1: je       0x5127eb
0x005127E3: inc      dword ptr [esp + 0x18]
0x005127E7: mov      dword ptr [esp + 0x10], eax
0x005127EB: add      ebx, 0x24
0x005127EE: cmp      ebx, 0xd8
0x005127F4: jb       0x512781
0x005127F6: mov      eax, dword ptr [esp + 0x18]
0x005127FA: test     eax, eax
0x005127FC: jg       0x51280d
0x005127FE: mov      dword ptr [esi + 0x1bc], 0
0x00512808: jmp      0x512911
0x0051280D: cmp      eax, 1
0x00512810: jne      0x512821
0x00512812: mov      eax, dword ptr [esp + 0x10]
0x00512816: mov      dword ptr [esi + 0x1bc], eax
0x0051281C: jmp      0x512911
0x00512821: mov      ecx, dword ptr [esi + 0x1b0]
0x00512827: mov      eax, dword ptr [ecx + 0x70]
0x0051282A: cmp      eax, 3
0x0051282D: ja       0x512907
0x00512833: jmp      dword ptr [eax*4 + 0x512a8c]
0x0051283A: movsx    eax, byte ptr [esi + 0x1b8]
0x00512841: lea      edx, [eax + eax*8]
0x00512844: push     0
0x00512846: lea      ecx, [ecx + edx*4 + 0x74]
0x0051284A: call     0x499af0
0x0051284F: test     eax, eax
0x00512851: je       0x512911
0x00512857: mov      dword ptr [esi + 0x1bc], eax
0x0051285D: jmp      0x512911
0x00512862: inc      byte ptr [esi + 0x1b8]
0x00512868: mov      al, byte ptr [esi + 0x1b8]
0x0051286E: mov      bl, 6
0x00512870: cmp      al, bl
0x00512872: ja       0x512911
0x00512878: jb       0x512881
0x0051287A: mov      byte ptr [esi + 0x1b8], 0
0x00512881: movsx    eax, byte ptr [esi + 0x1b8]
0x00512888: mov      ecx, dword ptr [esi + 0x1b0]
0x0051288E: lea      eax, [eax + eax*8]
0x00512891: push     0
0x00512893: lea      ecx, [ecx + eax*4 + 0x74]
0x00512897: call     0x499af0
0x0051289C: test     eax, eax
0x0051289E: jne      0x512857
0x005128A0: inc      byte ptr [esi + 0x1b8]
0x005128A6: mov      al, byte ptr [esi + 0x1b8]
0x005128AC: cmp      al, bl
0x005128AE: jbe      0x512878
0x005128B0: jmp      0x512911
0x005128B2: mov      edx, dword ptr [esp + 0x18]
0x005128B6: push     edx
0x005128B7: push     0
0x005128B9: call     0x509440
0x005128BE: add      esp, 8
0x005128C1: mov      ebx, eax
0x005128C3: xor      edi, edi
0x005128C5: jmp      0x5128d0
0x005128C7: lea      esp, [esp]
0x005128CE: mov      edi, edi
0x005128D0: mov      eax, dword ptr [esi + 0x1b0]
0x005128D6: push     0
0x005128D8: lea      ecx, [eax + edi + 0x74]
0x005128DC: call     0x499af0
0x005128E1: test     eax, eax
0x005128E3: je       0x5128ee
0x005128E5: sub      ebx, 1
0x005128E8: js       0x512857
0x005128EE: add      edi, 0x24
0x005128F1: cmp      edi, 0xd8
0x005128F7: jb       0x5128d0
0x005128F9: jmp      0x512911
0x005128FB: mov      ecx, dword ptr [esp + 0x10]
0x005128FF: mov      dword ptr [esi + 0x1bc], ecx
0x00512905: jmp      0x512911
0x00512907: mov      edx, dword ptr [esp + 0x10]
0x0051290B: mov      dword ptr [esi + 0x1bc], edx
0x00512911: cmp      dword ptr [esi + 0x1bc], 0
0x00512918: je       0x512a77
0x0051291E: mov      edi, dword ptr [esi + 0x1b0]
0x00512924: add      edi, 0x48
0x00512927: lea      ebp, [edi + 8]
0x0051292A: mov      ecx, ebp
0x0051292C: call     0x7bfe00
0x00512931: test     eax, eax
0x00512933: je       0x512961
0x00512935: mov      ecx, ebp
0x00512937: call     0x7bfe00
0x0051293C: test     eax, eax
0x0051293E: je       0x51295d
0x00512940: movzx    eax, byte ptr [ebp]
0x00512944: mov      ecx, dword ptr [0xb78a28]
0x0051294A: lea      eax, [eax + eax*2]
0x0051294D: mov      edx, dword ptr [ecx + eax*4 + 8]
0x00512951: movzx    eax, byte ptr [ebp + 1]
0x00512955: mov      ecx, dword ptr [edx + 0x78]
0x00512958: mov      eax, dword ptr [ecx + eax*4]
0x0051295B: jmp      0x51297f
0x0051295D: xor      eax, eax
0x0051295F: jmp      0x51297f
0x00512961: mov      ecx, dword ptr [0xb79350]
0x00512967: test     ecx, ecx
0x00512969: je       0x512a77
0x0051296F: mov      edx, dword ptr [edi + 4]
0x00512972: mov      eax, dword ptr [edi]
0x00512974: push     edx
0x00512975: push     0
0x00512977: push     0
0x00512979: push     eax
0x0051297A: call     0x7cd120
0x0051297F: test     eax, eax
0x00512981: je       0x512a77
0x00512987: mov      ecx, dword ptr [esi + 0x1bc]
0x0051298D: movzx    edx, byte ptr [ecx + 1]
0x00512991: mov      ecx, dword ptr [ecx + 4]
0x00512994: mov      ecx, dword ptr [ecx + 0x58]
0x00512997: lea      edx, [ecx + edx*2]
0x0051299A: mov      cl, byte ptr [edx]
0x0051299C: cmp      cl, 0xff
0x0051299F: je       0x512a77
0x005129A5: mov      edi, dword ptr [0xb78a28]
0x005129AB: movzx    edx, byte ptr [edx + 1]
0x005129AF: movzx    ecx, cl
0x005129B2: lea      ecx, [ecx + ecx*2]
0x005129B5: mov      ecx, dword ptr [edi + ecx*4 + 8]
0x005129B9: mov      ecx, dword ptr [ecx + 0x78]
0x005129BC: cmp      dword ptr [ecx + edx*4], 0
0x005129C0: je       0x512a77
0x005129C6: movzx    ecx, byte ptr [eax + 1]
0x005129CA: mov      eax, dword ptr [eax + 4]
0x005129CD: mov      edx, dword ptr [eax + 8]
0x005129D0: test     dword ptr [edx + ecx*4], 0x40000
0x005129D7: je       0x512a20
0x005129D9: mov      edx, dword ptr [eax + 0x14]
0x005129DC: lea      ecx, [ecx + ecx*8]
0x005129DF: cmp      byte ptr [edx + ecx*4 + 0x14], 0x1c
0x005129E4: lea      eax, [edx + ecx*4]
0x005129E7: jne      0x5129ee
0x005129E9: mov      eax, dword ptr [eax + 4]
0x005129EC: jmp      0x512a22
0x005129EE: cmp      byte ptr [eax + 0x15], 0x1c
0x005129F2: jne      0x5129f9
0x005129F4: mov      eax, dword ptr [eax + 8]
0x005129F7: jmp      0x512a22
0x005129F9: cmp      byte ptr [eax + 0x16], 0x1c
0x005129FD: jne      0x512a04
0x005129FF: mov      eax, dword ptr [eax + 0xc]
0x00512A02: jmp      0x512a22
0x00512A04: cmp      byte ptr [eax + 0x17], 0x1c
0x00512A08: jne      0x512a0f
0x00512A0A: mov      eax, dword ptr [eax + 0x10]
0x00512A0D: jmp      0x512a22
0x00512A0F: mov      eax, dword ptr [eax]
0x00512A11: test     eax, eax
0x00512A13: je       0x512a20
0x00512A15: push     0x1c
0x00512A17: mov      ecx, eax
0x00512A19: call     0x461400
0x00512A1E: jmp      0x512a22
0x00512A20: xor      eax, eax
0x00512A22: cmp      dword ptr [esi + 0x1d0], 0
0x00512A29: je       0x512a77
0x00512A2B: cmp      dword ptr [esi + 0x1d4], 0
0x00512A32: jne      0x512a77
0x00512A34: mov      ecx, dword ptr [esi + 0x1b0]
0x00512A3A: mov      edx, dword ptr [eax]
0x00512A3C: fld      dword ptr [ecx + 0x68]
0x00512A3F: mov      edx, dword ptr [edx + 0x104]
0x00512A45: push     ecx
0x00512A46: mov      ecx, eax
0x00512A48: fstp     dword ptr [esp]
0x00512A4B: call     edx
0x00512A4D: pop      ebp
0x00512A4E: pop      edi
0x00512A4F: mov      dword ptr [esi + 0x1d4], 0
0x00512A59: pop      esi
0x00512A5A: pop      ebx
0x00512A5B: pop      ecx
0x00512A5C: ret      4
0x00512A5F: push     ebx
0x00512A60: lea      ecx, [eax + 0x3c]
0x00512A63: call     0x499af0
0x00512A68: mov      dword ptr [esi + 0x1bc], eax
0x00512A6E: mov      eax, dword ptr [esi + 0x1b0]
0x00512A74: mov      byte ptr [eax + 0x38], bl
0x00512A77: mov      dword ptr [esi + 0x1d4], 0
0x00512A81: pop      ebp
0x00512A82: pop      edi
0x00512A83: pop      esi
0x00512A84: pop      ebx
0x00512A85: pop      ecx
0x00512A86: ret      4
0x00512A89: lea      ecx, [ecx]
0x00512A8C: cmp      ch, byte ptr [eax]
0x00512A8E: push     ecx
0x00512A8F: add      byte ptr [edx + 0x62005128], dh
0x00512A95: sub      byte ptr [ecx], dl
0x00512A98: sti      
0x00512A99: sub      byte ptr [ecx], dl
0x00512A9C: int3     
0x00512A9D: int3     
0x00512A9E: int3     
0x00512A9F: int3     
0x00512AA0: mov      eax, dword ptr [esp + 0xc]
0x00512AA4: mov      ecx, dword ptr [esp + 0x10]
0x00512AA8: push     eax
0x00512AA9: call     0x512620
0x00512AAE: ret      
0x00512AAF: int3     

--- CPlayerSpawn::vfunc_4 @ 0x00512AB0 ---
0x00512AB0: push     esi
0x00512AB1: mov      esi, ecx
0x00512AB3: mov      ecx, dword ptr [esi + 8]
0x00512AB6: push     edi
0x00512AB7: lea      eax, [esi + 0x60]
0x00512ABA: push     eax
0x00512ABB: push     ecx
0x00512ABC: call     0x5687c0
0x00512AC1: mov      ecx, dword ptr [esi + 0xc]
0x00512AC4: mov      edi, dword ptr [esp + 0x18]
0x00512AC8: add      esp, 8
0x00512ACB: test     ecx, ecx
0x00512ACD: je       0x512af1
0x00512ACF: mov      eax, dword ptr [esi + 8]
0x00512AD2: movzx    edx, byte ptr [eax + 1]
0x00512AD6: push     ebx
0x00512AD7: mov      ebx, dword ptr [eax + 4]
0x00512ADA: mov      ebx, dword ptr [ebx + 0x38]
0x00512ADD: cmp      ecx, dword ptr [ebx + edx*4]
0x00512AE0: pop      ebx
0x00512AE1: je       0x512af1
0x00512AE3: mov      edx, dword ptr [ecx]
0x00512AE5: mov      edx, dword ptr [edx + 0x24]
0x00512AE8: push     edi
0x00512AE9: push     eax
0x00512AEA: mov      eax, dword ptr [esp + 0x14]
0x00512AEE: push     eax
0x00512AEF: call     edx
0x00512AF1: mov      eax, edi
0x00512AF3: sub      eax, 2
0x00512AF6: jne      0x512b55
0x00512AF8: mov      eax, dword ptr [esi + 8]
0x00512AFB: movzx    ecx, byte ptr [eax + 1]
0x00512AFF: mov      edx, dword ptr [eax + 4]
0x00512B02: mov      eax, dword ptr [edx + 0x38]
0x00512B05: mov      ecx, dword ptr [eax + ecx*4]
0x00512B08: push     esi
0x00512B09: push     0x512aa0
0x00512B0E: lea      edx, [esi + 0x1a8]
0x00512B14: mov      dword ptr [esi + 0x1b0], ecx
0x00512B1A: mov      eax, dword ptr [0xb1bae4]
0x00512B1F: push     edx
0x00512B20: push     eax
0x00512B21: call     0x52d1d0
0x00512B26: mov      edx, dword ptr [0xb1bad8]
0x00512B2C: push     esi
0x00512B2D: push     0x511da0
0x00512B32: lea      ecx, [esi + 0x1ac]
0x00512B38: push     ecx
0x00512B39: push     edx
0x00512B3A: call     0x52d1d0
0x00512B3F: mov      eax, dword ptr [esi + 0x1b0]
0x00512B45: mov      ecx, dword ptr [eax + 0x70]
0x00512B48: add      esp, 0x20
0x00512B4B: neg      ecx
0x00512B4D: sbb      cl, cl
0x00512B4F: mov      byte ptr [esi + 0x1b8], cl
0x00512B55: pop      edi
0x00512B56: pop      esi
0x00512B57: ret      8
0x00512B5A: int3     
0x00512B5B: int3     
0x00512B5C: int3     
0x00512B5D: int3     
0x00512B5E: int3     
0x00512B5F: int3     

--- faSetDefaultSpawnPoint::execute @ 0x00512B60 ---
0x00512B60: push     esi
0x00512B61: mov      esi, dword ptr [esp + 8]
0x00512B65: mov      ecx, dword ptr [esi + 0x10]
0x00512B68: call     0x80a790
0x00512B6D: push     eax
0x00512B6E: push     0x1c
0x00512B70: lea      ecx, [esi + 0x4c]
0x00512B73: call     0x507ed0
0x00512B78: mov      cl, byte ptr [esi + 0x58]
0x00512B7B: mov      byte ptr [eax + 0x1b8], cl
0x00512B81: pop      esi
0x00512B82: ret      
0x00512B83: int3     
0x00512B84: int3     
0x00512B85: int3     
0x00512B86: int3     
0x00512B87: int3     
0x00512B88: int3     
0x00512B89: int3     
0x00512B8A: int3     
0x00512B8B: int3     
0x00512B8C: int3     
0x00512B8D: int3     
0x00512B8E: int3     
0x00512B8F: int3     
0x00512B90: push     -1
0x00512B92: push     0x9439e8
0x00512B97: mov      eax, dword ptr fs:[0]
0x00512B9D: push     eax
0x00512B9E: push     ecx
0x00512B9F: push     esi
0x00512BA0: mov      eax, dword ptr [0xb089c8]
0x00512BA5: xor      eax, esp
0x00512BA7: push     eax
0x00512BA8: lea      eax, [esp + 0xc]
0x00512BAC: mov      dword ptr fs:[0], eax
0x00512BB2: mov      esi, ecx
0x00512BB4: mov      dword ptr [esp + 8], esi
0x00512BB8: mov      eax, dword ptr [esp + 0x1c]
0x00512BBC: push     0
0x00512BBE: push     0
0x00512BC0: push     eax
0x00512BC1: mov      dword ptr [esp + 0x20], 0
0x00512BC9: mov      dword ptr [esi], 0x9837cc
0x00512BCF: call     0x704dc0
0x00512BD4: mov      eax, esi
0x00512BD6: mov      ecx, dword ptr [esp + 0xc]
0x00512BDA: mov      dword ptr fs:[0], ecx
0x00512BE1: pop      ecx
0x00512BE2: pop      esi
0x00512BE3: add      esp, 0x10
0x00512BE6: ret      4
0x00512BE9: int3     
0x00512BEA: int3     
0x00512BEB: int3     
0x00512BEC: int3     
0x00512BED: int3     
0x00512BEE: int3     
0x00512BEF: int3     
0x00512BF0: test     byte ptr [esp + 4], 1
0x00512BF5: push     esi
0x00512BF6: mov      esi, ecx
0x00512BF8: mov      dword ptr [esi], 0x9836c0
0x00512BFE: je       0x512c09
0x00512C00: push     esi
0x00512C01: call     0x688fb0
0x00512C06: add      esp, 4
0x00512C09: mov      eax, esi
0x00512C0B: pop      esi
0x00512C0C: ret      4
0x00512C0F: int3     

--- CPlayerSpawn::vfunc_0 @ 0x00512C10 ---
0x00512C10: push     esi
0x00512C11: mov      esi, ecx
0x00512C13: call     0x511960
0x00512C18: test     byte ptr [esp + 8], 1
0x00512C1D: je       0x512c28
0x00512C1F: push     esi
0x00512C20: call     0x688fb0
0x00512C25: add      esp, 4
0x00512C28: mov      eax, esi
0x00512C2A: pop      esi
0x00512C2B: ret      4
0x00512C2E: int3     
0x00512C2F: int3     

--- CSwitchObject::vfunc_30 @ 0x00512C30 ---
0x00512C30: mov      dword ptr [ecx + 0x1c8], 1
0x00512C3A: ret      4
0x00512C3D: int3     
0x00512C3E: int3     
0x00512C3F: int3     
0x00512C40: push     -1
0x00512C42: push     0x943a18
0x00512C47: mov      eax, dword ptr fs:[0]
0x00512C4D: push     eax
0x00512C4E: push     ecx
0x00512C4F: push     esi
0x00512C50: mov      eax, dword ptr [0xb089c8]
0x00512C55: xor      eax, esp
0x00512C57: push     eax
0x00512C58: lea      eax, [esp + 0xc]
0x00512C5C: mov      dword ptr fs:[0], eax
0x00512C62: mov      esi, ecx
0x00512C64: mov      dword ptr [esp + 8], esi
0x00512C68: mov      dword ptr [esi], 0x9837f0
0x00512C6E: mov      ecx, dword ptr [esi + 0x1f0]
0x00512C74: mov      dword ptr [esp + 0x14], 0
0x00512C7C: test     ecx, ecx
0x00512C7E: je       0x512c92
0x00512C80: mov      eax, dword ptr [ecx]
0x00512C82: mov      edx, dword ptr [eax]
0x00512C84: push     1
0x00512C86: call     edx
0x00512C88: mov      dword ptr [esi + 0x1f0], 0
0x00512C92: mov      ecx, esi
0x00512C94: mov      dword ptr [esp + 0x14], 0xffffffff
0x00512C9C: call     0x506b40
0x00512CA1: mov      ecx, dword ptr [esp + 0xc]
0x00512CA5: mov      dword ptr fs:[0], ecx
0x00512CAC: pop      ecx
0x00512CAD: pop      esi
0x00512CAE: add      esp, 0x10
0x00512CB1: ret      
0x00512CB2: int3     
0x00512CB3: int3     
0x00512CB4: int3     
0x00512CB5: int3     
0x00512CB6: int3     
0x00512CB7: int3     
0x00512CB8: int3     
0x00512CB9: int3     
0x00512CBA: int3     
0x00512CBB: int3     
0x00512CBC: int3     
0x00512CBD: int3     
0x00512CBE: int3     
0x00512CBF: int3     
0x00512CC0: fldz     
0x00512CC2: push     esi
0x00512CC3: mov      esi, ecx
0x00512CC5: fstp     dword ptr [esi + 0x1b8]
0x00512CCB: cmp      dword ptr [esi + 0x1ac], 0
0x00512CD2: mov      ecx, dword ptr [esi + 0x1dc]
0x00512CD8: push     1
0x00512CDA: jne      0x512d64
0x00512CE0: push     0
0x00512CE2: call     0x7f8390
0x00512CE7: mov      ecx, dword ptr [esi + 0x1e4]
0x00512CED: push     1
0x00512CEF: push     0
0x00512CF1: call     0x7f8390
0x00512CF6: mov      ecx, dword ptr [esi + 0x1d8]
0x00512CFC: push     1
0x00512CFE: push     1
0x00512D00: call     0x7f8390
0x00512D05: mov      esi, dword ptr [esi + 0x1ec]
0x00512D0B: movzx    eax, byte ptr [esi + 1]
0x00512D0F: mov      ecx, dword ptr [esi + 4]
0x00512D12: mov      edx, dword ptr [ecx + 0x14]
0x00512D15: lea      eax, [eax + eax*8]
0x00512D18: lea      eax, [edx + eax*4]
0x00512D1B: mov      edx, 0xd
0x00512D20: cmp      byte ptr [eax + 0x14], dl
0x00512D23: jne      0x512d2a
0x00512D25: mov      eax, dword ptr [eax + 4]
0x00512D28: jmp      0x512d5a
0x00512D2A: cmp      byte ptr [eax + 0x15], dl
0x00512D2D: jne      0x512d34
0x00512D2F: mov      eax, dword ptr [eax + 8]
0x00512D32: jmp      0x512d5a
0x00512D34: cmp      byte ptr [eax + 0x16], dl
0x00512D37: jne      0x512d3e
0x00512D39: mov      eax, dword ptr [eax + 0xc]
0x00512D3C: jmp      0x512d5a
0x00512D3E: cmp      byte ptr [eax + 0x17], dl
0x00512D41: jne      0x512d48
0x00512D43: mov      eax, dword ptr [eax + 0x10]
0x00512D46: jmp      0x512d5a
0x00512D48: mov      eax, dword ptr [eax]
0x00512D4A: test     eax, eax
0x00512D4C: je       0x512d58
0x00512D4E: push     edx
0x00512D4F: mov      ecx, eax
0x00512D51: call     0x461400
0x00512D56: jmp      0x512d5a
0x00512D58: xor      eax, eax
0x00512D5A: mov      edx, dword ptr [eax]
0x00512D5C: mov      ecx, eax
0x00512D5E: mov      eax, dword ptr [edx + 0x68]
0x00512D61: pop      esi
0x00512D62: jmp      eax
0x00512D64: push     1
0x00512D66: call     0x7f8390
0x00512D6B: mov      ecx, dword ptr [esi + 0x1dc]
0x00512D71: movzx    eax, byte ptr [ecx + 1]
0x00512D75: mov      ecx, dword ptr [ecx + 4]
0x00512D78: mov      edx, dword ptr [ecx + 8]
0x00512D7B: test     dword ptr [edx + eax*4], 0x40000
0x00512D82: je       0x512dca
0x00512D84: mov      ecx, dword ptr [ecx + 0x14]
0x00512D87: lea      eax, [eax + eax*8]
0x00512D8A: lea      eax, [ecx + eax*4]
0x00512D8D: mov      ecx, 0x1c
0x00512D92: cmp      byte ptr [eax + 0x14], cl
0x00512D95: jne      0x512d9c
0x00512D97: mov      eax, dword ptr [eax + 4]
0x00512D9A: jmp      0x512dcc
0x00512D9C: cmp      byte ptr [eax + 0x15], cl
0x00512D9F: jne      0x512da6
0x00512DA1: mov      eax, dword ptr [eax + 8]
0x00512DA4: jmp      0x512dcc
0x00512DA6: cmp      byte ptr [eax + 0x16], cl
0x00512DA9: jne      0x512db0
0x00512DAB: mov      eax, dword ptr [eax + 0xc]
0x00512DAE: jmp      0x512dcc
0x00512DB0: cmp      byte ptr [eax + 0x17], cl
0x00512DB3: jne      0x512dba
0x00512DB5: mov      eax, dword ptr [eax + 0x10]
0x00512DB8: jmp      0x512dcc
0x00512DBA: mov      eax, dword ptr [eax]
0x00512DBC: test     eax, eax
0x00512DBE: je       0x512dca
0x00512DC0: push     ecx
0x00512DC1: mov      ecx, eax
0x00512DC3: call     0x461400
0x00512DC8: jmp      0x512dcc
0x00512DCA: xor      eax, eax
0x00512DCC: fldz     
0x00512DCE: mov      edx, dword ptr [esi + 0x1e0]
0x00512DD4: mov      ecx, dword ptr [eax + 0x34]
0x00512DD7: push     0
0x00512DD9: sub      esp, 0xc
0x00512DDC: fst      dword ptr [esp + 8]
0x00512DE0: fld1     
0x00512DE2: fstp     dword ptr [esp + 4]
0x00512DE6: fstp     dword ptr [esp]
0x00512DE9: push     0
0x00512DEB: push     0
0x00512DED: push     edx
0x00512DEE: call     0x6dc670
0x00512DF3: mov      eax, dword ptr [esi + 0x1ec]
0x00512DF9: movzx    ecx, byte ptr [eax + 1]
0x00512DFD: mov      edx, dword ptr [eax + 4]
0x00512E00: mov      eax, dword ptr [edx + 0x14]
0x00512E03: lea      ecx, [ecx + ecx*8]
0x00512E06: lea      eax, [eax + ecx*4]
0x00512E09: mov      edx, 0xd
0x00512E0E: cmp      byte ptr [eax + 0x14], dl
0x00512E11: jne      0x512e18
0x00512E13: mov      eax, dword ptr [eax + 4]
0x00512E16: jmp      0x512e48
0x00512E18: cmp      byte ptr [eax + 0x15], dl
0x00512E1B: jne      0x512e22
0x00512E1D: mov      eax, dword ptr [eax + 8]
0x00512E20: jmp      0x512e48
0x00512E22: cmp      byte ptr [eax + 0x16], dl
0x00512E25: jne      0x512e2c
0x00512E27: mov      eax, dword ptr [eax + 0xc]
0x00512E2A: jmp      0x512e48
0x00512E2C: cmp      byte ptr [eax + 0x17], dl
0x00512E2F: jne      0x512e36
0x00512E31: mov      eax, dword ptr [eax + 0x10]
0x00512E34: jmp      0x512e48
0x00512E36: mov      eax, dword ptr [eax]
0x00512E38: test     eax, eax
0x00512E3A: je       0x512e46
0x00512E3C: push     edx
0x00512E3D: mov      ecx, eax
0x00512E3F: call     0x461400
0x00512E44: jmp      0x512e48
0x00512E46: xor      eax, eax
0x00512E48: mov      edx, dword ptr [eax]
0x00512E4A: mov      ecx, eax
0x00512E4C: mov      eax, dword ptr [edx + 0x64]
0x00512E4F: call     eax
0x00512E51: mov      ecx, dword ptr [esi + 0x1e4]
0x00512E57: push     1
0x00512E59: push     0
0x00512E5B: call     0x7f8390
0x00512E60: mov      ecx, dword ptr [esi + 0x1d8]
0x00512E66: push     1
0x00512E68: push     0
0x00512E6A: call     0x7f8390
0x00512E6F: pop      esi
0x00512E70: ret      
0x00512E71: int3     
0x00512E72: int3     
0x00512E73: int3     
0x00512E74: int3     
0x00512E75: int3     
0x00512E76: int3     
0x00512E77: int3     
0x00512E78: int3     
0x00512E79: int3     
0x00512E7A: int3     
0x00512E7B: int3     
0x00512E7C: int3     
0x00512E7D: int3     
0x00512E7E: int3     
0x00512E7F: int3     
0x00512E80: cmp      dword ptr [esp + 4], 0
0x00512E85: jne      0x512eaa
0x00512E87: mov      eax, dword ptr [esp + 0x10]
0x00512E8B: mov      ecx, dword ptr [eax + 0x1dc]
0x00512E91: call     0x514170
0x00512E96: cmp      eax, 1
0x00512E99: jne      0x512eaa
0x00512E9B: fldz     
0x00512E9D: push     ecx
0x00512E9E: mov      ecx, dword ptr [esp + 0xc]
0x00512EA2: fstp     dword ptr [esp]
0x00512EA5: call     0x6dc320
0x00512EAA: ret      
0x00512EAB: int3     
0x00512EAC: int3     
0x00512EAD: int3     
0x00512EAE: int3     
0x00512EAF: int3     
0x00512EB0: cmp      dword ptr [esp + 4], 0
0x00512EB5: jne      0x512ef9
0x00512EB7: push     esi
0x00512EB8: mov      esi, dword ptr [esp + 0x14]
0x00512EBC: mov      ecx, dword ptr [esi + 0x1e4]
0x00512EC2: call     0x514170
0x00512EC7: cmp      eax, 1
0x00512ECA: jne      0x512ef8
0x00512ECC: mov      ecx, dword ptr [esi + 0x1dc]
0x00512ED2: push     eax
0x00512ED3: push     0
0x00512ED5: call     0x7f8390
0x00512EDA: mov      ecx, dword ptr [esi + 0x1e4]
0x00512EE0: push     1
0x00512EE2: push     0
0x00512EE4: call     0x7f8390
0x00512EE9: mov      ecx, dword ptr [esi + 0x1d8]
0x00512EEF: push     1
0x00512EF1: push     1
0x00512EF3: call     0x7f8390
0x00512EF8: pop      esi
0x00512EF9: ret      
0x00512EFA: int3     
0x00512EFB: int3     
0x00512EFC: int3     
0x00512EFD: int3     
0x00512EFE: int3     
0x00512EFF: int3     
0x00512F00: push     -1
0x00512F02: push     0x943a3b
0x00512F07: mov      eax, dword ptr fs:[0]
0x00512F0D: push     eax
0x00512F0E: sub      esp, 8
0x00512F11: push     esi
0x00512F12: mov      eax, dword ptr [0xb089c8]
0x00512F17: xor      eax, esp
0x00512F19: push     eax
0x00512F1A: lea      eax, [esp + 0x10]
0x00512F1E: mov      dword ptr fs:[0], eax
0x00512F24: mov      esi, ecx
0x00512F26: mov      eax, dword ptr [esi + 0x1a8]
0x00512F2C: cmp      byte ptr [eax + 0x18], 0
0x00512F30: je       0x512f3e
0x00512F32: mov      dword ptr [esi + 0x1ac], 1
0x00512F3C: jmp      0x512f48
0x00512F3E: mov      dword ptr [esi + 0x1ac], 0
0x00512F48: mov      dword ptr [esi + 0x1c0], 0
0x00512F52: call     0x512cc0
0x00512F57: mov      ecx, dword ptr [esi + 0x1a8]
0x00512F5D: cmp      byte ptr [ecx + 0x10], 0
0x00512F61: je       0x512f87
0x00512F63: mov      edx, dword ptr [esi + 0x1ac]
0x00512F69: lea      eax, [esi + 0x1cc]
0x00512F6F: push     eax
0x00512F70: mov      dword ptr [esi + 0x1d0], edx
0x00512F76: mov      ecx, dword ptr [0xb1baf8]
0x00512F7C: push     0
0x00512F7E: push     ecx
0x00512F7F: call     0x52d190
0x00512F84: add      esp, 0xc
0x00512F87: mov      edx, dword ptr [esi + 0x1ac]
0x00512F8D: mov      dword ptr [esp + 8], 0x9838f4
0x00512F95: mov      dword ptr [esp + 0xc], edx
0x00512F99: mov      ecx, dword ptr [esi + 0x1f0]
0x00512F9F: mov      eax, dword ptr [ecx]
0x00512FA1: mov      eax, dword ptr [eax + 8]
0x00512FA4: push     1
0x00512FA6: lea      edx, [esp + 0xc]
0x00512FAA: push     edx
0x00512FAB: mov      dword ptr [esp + 0x20], 0
0x00512FB3: call     eax
0x00512FB5: mov      ecx, dword ptr [esp + 0x10]
0x00512FB9: mov      dword ptr fs:[0], ecx
0x00512FC0: pop      ecx
0x00512FC1: pop      esi
0x00512FC2: add      esp, 0x14
0x00512FC5: ret      
0x00512FC6: int3     
0x00512FC7: int3     
0x00512FC8: int3     
0x00512FC9: int3     
0x00512FCA: int3     
0x00512FCB: int3     
0x00512FCC: int3     
0x00512FCD: int3     
0x00512FCE: int3     
0x00512FCF: int3     
0x00512FD0: mov      eax, dword ptr [esp + 4]
0x00512FD4: push     esi
0x00512FD5: mov      esi, ecx
0x00512FD7: mov      dword ptr [esi + 0x1ac], eax
0x00512FDD: mov      dword ptr [esi + 0x1c0], 0
0x00512FE7: call     0x512cc0
0x00512FEC: mov      ecx, dword ptr [esi + 0x1a8]
0x00512FF2: cmp      byte ptr [ecx + 0x10], 0
0x00512FF6: je       0x51301b
0x00512FF8: mov      edx, dword ptr [esi + 0x1ac]
0x00512FFE: mov      dword ptr [esi + 0x1d0], edx
0x00513004: mov      eax, dword ptr [0xb1baf8]
0x00513009: add      esi, 0x1cc
0x0051300F: push     esi
0x00513010: push     0
0x00513012: push     eax
0x00513013: call     0x52d190
0x00513018: add      esp, 0xc
0x0051301B: pop      esi
0x0051301C: ret      4
0x0051301F: int3     

--- CSwitchObject::vfunc_4 @ 0x00513020 ---
0x00513020: push     esi
0x00513021: mov      esi, ecx
0x00513023: mov      ecx, dword ptr [esi + 8]
0x00513026: push     edi
0x00513027: lea      eax, [esi + 0x60]
0x0051302A: push     eax
0x0051302B: push     ecx
0x0051302C: call     0x5687c0
0x00513031: mov      ecx, dword ptr [esi + 0xc]
0x00513034: mov      edi, dword ptr [esp + 0x18]
0x00513038: add      esp, 8
0x0051303B: test     ecx, ecx
0x0051303D: je       0x513061
0x0051303F: mov      eax, dword ptr [esi + 8]
0x00513042: movzx    edx, byte ptr [eax + 1]
0x00513046: push     ebx
0x00513047: mov      ebx, dword ptr [eax + 4]
0x0051304A: mov      ebx, dword ptr [ebx + 0x38]
0x0051304D: cmp      ecx, dword ptr [ebx + edx*4]
0x00513050: pop      ebx
0x00513051: je       0x513061
0x00513053: mov      edx, dword ptr [ecx]
0x00513055: mov      edx, dword ptr [edx + 0x24]
0x00513058: push     edi
0x00513059: push     eax
0x0051305A: mov      eax, dword ptr [esp + 0x14]
0x0051305E: push     eax
0x0051305F: call     edx
0x00513061: mov      eax, edi
0x00513063: sub      eax, 2
0x00513066: je       0x51309c
0x00513068: sub      eax, 7
0x0051306B: jne      0x513159
0x00513071: mov      ecx, dword ptr [esi + 0x1a8]
0x00513077: push     eax
0x00513078: add      ecx, 0x54
0x0051307B: call     0x499af0
0x00513080: test     eax, eax
0x00513082: je       0x513159
0x00513088: push     0
0x0051308A: push     1
0x0051308C: push     0
0x0051308E: push     0
0x00513090: mov      ecx, eax
0x00513092: call     0x7f8950
0x00513097: pop      edi
0x00513098: pop      esi
0x00513099: ret      8
0x0051309C: mov      eax, dword ptr [esi + 8]
0x0051309F: movzx    ecx, byte ptr [eax + 1]
0x005130A3: mov      edx, dword ptr [eax + 4]
0x005130A6: mov      eax, dword ptr [edx + 0x38]
0x005130A9: mov      eax, dword ptr [eax + ecx*4]
0x005130AC: add      eax, 0x38
0x005130AF: mov      dword ptr [esi + 0x1a8], eax
0x005130B5: movsx    ecx, byte ptr [eax + 0x18]
0x005130B9: mov      dword ptr [esi + 0x1ac], ecx
0x005130BF: mov      edx, eax
0x005130C1: movsx    eax, byte ptr [edx + 0x60]
0x005130C5: mov      ecx, edx
0x005130C7: push     0
0x005130C9: add      ecx, 4
0x005130CC: mov      dword ptr [esi + 0x1d4], eax
0x005130D2: call     0x499af0
0x005130D7: movzx    ecx, byte ptr [eax + 1]
0x005130DB: mov      edx, dword ptr [eax + 4]
0x005130DE: mov      eax, dword ptr [edx + 0x14]
0x005130E1: lea      ecx, [ecx + ecx*8]
0x005130E4: lea      eax, [eax + ecx*4]
0x005130E7: mov      ecx, 0x2f
0x005130EC: cmp      byte ptr [eax + 0x14], cl
0x005130EF: jne      0x5130ff
0x005130F1: mov      eax, dword ptr [eax + 4]
0x005130F4: pop      edi
0x005130F5: mov      dword ptr [esi + 0x1b4], eax
0x005130FB: pop      esi
0x005130FC: ret      8
0x005130FF: cmp      byte ptr [eax + 0x15], cl
0x00513102: jne      0x513112
0x00513104: mov      eax, dword ptr [eax + 8]
0x00513107: pop      edi
0x00513108: mov      dword ptr [esi + 0x1b4], eax
0x0051310E: pop      esi
0x0051310F: ret      8
0x00513112: cmp      byte ptr [eax + 0x16], cl
0x00513115: jne      0x513125
0x00513117: mov      eax, dword ptr [eax + 0xc]
0x0051311A: pop      edi
0x0051311B: mov      dword ptr [esi + 0x1b4], eax
0x00513121: pop      esi
0x00513122: ret      8
0x00513125: cmp      byte ptr [eax + 0x17], cl
0x00513128: jne      0x513138
0x0051312A: mov      eax, dword ptr [eax + 0x10]
0x0051312D: pop      edi
0x0051312E: mov      dword ptr [esi + 0x1b4], eax
0x00513134: pop      esi
0x00513135: ret      8
0x00513138: mov      eax, dword ptr [eax]
0x0051313A: test     eax, eax
0x0051313C: je       0x513151
0x0051313E: push     ecx
0x0051313F: mov      ecx, eax
0x00513141: call     0x461400
0x00513146: pop      edi
0x00513147: mov      dword ptr [esi + 0x1b4], eax
0x0051314D: pop      esi
0x0051314E: ret      8
0x00513151: xor      eax, eax
0x00513153: mov      dword ptr [esi + 0x1b4], eax
0x00513159: pop      edi
0x0051315A: pop      esi
0x0051315B: ret      8
0x0051315E: int3     
0x0051315F: int3     

--- CSwitchObject::vfunc_7 @ 0x00513160 ---
0x00513160: cmp      dword ptr [esp + 4], 0
0x00513165: push     ebp
0x00513166: mov      ebp, ecx
0x00513168: jne      0x513478
0x0051316E: push     esi
0x0051316F: mov      esi, dword ptr [ebp + 0x1a8]
0x00513175: push     edi
0x00513176: add      esi, 0x24
0x00513179: lea      edi, [esi + 8]
0x0051317C: mov      ecx, edi
0x0051317E: call     0x7bfe00
0x00513183: test     eax, eax
0x00513185: je       0x5131ae
0x00513187: mov      ecx, edi
0x00513189: call     0x7bfe00
0x0051318E: test     eax, eax
0x00513190: je       0x5131ca
0x00513192: movzx    eax, byte ptr [edi]
0x00513195: mov      ecx, dword ptr [0xb78a28]
0x0051319B: lea      eax, [eax + eax*2]
0x0051319E: mov      edx, dword ptr [ecx + eax*4 + 8]
0x005131A2: movzx    eax, byte ptr [edi + 1]
0x005131A6: mov      ecx, dword ptr [edx + 0x78]
0x005131A9: mov      eax, dword ptr [ecx + eax*4]
0x005131AC: jmp      0x5131cc
0x005131AE: mov      ecx, dword ptr [0xb79350]
0x005131B4: test     ecx, ecx
0x005131B6: je       0x5131ca
0x005131B8: mov      edx, dword ptr [esi + 4]
0x005131BB: mov      eax, dword ptr [esi]
0x005131BD: push     edx
0x005131BE: push     0
0x005131C0: push     0
0x005131C2: push     eax
0x005131C3: call     0x7cd120
0x005131C8: jmp      0x5131cc
0x005131CA: xor      eax, eax
0x005131CC: mov      dword ptr [ebp + 0x1dc], eax
0x005131D2: movzx    ecx, byte ptr [eax + 1]
0x005131D6: mov      eax, dword ptr [eax + 4]
0x005131D9: mov      edx, dword ptr [eax + 8]
0x005131DC: test     dword ptr [edx + ecx*4], 0x40000
0x005131E3: push     ebx
0x005131E4: mov      ebx, 0x1c
0x005131E9: je       0x51322d
0x005131EB: mov      edx, dword ptr [eax + 0x14]
0x005131EE: lea      ecx, [ecx + ecx*8]
0x005131F1: cmp      byte ptr [edx + ecx*4 + 0x14], bl
0x005131F5: lea      eax, [edx + ecx*4]
0x005131F8: jne      0x5131ff
0x005131FA: mov      eax, dword ptr [eax + 4]
0x005131FD: jmp      0x51322f
0x005131FF: cmp      byte ptr [eax + 0x15], bl
0x00513202: jne      0x513209
0x00513204: mov      eax, dword ptr [eax + 8]
0x00513207: jmp      0x51322f
0x00513209: cmp      byte ptr [eax + 0x16], bl
0x0051320C: jne      0x513213
0x0051320E: mov      eax, dword ptr [eax + 0xc]
0x00513211: jmp      0x51322f
0x00513213: cmp      byte ptr [eax + 0x17], bl
0x00513216: jne      0x51321d
0x00513218: mov      eax, dword ptr [eax + 0x10]
0x0051321B: jmp      0x51322f
0x0051321D: mov      eax, dword ptr [eax]
0x0051321F: test     eax, eax
0x00513221: je       0x51322d
0x00513223: push     ebx
0x00513224: mov      ecx, eax
0x00513226: call     0x461400
0x0051322B: jmp      0x51322f
0x0051322D: xor      eax, eax
0x0051322F: mov      ecx, dword ptr [eax + 0x34]
0x00513232: mov      eax, dword ptr [ecx + 0x13c]
0x00513238: push     1
0x0051323A: mov      dword ptr [ecx + 0x16c], 0x512e80
0x00513244: mov      dword ptr [ecx + 0x170], ebp
0x0051324A: mov      dword ptr [ebp + 0x1e0], eax
0x00513250: mov      edx, dword ptr [ecx]
0x00513252: mov      eax, dword ptr [edx + 0x90]
0x00513258: push     1
0x0051325A: push     0
0x0051325C: call     eax
0x0051325E: mov      esi, dword ptr [ebp + 0x1a8]
0x00513264: add      esi, 0x3c
0x00513267: lea      edi, [esi + 8]
0x0051326A: mov      ecx, edi
0x0051326C: call     0x7bfe00
0x00513271: test     eax, eax
0x00513273: je       0x51329c
0x00513275: mov      ecx, edi
0x00513277: call     0x7bfe00
0x0051327C: test     eax, eax
0x0051327E: je       0x5132b8
0x00513280: movzx    eax, byte ptr [edi]
0x00513283: mov      edx, dword ptr [0xb78a28]
0x00513289: lea      ecx, [eax + eax*2]
0x0051328C: mov      eax, dword ptr [edx + ecx*4 + 8]
0x00513290: movzx    ecx, byte ptr [edi + 1]
0x00513294: mov      edx, dword ptr [eax + 0x78]
0x00513297: mov      eax, dword ptr [edx + ecx*4]
0x0051329A: jmp      0x5132ba
0x0051329C: mov      ecx, dword ptr [0xb79350]
0x005132A2: test     ecx, ecx
0x005132A4: je       0x5132b8
0x005132A6: mov      eax, dword ptr [esi + 4]
0x005132A9: mov      edx, dword ptr [esi]
0x005132AB: push     eax
0x005132AC: push     0
0x005132AE: push     0
0x005132B0: push     edx
0x005132B1: call     0x7cd120
0x005132B6: jmp      0x5132ba
0x005132B8: xor      eax, eax
0x005132BA: mov      dword ptr [ebp + 0x1e4], eax
0x005132C0: movzx    ecx, byte ptr [eax + 1]
0x005132C4: mov      eax, dword ptr [eax + 4]
0x005132C7: mov      edx, dword ptr [eax + 8]
0x005132CA: test     dword ptr [edx + ecx*4], 0x40000
0x005132D1: je       0x513315
0x005132D3: mov      edx, dword ptr [eax + 0x14]
0x005132D6: lea      ecx, [ecx + ecx*8]
0x005132D9: cmp      byte ptr [edx + ecx*4 + 0x14], bl
0x005132DD: lea      eax, [edx + ecx*4]
0x005132E0: jne      0x5132e7
0x005132E2: mov      eax, dword ptr [eax + 4]
0x005132E5: jmp      0x513317
0x005132E7: cmp      byte ptr [eax + 0x15], bl
0x005132EA: jne      0x5132f1
0x005132EC: mov      eax, dword ptr [eax + 8]
0x005132EF: jmp      0x513317
0x005132F1: cmp      byte ptr [eax + 0x16], bl
0x005132F4: jne      0x5132fb
0x005132F6: mov      eax, dword ptr [eax + 0xc]
0x005132F9: jmp      0x513317
0x005132FB: cmp      byte ptr [eax + 0x17], bl
0x005132FE: jne      0x513305
0x00513300: mov      eax, dword ptr [eax + 0x10]
0x00513303: jmp      0x513317
0x00513305: mov      eax, dword ptr [eax]
0x00513307: test     eax, eax
0x00513309: je       0x513315
0x0051330B: push     ebx
0x0051330C: mov      ecx, eax
0x0051330E: call     0x461400
0x00513313: jmp      0x513317
0x00513315: xor      eax, eax
0x00513317: mov      ecx, dword ptr [eax + 0x34]
0x0051331A: mov      eax, dword ptr [ecx + 0x13c]
0x00513320: push     1
0x00513322: mov      dword ptr [ecx + 0x16c], 0x512eb0
0x0051332C: mov      dword ptr [ecx + 0x170], ebp
0x00513332: mov      dword ptr [ebp + 0x1e8], eax
0x00513338: mov      edx, dword ptr [ecx]
0x0051333A: mov      eax, dword ptr [edx + 0x90]
0x00513340: push     1
0x00513342: push     0
0x00513344: call     eax
0x00513346: mov      esi, dword ptr [ebp + 0x1a8]
0x0051334C: add      esi, 0x30
0x0051334F: lea      edi, [esi + 8]
0x00513352: mov      ecx, edi
0x00513354: call     0x7bfe00
0x00513359: pop      ebx
0x0051335A: test     eax, eax
0x0051335C: je       0x513385
0x0051335E: mov      ecx, edi
0x00513360: call     0x7bfe00
0x00513365: test     eax, eax
0x00513367: je       0x5133a1
0x00513369: movzx    eax, byte ptr [edi]
0x0051336C: mov      edx, dword ptr [0xb78a28]
0x00513372: lea      ecx, [eax + eax*2]
0x00513375: mov      eax, dword ptr [edx + ecx*4 + 8]
0x00513379: movzx    ecx, byte ptr [edi + 1]
0x0051337D: mov      edx, dword ptr [eax + 0x78]
0x00513380: mov      eax, dword ptr [edx + ecx*4]
0x00513383: jmp      0x5133a3
0x00513385: mov      ecx, dword ptr [0xb79350]
0x0051338B: test     ecx, ecx
0x0051338D: je       0x5133a1
0x0051338F: mov      eax, dword ptr [esi + 4]
0x00513392: mov      edx, dword ptr [esi]
0x00513394: push     eax
0x00513395: push     0
0x00513397: push     0
0x00513399: push     edx
0x0051339A: call     0x7cd120
0x0051339F: jmp      0x5133a3
0x005133A1: xor      eax, eax
0x005133A3: mov      esi, dword ptr [ebp + 0x1a8]
0x005133A9: add      esi, 0x48
0x005133AC: lea      edi, [esi + 8]
0x005133AF: mov      ecx, edi
0x005133B1: mov      dword ptr [ebp + 0x1d8], eax
0x005133B7: call     0x7bfe00
0x005133BC: test     eax, eax
0x005133BE: je       0x5133e7
0x005133C0: mov      ecx, edi
0x005133C2: call     0x7bfe00
0x005133C7: test     eax, eax
0x005133C9: je       0x513403
0x005133CB: movzx    eax, byte ptr [edi]
0x005133CE: mov      ecx, dword ptr [0xb78a28]
0x005133D4: lea      eax, [eax + eax*2]
0x005133D7: mov      edx, dword ptr [ecx + eax*4 + 8]
0x005133DB: movzx    eax, byte ptr [edi + 1]
0x005133DF: mov      ecx, dword ptr [edx + 0x78]
0x005133E2: mov      eax, dword ptr [ecx + eax*4]
0x005133E5: jmp      0x513405
0x005133E7: mov      ecx, dword ptr [0xb79350]
0x005133ED: test     ecx, ecx
0x005133EF: je       0x513403
0x005133F1: mov      edx, dword ptr [esi + 4]
0x005133F4: mov      eax, dword ptr [esi]
0x005133F6: push     edx
0x005133F7: push     0
0x005133F9: push     0
0x005133FB: push     eax
0x005133FC: call     0x7cd120
0x00513401: jmp      0x513405
0x00513403: xor      eax, eax
0x00513405: mov      dword ptr [ebp + 0x1ec], eax
0x0051340B: movzx    ecx, byte ptr [eax + 1]
0x0051340F: mov      edx, dword ptr [eax + 4]
0x00513412: mov      eax, dword ptr [edx + 0x14]
0x00513415: lea      ecx, [ecx + ecx*8]
0x00513418: lea      eax, [eax + ecx*4]
0x0051341B: mov      ecx, 0xd
0x00513420: pop      edi
0x00513421: pop      esi
0x00513422: cmp      byte ptr [eax + 0x14], cl
0x00513425: jne      0x51342c
0x00513427: mov      eax, dword ptr [eax + 4]
0x0051342A: jmp      0x51345c
0x0051342C: cmp      byte ptr [eax + 0x15], cl
0x0051342F: jne      0x513436
0x00513431: mov      eax, dword ptr [eax + 8]
0x00513434: jmp      0x51345c
0x00513436: cmp      byte ptr [eax + 0x16], cl
0x00513439: jne      0x513440
0x0051343B: mov      eax, dword ptr [eax + 0xc]
0x0051343E: jmp      0x51345c
0x00513440: cmp      byte ptr [eax + 0x17], cl
0x00513443: jne      0x51344a
0x00513445: mov      eax, dword ptr [eax + 0x10]
0x00513448: jmp      0x51345c
0x0051344A: mov      eax, dword ptr [eax]
0x0051344C: test     eax, eax
0x0051344E: je       0x51345a
0x00513450: push     ecx
0x00513451: mov      ecx, eax
0x00513453: call     0x461400
0x00513458: jmp      0x51345c
0x0051345A: xor      eax, eax
0x0051345C: mov      edx, dword ptr [eax]
0x0051345E: mov      ecx, eax
0x00513460: mov      eax, dword ptr [edx + 0x68]
0x00513463: call     eax
0x00513465: mov      ecx, dword ptr [ebp + 8]
0x00513468: push     0
0x0051346A: push     0
0x0051346C: call     0x7f8390
0x00513471: mov      ecx, ebp
0x00513473: call     0x512cc0
0x00513478: pop      ebp
0x00513479: ret      4
0x0051347C: int3     
0x0051347D: int3     
0x0051347E: int3     
0x0051347F: int3     

--- CSwitchObject::vfunc_44 @ 0x00513480 ---
0x00513480: push     ecx
0x00513481: fldz     
0x00513483: push     esi
0x00513484: mov      esi, ecx
0x00513486: fcom     dword ptr [esi + 0x1bc]
0x0051348C: fnstsw   ax
0x0051348E: test     ah, 5
0x00513491: jp       0x5134e1
0x00513493: fld      dword ptr [esi + 0x1bc]
0x00513499: fsub     dword ptr [0xb76120]
0x0051349F: fstp     dword ptr [esp + 4]
0x005134A3: fld      dword ptr [esp + 4]
0x005134A7: fst      dword ptr [esi + 0x1bc]
0x005134AD: fcomp    st(1)
0x005134AF: fnstsw   ax
0x005134B1: test     ah, 0x41
0x005134B4: jp       0x5134e1
0x005134B6: mov      ecx, dword ptr [esi + 0x1a8]
0x005134BC: fstp     dword ptr [esi + 0x1bc]
0x005134C2: push     0
0x005134C4: add      ecx, 0x54
0x005134C7: call     0x499af0
0x005134CC: test     eax, eax
0x005134CE: je       0x5134df
0x005134D0: push     0
0x005134D2: push     1
0x005134D4: push     0
0x005134D6: push     0
0x005134D8: mov      ecx, eax
0x005134DA: call     0x7f8950
0x005134DF: fldz     
0x005134E1: fcom     dword ptr [esi + 0x1b8]
0x005134E7: fnstsw   ax
0x005134E9: test     ah, 5
0x005134EC: jp       0x513520
0x005134EE: fld      dword ptr [esi + 0x1b8]
0x005134F4: fsub     dword ptr [0xb76120]
0x005134FA: fstp     dword ptr [esp + 4]
0x005134FE: fld      dword ptr [esp + 4]
0x00513502: fst      dword ptr [esi + 0x1b8]
0x00513508: fcomp    st(1)
0x0051350A: fnstsw   ax
0x0051350C: test     ah, 0x41
0x0051350F: jp       0x513520
0x00513511: mov      ecx, esi
0x00513513: fstp     dword ptr [esi + 0x1b8]
0x00513519: call     0x512cc0
0x0051351E: jmp      0x513522
0x00513520: fstp     st(0)
0x00513522: cmp      dword ptr [esi + 0x1c8], 0
0x00513529: je       0x513646
0x0051352F: mov      ecx, dword ptr [esi + 8]
0x00513532: mov      dword ptr [esi + 0x1c8], 0
0x0051353C: call     0x514170
0x00513541: test     eax, eax
0x00513543: je       0x513646
0x00513549: mov      ecx, dword ptr [esi + 8]
0x0051354C: push     edi
0x0051354D: push     0
0x0051354F: push     0
0x00513551: call     0x7f8390
0x00513556: mov      ecx, dword ptr [esi + 0x1a8]
0x0051355C: push     0
0x0051355E: add      ecx, 0x54
0x00513561: call     0x499af0
0x00513566: mov      edi, eax
0x00513568: test     edi, edi
0x0051356A: je       0x513649
0x00513570: mov      ecx, dword ptr [esi + 0x1dc]
0x00513576: push     1
0x00513578: push     0
0x0051357A: call     0x7f8390
0x0051357F: mov      ecx, dword ptr [esi + 0x1e4]
0x00513585: push     1
0x00513587: push     0
0x00513589: call     0x7f8390
0x0051358E: mov      ecx, dword ptr [esi + 0x1d8]
0x00513594: push     1
0x00513596: push     0
0x00513598: call     0x7f8390
0x0051359D: fld      dword ptr [0x9ac388] ; [f32=0.5, u32=0x3F000000]
0x005135A3: push     0
0x005135A5: fst      dword ptr [esi + 0x1bc]
0x005135AB: push     1
0x005135AD: fstp     dword ptr [esi + 0x1b8]
0x005135B3: push     1
0x005135B5: push     1
0x005135B7: mov      ecx, edi
0x005135B9: call     0x7f8950
0x005135BE: movzx    eax, byte ptr [edi + 1]
0x005135C2: mov      ecx, dword ptr [edi + 4]
0x005135C5: mov      edx, dword ptr [ecx + 0x14]
0x005135C8: lea      eax, [eax + eax*8]
0x005135CB: lea      eax, [edx + eax*4]
0x005135CE: mov      ecx, 0x1f
0x005135D3: cmp      byte ptr [eax + 0x14], cl
0x005135D6: jne      0x5135dd
0x005135D8: mov      edi, dword ptr [eax + 4]
0x005135DB: jmp      0x51360b
0x005135DD: cmp      byte ptr [eax + 0x15], cl
0x005135E0: jne      0x5135e7
0x005135E2: mov      edi, dword ptr [eax + 8]
0x005135E5: jmp      0x51360b
0x005135E7: cmp      byte ptr [eax + 0x16], cl
0x005135EA: jne      0x5135f1
0x005135EC: mov      edi, dword ptr [eax + 0xc]
0x005135EF: jmp      0x51360b
0x005135F1: cmp      byte ptr [eax + 0x17], cl
0x005135F4: jne      0x5135fb
0x005135F6: mov      edi, dword ptr [eax + 0x10]
0x005135F9: jmp      0x51360b
0x005135FB: mov      eax, dword ptr [eax]
0x005135FD: test     eax, eax
0x005135FF: je       0x513645
0x00513601: push     ecx
0x00513602: mov      ecx, eax
0x00513604: call     0x461400
0x00513609: mov      edi, eax
0x0051360B: test     edi, edi
0x0051360D: je       0x513645
0x0051360F: mov      eax, dword ptr [edi]
0x00513611: fldz     
0x00513613: mov      edx, dword ptr [eax + 0xd8]
0x00513619: push     ecx
0x0051361A: mov      ecx, edi
0x0051361C: fstp     dword ptr [esp]
0x0051361F: call     edx
0x00513621: mov      eax, dword ptr [edi + 0x164]
0x00513627: fld      dword ptr [eax]
0x00513629: fadd     st(0), st(0)
0x0051362B: fdiv     qword ptr [0x97ea78] ; [f32=0, f64=3, u32=0x00000000]
0x00513631: fstp     dword ptr [esi + 0x1b8]
0x00513637: mov      ecx, dword ptr [edi + 0x164]
0x0051363D: fld      dword ptr [ecx]
0x0051363F: fstp     dword ptr [esi + 0x1bc]
0x00513645: pop      edi
0x00513646: pop      esi
0x00513647: pop      ecx
0x00513648: ret      
0x00513649: pop      edi
0x0051364A: mov      ecx, esi
0x0051364C: pop      esi
0x0051364D: add      esp, 4
0x00513650: jmp      0x512cc0
0x00513655: int3     
0x00513656: int3     
0x00513657: int3     
0x00513658: int3     
0x00513659: int3     
0x0051365A: int3     
0x0051365B: int3     
0x0051365C: int3     
0x0051365D: int3     
0x0051365E: int3     
0x0051365F: int3     
0x00513660: push     -1
0x00513662: push     0x943a66
0x00513667: mov      eax, dword ptr fs:[0]
0x0051366D: push     eax
0x0051366E: sub      esp, 0x44
0x00513671: push     ebx
0x00513672: push     ebp
0x00513673: push     esi
0x00513674: push     edi
0x00513675: mov      eax, dword ptr [0xb089c8]
0x0051367A: xor      eax, esp
0x0051367C: push     eax
0x0051367D: lea      eax, [esp + 0x58]
0x00513681: mov      dword ptr fs:[0], eax
0x00513687: mov      ebp, ecx
0x00513689: mov      dword ptr [esp + 0x14], ebp
0x0051368D: fldz     
0x0051368F: fcomp    dword ptr [ebp + 0x1b8]
0x00513695: fnstsw   ax
0x00513697: test     ah, 5
0x0051369A: jnp      0x51390b
0x005136A0: mov      eax, dword ptr [ebp + 0x1a8]
0x005136A6: cmp      dword ptr [eax + 0x14], 4
0x005136AA: jg       0x51383f
0x005136B0: mov      eax, dword ptr [ebp + 8]
0x005136B3: movzx    ecx, byte ptr [eax + 1]
0x005136B7: mov      edx, dword ptr [eax + 4]
0x005136BA: mov      eax, dword ptr [edx + 0x28]
0x005136BD: mov      eax, dword ptr [eax + ecx*4]
0x005136C0: test     eax, eax
0x005136C2: je       0x5136cc
0x005136C4: mov      eax, dword ptr [eax + 0x114]
0x005136CA: jmp      0x5136ce
0x005136CC: xor      eax, eax
0x005136CE: mov      ecx, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x005136D4: push     eax
0x005136D5: push     ecx
0x005136D6: lea      ecx, [esp + 0x20]
0x005136DA: call     0x509b10
0x005136DF: lea      ecx, [esp + 0x18]
0x005136E3: mov      dword ptr [esp + 0x60], 0
0x005136EB: call     0x509ba0
0x005136F0: mov      edi, eax
0x005136F2: test     edi, edi
0x005136F4: je       0x513806
0x005136FA: mov      ebx, 0x1c
0x005136FF: movzx    eax, byte ptr [edi + 1]
0x00513703: mov      ecx, dword ptr [edi + 4]
0x00513706: mov      edx, dword ptr [ecx + 8]
0x00513709: test     dword ptr [edx + eax*4], 0x40000
0x00513710: je       0x513764
0x00513712: mov      ecx, dword ptr [ecx + 0x14]
0x00513715: lea      eax, [eax + eax*8]
0x00513718: cmp      byte ptr [ecx + eax*4 + 0x14], bl
0x0051371C: lea      eax, [ecx + eax*4]
0x0051371F: jne      0x513728
0x00513721: mov      eax, dword ptr [eax + 4]
0x00513724: mov      esi, eax
0x00513726: jmp      0x513766
0x00513728: cmp      byte ptr [eax + 0x15], bl
0x0051372B: jne      0x513734
0x0051372D: mov      eax, dword ptr [eax + 8]
0x00513730: mov      esi, eax
0x00513732: jmp      0x513766
0x00513734: cmp      byte ptr [eax + 0x16], bl
0x00513737: jne      0x513740
0x00513739: mov      eax, dword ptr [eax + 0xc]
0x0051373C: mov      esi, eax
0x0051373E: jmp      0x513766
0x00513740: cmp      byte ptr [eax + 0x17], bl
0x00513743: jne      0x51374c
0x00513745: mov      eax, dword ptr [eax + 0x10]
0x00513748: mov      esi, eax
0x0051374A: jmp      0x513766
0x0051374C: mov      eax, dword ptr [eax]
0x0051374E: test     eax, eax
0x00513750: je       0x51375e
0x00513752: push     ebx
0x00513753: mov      ecx, eax
0x00513755: call     0x461400
0x0051375A: mov      esi, eax
0x0051375C: jmp      0x513766
0x0051375E: xor      eax, eax
0x00513760: mov      esi, eax
0x00513762: jmp      0x513766
0x00513764: xor      esi, esi
0x00513766: mov      edx, dword ptr [ebp + 0x1a8]
0x0051376C: mov      eax, dword ptr [edx + 0x14]
0x0051376F: cmp      eax, 4
0x00513772: je       0x513781
0x00513774: mov      ecx, dword ptr [esi + 0x1dc]
0x0051377A: movsx    ecx, byte ptr [ecx]
0x0051377D: cmp      ecx, eax
0x0051377F: jne      0x5137f3
0x00513781: movzx    eax, byte ptr [edi + 1]
0x00513785: mov      ecx, dword ptr [edi + 4]
0x00513788: mov      edx, dword ptr [ecx + 0x1c]
0x0051378B: add      eax, eax
0x0051378D: add      eax, eax
0x0051378F: mov      edx, dword ptr [eax + edx]
0x00513792: test     edx, edx
0x00513794: je       0x5137be
0x00513796: mov      ebp, dword ptr [ecx + 0xc]
0x00513799: test     dword ptr [eax + ebp], 0x200
0x005137A0: je       0x5137ba
0x005137A2: test     byte ptr [edx + 8], 8
0x005137A6: je       0x5137ba
0x005137A8: mov      ecx, dword ptr [ecx + 0x20]
0x005137AB: mov      ebp, dword ptr [esp + 0x14]
0x005137AF: add      eax, ecx
0x005137B1: cmp      dword ptr [eax], 0
0x005137B4: je       0x5137be
0x005137B6: mov      eax, dword ptr [eax]
0x005137B8: jmp      0x5137c0
0x005137BA: mov      ebp, dword ptr [esp + 0x14]
0x005137BE: mov      eax, edx
0x005137C0: mov      ecx, dword ptr [ebp + 0x1b4]
0x005137C6: mov      edx, dword ptr [ecx]
0x005137C8: add      eax, 0xc
0x005137CB: push     eax
0x005137CC: mov      eax, dword ptr [edx + 0xd8]
0x005137D2: call     eax
0x005137D4: test     eax, eax
0x005137D6: je       0x5137f3
0x005137D8: cmp      dword ptr [esi + 0xd74], 0
0x005137DF: jne      0x5137f3
0x005137E1: cmp      dword ptr [esi + 0x1ec], 0
0x005137E8: je       0x5137f3
0x005137EA: cmp      dword ptr [esi + 0x1f4], 0
0x005137F1: je       0x513818
0x005137F3: lea      ecx, [esp + 0x18]
0x005137F7: call     0x509ba0
0x005137FC: mov      edi, eax
0x005137FE: test     edi, edi
0x00513800: jne      0x5136ff
0x00513806: or       edi, 0xffffffff
0x00513809: lea      ecx, [esp + 0x28]
0x0051380D: mov      dword ptr [esp + 0x60], edi
0x00513811: call     0x509910
0x00513816: jmp      0x513842
0x00513818: lea      ecx, [esp + 0x28]
0x0051381C: mov      dword ptr [esp + 0x60], 0xffffffff
0x00513824: call     0x509910
0x00513829: mov      eax, edi
0x0051382B: mov      ecx, dword ptr [esp + 0x58]
0x0051382F: mov      dword ptr fs:[0], ecx
0x00513836: pop      ecx
0x00513837: pop      edi
0x00513838: pop      esi
0x00513839: pop      ebp
0x0051383A: pop      ebx
0x0051383B: add      esp, 0x50
0x0051383E: ret      
0x0051383F: or       edi, 0xffffffff
0x00513842: mov      ecx, dword ptr [ebp + 0x1a8]
0x00513848: cmp      dword ptr [ecx + 0x14], 7
0x0051384C: jne      0x51390b
0x00513852: mov      eax, dword ptr [ebp + 8]
0x00513855: movzx    edx, byte ptr [eax + 1]
0x00513859: mov      eax, dword ptr [eax + 4]
0x0051385C: mov      ecx, dword ptr [eax + 0x28]
0x0051385F: mov      eax, dword ptr [ecx + edx*4]
0x00513862: test     eax, eax
0x00513864: je       0x51386e
0x00513866: mov      eax, dword ptr [eax + 0x114]
0x0051386C: jmp      0x513870
0x0051386E: xor      eax, eax
0x00513870: mov      edx, dword ptr [0x95f6dc] ; [u32=0x90B24AEB]
0x00513876: push     eax
0x00513877: push     edx
0x00513878: lea      ecx, [esp + 0x40]
0x0051387C: call     0x509b10
0x00513881: lea      ecx, [esp + 0x38]
0x00513885: mov      dword ptr [esp + 0x60], 1
0x0051388D: call     0x509ba0
0x00513892: mov      esi, eax
0x00513894: test     esi, esi
0x00513896: je       0x5138fe
0x00513898: jmp      0x5138a0
0x0051389A: lea      ebx, [ebx]
0x005138A0: movzx    eax, byte ptr [esi + 1]
0x005138A4: mov      ecx, dword ptr [esi + 4]
0x005138A7: mov      edx, dword ptr [ecx + 0x1c]
0x005138AA: add      eax, eax
0x005138AC: add      eax, eax
0x005138AE: mov      edx, dword ptr [eax + edx]
0x005138B1: test     edx, edx
0x005138B3: je       0x5138d5
0x005138B5: mov      ebx, dword ptr [ecx + 0xc]
0x005138B8: test     dword ptr [eax + ebx], 0x200
0x005138BF: je       0x5138d5
0x005138C1: test     byte ptr [edx + 8], 8
0x005138C5: je       0x5138d5
0x005138C7: mov      ecx, dword ptr [ecx + 0x20]
0x005138CA: add      eax, ecx
0x005138CC: cmp      dword ptr [eax], 0
0x005138CF: je       0x5138d5
0x005138D1: mov      eax, dword ptr [eax]
0x005138D3: jmp      0x5138d7
0x005138D5: mov      eax, edx
0x005138D7: mov      ecx, dword ptr [ebp + 0x1b4]
0x005138DD: mov      edx, dword ptr [ecx]
0x005138DF: add      eax, 0xc
0x005138E2: push     eax
0x005138E3: mov      eax, dword ptr [edx + 0xd8]
0x005138E9: call     eax
0x005138EB: test     eax, eax
0x005138ED: jne      0x513921
0x005138EF: lea      ecx, [esp + 0x38]
0x005138F3: call     0x509ba0
0x005138F8: mov      esi, eax
0x005138FA: test     esi, esi
0x005138FC: jne      0x5138a0
0x005138FE: lea      ecx, [esp + 0x48]
0x00513902: mov      dword ptr [esp + 0x60], edi
0x00513906: call     0x509910
0x0051390B: xor      eax, eax
0x0051390D: mov      ecx, dword ptr [esp + 0x58]
0x00513911: mov      dword ptr fs:[0], ecx
0x00513918: pop      ecx
0x00513919: pop      edi
0x0051391A: pop      esi
0x0051391B: pop      ebp
0x0051391C: pop      ebx
0x0051391D: add      esp, 0x50
0x00513920: ret      
0x00513921: lea      ecx, [esp + 0x48]
0x00513925: mov      dword ptr [esp + 0x60], edi
0x00513929: call     0x509910
0x0051392E: mov      eax, esi
0x00513930: mov      ecx, dword ptr [esp + 0x58]
0x00513934: mov      dword ptr fs:[0], ecx
0x0051393B: pop      ecx
0x0051393C: pop      edi
0x0051393D: pop      esi
0x0051393E: pop      ebp
0x0051393F: pop      ebx
0x00513940: add      esp, 0x50
0x00513943: ret      
0x00513944: int3     
0x00513945: int3     
0x00513946: int3     
0x00513947: int3     
0x00513948: int3     
0x00513949: int3     
0x0051394A: int3     
0x0051394B: int3     
0x0051394C: int3     
0x0051394D: int3     
0x0051394E: int3     
0x0051394F: int3     

--- CSwitchObject::vfunc_43 @ 0x00513950 ---
0x00513950: push     -1
0x00513952: push     0x943a91
0x00513957: mov      eax, dword ptr fs:[0]
0x0051395D: push     eax
0x0051395E: sub      esp, 0xc
0x00513961: push     ebx
0x00513962: push     esi
0x00513963: push     edi
0x00513964: mov      eax, dword ptr [0xb089c8]
0x00513969: xor      eax, esp
0x0051396B: push     eax
0x0051396C: lea      eax, [esp + 0x1c]
0x00513970: mov      dword ptr fs:[0], eax
0x00513976: mov      esi, ecx
0x00513978: call     0x795870
0x0051397D: mov      eax, dword ptr [esi + 0x1a8]
0x00513983: cmp      byte ptr [eax], 0
0x00513986: mov      ebx, 1
0x0051398B: je       0x513b63
0x00513991: mov      ecx, dword ptr [esi + 0x1ac]
0x00513997: test     ecx, ecx
0x00513999: jne      0x5139a4
0x0051399B: cmp      byte ptr [eax + 0x18], cl
0x0051399E: je       0x5139b3
0x005139A0: test     ecx, ecx
0x005139A2: je       0x5139aa
0x005139A4: cmp      byte ptr [eax + 0x18], 0
0x005139A8: jne      0x5139b3
0x005139AA: cmp      byte ptr [eax + 0x20], bl
0x005139AD: jne      0x513b63
0x005139B3: mov      ecx, esi
0x005139B5: call     0x513660
0x005139BA: mov      edi, eax
0x005139BC: test     edi, edi
0x005139BE: je       0x513b11
0x005139C4: fldz     
0x005139C6: fcomp    dword ptr [esi + 0x1b0]
0x005139CC: fnstsw   ax
0x005139CE: test     ah, 0x44
0x005139D1: jp       0x513b11
0x005139D7: fld1     
0x005139D9: xor      eax, eax
0x005139DB: cmp      dword ptr [esi + 0x1ac], eax
0x005139E1: fstp     dword ptr [esi + 0x1b0]
0x005139E7: sete     al
0x005139EA: mov      dword ptr [esi + 0x1ac], eax
0x005139F0: mov      eax, dword ptr [esi + 0x1a8]
0x005139F6: cmp      byte ptr [eax + 0x19], bl
0x005139F9: jne      0x513a0a
0x005139FB: mov      dword ptr [esi + 0x1c0], ebx
0x00513A01: fld      dword ptr [eax + 0x1c]
0x00513A04: fstp     dword ptr [esi + 0x1c4]
0x00513A0A: mov      ecx, esi
0x00513A0C: call     0x512cc0
0x00513A11: mov      ecx, dword ptr [esi + 0x1a8]
0x00513A17: cmp      byte ptr [ecx + 0x10], 0
0x00513A1B: je       0x513a41
0x00513A1D: mov      edx, dword ptr [esi + 0x1ac]
0x00513A23: lea      eax, [esi + 0x1cc]
0x00513A29: push     eax
0x00513A2A: mov      dword ptr [esi + 0x1d0], edx
0x00513A30: mov      ecx, dword ptr [0xb1baf8]
0x00513A36: push     0
0x00513A38: push     ecx
0x00513A39: call     0x52d190
0x00513A3E: add      esp, 0xc
0x00513A41: mov      edx, dword ptr [esi + 0x1ac]
0x00513A47: mov      dword ptr [esp + 0x14], 0x9838f4
0x00513A4F: mov      dword ptr [esp + 0x18], edx
0x00513A53: mov      ecx, dword ptr [esi + 0x1f0]
0x00513A59: mov      eax, dword ptr [ecx]
0x00513A5B: mov      eax, dword ptr [eax + 8]
0x00513A5E: push     ebx
0x00513A5F: lea      edx, [esp + 0x18]
0x00513A63: push     edx
0x00513A64: mov      dword ptr [esp + 0x2c], 0
0x00513A6C: call     eax
0x00513A6E: mov      ecx, dword ptr [esi + 0x1a8]
0x00513A74: cmp      dword ptr [ecx + 0x14], 4
0x00513A78: mov      dword ptr [esp + 0x24], 0xffffffff
0x00513A80: jg       0x513b11
0x00513A86: movzx    eax, byte ptr [edi + 1]
0x00513A8A: mov      ecx, dword ptr [edi + 4]
0x00513A8D: mov      edx, dword ptr [ecx + 8]
0x00513A90: test     dword ptr [edx + eax*4], 0x40000
0x00513A97: je       0x513ae0
0x00513A99: mov      ecx, dword ptr [ecx + 0x14]
0x00513A9C: lea      eax, [eax + eax*8]
0x00513A9F: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x00513AA4: lea      eax, [ecx + eax*4]
0x00513AA7: jne      0x513aae
0x00513AA9: mov      eax, dword ptr [eax + 4]
0x00513AAC: jmp      0x513ae2
0x00513AAE: cmp      byte ptr [eax + 0x15], 0x1c
0x00513AB2: jne      0x513ab9
0x00513AB4: mov      eax, dword ptr [eax + 8]
0x00513AB7: jmp      0x513ae2
0x00513AB9: cmp      byte ptr [eax + 0x16], 0x1c
0x00513ABD: jne      0x513ac4
0x00513ABF: mov      eax, dword ptr [eax + 0xc]
0x00513AC2: jmp      0x513ae2
0x00513AC4: cmp      byte ptr [eax + 0x17], 0x1c
0x00513AC8: jne      0x513acf
0x00513ACA: mov      eax, dword ptr [eax + 0x10]
0x00513ACD: jmp      0x513ae2
0x00513ACF: mov      eax, dword ptr [eax]
0x00513AD1: test     eax, eax
0x00513AD3: je       0x513ae0
0x00513AD5: push     0x1c
0x00513AD7: mov      ecx, eax
0x00513AD9: call     0x461400
0x00513ADE: jmp      0x513ae2
0x00513AE0: xor      eax, eax
0x00513AE2: mov      ecx, dword ptr [eax + 0x1b4]
0x00513AE8: mov      dword ptr [esp + 0x10], 0x983908
0x00513AF0: mov      edx, dword ptr [ecx]
0x00513AF2: mov      edx, dword ptr [edx + 8]
0x00513AF5: push     ebx
0x00513AF6: lea      eax, [esp + 0x14]
0x00513AFA: push     eax
0x00513AFB: mov      dword ptr [esp + 0x2c], ebx
0x00513AFF: call     edx
0x00513B01: mov      dword ptr [esp + 0x24], 0xffffffff
0x00513B09: mov      dword ptr [esp + 0x10], 0x979378
0x00513B11: fld      dword ptr [esi + 0x1b0]
0x00513B17: fsub     dword ptr [0xb76120]
0x00513B1D: fstp     dword ptr [esp + 0x14]
0x00513B21: fld      dword ptr [esp + 0x14]
0x00513B25: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x00513B2B: fnstsw   ax
0x00513B2D: test     ah, 0x41
0x00513B30: jne      0x513b3c
0x00513B32: fstp     st(0)
0x00513B34: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x00513B3A: jmp      0x513b55
0x00513B3C: fcom     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00513B42: fnstsw   ax
0x00513B44: test     ah, 0x41
0x00513B47: je       0x513b4d
0x00513B49: fstp     st(0)
0x00513B4B: fldz     
0x00513B4D: fstp     dword ptr [esp + 0x14]
0x00513B51: fld      dword ptr [esp + 0x14]
0x00513B55: fstp     dword ptr [esp + 0x14]
0x00513B59: fld      dword ptr [esp + 0x14]
0x00513B5D: fstp     dword ptr [esi + 0x1b0]
0x00513B63: mov      ecx, dword ptr [esi + 0x1dc]
0x00513B69: call     0x514170
0x00513B6E: mov      ebx, 0xd
0x00513B73: test     eax, eax
0x00513B75: je       0x513c4c
0x00513B7B: mov      ecx, dword ptr [esi + 0x1dc]
0x00513B81: movzx    eax, byte ptr [ecx + 1]
0x00513B85: mov      ecx, dword ptr [ecx + 4]
0x00513B88: mov      edx, dword ptr [ecx + 8]
0x00513B8B: test     dword ptr [edx + eax*4], 0x40000
0x00513B92: je       0x513bdb
0x00513B94: mov      ecx, dword ptr [ecx + 0x14]
0x00513B97: lea      eax, [eax + eax*8]
0x00513B9A: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x00513B9F: lea      eax, [ecx + eax*4]
0x00513BA2: jne      0x513ba9
0x00513BA4: mov      eax, dword ptr [eax + 4]
0x00513BA7: jmp      0x513bdd
0x00513BA9: cmp      byte ptr [eax + 0x15], 0x1c
0x00513BAD: jne      0x513bb4
0x00513BAF: mov      eax, dword ptr [eax + 8]
0x00513BB2: jmp      0x513bdd
0x00513BB4: cmp      byte ptr [eax + 0x16], 0x1c
0x00513BB8: jne      0x513bbf
0x00513BBA: mov      eax, dword ptr [eax + 0xc]
0x00513BBD: jmp      0x513bdd
0x00513BBF: cmp      byte ptr [eax + 0x17], 0x1c
0x00513BC3: jne      0x513bca
0x00513BC5: mov      eax, dword ptr [eax + 0x10]
0x00513BC8: jmp      0x513bdd
0x00513BCA: mov      eax, dword ptr [eax]
0x00513BCC: test     eax, eax
0x00513BCE: je       0x513bdb
0x00513BD0: push     0x1c
0x00513BD2: mov      ecx, eax
0x00513BD4: call     0x461400
0x00513BD9: jmp      0x513bdd
0x00513BDB: xor      eax, eax
0x00513BDD: mov      ecx, dword ptr [eax + 0x34]
0x00513BE0: call     0x6dc280
0x00513BE5: fcomp    qword ptr [0x983930] ; [f64=0.42, u32=0xA0000000]
0x00513BEB: fnstsw   ax
0x00513BED: test     ah, 1
0x00513BF0: jne      0x513c4c
0x00513BF2: mov      eax, dword ptr [esi + 0x1ec]
0x00513BF8: movzx    ecx, byte ptr [eax + 1]
0x00513BFC: mov      eax, dword ptr [eax + 4]
0x00513BFF: lea      edx, [ecx + ecx*8]
0x00513C02: mov      ecx, dword ptr [eax + 0x14]
0x00513C05: cmp      byte ptr [ecx + edx*4 + 0x14], bl
0x00513C09: lea      eax, [ecx + edx*4]
0x00513C0C: jne      0x513c13
0x00513C0E: mov      eax, dword ptr [eax + 4]
0x00513C11: jmp      0x513c43
0x00513C13: cmp      byte ptr [eax + 0x15], bl
0x00513C16: jne      0x513c1d
0x00513C18: mov      eax, dword ptr [eax + 8]
0x00513C1B: jmp      0x513c43
0x00513C1D: cmp      byte ptr [eax + 0x16], bl
0x00513C20: jne      0x513c27
0x00513C22: mov      eax, dword ptr [eax + 0xc]
0x00513C25: jmp      0x513c43
0x00513C27: cmp      byte ptr [eax + 0x17], bl
0x00513C2A: jne      0x513c31
0x00513C2C: mov      eax, dword ptr [eax + 0x10]
0x00513C2F: jmp      0x513c43
0x00513C31: mov      eax, dword ptr [eax]
0x00513C33: test     eax, eax
0x00513C35: je       0x513c41
0x00513C37: push     ebx
0x00513C38: mov      ecx, eax
0x00513C3A: call     0x461400
0x00513C3F: jmp      0x513c43
0x00513C41: xor      eax, eax
0x00513C43: mov      edx, dword ptr [eax]
0x00513C45: mov      ecx, eax
0x00513C47: mov      eax, dword ptr [edx + 0x68]
0x00513C4A: call     eax
0x00513C4C: fld      dword ptr [esi + 0x1c4]
0x00513C52: fsub     dword ptr [0xb76120]
0x00513C58: fstp     dword ptr [esp + 0x14]
0x00513C5C: fld      dword ptr [esp + 0x14]
0x00513C60: fcom     qword ptr [0x982fc0] ; [u32=0xE0000000]
0x00513C66: fnstsw   ax
0x00513C68: test     ah, 0x41
0x00513C6B: jne      0x513c77
0x00513C6D: fstp     st(0)
0x00513C6F: fld      dword ptr [0x97c850] ; [u32=0x7F7FFFFF]
0x00513C75: jmp      0x513c90
0x00513C77: fcom     qword ptr [0x9795d0] ; [f32=0, u32=0x00000000]
0x00513C7D: fnstsw   ax
0x00513C7F: test     ah, 0x41
0x00513C82: je       0x513c88
0x00513C84: fstp     st(0)
0x00513C86: fldz     
0x00513C88: fstp     dword ptr [esp + 0x14]
0x00513C8C: fld      dword ptr [esp + 0x14]
0x00513C90: mov      eax, dword ptr [esi + 0x1a8]
0x00513C96: fstp     dword ptr [esp + 0x14]
0x00513C9A: fld      dword ptr [esp + 0x14]
0x00513C9E: fstp     dword ptr [esi + 0x1c4]
0x00513CA4: cmp      byte ptr [eax + 0x19], 1
0x00513CA8: jne      0x513f8a
0x00513CAE: cmp      dword ptr [esi + 0x1c0], 1
0x00513CB5: jne      0x513f8a
0x00513CBB: cmp      byte ptr [eax], 0
0x00513CBE: je       0x513f0b
0x00513CC4: mov      ecx, dword ptr [esi + 0x1dc]
0x00513CCA: call     0x514170
0x00513CCF: test     eax, eax
0x00513CD1: je       0x513e65
0x00513CD7: mov      ecx, dword ptr [esi + 0x1dc]
0x00513CDD: movzx    eax, byte ptr [ecx + 1]
0x00513CE1: mov      ecx, dword ptr [ecx + 4]
0x00513CE4: mov      edx, dword ptr [ecx + 8]
0x00513CE7: test     dword ptr [edx + eax*4], 0x40000
0x00513CEE: je       0x513d37
0x00513CF0: mov      ecx, dword ptr [ecx + 0x14]
0x00513CF3: lea      eax, [eax + eax*8]
0x00513CF6: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x00513CFB: lea      eax, [ecx + eax*4]
0x00513CFE: jne      0x513d05
0x00513D00: mov      eax, dword ptr [eax + 4]
0x00513D03: jmp      0x513d39
0x00513D05: cmp      byte ptr [eax + 0x15], 0x1c
0x00513D09: jne      0x513d10
0x00513D0B: mov      eax, dword ptr [eax + 8]
0x00513D0E: jmp      0x513d39
0x00513D10: cmp      byte ptr [eax + 0x16], 0x1c
0x00513D14: jne      0x513d1b
0x00513D16: mov      eax, dword ptr [eax + 0xc]
0x00513D19: jmp      0x513d39
0x00513D1B: cmp      byte ptr [eax + 0x17], 0x1c
0x00513D1F: jne      0x513d26
0x00513D21: mov      eax, dword ptr [eax + 0x10]
0x00513D24: jmp      0x513d39
0x00513D26: mov      eax, dword ptr [eax]
0x00513D28: test     eax, eax
0x00513D2A: je       0x513d37
0x00513D2C: push     0x1c
0x00513D2E: mov      ecx, eax
0x00513D30: call     0x461400
0x00513D35: jmp      0x513d39
0x00513D37: xor      eax, eax
0x00513D39: mov      ecx, dword ptr [eax + 0x34]
0x00513D3C: call     0x6dc280
0x00513D41: fcomp    dword ptr [0x983928] ; [f32=0.66, u32=0x3F28F5C3]
0x00513D47: fnstsw   ax
0x00513D49: test     ah, 1
0x00513D4C: jne      0x513e65
0x00513D52: mov      ecx, dword ptr [esi + 0x1e4]
0x00513D58: push     1
0x00513D5A: push     1
0x00513D5C: call     0x7f8390
0x00513D61: mov      ecx, dword ptr [esi + 0x1e4]
0x00513D67: movzx    eax, byte ptr [ecx + 1]
0x00513D6B: mov      ecx, dword ptr [ecx + 4]
0x00513D6E: mov      edx, dword ptr [ecx + 8]
0x00513D71: test     dword ptr [edx + eax*4], 0x40000
0x00513D78: je       0x513dc1
0x00513D7A: mov      ecx, dword ptr [ecx + 0x14]
0x00513D7D: lea      eax, [eax + eax*8]
0x00513D80: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x00513D85: lea      eax, [ecx + eax*4]
0x00513D88: jne      0x513d8f
0x00513D8A: mov      eax, dword ptr [eax + 4]
0x00513D8D: jmp      0x513dc3
0x00513D8F: cmp      byte ptr [eax + 0x15], 0x1c
0x00513D93: jne      0x513d9a
0x00513D95: mov      eax, dword ptr [eax + 8]
0x00513D98: jmp      0x513dc3
0x00513D9A: cmp      byte ptr [eax + 0x16], 0x1c
0x00513D9E: jne      0x513da5
0x00513DA0: mov      eax, dword ptr [eax + 0xc]
0x00513DA3: jmp      0x513dc3
0x00513DA5: cmp      byte ptr [eax + 0x17], 0x1c
0x00513DA9: jne      0x513db0
0x00513DAB: mov      eax, dword ptr [eax + 0x10]
0x00513DAE: jmp      0x513dc3
0x00513DB0: mov      eax, dword ptr [eax]
0x00513DB2: test     eax, eax
0x00513DB4: je       0x513dc1
0x00513DB6: push     0x1c
0x00513DB8: mov      ecx, eax
0x00513DBA: call     0x461400
0x00513DBF: jmp      0x513dc3
0x00513DC1: xor      eax, eax
0x00513DC3: fldz     
0x00513DC5: push     0
0x00513DC7: sub      esp, 0xc
0x00513DCA: fst      dword ptr [esp + 8]
0x00513DCE: fld      dword ptr [esi + 0x1c4]
0x00513DD4: mov      edx, dword ptr [esi + 0x1e8]
0x00513DDA: fdivr    qword ptr [0x983920] ; [f64=3.33333, u32=0xA0000000]
0x00513DE0: mov      ecx, dword ptr [eax + 0x34]
0x00513DE3: fstp     dword ptr [esp + 0x24]
0x00513DE7: fld      dword ptr [esp + 0x24]
0x00513DEB: fstp     dword ptr [esp + 4]
0x00513DEF: fstp     dword ptr [esp]
0x00513DF2: push     0
0x00513DF4: push     0
0x00513DF6: push     edx
0x00513DF7: call     0x6dc670
0x00513DFC: mov      ecx, dword ptr [esi + 0x1dc]
0x00513E02: push     1
0x00513E04: push     0
0x00513E06: call     0x7f8390
0x00513E0B: mov      eax, dword ptr [esi + 0x1ec]
0x00513E11: movzx    ecx, byte ptr [eax + 1]
0x00513E15: mov      edx, dword ptr [eax + 4]
0x00513E18: mov      eax, dword ptr [edx + 0x14]
0x00513E1B: lea      ecx, [ecx + ecx*8]
0x00513E1E: cmp      byte ptr [eax + ecx*4 + 0x14], bl
0x00513E22: lea      eax, [eax + ecx*4]
0x00513E25: jne      0x513e2c
0x00513E27: mov      eax, dword ptr [eax + 4]
0x00513E2A: jmp      0x513e5c
0x00513E2C: cmp      byte ptr [eax + 0x15], bl
0x00513E2F: jne      0x513e36
0x00513E31: mov      eax, dword ptr [eax + 8]
0x00513E34: jmp      0x513e5c
0x00513E36: cmp      byte ptr [eax + 0x16], bl
0x00513E39: jne      0x513e40
0x00513E3B: mov      eax, dword ptr [eax + 0xc]
0x00513E3E: jmp      0x513e5c
0x00513E40: cmp      byte ptr [eax + 0x17], bl
0x00513E43: jne      0x513e4a
0x00513E45: mov      eax, dword ptr [eax + 0x10]
0x00513E48: jmp      0x513e5c
0x00513E4A: mov      eax, dword ptr [eax]
0x00513E4C: test     eax, eax
0x00513E4E: je       0x513e5a
0x00513E50: push     ebx
0x00513E51: mov      ecx, eax
0x00513E53: call     0x461400
0x00513E58: jmp      0x513e5c
0x00513E5A: xor      eax, eax
0x00513E5C: mov      edx, dword ptr [eax]
0x00513E5E: mov      ecx, eax
0x00513E60: mov      eax, dword ptr [edx + 0x68]
0x00513E63: call     eax
0x00513E65: fldz     
0x00513E67: fcomp    dword ptr [esi + 0x1c4]
0x00513E6D: fnstsw   ax
0x00513E6F: test     ah, 0x44
0x00513E72: jp       0x513f8a
0x00513E78: mov      eax, dword ptr [esi + 0x1ac]
0x00513E7E: test     eax, eax
0x00513E80: je       0x513e96
0x00513E82: mov      ecx, dword ptr [esi + 0x1a8]
0x00513E88: cmp      byte ptr [ecx + 0x18], 0
0x00513E8C: je       0x513ea6
0x00513E8E: test     eax, eax
0x00513E90: jne      0x513f8a
0x00513E96: mov      edx, dword ptr [esi + 0x1a8]
0x00513E9C: cmp      byte ptr [edx + 0x18], 0
0x00513EA0: je       0x513f8a
0x00513EA6: xor      ecx, ecx
0x00513EA8: test     eax, eax
0x00513EAA: sete     cl
0x00513EAD: mov      dword ptr [esi + 0x1c0], 0
0x00513EB7: mov      dword ptr [esi + 0x1ac], ecx
0x00513EBD: mov      ecx, esi
0x00513EBF: call     0x512cc0
0x00513EC4: mov      edx, dword ptr [esi + 0x1a8]
0x00513ECA: cmp      byte ptr [edx + 0x10], 0
0x00513ECE: je       0x513f8a
0x00513ED4: mov      eax, dword ptr [esi + 0x1ac]
0x00513EDA: mov      dword ptr [esi + 0x1d0], eax
0x00513EE0: mov      ecx, dword ptr [0xb1baf8]
0x00513EE6: add      esi, 0x1cc
0x00513EEC: push     esi
0x00513EED: push     0
0x00513EEF: push     ecx
0x00513EF0: call     0x52d190
0x00513EF5: add      esp, 0xc
0x00513EF8: mov      ecx, dword ptr [esp + 0x1c]
0x00513EFC: mov      dword ptr fs:[0], ecx
0x00513F03: pop      ecx
0x00513F04: pop      edi
0x00513F05: pop      esi
0x00513F06: pop      ebx
0x00513F07: add      esp, 0x18
0x00513F0A: ret      
0x00513F0B: mov      ecx, dword ptr [esi + 0x1e4]
0x00513F11: call     0x514170
0x00513F16: test     eax, eax
0x00513F18: je       0x513f8a
0x00513F1A: mov      esi, dword ptr [esi + 0x1e4]
0x00513F20: movzx    eax, byte ptr [esi + 1]
0x00513F24: mov      esi, dword ptr [esi + 4]
0x00513F27: mov      edx, dword ptr [esi + 8]
0x00513F2A: test     dword ptr [edx + eax*4], 0x40000
0x00513F31: je       0x513f7a
0x00513F33: mov      ecx, dword ptr [esi + 0x14]
0x00513F36: lea      eax, [eax + eax*8]
0x00513F39: cmp      byte ptr [ecx + eax*4 + 0x14], 0x1c
0x00513F3E: lea      eax, [ecx + eax*4]
0x00513F41: jne      0x513f48
0x00513F43: mov      eax, dword ptr [eax + 4]
0x00513F46: jmp      0x513f7c
0x00513F48: cmp      byte ptr [eax + 0x15], 0x1c
0x00513F4C: jne      0x513f53
0x00513F4E: mov      eax, dword ptr [eax + 8]
0x00513F51: jmp      0x513f7c
0x00513F53: cmp      byte ptr [eax + 0x16], 0x1c
0x00513F57: jne      0x513f5e
0x00513F59: mov      eax, dword ptr [eax + 0xc]
0x00513F5C: jmp      0x513f7c
0x00513F5E: cmp      byte ptr [eax + 0x17], 0x1c
0x00513F62: jne      0x513f69
0x00513F64: mov      eax, dword ptr [eax + 0x10]
0x00513F67: jmp      0x513f7c
0x00513F69: mov      eax, dword ptr [eax]
0x00513F6B: test     eax, eax
0x00513F6D: je       0x513f7a
0x00513F6F: push     0x1c
0x00513F71: mov      ecx, eax
0x00513F73: call     0x461400
0x00513F78: jmp      0x513f7c
0x00513F7A: xor      eax, eax
0x00513F7C: fldz     
0x00513F7E: push     ecx
0x00513F7F: mov      ecx, dword ptr [eax + 0x34]
0x00513F82: fstp     dword ptr [esp]
0x00513F85: call     0x6dc320
0x00513F8A: mov      ecx, dword ptr [esp + 0x1c]
0x00513F8E: mov      dword ptr fs:[0], ecx
0x00513F95: pop      ecx
0x00513F96: pop      edi
0x00513F97: pop      esi
0x00513F98: pop      ebx
0x00513F99: add      esp, 0x18
0x00513F9C: ret      
0x00513F9D: int3     
0x00513F9E: int3     
0x00513F9F: int3     

--- ffSwitchObjectTestState::execute @ 0x00513FA0 ---
0x00513FA0: mov      ecx, dword ptr [esp + 4]
0x00513FA4: push     0
0x00513FA6: push     0x1c
0x00513FA8: add      ecx, 0x14
0x00513FAB: call     0x507ed0
0x00513FB0: mov      eax, dword ptr [eax + 0x1ac]
0x00513FB6: ret      
0x00513FB7: int3     
0x00513FB8: int3     
0x00513FB9: int3     
0x00513FBA: int3     
0x00513FBB: int3     
0x00513FBC: int3     
0x00513FBD: int3     
0x00513FBE: int3     
0x00513FBF: int3     

--- faSwitchObjectActive::execute @ 0x00513FC0 ---
0x00513FC0: push     esi
0x00513FC1: mov      esi, dword ptr [esp + 8]
0x00513FC5: push     0
0x00513FC7: push     0x1c
0x00513FC9: lea      ecx, [esi + 0x4c]
0x00513FCC: call     0x507ed0
0x00513FD1: mov      cl, byte ptr [esi + 0x58]
0x00513FD4: mov      eax, dword ptr [eax + 0x1a8]
0x00513FDA: mov      byte ptr [eax], cl
0x00513FDC: pop      esi
0x00513FDD: ret      
0x00513FDE: int3     
0x00513FDF: int3     

--- faSwitchObjectResetState::execute @ 0x00513FE0 ---
0x00513FE0: mov      ecx, dword ptr [esp + 4]
0x00513FE4: push     0
0x00513FE6: push     0x1c
0x00513FE8: add      ecx, 0x4c
0x00513FEB: call     0x507ed0
0x00513FF0: mov      ecx, eax
0x00513FF2: jmp      0x512f00
0x00513FF7: int3     
0x00513FF8: int3     
0x00513FF9: int3     
0x00513FFA: int3     
0x00513FFB: int3     
0x00513FFC: int3     
0x00513FFD: int3     
0x00513FFE: int3     
0x00513FFF: int3     

--- faSwitchObjectSetState::execute @ 0x00514000 ---
0x00514000: push     esi
0x00514001: mov      esi, dword ptr [esp + 8]
0x00514005: push     0
0x00514007: push     0x1c
0x00514009: lea      ecx, [esi + 0x4c]
0x0051400C: call     0x507ed0
0x00514011: movsx    ecx, byte ptr [esi + 0x58]
0x00514015: push     ecx
0x00514016: mov      ecx, eax
0x00514018: call     0x512fd0
0x0051401D: pop      esi
0x0051401E: ret      
0x0051401F: int3     

--- faSwitchObjectSetDecreaseObjective::execute @ 0x00514020 ---
0x00514020: push     esi
0x00514021: mov      esi, dword ptr [esp + 8]
0x00514025: push     0
0x00514027: push     0x1c
0x00514029: lea      ecx, [esi + 0x4c]
0x0051402C: call     0x507ed0
0x00514031: movsx    ecx, byte ptr [esi + 0x58]
0x00514035: mov      dword ptr [eax + 0x1d4], ecx
0x0051403B: pop      esi
0x0051403C: ret      
0x0051403D: int3     
0x0051403E: int3     
0x0051403F: int3     

--- CSwitchObject::ctor @ 0x00514040 ---
0x00514040: push     -1
0x00514042: push     0x943ad1
0x00514047: mov      eax, dword ptr fs:[0]
0x0051404D: push     eax
0x0051404E: push     ecx
0x0051404F: push     esi
0x00514050: push     edi
0x00514051: mov      eax, dword ptr [0xb089c8]
0x00514056: xor      eax, esp
0x00514058: push     eax
0x00514059: lea      eax, [esp + 0x10]
0x0051405D: mov      dword ptr fs:[0], eax
0x00514063: mov      esi, ecx
0x00514065: mov      dword ptr [esp + 0xc], esi
0x00514069: mov      eax, dword ptr [esp + 0x20]
0x0051406D: push     eax
0x0051406E: call     0x506ab0
0x00514073: fldz     
0x00514075: xor      edi, edi
0x00514077: push     edi
0x00514078: push     1
0x0051407A: mov      dword ptr [esi], 0x9837f0
0x00514080: mov      dword ptr [esi + 0x1d0], edi
0x00514086: mov      dword ptr [esi + 0x1d4], 1
0x00514090: fst      dword ptr [esi + 0x1b0]
0x00514096: mov      ecx, dword ptr [esi + 8]
0x00514099: fst      dword ptr [esi + 0x1b8]
0x0051409F: push     edi
0x005140A0: fst      dword ptr [esi + 0x1bc]
0x005140A6: push     1
0x005140A8: fstp     dword ptr [esi + 0x1c4]
0x005140AE: mov      dword ptr [esi + 0x1ac], edi
0x005140B4: mov      dword ptr [esi + 0x1b4], edi
0x005140BA: mov      dword ptr [esi + 0x1c0], edi
0x005140C0: mov      dword ptr [esi + 0x1cc], ecx
0x005140C6: mov      dword ptr [esi + 0x1c8], edi
0x005140CC: mov      dword ptr [esi + 0x1d8], edi
0x005140D2: mov      dword ptr [esi + 0x1dc], edi
0x005140D8: mov      dword ptr [esi + 0x1e0], edi
0x005140DE: mov      dword ptr [esi + 0x1e4], edi
0x005140E4: mov      dword ptr [esi + 0x1e8], edi
0x005140EA: mov      dword ptr [esi + 0x1ec], edi
0x005140F0: mov      edx, dword ptr [0xb01b28]
0x005140F6: push     edi
0x005140F7: push     edx
0x005140F8: push     0x28
0x005140FA: mov      dword ptr [esp + 0x34], edi
0x005140FE: call     0x688fe0
0x00514103: add      esp, 0x1c
0x00514106: mov      dword ptr [esp + 0x20], eax
0x0051410A: mov      byte ptr [esp + 0x18], 1
0x0051410F: cmp      eax, edi
0x00514111: je       0x514122
0x00514113: mov      ecx, eax
0x00514115: call     0x509c70
0x0051411A: mov      dword ptr [esi + 0x1f0], eax
0x00514120: jmp      0x514128
0x00514122: mov      dword ptr [esi + 0x1f0], edi
0x00514128: mov      eax, esi
0x0051412A: mov      ecx, dword ptr [esp + 0x10]
0x0051412E: mov      dword ptr fs:[0], ecx
0x00514135: pop      ecx
0x00514136: pop      edi
0x00514137: pop      esi
0x00514138: add      esp, 0x10
0x0051413B: ret      4
0x0051413E: int3     
0x0051413F: int3     
0x00514140: mov      eax, dword ptr [esp + 4]
0x00514144: cmp      eax, 4
0x00514147: jge      0x514150
0x00514149: mov      eax, dword ptr [ecx + eax*4 + 4]
0x0051414D: ret      4
0x00514150: mov      ecx, dword ptr [ecx]
0x00514152: test     ecx, ecx
0x00514154: je       0x514162
0x00514156: add      eax, -4
0x00514159: mov      dword ptr [esp + 4], eax
0x0051415D: jmp      0x514140
0x00514162: xor      eax, eax
0x00514164: ret      4
0x00514167: int3     
0x00514168: int3     
0x00514169: int3     
0x0051416A: int3     
0x0051416B: int3     
0x0051416C: int3     
0x0051416D: int3     
0x0051416E: int3     
0x0051416F: int3     
0x00514170: push     esi
0x00514171: push     edi
0x00514172: mov      edi, ecx
0x00514174: movzx    eax, byte ptr [edi + 1]
0x00514178: mov      ecx, dword ptr [edi + 4]
0x0051417B: mov      edx, dword ptr [ecx + 0x18]
0x0051417E: add      eax, eax
0x00514180: add      eax, eax
0x00514182: cmp      dword ptr [eax + edx], 0
0x00514186: jne      0x5141e1
0x00514188: xor      esi, esi
0x0051418A: lea      ebx, [ebx]
0x00514190: cmp      esi, 4
0x00514193: movzx    eax, byte ptr [edi + 1]
0x00514197: mov      ecx, dword ptr [edi + 4]
0x0051419A: mov      edx, dword ptr [ecx + 0x14]
0x0051419D: lea      eax, [eax + eax*8]
0x005141A0: lea      eax, [edx + eax*4]
0x005141A3: jge      0x5141ab
0x005141A5: mov      eax, dword ptr [eax + esi*4 + 4]
0x005141A9: jmp      0x5141c0
0x005141AB: mov      eax, dword ptr [eax]
0x005141AD: test     eax, eax
0x005141AF: je       0x5141be
0x005141B1: lea      ecx, [esi - 4]
0x005141B4: push     ecx
0x005141B5: mov      ecx, eax
0x005141B7: call     0x514140
0x005141BC: jmp      0x5141c0
0x005141BE: xor      eax, eax
0x005141C0: inc      esi
0x005141C1: test     eax, eax
0x005141C3: je       0x51429f
0x005141C9: mov      edx, dword ptr [eax]
0x005141CB: mov      ecx, eax
0x005141CD: mov      eax, dword ptr [edx + 0x94]
0x005141D3: call     eax
0x005141D5: test     eax, eax
0x005141D7: je       0x514190
0x005141D9: pop      edi
0x005141DA: mov      eax, 1
0x005141DF: pop      esi
0x005141E0: ret      
0x005141E1: mov      edx, dword ptr [ecx + 0xc]
0x005141E4: mov      edx, dword ptr [eax + edx]
0x005141E7: mov      ecx, dword ptr [ecx + 8]
0x005141EA: mov      eax, dword ptr [eax + ecx]
0x005141ED: test     edx, 0x100
0x005141F3: je       0x514250
0x005141F5: test     al, al
0x005141F7: jns      0x514250
0x005141F9: test     al, 0x3c
0x005141FB: jne      0x514297
0x00514201: xor      esi, esi
0x00514203: cmp      esi, 4
0x00514206: movzx    eax, byte ptr [edi + 1]
0x0051420A: lea      edx, [eax + eax*8]
0x0051420D: mov      eax, dword ptr [edi + 4]
0x00514210: mov      ecx, dword ptr [eax + 0x14]
0x00514213: lea      eax, [ecx + edx*4]
0x00514216: jge      0x51421e
0x00514218: mov      eax, dword ptr [eax + esi*4 + 4]
0x0051421C: jmp      0x514233
0x0051421E: mov      eax, dword ptr [eax]
0x00514220: test     eax, eax
0x00514222: je       0x514231
0x00514224: lea      edx, [esi - 4]
0x00514227: push     edx
0x00514228: mov      ecx, eax
0x0051422A: call     0x514140
0x0051422F: jmp      0x514233
0x00514231: xor      eax, eax
0x00514233: inc      esi
0x00514234: test     eax, eax
0x00514236: je       0x51429f
0x00514238: mov      edx, dword ptr [eax]
0x0051423A: mov      ecx, eax
0x0051423C: mov      eax, dword ptr [edx + 0x94]
0x00514242: call     eax
0x00514244: test     eax, eax
0x00514246: je       0x514203
0x00514248: pop      edi
0x00514249: mov      eax, 1
0x0051424E: pop      esi
0x0051424F: ret      
0x00514250: xor      esi, esi
0x00514252: cmp      esi, 4
0x00514255: movzx    eax, byte ptr [edi + 1]
0x00514259: mov      edx, dword ptr [edi + 4]
0x0051425C: lea      ecx, [eax + eax*8]
0x0051425F: mov      eax, dword ptr [edx + 0x14]
0x00514262: lea      eax, [eax + ecx*4]
0x00514265: jge      0x51426d
0x00514267: mov      eax, dword ptr [eax + esi*4 + 4]
0x0051426B: jmp      0x514282
0x0051426D: mov      eax, dword ptr [eax]
0x0051426F: test     eax, eax
0x00514271: je       0x514280
0x00514273: lea      ecx, [esi - 4]
0x00514276: push     ecx
0x00514277: mov      ecx, eax
0x00514279: call     0x514140
0x0051427E: jmp      0x514282
0x00514280: xor      eax, eax
0x00514282: inc      esi
0x00514283: test     eax, eax
0x00514285: je       0x51429f
0x00514287: mov      edx, dword ptr [eax]
0x00514289: mov      ecx, eax
0x0051428B: mov      eax, dword ptr [edx + 0x94]
0x00514291: call     eax
0x00514293: test     eax, eax
0x00514295: je       0x514252
0x00514297: pop      edi
0x00514298: mov      eax, 1
0x0051429D: pop      esi
0x0051429E: ret      
0x0051429F: pop      edi
0x005142A0: xor      eax, eax
0x005142A2: pop      esi
0x005142A3: ret      
0x005142A4: int3     
0x005142A5: int3     
0x005142A6: int3     
0x005142A7: int3     
0x005142A8: int3     
0x005142A9: int3     
0x005142AA: int3     
0x005142AB: int3     
0x005142AC: int3     
0x005142AD: int3     
0x005142AE: int3     
0x005142AF: int3     
0x005142B0: mov      eax, 8
0x005142B5: ret      
0x005142B6: int3     
0x005142B7: int3     
0x005142B8: int3     
0x005142B9: int3     
0x005142BA: int3     
0x005142BB: int3     
0x005142BC: int3     
0x005142BD: int3     
0x005142BE: int3     
0x005142BF: int3     
0x005142C0: xor      eax, eax
0x005142C2: cmp      dword ptr [esp + 4], 0xb1b9c0
0x005142CA: sete     al
0x005142CD: ret      4
0x005142D0: mov      eax, 0xb1b9c0
0x005142D5: ret      
0x005142D6: int3     
0x005142D7: int3     
0x005142D8: int3     
0x005142D9: int3     
0x005142DA: int3     
0x005142DB: int3     
0x005142DC: int3     
0x005142DD: int3     
0x005142DE: int3     
0x005142DF: int3     
0x005142E0: xor      eax, eax
0x005142E2: cmp      dword ptr [esp + 4], 0xb1b9c4
0x005142EA: sete     al
0x005142ED: ret      4
0x005142F0: mov      eax, 0xb1b9c4
0x005142F5: ret      
0x005142F6: int3     
0x005142F7: int3     
0x005142F8: int3     
0x005142F9: int3     
0x005142FA: int3     
0x005142FB: int3     
0x005142FC: int3     
0x005142FD: int3     
0x005142FE: int3     
0x005142FF: int3     

--- CSwitchObject::vfunc_0 @ 0x00514300 ---
0x00514300: push     esi
0x00514301: mov      esi, ecx
0x00514303: call     0x512c40
0x00514308: test     byte ptr [esp + 8], 1
0x0051430D: je       0x514318
0x0051430F: push     esi
0x00514310: call     0x688fb0
0x00514315: add      esp, 4
0x00514318: mov      eax, esi
0x0051431A: pop      esi
0x0051431B: ret      4
0x0051431E: int3     
0x0051431F: int3     
0x00514320: mov      eax, dword ptr [esp + 4]
0x00514324: push     esi
0x00514325: push     0
0x00514327: push     eax
0x00514328: push     8
0x0051432A: mov      esi, ecx
0x0051432C: call     0x689060
0x00514331: add      esp, 0xc
0x00514334: test     eax, eax
0x00514336: je       0x514348
0x00514338: mov      dword ptr [eax], 0x9838f4
0x0051433E: mov      ecx, dword ptr [esi + 4]
0x00514341: mov      dword ptr [eax + 4], ecx
0x00514344: pop      esi
0x00514345: ret      4
0x00514348: xor      eax, eax
0x0051434A: pop      esi
0x0051434B: ret      4
0x0051434E: int3     
0x0051434F: int3     
0x00514350: mov      eax, dword ptr [esp + 4]
0x00514354: push     0
0x00514356: push     eax
0x00514357: push     4
0x00514359: call     0x689060
0x0051435E: add      esp, 0xc
0x00514361: test     eax, eax
0x00514363: je       0x51436e
0x00514365: mov      dword ptr [eax], 0x983908
0x0051436B: ret      4
0x0051436E: xor      eax, eax
0x00514370: ret      4
0x00514373: int3     
0x00514374: int3     
0x00514375: int3     
0x00514376: int3     
0x00514377: int3     
0x00514378: int3     
0x00514379: int3     
0x0051437A: int3     
0x0051437B: int3     
0x0051437C: int3     
0x0051437D: int3     
0x0051437E: int3     
0x0051437F: int3     

--- CRotasticCamera::vfunc_54 @ 0x00514380 ---
0x00514380: push     -1
0x00514382: push     0x943b0d
0x00514387: mov      eax, dword ptr fs:[0]
0x0051438D: push     eax
0x0051438E: push     ecx
0x0051438F: mov      eax, dword ptr [0xb089c8]
0x00514394: xor      eax, esp
0x00514396: push     eax
0x00514397: lea      eax, [esp + 8]
0x0051439B: mov      dword ptr fs:[0], eax
0x005143A1: mov      eax, dword ptr [0xb01b28]
0x005143A6: push     0
0x005143A8: push     1
0x005143AA: push     0
0x005143AC: push     1
0x005143AE: push     0
0x005143B0: push     eax
0x005143B1: push     0xdc
0x005143B6: call     0x688fe0
0x005143BB: add      esp, 0x1c
0x005143BE: mov      dword ptr [esp + 4], eax
0x005143C2: mov      dword ptr [esp + 0x10], 0
0x005143CA: test     eax, eax
0x005143CC: je       0x5143e5
0x005143CE: mov      ecx, eax
0x005143D0: call     0x56d990
0x005143D5: mov      ecx, dword ptr [esp + 8]
0x005143D9: mov      dword ptr fs:[0], ecx
0x005143E0: pop      ecx
0x005143E1: add      esp, 0x10
0x005143E4: ret      
0x005143E5: xor      eax, eax
0x005143E7: mov      ecx, dword ptr [esp + 8]
0x005143EB: mov      dword ptr fs:[0], ecx
0x005143F2: pop      ecx
0x005143F3: add      esp, 0x10
0x005143F6: ret      
0x005143F7: int3     
0x005143F8: int3     
0x005143F9: int3     
0x005143FA: int3     
0x005143FB: int3     
0x005143FC: int3     
0x005143FD: int3     
0x005143FE: int3     
0x005143FF: int3     

--- CRotasticCamera::ctor @ 0x00514400 ---
0x00514400: mov      eax, dword ptr [esp + 4]
0x00514404: push     esi
0x00514405: push     eax
0x00514406: mov      esi, ecx
0x00514408: call     0x5150e0
0x0051440D: fldz     
0x0051440F: fst      dword ptr [esi + 0x160]
0x00514415: xor      eax, eax
0x00514417: fstp     dword ptr [esi + 0x16c]
0x0051441D: mov      dword ptr [esi + 0x164], eax
0x00514423: fld1     
0x00514425: mov      dword ptr [esi + 0x18c], eax
0x0051442B: fstp     dword ptr [esi + 0x170]
0x00514431: mov      dword ptr [esi], 0x983a28
0x00514437: mov      dword ptr [esi + 0x168], 1
0x00514441: mov      eax, esi
0x00514443: pop      esi
0x00514444: ret      4
0x00514447: int3     
0x00514448: int3     
0x00514449: int3     
0x0051444A: int3     
0x0051444B: int3     
0x0051444C: int3     
0x0051444D: int3     
0x0051444E: int3     
0x0051444F: int3     

--- CRotasticCamera::vfunc_3 @ 0x00514450 ---
0x00514450: push     esi
0x00514451: push     9
0x00514453: push     0x10
0x00514455: mov      esi, ecx
0x00514457: call     0x662fc0
0x0051445C: mov      eax, dword ptr [esp + 0x10]
0x00514460: add      esp, 8
0x00514463: push     eax
0x00514464: mov      ecx, esi
0x00514466: call     0x7645d0
0x0051446B: fld1     
0x0051446D: push     ecx
0x0051446E: fstp     dword ptr [esp]
0x00514471: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00514477: mov      ecx, dword ptr [esi + 0x14]
0x0051447A: push     5
0x0051447C: sub      esp, 8
0x0051447F: fstp     dword ptr [esp + 4]
0x00514483: fld      dword ptr [0x972460] ; [f32=15, u32=0x41700000]
0x00514489: fstp     dword ptr [esp]
0x0051448C: call     0x6e2580
0x00514491: mov      ecx, dword ptr [esi + 0x14]
0x00514494: fld      dword ptr [ecx + 0x90]
0x0051449A: fstp     dword ptr [esi + 0x170]
0x005144A0: pop      esi
0x005144A1: ret      4
0x005144A4: int3     
0x005144A5: int3     
0x005144A6: int3     
0x005144A7: int3     
0x005144A8: int3     
0x005144A9: int3     
0x005144AA: int3     
0x005144AB: int3     
0x005144AC: int3     
0x005144AD: int3     
0x005144AE: int3     
0x005144AF: int3     
0x005144B0: fldz     
0x005144B2: sub      esp, 0x14
0x005144B5: push     esi
0x005144B6: mov      esi, ecx
0x005144B8: fcom     dword ptr [esi + 0x160]
0x005144BE: fnstsw   ax
0x005144C0: test     ah, 5
0x005144C3: jp       0x514694
0x005144C9: fld      dword ptr [esi + 0x160]
0x005144CF: mov      eax, dword ptr [esi + 8]
0x005144D2: fsub     dword ptr [0xb76120]
0x005144D8: fstp     dword ptr [esi + 0x160]
0x005144DE: movzx    ecx, byte ptr [eax + 1]
0x005144E2: mov      edx, dword ptr [eax + 4]
0x005144E5: mov      eax, dword ptr [edx + 0x1c]
0x005144E8: mov      eax, dword ptr [eax + ecx*4]
0x005144EB: mov      ecx, dword ptr [esi + 0x18c]
0x005144F1: add      eax, 0xc
0x005144F4: fld      dword ptr [eax]
0x005144F6: fstp     dword ptr [esp + 8]
0x005144FA: fld      dword ptr [eax + 4]
0x005144FD: fstp     dword ptr [esp + 0xc]
0x00514501: fld      dword ptr [eax + 8]
0x00514504: fstp     dword ptr [esp + 0x10]
0x00514508: fld      dword ptr [eax + 0xc]
0x0051450B: fstp     dword ptr [esp + 0x14]
0x0051450F: cmp      ecx, 2
0x00514512: jne      0x514542
0x00514514: mov      ecx, dword ptr [0xb01b34]
0x0051451A: imul     ecx, ecx, 0x343fd
0x00514520: add      ecx, 0x269ec3
0x00514526: mov      dword ptr [0xb01b34], ecx
0x0051452C: shr      ecx, 0x10
0x0051452F: and      ecx, 0x7fff
0x00514535: and      ecx, 0x80000001
0x0051453B: jns      0x514542
0x0051453D: dec      ecx
0x0051453E: or       ecx, 0xfffffffe
0x00514541: inc      ecx
0x00514542: cmp      dword ptr [esi + 0x168], 0
0x00514549: lea      edx, [esp + ecx*4 + 8]
0x0051454D: je       0x51459f
0x0051454F: fld      dword ptr [esi + 0x16c]
0x00514555: fadd     dword ptr [edx]
0x00514557: fstp     dword ptr [esp + 4]
0x0051455B: fld      dword ptr [esp + 4]
0x0051455F: fst      dword ptr [edx]
0x00514561: fild     dword ptr [esi + 0x164]
0x00514567: fstp     dword ptr [esp + 4]
0x0051456B: fsub     dword ptr [esi + ecx*4 + 0x174]
0x00514572: fld      dword ptr [esp + 4]
0x00514576: fcom     st(1)
0x00514578: fnstsw   ax
0x0051457A: fstp     st(1)
0x0051457C: test     ah, 0x41
0x0051457F: jp       0x5145ef
0x00514581: cmp      dword ptr [esi + 0x18c], 2
0x00514588: mov      dword ptr [esi + 0x168], 0
0x00514592: jne      0x5145ef
0x00514594: fadd     dword ptr [esi + ecx*4 + 0x174]
0x0051459B: fstp     dword ptr [edx]
0x0051459D: jmp      0x5145f1
0x0051459F: fld      dword ptr [edx]
0x005145A1: fsub     dword ptr [esi + 0x16c]
0x005145A7: fstp     dword ptr [esp + 4]
0x005145AB: fld      dword ptr [esp + 4]
0x005145AF: fst      dword ptr [edx]
0x005145B1: fild     dword ptr [esi + 0x164]
0x005145B7: fstp     dword ptr [esp + 4]
0x005145BB: fsubr    dword ptr [esi + ecx*4 + 0x174]
0x005145C2: fld      dword ptr [esp + 4]
0x005145C6: fcom     st(1)
0x005145C8: fnstsw   ax
0x005145CA: fstp     st(1)
0x005145CC: test     ah, 0x41
0x005145CF: jp       0x5145ef
0x005145D1: cmp      dword ptr [esi + 0x18c], 2
0x005145D8: mov      dword ptr [esi + 0x168], 1
0x005145E2: jne      0x5145ef
0x005145E4: fsubr    dword ptr [esi + ecx*4 + 0x174]
0x005145EB: fstp     dword ptr [edx]
0x005145ED: jmp      0x5145f1
0x005145EF: fstp     st(0)
0x005145F1: fcomp    dword ptr [esi + 0x160]
0x005145F7: fnstsw   ax
0x005145F9: test     ah, 1
0x005145FC: jne      0x514661
0x005145FE: fld      dword ptr [0x969304] ; [f32=0.05, f64=3.43323e-06, u32=0x3D4CCCCD]
0x00514604: push     ecx
0x00514605: mov      ecx, dword ptr [esi + 0x14]
0x00514608: fstp     dword ptr [esp]
0x0051460B: fld      dword ptr [esi + 0x188]
0x00514611: push     1
0x00514613: sub      esp, 8
0x00514616: fstp     dword ptr [esp + 4]
0x0051461A: fld      dword ptr [esi + 0x184]
0x00514620: fstp     dword ptr [esp]
0x00514623: call     0x6e2580
0x00514628: mov      eax, dword ptr [esi + 8]
0x0051462B: fld      dword ptr [esi + 0x174]
0x00514631: movzx    ecx, byte ptr [eax + 1]
0x00514635: mov      edx, dword ptr [eax + 4]
0x00514638: mov      eax, dword ptr [edx + 0x20]
0x0051463B: mov      eax, dword ptr [eax + ecx*4]
0x0051463E: mov      ecx, 0x800
0x00514643: fstp     dword ptr [eax + 0xc]
0x00514646: fld      dword ptr [esi + 0x178]
0x0051464C: fstp     dword ptr [eax + 0x10]
0x0051464F: fld      dword ptr [esi + 0x17c]
0x00514655: pop      esi
0x00514656: fstp     dword ptr [eax + 0x14]
0x00514659: or       word ptr [eax + 8], cx
0x0051465D: add      esp, 0x14
0x00514660: ret      
0x00514661: mov      esi, dword ptr [esi + 8]
0x00514664: fld      dword ptr [esp + 8]
0x00514668: movzx    edx, byte ptr [esi + 1]
0x0051466C: mov      eax, dword ptr [esi + 4]
0x0051466F: mov      ecx, dword ptr [eax + 0x20]
0x00514672: mov      eax, dword ptr [ecx + edx*4]
0x00514675: mov      edx, 0x800
0x0051467A: pop      esi
0x0051467B: fstp     dword ptr [eax + 0xc]
0x0051467E: fld      dword ptr [esp + 8]
0x00514682: fstp     dword ptr [eax + 0x10]
0x00514685: fld      dword ptr [esp + 0xc]
0x00514689: fstp     dword ptr [eax + 0x14]
0x0051468C: or       word ptr [eax + 8], dx
0x00514690: add      esp, 0x14
0x00514693: ret      
0x00514694: fstp     st(0)
0x00514696: pop      esi
0x00514697: add      esp, 0x14
0x0051469A: ret      
0x0051469B: int3     
0x0051469C: int3     
0x0051469D: int3     
0x0051469E: int3     
0x0051469F: int3     

--- faRotasticDisplayBgOnly::execute @ 0x005146A0 ---
0x005146A0: push     ecx
0x005146A1: mov      ecx, dword ptr [0xb76118]
0x005146A7: push     0
0x005146A9: push     0
0x005146AB: push     0x983938
0x005146B0: call     0x6eeaa0
0x005146B5: test     eax, eax
0x005146B7: je       0x51476e
0x005146BD: mov      ecx, dword ptr [eax + 0xc4]
0x005146C3: test     ecx, ecx
0x005146C5: je       0x51476e
0x005146CB: mov      eax, dword ptr [0x95f818] ; [u32=0x0EF60D42]
0x005146D0: push     esi
0x005146D1: push     0
0x005146D3: push     0
0x005146D5: push     eax
0x005146D6: call     0x7ff6f0
0x005146DB: mov      esi, eax
0x005146DD: movzx    eax, byte ptr [esi + 1]
0x005146E1: mov      edx, dword ptr [esi + 4]
0x005146E4: lea      ecx, [eax + eax*8]
0x005146E7: mov      eax, dword ptr [edx + 0x14]
0x005146EA: lea      eax, [eax + ecx*4]
0x005146ED: mov      ecx, 5
0x005146F2: cmp      byte ptr [eax + 0x14], cl
0x005146F5: jne      0x5146fc
0x005146F7: mov      eax, dword ptr [eax + 4]
0x005146FA: jmp      0x51472c
0x005146FC: cmp      byte ptr [eax + 0x15], cl
0x005146FF: jne      0x514706
0x00514701: mov      eax, dword ptr [eax + 8]
0x00514704: jmp      0x51472c
0x00514706: cmp      byte ptr [eax + 0x16], cl
0x00514709: jne      0x514710
0x0051470B: mov      eax, dword ptr [eax + 0xc]
0x0051470E: jmp      0x51472c
0x00514710: cmp      byte ptr [eax + 0x17], cl
0x00514713: jne      0x51471a
0x00514715: mov      eax, dword ptr [eax + 0x10]
0x00514718: jmp      0x51472c
0x0051471A: mov      eax, dword ptr [eax]
0x0051471C: test     eax, eax
0x0051471E: je       0x51472a
0x00514720: push     ecx
0x00514721: mov      ecx, eax
0x00514723: call     0x461400
0x00514728: jmp      0x51472c
0x0051472A: xor      eax, eax
0x0051472C: mov      ecx, dword ptr [esp + 0xc]
0x00514730: cmp      byte ptr [ecx + 0x4c], 0
0x00514734: je       0x51475e
0x00514736: movzx    edx, byte ptr [esi + 1]
0x0051473A: mov      ecx, dword ptr [esi + 4]
0x0051473D: mov      ecx, dword ptr [ecx + 0x1c]
0x00514740: mov      edx, dword ptr [ecx + edx*4]
0x00514743: mov      eax, dword ptr [eax + 0x14]
0x00514746: pop      esi
0x00514747: fld      dword ptr [edx + 0x14]
0x0051474A: fsubr    qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x00514750: fstp     dword ptr [esp]
0x00514753: fld      dword ptr [esp]
0x00514756: fstp     dword ptr [eax + 0x90]
0x0051475C: pop      ecx
0x0051475D: ret      
0x0051475E: mov      ecx, dword ptr [eax + 0x14]
0x00514761: fld      dword ptr [eax + 0x170]
0x00514767: fstp     dword ptr [ecx + 0x90]
0x0051476D: pop      esi
0x0051476E: pop      ecx
0x0051476F: ret      

--- CRotasticCamera::vfunc_43 @ 0x00514770 ---
0x00514770: jmp      0x5144b0
0x00514775: int3     
0x00514776: int3     
0x00514777: int3     
0x00514778: int3     
0x00514779: int3     
0x0051477A: int3     
0x0051477B: int3     
0x0051477C: int3     
0x0051477D: int3     
0x0051477E: int3     
0x0051477F: int3     
0x00514780: push     -1
0x00514782: push     0x943b38
0x00514787: mov      eax, dword ptr fs:[0]
0x0051478D: push     eax
0x0051478E: sub      esp, 0x3c
0x00514791: push     ebx
0x00514792: push     ebp
0x00514793: push     esi
0x00514794: push     edi
0x00514795: mov      eax, dword ptr [0xb089c8]
0x0051479A: xor      eax, esp
0x0051479C: push     eax
0x0051479D: lea      eax, [esp + 0x50]
0x005147A1: mov      dword ptr fs:[0], eax
0x005147A7: mov      ebx, dword ptr [esp + 0x60]
0x005147AB: mov      ecx, dword ptr [ebx + 0x10]
0x005147AE: call     0x80a790
0x005147B3: mov      edx, dword ptr [eax + 4]
0x005147B6: movzx    ecx, byte ptr [eax + 1]
0x005147BA: mov      eax, dword ptr [edx + 0x28]
0x005147BD: mov      edx, dword ptr [0x95f818] ; [u32=0x0EF60D42]
0x005147C3: mov      ecx, dword ptr [eax + ecx*4]
0x005147C6: xor      edi, edi
0x005147C8: push     edi
0x005147C9: push     edi
0x005147CA: push     edx
0x005147CB: call     0x7ff6f0
0x005147D0: mov      ebp, eax
0x005147D2: movzx    eax, byte ptr [ebp + 1]
0x005147D6: mov      ecx, dword ptr [ebp + 4]
0x005147D9: mov      edx, dword ptr [ecx + 0x14]
0x005147DC: lea      eax, [eax + eax*8]
0x005147DF: lea      eax, [edx + eax*4]
0x005147E2: mov      ecx, 5
0x005147E7: cmp      byte ptr [eax + 0x14], cl
0x005147EA: jne      0x5147f1
0x005147EC: mov      esi, dword ptr [eax + 4]
0x005147EF: jmp      0x514823
0x005147F1: cmp      byte ptr [eax + 0x15], cl
0x005147F4: jne      0x5147fb
0x005147F6: mov      esi, dword ptr [eax + 8]
0x005147F9: jmp      0x514823
0x005147FB: cmp      byte ptr [eax + 0x16], cl
0x005147FE: jne      0x514805
0x00514800: mov      esi, dword ptr [eax + 0xc]
0x00514803: jmp      0x514823
0x00514805: cmp      byte ptr [eax + 0x17], cl
0x00514808: jne      0x51480f
0x0051480A: mov      esi, dword ptr [eax + 0x10]
0x0051480D: jmp      0x514823
0x0051480F: mov      eax, dword ptr [eax]
0x00514811: cmp      eax, edi
0x00514813: je       0x514821
0x00514815: push     ecx
0x00514816: mov      ecx, eax
0x00514818: call     0x461400
0x0051481D: mov      esi, eax
0x0051481F: jmp      0x514823
0x00514821: xor      esi, esi
0x00514823: fldz     
0x00514825: fcomp    dword ptr [esi + 0x160]
0x0051482B: fnstsw   ax
0x0051482D: test     ah, 5
0x00514830: jp       0x51484f
0x00514832: fld      dword ptr [ebx + 0x50]
0x00514835: fstp     dword ptr [esi + 0x160]
0x0051483B: mov      ecx, dword ptr [esp + 0x50]
0x0051483F: mov      dword ptr fs:[0], ecx
0x00514846: pop      ecx
0x00514847: pop      edi
0x00514848: pop      esi
0x00514849: pop      ebp
0x0051484A: pop      ebx
0x0051484B: add      esp, 0x48
0x0051484E: ret      
0x0051484F: fld      dword ptr [ebx + 0x50]
0x00514852: fmul     qword ptr [0x97a238] ; [f32=0, f64=1000, u32=0x00000000]
0x00514858: call     0x8ebdc0
0x0051485D: mov      dword ptr [esp + 0x1c], eax
0x00514861: mov      eax, dword ptr [0xafce44]
0x00514866: mov      dword ptr [esp + 0x60], eax
0x0051486A: cmp      eax, -1
0x0051486D: jne      0x514873
0x0051486F: mov      dword ptr [esp + 0x60], edi
0x00514873: movzx    eax, byte ptr [ebp + 1]
0x00514877: mov      ecx, dword ptr [ebp + 4]
0x0051487A: mov      edx, dword ptr [ecx + 0x28]
0x0051487D: mov      eax, dword ptr [edx + eax*4]
0x00514880: cmp      eax, edi
0x00514882: je       0x51488c
0x00514884: mov      eax, dword ptr [eax + 0x114]
0x0051488A: jmp      0x51488e
0x0051488C: xor      eax, eax
0x0051488E: push     eax
0x0051488F: mov      eax, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00514894: push     eax
0x00514895: lea      ecx, [esp + 0x38]
0x00514899: call     0x509b10
0x0051489E: lea      ecx, [esp + 0x30]
0x005148A2: mov      dword ptr [esp + 0x58], edi
0x005148A6: call     0x509ba0
0x005148AB: cmp      eax, edi
0x005148AD: je       0x514992
0x005148B3: movzx    ecx, byte ptr [eax + 1]
0x005148B7: mov      eax, dword ptr [eax + 4]
0x005148BA: mov      edx, dword ptr [eax + 8]
0x005148BD: test     dword ptr [edx + ecx*4], 0x40000
0x005148C4: je       0x51491d
0x005148C6: mov      edx, dword ptr [eax + 0x14]
0x005148C9: lea      ecx, [ecx + ecx*8]
0x005148CC: cmp      byte ptr [edx + ecx*4 + 0x14], 0x1c
0x005148D1: lea      eax, [edx + ecx*4]
0x005148D4: jne      0x5148dd
0x005148D6: mov      eax, dword ptr [eax + 4]
0x005148D9: mov      edi, eax
0x005148DB: jmp      0x51491f
0x005148DD: cmp      byte ptr [eax + 0x15], 0x1c
0x005148E1: jne      0x5148ea
0x005148E3: mov      eax, dword ptr [eax + 8]
0x005148E6: mov      edi, eax
0x005148E8: jmp      0x51491f
0x005148EA: cmp      byte ptr [eax + 0x16], 0x1c
0x005148EE: jne      0x5148f7
0x005148F0: mov      eax, dword ptr [eax + 0xc]
0x005148F3: mov      edi, eax
0x005148F5: jmp      0x51491f
0x005148F7: cmp      byte ptr [eax + 0x17], 0x1c
0x005148FB: jne      0x514904
0x005148FD: mov      eax, dword ptr [eax + 0x10]
0x00514900: mov      edi, eax
0x00514902: jmp      0x51491f
0x00514904: mov      eax, dword ptr [eax]
0x00514906: test     eax, eax
0x00514908: je       0x514917
0x0051490A: push     0x1c
0x0051490C: mov      ecx, eax
0x0051490E: call     0x461400
0x00514913: mov      edi, eax
0x00514915: jmp      0x51491f
0x00514917: xor      eax, eax
0x00514919: mov      edi, eax
0x0051491B: jmp      0x51491f
0x0051491D: xor      edi, edi
0x0051491F: mov      eax, dword ptr [edi + 0x1bc]
0x00514925: mov      eax, dword ptr [eax + 0x10]
0x00514928: cmp      eax, dword ptr [esp + 0x60]
0x0051492C: je       0x51493f
0x0051492E: lea      ecx, [esp + 0x30]
0x00514932: call     0x509ba0
0x00514937: test     eax, eax
0x00514939: jne      0x5148b3
0x0051493F: mov      eax, dword ptr [edi + 0x1bc]
0x00514945: mov      ecx, dword ptr [esp + 0x60]
0x00514949: cmp      dword ptr [eax + 0x10], ecx
0x0051494C: jne      0x514992
0x0051494E: mov      edx, dword ptr [esp + 0x18]
0x00514952: mov      ecx, dword ptr [edi + 0x1b4]
0x00514958: xor      eax, eax
0x0051495A: mov      dword ptr [esp + 0x24], eax
0x0051495E: mov      eax, dword ptr [esp + 0x1c]
0x00514962: mov      dword ptr [esp + 0x20], 0x983b04
0x0051496A: mov      dword ptr [esp + 0x28], edx
0x0051496E: mov      dword ptr [esp + 0x2c], eax
0x00514972: mov      edx, dword ptr [ecx]
0x00514974: mov      edx, dword ptr [edx + 8]
0x00514977: push     1
0x00514979: lea      eax, [esp + 0x24]
0x0051497D: push     eax
0x0051497E: mov      byte ptr [esp + 0x60], 1
0x00514983: call     edx
0x00514985: mov      byte ptr [esp + 0x58], 0
0x0051498A: mov      dword ptr [esp + 0x20], 0x979378
0x00514992: mov      ecx, dword ptr [ebp + 4]
0x00514995: movzx    eax, byte ptr [ebp + 1]
0x00514999: mov      edx, dword ptr [ecx + 0x1c]
0x0051499C: mov      eax, dword ptr [edx + eax*4]
0x0051499F: fld      dword ptr [eax + 0xc]
0x005149A2: fstp     dword ptr [esi + 0x174]
0x005149A8: fld      dword ptr [eax + 0x10]
0x005149AB: fstp     dword ptr [esi + 0x178]
0x005149B1: fld      dword ptr [eax + 0x14]
0x005149B4: fstp     dword ptr [esi + 0x17c]
0x005149BA: fld      dword ptr [eax + 0x18]
0x005149BD: fstp     dword ptr [esi + 0x180]
0x005149C3: mov      ecx, dword ptr [esi + 0x14]
0x005149C6: fld      dword ptr [ebx + 0x50]
0x005149C9: push     ecx
0x005149CA: fstp     dword ptr [esi + 0x160]
0x005149D0: mov      eax, dword ptr [ebx + 0x4c]
0x005149D3: mov      dword ptr [esi + 0x164], eax
0x005149D9: fld      dword ptr [ebx + 0x54]
0x005149DC: mov      edi, eax
0x005149DE: fstp     dword ptr [esi + 0x16c]
0x005149E4: mov      eax, 0x51eb851f
0x005149E9: imul     edi
0x005149EB: sar      edx, 4
0x005149EE: mov      dword ptr [esi + 0x168], 1
0x005149F8: mov      eax, edx
0x005149FA: fld      dword ptr [ecx + 0x6c]
0x005149FD: shr      eax, 0x1f
0x00514A00: fstp     dword ptr [esi + 0x184]
0x00514A06: add      eax, edx
0x00514A08: fld      dword ptr [ecx + 0x70]
0x00514A0B: fstp     dword ptr [esp + 0x64]
0x00514A0F: fld      dword ptr [esp + 0x64]
0x00514A13: mov      dword ptr [esp + 0x64], eax
0x00514A17: fst      dword ptr [esi + 0x188]
0x00514A1D: mov      eax, 0x51eb851f
0x00514A22: fld      dword ptr [0x969304] ; [f32=0.05, f64=3.43323e-06, u32=0x3D4CCCCD]
0x00514A28: imul     edi
0x00514A2A: fstp     dword ptr [esp]
0x00514A2D: fisub    dword ptr [esp + 0x64]
0x00514A31: sar      edx, 5
0x00514A34: mov      eax, edx
0x00514A36: fstp     dword ptr [esp + 0x64]
0x00514A3A: push     1
0x00514A3C: fld      dword ptr [esp + 0x68]
0x00514A40: sub      esp, 8
0x00514A43: shr      eax, 0x1f
0x00514A46: add      eax, edx
0x00514A48: fstp     dword ptr [esp + 4]
0x00514A4C: mov      dword ptr [esp + 0x70], eax
0x00514A50: fld      dword ptr [esi + 0x184]
0x00514A56: fisub    dword ptr [esp + 0x70]
0x00514A5A: fstp     dword ptr [esp + 0x70]
0x00514A5E: fld      dword ptr [esp + 0x70]
0x00514A62: fstp     dword ptr [esp]
0x00514A65: call     0x6e2580
0x00514A6A: lea      ecx, [esp + 0x40]
0x00514A6E: mov      dword ptr [esi + 0x18c], 0
0x00514A78: mov      dword ptr [esp + 0x58], 0xffffffff
0x00514A80: call     0x509910
0x00514A85: mov      ecx, dword ptr [esp + 0x50]
0x00514A89: mov      dword ptr fs:[0], ecx
0x00514A90: pop      ecx
0x00514A91: pop      edi
0x00514A92: pop      esi
0x00514A93: pop      ebp
0x00514A94: pop      ebx
0x00514A95: add      esp, 0x48
0x00514A98: ret      
0x00514A99: int3     
0x00514A9A: int3     
0x00514A9B: int3     
0x00514A9C: int3     
0x00514A9D: int3     
0x00514A9E: int3     
0x00514A9F: int3     
0x00514AA0: push     -1
0x00514AA2: push     0x943b63
0x00514AA7: mov      eax, dword ptr fs:[0]
0x00514AAD: push     eax
0x00514AAE: sub      esp, 0x3c
0x00514AB1: push     ebx
0x00514AB2: push     ebp
0x00514AB3: push     esi
0x00514AB4: push     edi
0x00514AB5: mov      eax, dword ptr [0xb089c8]
0x00514ABA: xor      eax, esp
0x00514ABC: push     eax
0x00514ABD: lea      eax, [esp + 0x50]
0x00514AC1: mov      dword ptr fs:[0], eax
0x00514AC7: mov      ebx, dword ptr [esp + 0x60]
0x00514ACB: mov      ecx, dword ptr [ebx + 0x10]
0x00514ACE: call     0x80a790
0x00514AD3: mov      edx, dword ptr [eax + 4]
0x00514AD6: movzx    ecx, byte ptr [eax + 1]
0x00514ADA: mov      eax, dword ptr [edx + 0x28]
0x00514ADD: mov      edx, dword ptr [0x95f818] ; [u32=0x0EF60D42]
0x00514AE3: mov      ecx, dword ptr [eax + ecx*4]
0x00514AE6: xor      edi, edi
0x00514AE8: push     edi
0x00514AE9: push     edi
0x00514AEA: push     edx
0x00514AEB: call     0x7ff6f0
0x00514AF0: mov      ebp, eax
0x00514AF2: movzx    eax, byte ptr [ebp + 1]
0x00514AF6: mov      ecx, dword ptr [ebp + 4]
0x00514AF9: mov      edx, dword ptr [ecx + 0x14]
0x00514AFC: lea      eax, [eax + eax*8]
0x00514AFF: lea      eax, [edx + eax*4]
0x00514B02: mov      ecx, 5
0x00514B07: cmp      byte ptr [eax + 0x14], cl
0x00514B0A: jne      0x514b11
0x00514B0C: mov      esi, dword ptr [eax + 4]
0x00514B0F: jmp      0x514b43
0x00514B11: cmp      byte ptr [eax + 0x15], cl
0x00514B14: jne      0x514b1b
0x00514B16: mov      esi, dword ptr [eax + 8]
0x00514B19: jmp      0x514b43
0x00514B1B: cmp      byte ptr [eax + 0x16], cl
0x00514B1E: jne      0x514b25
0x00514B20: mov      esi, dword ptr [eax + 0xc]
0x00514B23: jmp      0x514b43
0x00514B25: cmp      byte ptr [eax + 0x17], cl
0x00514B28: jne      0x514b2f
0x00514B2A: mov      esi, dword ptr [eax + 0x10]
0x00514B2D: jmp      0x514b43
0x00514B2F: mov      eax, dword ptr [eax]
0x00514B31: cmp      eax, edi
0x00514B33: je       0x514b41
0x00514B35: push     ecx
0x00514B36: mov      ecx, eax
0x00514B38: call     0x461400
0x00514B3D: mov      esi, eax
0x00514B3F: jmp      0x514b43
0x00514B41: xor      esi, esi
0x00514B43: fldz     
0x00514B45: fcomp    dword ptr [esi + 0x160]
0x00514B4B: fnstsw   ax
0x00514B4D: test     ah, 5
0x00514B50: jp       0x514b6f
0x00514B52: fld      dword ptr [ebx + 0x50]
0x00514B55: fstp     dword ptr [esi + 0x160]
0x00514B5B: mov      ecx, dword ptr [esp + 0x50]
0x00514B5F: mov      dword ptr fs:[0], ecx
0x00514B66: pop      ecx
0x00514B67: pop      edi
0x00514B68: pop      esi
0x00514B69: pop      ebp
0x00514B6A: pop      ebx
0x00514B6B: add      esp, 0x48
0x00514B6E: ret      
0x00514B6F: fld      dword ptr [ebx + 0x50]
0x00514B72: fmul     qword ptr [0x97a238] ; [f32=0, f64=1000, u32=0x00000000]
0x00514B78: call     0x8ebdc0
0x00514B7D: mov      dword ptr [esp + 0x1c], eax
0x00514B81: mov      eax, dword ptr [0xafce44]
0x00514B86: mov      dword ptr [esp + 0x60], eax
0x00514B8A: cmp      eax, -1
0x00514B8D: jne      0x514b93
0x00514B8F: mov      dword ptr [esp + 0x60], edi
0x00514B93: movzx    eax, byte ptr [ebp + 1]
0x00514B97: mov      ecx, dword ptr [ebp + 4]
0x00514B9A: mov      edx, dword ptr [ecx + 0x28]
0x00514B9D: mov      eax, dword ptr [edx + eax*4]
0x00514BA0: cmp      eax, edi
0x00514BA2: je       0x514bac
0x00514BA4: mov      eax, dword ptr [eax + 0x114]
0x00514BAA: jmp      0x514bae
0x00514BAC: xor      eax, eax
0x00514BAE: push     eax
0x00514BAF: mov      eax, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00514BB4: push     eax
0x00514BB5: lea      ecx, [esp + 0x38]
0x00514BB9: call     0x509b10
0x00514BBE: lea      ecx, [esp + 0x30]
0x00514BC2: mov      dword ptr [esp + 0x58], edi
0x00514BC6: call     0x509ba0
0x00514BCB: cmp      eax, edi
0x00514BCD: je       0x514cb2
0x00514BD3: movzx    ecx, byte ptr [eax + 1]
0x00514BD7: mov      eax, dword ptr [eax + 4]
0x00514BDA: mov      edx, dword ptr [eax + 8]
0x00514BDD: test     dword ptr [edx + ecx*4], 0x40000
0x00514BE4: je       0x514c3d
0x00514BE6: mov      edx, dword ptr [eax + 0x14]
0x00514BE9: lea      ecx, [ecx + ecx*8]
0x00514BEC: cmp      byte ptr [edx + ecx*4 + 0x14], 0x1c
0x00514BF1: lea      eax, [edx + ecx*4]
0x00514BF4: jne      0x514bfd
0x00514BF6: mov      eax, dword ptr [eax + 4]
0x00514BF9: mov      edi, eax
0x00514BFB: jmp      0x514c3f
0x00514BFD: cmp      byte ptr [eax + 0x15], 0x1c
0x00514C01: jne      0x514c0a
0x00514C03: mov      eax, dword ptr [eax + 8]
0x00514C06: mov      edi, eax
0x00514C08: jmp      0x514c3f
0x00514C0A: cmp      byte ptr [eax + 0x16], 0x1c
0x00514C0E: jne      0x514c17
0x00514C10: mov      eax, dword ptr [eax + 0xc]
0x00514C13: mov      edi, eax
0x00514C15: jmp      0x514c3f
0x00514C17: cmp      byte ptr [eax + 0x17], 0x1c
0x00514C1B: jne      0x514c24
0x00514C1D: mov      eax, dword ptr [eax + 0x10]
0x00514C20: mov      edi, eax
0x00514C22: jmp      0x514c3f
0x00514C24: mov      eax, dword ptr [eax]
0x00514C26: test     eax, eax
0x00514C28: je       0x514c37
0x00514C2A: push     0x1c
0x00514C2C: mov      ecx, eax
0x00514C2E: call     0x461400
0x00514C33: mov      edi, eax
0x00514C35: jmp      0x514c3f
0x00514C37: xor      eax, eax
0x00514C39: mov      edi, eax
0x00514C3B: jmp      0x514c3f
0x00514C3D: xor      edi, edi
0x00514C3F: mov      eax, dword ptr [edi + 0x1bc]
0x00514C45: mov      eax, dword ptr [eax + 0x10]
0x00514C48: cmp      eax, dword ptr [esp + 0x60]
0x00514C4C: je       0x514c5f
0x00514C4E: lea      ecx, [esp + 0x30]
0x00514C52: call     0x509ba0
0x00514C57: test     eax, eax
0x00514C59: jne      0x514bd3
0x00514C5F: mov      eax, dword ptr [edi + 0x1bc]
0x00514C65: mov      ecx, dword ptr [esp + 0x60]
0x00514C69: cmp      dword ptr [eax + 0x10], ecx
0x00514C6C: jne      0x514cb2
0x00514C6E: mov      edx, dword ptr [esp + 0x18]
0x00514C72: mov      ecx, dword ptr [edi + 0x1b4]
0x00514C78: xor      eax, eax
0x00514C7A: mov      dword ptr [esp + 0x24], eax
0x00514C7E: mov      eax, dword ptr [esp + 0x1c]
0x00514C82: mov      dword ptr [esp + 0x20], 0x983b04
0x00514C8A: mov      dword ptr [esp + 0x28], edx
0x00514C8E: mov      dword ptr [esp + 0x2c], eax
0x00514C92: mov      edx, dword ptr [ecx]
0x00514C94: mov      edx, dword ptr [edx + 8]
0x00514C97: push     1
0x00514C99: lea      eax, [esp + 0x24]
0x00514C9D: push     eax
0x00514C9E: mov      byte ptr [esp + 0x60], 1
0x00514CA3: call     edx
0x00514CA5: mov      byte ptr [esp + 0x58], 0
0x00514CAA: mov      dword ptr [esp + 0x20], 0x979378
0x00514CB2: mov      ecx, dword ptr [ebp + 4]
0x00514CB5: movzx    eax, byte ptr [ebp + 1]
0x00514CB9: mov      edx, dword ptr [ecx + 0x1c]
0x00514CBC: mov      eax, dword ptr [edx + eax*4]
0x00514CBF: fld      dword ptr [eax + 0xc]
0x00514CC2: fstp     dword ptr [esi + 0x174]
0x00514CC8: fld      dword ptr [eax + 0x10]
0x00514CCB: fstp     dword ptr [esi + 0x178]
0x00514CD1: fld      dword ptr [eax + 0x14]
0x00514CD4: fstp     dword ptr [esi + 0x17c]
0x00514CDA: fld      dword ptr [eax + 0x18]
0x00514CDD: fstp     dword ptr [esi + 0x180]
0x00514CE3: mov      ecx, dword ptr [esi + 0x14]
0x00514CE6: fld      dword ptr [ebx + 0x50]
0x00514CE9: push     ecx
0x00514CEA: fstp     dword ptr [esi + 0x160]
0x00514CF0: mov      eax, dword ptr [ebx + 0x4c]
0x00514CF3: mov      dword ptr [esi + 0x164], eax
0x00514CF9: fld      dword ptr [ebx + 0x54]
0x00514CFC: mov      edi, eax
0x00514CFE: fstp     dword ptr [esi + 0x16c]
0x00514D04: mov      eax, 0x51eb851f
0x00514D09: imul     edi
0x00514D0B: sar      edx, 4
0x00514D0E: mov      dword ptr [esi + 0x168], 1
0x00514D18: mov      eax, edx
0x00514D1A: fld      dword ptr [ecx + 0x6c]
0x00514D1D: shr      eax, 0x1f
0x00514D20: fstp     dword ptr [esi + 0x184]
0x00514D26: add      eax, edx
0x00514D28: fld      dword ptr [ecx + 0x70]
0x00514D2B: fstp     dword ptr [esp + 0x64]
0x00514D2F: fld      dword ptr [esp + 0x64]
0x00514D33: mov      dword ptr [esp + 0x64], eax
0x00514D37: fst      dword ptr [esi + 0x188]
0x00514D3D: mov      eax, 0x51eb851f
0x00514D42: fld      dword ptr [0x969304] ; [f32=0.05, f64=3.43323e-06, u32=0x3D4CCCCD]
0x00514D48: imul     edi
0x00514D4A: fstp     dword ptr [esp]
0x00514D4D: fisub    dword ptr [esp + 0x64]
0x00514D51: sar      edx, 5
0x00514D54: mov      eax, edx
0x00514D56: fstp     dword ptr [esp + 0x64]
0x00514D5A: push     1
0x00514D5C: fld      dword ptr [esp + 0x68]
0x00514D60: sub      esp, 8
0x00514D63: shr      eax, 0x1f
0x00514D66: add      eax, edx
0x00514D68: fstp     dword ptr [esp + 4]
0x00514D6C: mov      dword ptr [esp + 0x70], eax
0x00514D70: fld      dword ptr [esi + 0x184]
0x00514D76: fisub    dword ptr [esp + 0x70]
0x00514D7A: fstp     dword ptr [esp + 0x70]
0x00514D7E: fld      dword ptr [esp + 0x70]
0x00514D82: fstp     dword ptr [esp]
0x00514D85: call     0x6e2580
0x00514D8A: lea      ecx, [esp + 0x40]
0x00514D8E: mov      dword ptr [esi + 0x18c], 1
0x00514D98: mov      dword ptr [esp + 0x58], 0xffffffff
0x00514DA0: call     0x509910
0x00514DA5: mov      ecx, dword ptr [esp + 0x50]
0x00514DA9: mov      dword ptr fs:[0], ecx
0x00514DB0: pop      ecx
0x00514DB1: pop      edi
0x00514DB2: pop      esi
0x00514DB3: pop      ebp
0x00514DB4: pop      ebx
0x00514DB5: add      esp, 0x48
0x00514DB8: ret      
0x00514DB9: int3     
0x00514DBA: int3     
0x00514DBB: int3     
0x00514DBC: int3     
0x00514DBD: int3     
0x00514DBE: int3     
0x00514DBF: int3     
0x00514DC0: push     -1
0x00514DC2: push     0x943b8e
0x00514DC7: mov      eax, dword ptr fs:[0]
0x00514DCD: push     eax
0x00514DCE: sub      esp, 0x3c
0x00514DD1: push     ebx
0x00514DD2: push     ebp
0x00514DD3: push     esi
0x00514DD4: push     edi
0x00514DD5: mov      eax, dword ptr [0xb089c8]
0x00514DDA: xor      eax, esp
0x00514DDC: push     eax
0x00514DDD: lea      eax, [esp + 0x50]
0x00514DE1: mov      dword ptr fs:[0], eax
0x00514DE7: mov      ebx, dword ptr [esp + 0x60]
0x00514DEB: mov      ecx, dword ptr [ebx + 0x10]
0x00514DEE: call     0x80a790
0x00514DF3: mov      edx, dword ptr [eax + 4]
0x00514DF6: movzx    ecx, byte ptr [eax + 1]
0x00514DFA: mov      eax, dword ptr [edx + 0x28]
0x00514DFD: mov      edx, dword ptr [0x95f818] ; [u32=0x0EF60D42]
0x00514E03: mov      ecx, dword ptr [eax + ecx*4]
0x00514E06: xor      edi, edi
0x00514E08: push     edi
0x00514E09: push     edi
0x00514E0A: push     edx
0x00514E0B: call     0x7ff6f0
0x00514E10: mov      ebp, eax
0x00514E12: movzx    eax, byte ptr [ebp + 1]
0x00514E16: mov      ecx, dword ptr [ebp + 4]
0x00514E19: mov      edx, dword ptr [ecx + 0x14]
0x00514E1C: lea      eax, [eax + eax*8]
0x00514E1F: lea      eax, [edx + eax*4]
0x00514E22: mov      ecx, 5
0x00514E27: cmp      byte ptr [eax + 0x14], cl
0x00514E2A: jne      0x514e31
0x00514E2C: mov      esi, dword ptr [eax + 4]
0x00514E2F: jmp      0x514e63
0x00514E31: cmp      byte ptr [eax + 0x15], cl
0x00514E34: jne      0x514e3b
0x00514E36: mov      esi, dword ptr [eax + 8]
0x00514E39: jmp      0x514e63
0x00514E3B: cmp      byte ptr [eax + 0x16], cl
0x00514E3E: jne      0x514e45
0x00514E40: mov      esi, dword ptr [eax + 0xc]
0x00514E43: jmp      0x514e63
0x00514E45: cmp      byte ptr [eax + 0x17], cl
0x00514E48: jne      0x514e4f
0x00514E4A: mov      esi, dword ptr [eax + 0x10]
0x00514E4D: jmp      0x514e63
0x00514E4F: mov      eax, dword ptr [eax]
0x00514E51: cmp      eax, edi
0x00514E53: je       0x514e61
0x00514E55: push     ecx
0x00514E56: mov      ecx, eax
0x00514E58: call     0x461400
0x00514E5D: mov      esi, eax
0x00514E5F: jmp      0x514e63
0x00514E61: xor      esi, esi
0x00514E63: fldz     
0x00514E65: fcomp    dword ptr [esi + 0x160]
0x00514E6B: fnstsw   ax
0x00514E6D: test     ah, 5
0x00514E70: jp       0x514e8f
0x00514E72: fld      dword ptr [ebx + 0x50]
0x00514E75: fstp     dword ptr [esi + 0x160]
0x00514E7B: mov      ecx, dword ptr [esp + 0x50]
0x00514E7F: mov      dword ptr fs:[0], ecx
0x00514E86: pop      ecx
0x00514E87: pop      edi
0x00514E88: pop      esi
0x00514E89: pop      ebp
0x00514E8A: pop      ebx
0x00514E8B: add      esp, 0x48
0x00514E8E: ret      
0x00514E8F: fld      dword ptr [ebx + 0x50]
0x00514E92: fmul     qword ptr [0x97a238] ; [f32=0, f64=1000, u32=0x00000000]
0x00514E98: call     0x8ebdc0
0x00514E9D: mov      dword ptr [esp + 0x1c], eax
0x00514EA1: mov      eax, dword ptr [0xafce44]
0x00514EA6: mov      dword ptr [esp + 0x60], eax
0x00514EAA: cmp      eax, -1
0x00514EAD: jne      0x514eb3
0x00514EAF: mov      dword ptr [esp + 0x60], edi
0x00514EB3: movzx    eax, byte ptr [ebp + 1]
0x00514EB7: mov      ecx, dword ptr [ebp + 4]
0x00514EBA: mov      edx, dword ptr [ecx + 0x28]
0x00514EBD: mov      eax, dword ptr [edx + eax*4]
0x00514EC0: cmp      eax, edi
0x00514EC2: je       0x514ecc
0x00514EC4: mov      eax, dword ptr [eax + 0x114]
0x00514ECA: jmp      0x514ece
0x00514ECC: xor      eax, eax
0x00514ECE: push     eax
0x00514ECF: mov      eax, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00514ED4: push     eax
0x00514ED5: lea      ecx, [esp + 0x38]
0x00514ED9: call     0x509b10
0x00514EDE: lea      ecx, [esp + 0x30]
0x00514EE2: mov      dword ptr [esp + 0x58], edi
0x00514EE6: call     0x509ba0
0x00514EEB: cmp      eax, edi
0x00514EED: je       0x514fd2
0x00514EF3: movzx    ecx, byte ptr [eax + 1]
0x00514EF7: mov      eax, dword ptr [eax + 4]
0x00514EFA: mov      edx, dword ptr [eax + 8]
0x00514EFD: test     dword ptr [edx + ecx*4], 0x40000
0x00514F04: je       0x514f5d
0x00514F06: mov      edx, dword ptr [eax + 0x14]
0x00514F09: lea      ecx, [ecx + ecx*8]
0x00514F0C: cmp      byte ptr [edx + ecx*4 + 0x14], 0x1c
0x00514F11: lea      eax, [edx + ecx*4]
0x00514F14: jne      0x514f1d
0x00514F16: mov      eax, dword ptr [eax + 4]
0x00514F19: mov      edi, eax
0x00514F1B: jmp      0x514f5f
0x00514F1D: cmp      byte ptr [eax + 0x15], 0x1c
0x00514F21: jne      0x514f2a
0x00514F23: mov      eax, dword ptr [eax + 8]
0x00514F26: mov      edi, eax
0x00514F28: jmp      0x514f5f
0x00514F2A: cmp      byte ptr [eax + 0x16], 0x1c
0x00514F2E: jne      0x514f37
0x00514F30: mov      eax, dword ptr [eax + 0xc]
0x00514F33: mov      edi, eax
0x00514F35: jmp      0x514f5f
0x00514F37: cmp      byte ptr [eax + 0x17], 0x1c
0x00514F3B: jne      0x514f44
0x00514F3D: mov      eax, dword ptr [eax + 0x10]
0x00514F40: mov      edi, eax
0x00514F42: jmp      0x514f5f
0x00514F44: mov      eax, dword ptr [eax]
0x00514F46: test     eax, eax
0x00514F48: je       0x514f57
0x00514F4A: push     0x1c
0x00514F4C: mov      ecx, eax
0x00514F4E: call     0x461400
0x00514F53: mov      edi, eax
0x00514F55: jmp      0x514f5f
0x00514F57: xor      eax, eax
0x00514F59: mov      edi, eax
0x00514F5B: jmp      0x514f5f
0x00514F5D: xor      edi, edi
0x00514F5F: mov      eax, dword ptr [edi + 0x1bc]
0x00514F65: mov      eax, dword ptr [eax + 0x10]
0x00514F68: cmp      eax, dword ptr [esp + 0x60]
0x00514F6C: je       0x514f7f
0x00514F6E: lea      ecx, [esp + 0x30]
0x00514F72: call     0x509ba0
0x00514F77: test     eax, eax
0x00514F79: jne      0x514ef3
0x00514F7F: mov      eax, dword ptr [edi + 0x1bc]
0x00514F85: mov      ecx, dword ptr [esp + 0x60]
0x00514F89: cmp      dword ptr [eax + 0x10], ecx
0x00514F8C: jne      0x514fd2
0x00514F8E: mov      edx, dword ptr [esp + 0x18]
0x00514F92: mov      ecx, dword ptr [edi + 0x1b4]
0x00514F98: xor      eax, eax
0x00514F9A: mov      dword ptr [esp + 0x24], eax
0x00514F9E: mov      eax, dword ptr [esp + 0x1c]
0x00514FA2: mov      dword ptr [esp + 0x20], 0x983b04
0x00514FAA: mov      dword ptr [esp + 0x28], edx
0x00514FAE: mov      dword ptr [esp + 0x2c], eax
0x00514FB2: mov      edx, dword ptr [ecx]
0x00514FB4: mov      edx, dword ptr [edx + 8]
0x00514FB7: push     1
0x00514FB9: lea      eax, [esp + 0x24]
0x00514FBD: push     eax
0x00514FBE: mov      byte ptr [esp + 0x60], 1
0x00514FC3: call     edx
0x00514FC5: mov      byte ptr [esp + 0x58], 0
0x00514FCA: mov      dword ptr [esp + 0x20], 0x979378
0x00514FD2: mov      ecx, dword ptr [ebp + 4]
0x00514FD5: movzx    eax, byte ptr [ebp + 1]
0x00514FD9: mov      edx, dword ptr [ecx + 0x1c]
0x00514FDC: mov      eax, dword ptr [edx + eax*4]
0x00514FDF: fld      dword ptr [eax + 0xc]
0x00514FE2: fstp     dword ptr [esi + 0x174]
0x00514FE8: fld      dword ptr [eax + 0x10]
0x00514FEB: fstp     dword ptr [esi + 0x178]
0x00514FF1: fld      dword ptr [eax + 0x14]
0x00514FF4: fstp     dword ptr [esi + 0x17c]
0x00514FFA: fld      dword ptr [eax + 0x18]
0x00514FFD: fstp     dword ptr [esi + 0x180]
0x00515003: mov      ecx, dword ptr [esi + 0x14]
0x00515006: fld      dword ptr [ebx + 0x50]
0x00515009: push     ecx
0x0051500A: fstp     dword ptr [esi + 0x160]
0x00515010: mov      eax, dword ptr [ebx + 0x4c]
0x00515013: mov      dword ptr [esi + 0x164], eax
0x00515019: fld      dword ptr [ebx + 0x54]
0x0051501C: mov      edi, eax
0x0051501E: fstp     dword ptr [esi + 0x16c]
0x00515024: mov      eax, 0x51eb851f
0x00515029: imul     edi
0x0051502B: sar      edx, 4
0x0051502E: mov      dword ptr [esi + 0x168], 1
0x00515038: mov      eax, edx
0x0051503A: fld      dword ptr [ecx + 0x6c]
0x0051503D: shr      eax, 0x1f
0x00515040: fstp     dword ptr [esi + 0x184]
0x00515046: add      eax, edx
0x00515048: fld      dword ptr [ecx + 0x70]
0x0051504B: fstp     dword ptr [esp + 0x64]
0x0051504F: fld      dword ptr [esp + 0x64]
0x00515053: mov      dword ptr [esp + 0x64], eax
0x00515057: fst      dword ptr [esi + 0x188]
0x0051505D: mov      eax, 0x51eb851f
0x00515062: fld      dword ptr [0x969304] ; [f32=0.05, f64=3.43323e-06, u32=0x3D4CCCCD]
0x00515068: imul     edi
0x0051506A: fstp     dword ptr [esp]
0x0051506D: fisub    dword ptr [esp + 0x64]
0x00515071: sar      edx, 5
0x00515074: mov      eax, edx
0x00515076: fstp     dword ptr [esp + 0x64]
0x0051507A: push     1
0x0051507C: fld      dword ptr [esp + 0x68]
0x00515080: sub      esp, 8
0x00515083: shr      eax, 0x1f
0x00515086: add      eax, edx
0x00515088: fstp     dword ptr [esp + 4]
0x0051508C: mov      dword ptr [esp + 0x70], eax
0x00515090: fld      dword ptr [esi + 0x184]
0x00515096: fisub    dword ptr [esp + 0x70]
0x0051509A: fstp     dword ptr [esp + 0x70]
0x0051509E: fld      dword ptr [esp + 0x70]
0x005150A2: fstp     dword ptr [esp]
0x005150A5: call     0x6e2580
0x005150AA: lea      ecx, [esp + 0x40]
0x005150AE: mov      dword ptr [esi + 0x18c], 2
0x005150B8: mov      dword ptr [esp + 0x58], 0xffffffff
0x005150C0: call     0x509910
0x005150C5: mov      ecx, dword ptr [esp + 0x50]
0x005150C9: mov      dword ptr fs:[0], ecx
0x005150D0: pop      ecx
0x005150D1: pop      edi
0x005150D2: pop      esi
0x005150D3: pop      ebp
0x005150D4: pop      ebx
0x005150D5: add      esp, 0x48
0x005150D8: ret      
0x005150D9: int3     
0x005150DA: int3     
0x005150DB: int3     
0x005150DC: int3     
0x005150DD: int3     
0x005150DE: int3     
0x005150DF: int3     
0x005150E0: push     -1
0x005150E2: push     0x943bc3
0x005150E7: mov      eax, dword ptr fs:[0]
0x005150ED: push     eax
0x005150EE: push     ecx
0x005150EF: push     esi
0x005150F0: mov      eax, dword ptr [0xb089c8]
0x005150F5: xor      eax, esp
0x005150F7: push     eax
0x005150F8: lea      eax, [esp + 0xc]
0x005150FC: mov      dword ptr fs:[0], eax
0x00515102: mov      esi, ecx
0x00515104: mov      dword ptr [esp + 8], esi
0x00515108: mov      eax, dword ptr [esp + 0x1c]
0x0051510C: push     eax
0x0051510D: call     0x764520
0x00515112: lea      ecx, [esi + 0x18]
0x00515115: mov      dword ptr [esp + 0x14], 0
0x0051511D: mov      dword ptr [esi], 0x983948
0x00515123: call     0x568790
0x00515128: push     1
0x0051512A: push     0
0x0051512C: push     1
0x0051512E: push     3
0x00515130: push     3
0x00515132: mov      ecx, esi
0x00515134: mov      byte ptr [esp + 0x28], 1
0x00515139: call     0x7ba420
0x0051513E: push     1
0x00515140: push     0
0x00515142: push     1
0x00515144: push     0x3c
0x00515146: push     0x3c
0x00515148: mov      ecx, esi
0x0051514A: call     0x7ba420
0x0051514F: mov      eax, esi
0x00515151: mov      ecx, dword ptr [esp + 0xc]
0x00515155: mov      dword ptr fs:[0], ecx
0x0051515C: pop      ecx
0x0051515D: pop      esi
0x0051515E: add      esp, 0x10
0x00515161: ret      4
0x00515164: int3     
0x00515165: int3     
0x00515166: int3     
0x00515167: int3     
0x00515168: int3     
0x00515169: int3     
0x0051516A: int3     
0x0051516B: int3     
0x0051516C: int3     
0x0051516D: int3     
0x0051516E: int3     
0x0051516F: int3     
0x00515170: push     -1
0x00515172: push     0x943be8
0x00515177: mov      eax, dword ptr fs:[0]
0x0051517D: push     eax
0x0051517E: push     ecx
0x0051517F: push     esi
0x00515180: mov      eax, dword ptr [0xb089c8]
0x00515185: xor      eax, esp
0x00515187: push     eax
0x00515188: lea      eax, [esp + 0xc]
0x0051518C: mov      dword ptr fs:[0], eax
0x00515192: mov      esi, ecx
0x00515194: mov      dword ptr [esp + 8], esi
0x00515198: mov      dword ptr [esi], 0x983948
0x0051519E: lea      ecx, [esi + 0x18]
0x005151A1: mov      dword ptr [esp + 0x14], 0
0x005151A9: call     0x5687b0
0x005151AE: mov      ecx, esi
0x005151B0: mov      dword ptr [esp + 0x14], 0xffffffff
0x005151B8: call     0x764590
0x005151BD: mov      ecx, dword ptr [esp + 0xc]
0x005151C1: mov      dword ptr fs:[0], ecx
0x005151C8: pop      ecx
0x005151C9: pop      esi
0x005151CA: add      esp, 0x10
0x005151CD: ret      
0x005151CE: int3     
0x005151CF: int3     
0x005151D0: jmp      0x7645d0
0x005151D5: int3     
0x005151D6: int3     
0x005151D7: int3     
0x005151D8: int3     
0x005151D9: int3     
0x005151DA: int3     
0x005151DB: int3     
0x005151DC: int3     
0x005151DD: int3     
0x005151DE: int3     
0x005151DF: int3     

--- CRotasticCamera::vfunc_4 @ 0x005151E0 ---
0x005151E0: push     esi
0x005151E1: mov      esi, ecx
0x005151E3: mov      ecx, dword ptr [esi + 8]
0x005151E6: lea      eax, [esi + 0x18]
0x005151E9: push     eax
0x005151EA: push     ecx
0x005151EB: call     0x5687c0
0x005151F0: mov      edx, dword ptr [esp + 0x14]
0x005151F4: mov      eax, dword ptr [esp + 0x10]
0x005151F8: add      esp, 8
0x005151FB: push     edx
0x005151FC: push     eax
0x005151FD: mov      ecx, esi
0x005151FF: call     0x7646b0
0x00515204: pop      esi
0x00515205: ret      8
0x00515208: int3     
0x00515209: int3     
0x0051520A: int3     
0x0051520B: int3     
0x0051520C: int3     
0x0051520D: int3     
0x0051520E: int3     
0x0051520F: int3     

--- CRotasticCamera::vfunc_58 @ 0x00515210 ---
0x00515210: xor      eax, eax
0x00515212: cmp      dword ptr [esp + 4], 0xb1b9c8
0x0051521A: sete     al
0x0051521D: ret      4

--- CRotasticCamera::vfunc_59 @ 0x00515220 ---
0x00515220: mov      eax, 0xb1b9c8
0x00515225: ret      
0x00515226: int3     
0x00515227: int3     
0x00515228: int3     
0x00515229: int3     
0x0051522A: int3     
0x0051522B: int3     
0x0051522C: int3     
0x0051522D: int3     
0x0051522E: int3     
0x0051522F: int3     

--- CRotasticCamera::vfunc_0 @ 0x00515230 ---
0x00515230: push     esi
0x00515231: mov      esi, ecx
0x00515233: call     0x515170
0x00515238: test     byte ptr [esp + 8], 1
0x0051523D: je       0x515248
0x0051523F: push     esi
0x00515240: call     0x688fb0
0x00515245: add      esp, 4
0x00515248: mov      eax, esi
0x0051524A: pop      esi
0x0051524B: ret      4
0x0051524E: int3     
0x0051524F: int3     

--- CRotasticCamera::vfunc_56 @ 0x00515250 ---
0x00515250: mov      eax, dword ptr [esp + 4]
0x00515254: push     esi
0x00515255: push     0
0x00515257: push     eax
0x00515258: push     0x10
0x0051525A: mov      esi, ecx
0x0051525C: call     0x689060
0x00515261: add      esp, 0xc
0x00515264: test     eax, eax
0x00515266: je       0x515286
0x00515268: lea      ecx, [esi + 4]
0x0051526B: mov      dword ptr [eax], 0x983b04
0x00515271: mov      edx, dword ptr [ecx]
0x00515273: mov      dword ptr [eax + 4], edx
0x00515276: mov      edx, dword ptr [ecx + 4]
0x00515279: mov      dword ptr [eax + 8], edx
0x0051527C: mov      ecx, dword ptr [ecx + 8]
0x0051527F: mov      dword ptr [eax + 0xc], ecx
0x00515282: pop      esi
0x00515283: ret      4
0x00515286: xor      eax, eax
0x00515288: pop      esi
0x00515289: ret      4
0x0051528C: int3     
0x0051528D: int3     
0x0051528E: int3     
0x0051528F: int3     
0x00515290: push     -1
0x00515292: push     0x943c1e
0x00515297: mov      eax, dword ptr fs:[0]
0x0051529D: push     eax
0x0051529E: mov      eax, dword ptr [0xb089c8]
0x005152A3: xor      eax, esp
0x005152A5: push     eax
0x005152A6: lea      eax, [esp + 4]
0x005152AA: mov      dword ptr fs:[0], eax
0x005152B0: mov      eax, 1
0x005152B5: test     byte ptr [0xb1b9d0], al
0x005152BB: jne      0x5152f1
0x005152BD: or       dword ptr [0xb1b9d0], eax
0x005152C3: push     -1
0x005152C5: push     0
0x005152C7: push     0x978a74
0x005152CC: mov      dword ptr [esp + 0x18], 0
0x005152D4: call     0x691560
0x005152D9: add      esp, 0xc
0x005152DC: mov      dword ptr [0xb1b9cc], eax
0x005152E1: mov      ecx, dword ptr [esp + 4]
0x005152E5: mov      dword ptr fs:[0], ecx
0x005152EC: pop      ecx
0x005152ED: add      esp, 0xc
0x005152F0: ret      
0x005152F1: mov      eax, dword ptr [0xb1b9cc]
0x005152F6: mov      ecx, dword ptr [esp + 4]
0x005152FA: mov      dword ptr fs:[0], ecx
0x00515301: pop      ecx
0x00515302: add      esp, 0xc
0x00515305: ret      
0x00515306: int3     
0x00515307: int3     
0x00515308: int3     
0x00515309: int3     
0x0051530A: int3     
0x0051530B: int3     
0x0051530C: int3     
0x0051530D: int3     
0x0051530E: int3     
0x0051530F: int3     

--- CRotasticCamera::vfunc_2 @ 0x00515310 ---
0x00515310: push     esi
0x00515311: call     0x515290
0x00515316: mov      esi, dword ptr [esp + 8]
0x0051531A: cmp      eax, esi
0x0051531C: je       0x51532d
0x0051531E: call     0x433c20
0x00515323: cmp      eax, esi
0x00515325: je       0x51532d
0x00515327: xor      eax, eax
0x00515329: pop      esi
0x0051532A: ret      4
0x0051532D: mov      eax, 1
0x00515332: pop      esi
0x00515333: ret      4
0x00515336: int3     
0x00515337: int3     
0x00515338: int3     
0x00515339: int3     
0x0051533A: int3     
0x0051533B: int3     
0x0051533C: int3     
0x0051533D: int3     
0x0051533E: int3     
0x0051533F: int3     

--- C3DPanelGuiMultiTexture::ctor @ 0x00515340 ---
0x00515340: mov      eax, dword ptr [esp + 4]
0x00515344: push     esi
0x00515345: push     eax
0x00515346: mov      esi, ecx
0x00515348: call     0x52e5f0 ; C3DPanelGui::ctor
0x0051534D: mov      dword ptr [esi], 0x983b20
0x00515353: mov      dword ptr [esi + 0x1fc], 0
0x0051535D: mov      dword ptr [esi + 0x200], 1
0x00515367: mov      eax, esi
0x00515369: pop      esi
0x0051536A: ret      4
0x0051536D: int3     
0x0051536E: int3     
0x0051536F: int3     
0x00515370: mov      dword ptr [ecx], 0x983b20
0x00515376: jmp      0x52e540
0x0051537B: int3     
0x0051537C: int3     
0x0051537D: int3     
0x0051537E: int3     
0x0051537F: int3     

--- C3DPanelGuiMultiTexture::vfunc_7 @ 0x00515380 ---
0x00515380: push     esi
0x00515381: push     edi
0x00515382: mov      edi, dword ptr [esp + 0xc]
0x00515386: push     edi
0x00515387: mov      esi, ecx
0x00515389: call     0x52e670 ; C3DPanelGui::vfunc_7
0x0051538E: test     edi, edi
0x00515390: jne      0x5153b0
0x00515392: mov      eax, dword ptr [esi + 0x200]
0x00515398: mov      ecx, dword ptr [esi + 0x1fc]
0x0051539E: lea      eax, [eax + eax*2]
0x005153A1: mov      edx, dword ptr [ecx + eax*4 - 4]
0x005153A5: mov      eax, dword ptr [edx + 0x28]
0x005153A8: push     eax
0x005153A9: mov      ecx, esi
0x005153AB: call     0x52e500
0x005153B0: pop      edi
0x005153B1: pop      esi
0x005153B2: ret      4
0x005153B5: int3     
0x005153B6: int3     
0x005153B7: int3     
0x005153B8: int3     
0x005153B9: int3     
0x005153BA: int3     
0x005153BB: int3     
0x005153BC: int3     
0x005153BD: int3     
0x005153BE: int3     
0x005153BF: int3     
0x005153C0: mov      eax, dword ptr [esp + 4]
0x005153C4: mov      edx, dword ptr [ecx + 0x1fc]
0x005153CA: mov      dword ptr [ecx + 0x200], eax
0x005153D0: lea      eax, [eax + eax*2]
0x005153D3: mov      eax, dword ptr [edx + eax*4 - 4]
0x005153D7: mov      edx, dword ptr [eax + 0x28]
0x005153DA: mov      dword ptr [esp + 4], edx
0x005153DE: jmp      0x52e500
0x005153E3: int3     
0x005153E4: int3     
0x005153E5: int3     
0x005153E6: int3     
0x005153E7: int3     
0x005153E8: int3     
0x005153E9: int3     
0x005153EA: int3     
0x005153EB: int3     
0x005153EC: int3     
0x005153ED: int3     
0x005153EE: int3     
0x005153EF: int3     

--- C3DPanelGuiMultiTexture::vfunc_4 @ 0x005153F0 ---
0x005153F0: mov      eax, dword ptr [esp + 4]
0x005153F4: push     esi
0x005153F5: push     edi
0x005153F6: mov      edi, dword ptr [esp + 0x10]
0x005153FA: push     edi
0x005153FB: push     eax
0x005153FC: mov      esi, ecx
0x005153FE: call     0x52e880 ; C3DPanelGui::vfunc_4
0x00515403: mov      eax, edi
0x00515405: sub      eax, 2
0x00515408: jne      0x51542b
0x0051540A: mov      eax, dword ptr [esi + 8]
0x0051540D: movzx    ecx, byte ptr [eax + 1]
0x00515411: mov      edx, dword ptr [eax + 4]
0x00515414: mov      eax, dword ptr [edx + 0x38]
0x00515417: mov      eax, dword ptr [eax + ecx*4]
0x0051541A: add      eax, 0x68
0x0051541D: mov      dword ptr [esi + 0x1fc], eax
0x00515423: mov      ecx, dword ptr [eax]
0x00515425: mov      dword ptr [esi + 0x200], ecx
0x0051542B: pop      edi
0x0051542C: pop      esi
0x0051542D: ret      8
0x00515430: push     esi
0x00515431: push     edi
0x00515432: mov      edi, dword ptr [esp + 0xc]
0x00515436: lea      esi, [edi + 0x54]
0x00515439: mov      ecx, esi
0x0051543B: call     0x7bfe00
0x00515440: test     eax, eax
0x00515442: je       0x51546b
0x00515444: mov      ecx, esi
0x00515446: call     0x7bfe00
0x0051544B: test     eax, eax
0x0051544D: je       0x515488
0x0051544F: movzx    eax, byte ptr [esi]
0x00515452: mov      ecx, dword ptr [0xb78a28]
0x00515458: lea      eax, [eax + eax*2]
0x0051545B: mov      edx, dword ptr [ecx + eax*4 + 8]
0x0051545F: movzx    eax, byte ptr [esi + 1]
0x00515463: mov      ecx, dword ptr [edx + 0x78]
0x00515466: mov      eax, dword ptr [ecx + eax*4]
0x00515469: jmp      0x51548a
0x0051546B: mov      ecx, dword ptr [0xb79350]
0x00515471: test     ecx, ecx
0x00515473: je       0x515488
0x00515475: mov      edx, dword ptr [edi + 0x50]
0x00515478: mov      eax, dword ptr [edi + 0x4c]
0x0051547B: push     edx
0x0051547C: push     0
0x0051547E: push     0
0x00515480: push     eax
0x00515481: call     0x7cd120
0x00515486: jmp      0x51548a
0x00515488: xor      eax, eax
0x0051548A: movzx    ecx, byte ptr [eax + 1]
0x0051548E: mov      eax, dword ptr [eax + 4]
0x00515491: mov      edx, dword ptr [eax + 8]
0x00515494: test     dword ptr [edx + ecx*4], 0x40000
0x0051549B: je       0x5154e3
0x0051549D: mov      edx, dword ptr [eax + 0x14]
0x005154A0: lea      ecx, [ecx + ecx*8]
0x005154A3: lea      eax, [edx + ecx*4]
0x005154A6: mov      ecx, 0x1c
0x005154AB: cmp      byte ptr [eax + 0x14], cl
0x005154AE: jne      0x5154b5
0x005154B0: mov      eax, dword ptr [eax + 4]
0x005154B3: jmp      0x5154e5
0x005154B5: cmp      byte ptr [eax + 0x15], cl
0x005154B8: jne      0x5154bf
0x005154BA: mov      eax, dword ptr [eax + 8]
0x005154BD: jmp      0x5154e5
0x005154BF: cmp      byte ptr [eax + 0x16], cl
0x005154C2: jne      0x5154c9
0x005154C4: mov      eax, dword ptr [eax + 0xc]
0x005154C7: jmp      0x5154e5
0x005154C9: cmp      byte ptr [eax + 0x17], cl
0x005154CC: jne      0x5154d3
0x005154CE: mov      eax, dword ptr [eax + 0x10]
0x005154D1: jmp      0x5154e5
0x005154D3: mov      eax, dword ptr [eax]
0x005154D5: test     eax, eax
0x005154D7: je       0x5154e3
0x005154D9: push     ecx
0x005154DA: mov      ecx, eax
0x005154DC: call     0x461400
0x005154E1: jmp      0x5154e5
0x005154E3: xor      eax, eax
0x005154E5: mov      ecx, dword ptr [edi + 0x58]
0x005154E8: mov      edx, dword ptr [eax + 0x1fc]
0x005154EE: mov      dword ptr [eax + 0x200], ecx
0x005154F4: lea      ecx, [ecx + ecx*2]
0x005154F7: mov      ecx, dword ptr [edx + ecx*4 - 4]
0x005154FB: mov      edx, dword ptr [ecx + 0x28]
0x005154FE: push     edx
0x005154FF: mov      ecx, eax
0x00515501: call     0x52e500
0x00515506: pop      edi
0x00515507: pop      esi
0x00515508: ret      
0x00515509: int3     
0x0051550A: int3     
0x0051550B: int3     
0x0051550C: int3     
0x0051550D: int3     
0x0051550E: int3     
0x0051550F: int3     
0x00515510: push     esi
0x00515511: push     edi
0x00515512: mov      edi, dword ptr [esp + 0xc]
0x00515516: lea      esi, [edi + 0x54]
0x00515519: mov      ecx, esi
0x0051551B: call     0x7bfe00
0x00515520: test     eax, eax
0x00515522: je       0x51554b
0x00515524: mov      ecx, esi
0x00515526: call     0x7bfe00
0x0051552B: test     eax, eax
0x0051552D: je       0x515568
0x0051552F: movzx    eax, byte ptr [esi]
0x00515532: mov      ecx, dword ptr [0xb78a28]
0x00515538: lea      eax, [eax + eax*2]
0x0051553B: mov      edx, dword ptr [ecx + eax*4 + 8]
0x0051553F: movzx    eax, byte ptr [esi + 1]
0x00515543: mov      ecx, dword ptr [edx + 0x78]
0x00515546: mov      eax, dword ptr [ecx + eax*4]
0x00515549: jmp      0x51556a
0x0051554B: mov      ecx, dword ptr [0xb79350]
0x00515551: test     ecx, ecx
0x00515553: je       0x515568
0x00515555: mov      edx, dword ptr [edi + 0x50]
0x00515558: mov      eax, dword ptr [edi + 0x4c]
0x0051555B: push     edx
0x0051555C: push     0
0x0051555E: push     0
0x00515560: push     eax
0x00515561: call     0x7cd120
0x00515566: jmp      0x51556a
0x00515568: xor      eax, eax
0x0051556A: movzx    ecx, byte ptr [eax + 1]
0x0051556E: mov      eax, dword ptr [eax + 4]
0x00515571: mov      edx, dword ptr [eax + 8]
0x00515574: test     dword ptr [edx + ecx*4], 0x40000
0x0051557B: je       0x515603
0x00515581: mov      edx, dword ptr [eax + 0x14]
0x00515584: lea      ecx, [ecx + ecx*8]
0x00515587: lea      eax, [edx + ecx*4]
0x0051558A: mov      ecx, 0x1c
0x0051558F: cmp      byte ptr [eax + 0x14], cl
0x00515592: jne      0x5155a5
0x00515594: mov      eax, dword ptr [eax + 4]
0x00515597: add      edi, 0x58
0x0051559A: push     edi
0x0051559B: mov      ecx, eax
0x0051559D: call     0x52e560
0x005155A2: pop      edi
0x005155A3: pop      esi
0x005155A4: ret      
0x005155A5: cmp      byte ptr [eax + 0x15], cl
0x005155A8: jne      0x5155bb
0x005155AA: mov      eax, dword ptr [eax + 8]
0x005155AD: add      edi, 0x58
0x005155B0: push     edi
0x005155B1: mov      ecx, eax
0x005155B3: call     0x52e560
0x005155B8: pop      edi
0x005155B9: pop      esi
0x005155BA: ret      
0x005155BB: cmp      byte ptr [eax + 0x16], cl
0x005155BE: jne      0x5155d1
0x005155C0: mov      eax, dword ptr [eax + 0xc]
0x005155C3: add      edi, 0x58
0x005155C6: push     edi
0x005155C7: mov      ecx, eax
0x005155C9: call     0x52e560
0x005155CE: pop      edi
0x005155CF: pop      esi
0x005155D0: ret      
0x005155D1: cmp      byte ptr [eax + 0x17], cl
0x005155D4: jne      0x5155e7
0x005155D6: mov      eax, dword ptr [eax + 0x10]
0x005155D9: add      edi, 0x58
0x005155DC: push     edi
0x005155DD: mov      ecx, eax
0x005155DF: call     0x52e560
0x005155E4: pop      edi
0x005155E5: pop      esi
0x005155E6: ret      
0x005155E7: mov      eax, dword ptr [eax]
0x005155E9: test     eax, eax
0x005155EB: je       0x515603
0x005155ED: push     ecx
0x005155EE: mov      ecx, eax
0x005155F0: call     0x461400
0x005155F5: add      edi, 0x58
0x005155F8: push     edi
0x005155F9: mov      ecx, eax
0x005155FB: call     0x52e560
0x00515600: pop      edi
0x00515601: pop      esi
0x00515602: ret      
0x00515603: xor      eax, eax
0x00515605: add      edi, 0x58
0x00515608: push     edi
0x00515609: mov      ecx, eax
0x0051560B: call     0x52e560
0x00515610: pop      edi
0x00515611: pop      esi
0x00515612: ret      
0x00515613: int3     
0x00515614: int3     
0x00515615: int3     
0x00515616: int3     
0x00515617: int3     
0x00515618: int3     
0x00515619: int3     
0x0051561A: int3     
0x0051561B: int3     
0x0051561C: int3     
0x0051561D: int3     
0x0051561E: int3     
0x0051561F: int3     

--- C3DPanelGuiMultiTexture::vfunc_0 @ 0x00515620 ---
0x00515620: push     esi
0x00515621: mov      esi, ecx
0x00515623: mov      dword ptr [esi], 0x983b20
0x00515629: call     0x52e540
0x0051562E: test     byte ptr [esp + 8], 1
0x00515633: je       0x51563e
0x00515635: push     esi
0x00515636: call     0x688fb0
0x0051563B: add      esp, 4
0x0051563E: mov      eax, esi
0x00515640: pop      esi
0x00515641: ret      4
0x00515644: int3     
0x00515645: int3     
0x00515646: int3     
0x00515647: int3     
0x00515648: int3     
0x00515649: int3     
0x0051564A: int3     
0x0051564B: int3     
0x0051564C: int3     
0x0051564D: int3     
0x0051564E: int3     
0x0051564F: int3     
0x00515650: push     esi
0x00515651: push     edi
0x00515652: mov      edi, ecx
0x00515654: movzx    eax, byte ptr [edi + 0x84]
0x0051565B: lea      esi, [edi + 4]
0x0051565E: lea      ecx, [edi + eax*4 + 4]
0x00515662: cmp      esi, ecx
0x00515664: je       0x51568d
0x00515666: mov      ecx, dword ptr [esi]
0x00515668: test     ecx, ecx
0x0051566A: je       0x51568d
0x0051566C: mov      edx, dword ptr [ecx]
0x0051566E: mov      eax, dword ptr [edx + 8]
0x00515671: push     1
0x00515673: call     eax
0x00515675: mov      dword ptr [esi], 0
0x0051567B: movzx    ecx, byte ptr [edi + 0x84]
0x00515682: add      esi, 4
0x00515685: lea      edx, [edi + ecx*4 + 4]
0x00515689: cmp      esi, edx
0x0051568B: jne      0x515666
0x0051568D: mov      byte ptr [edi + 0x84], 0
0x00515694: mov      dword ptr [edi + 0x90], 0
0x0051569E: mov      dword ptr [edi], 0
0x005156A4: pop      edi
0x005156A5: pop      esi
0x005156A6: ret      
0x005156A7: int3     
0x005156A8: int3     
0x005156A9: int3     
0x005156AA: int3     
0x005156AB: int3     
0x005156AC: int3     
0x005156AD: int3     
0x005156AE: int3     
0x005156AF: int3     
0x005156B0: push     esi
0x005156B1: push     edi
0x005156B2: mov      edi, ecx
0x005156B4: movzx    eax, byte ptr [edi + 0x84]
0x005156BB: lea      esi, [edi + 4]
0x005156BE: lea      ecx, [edi + eax*4 + 4]
0x005156C2: cmp      esi, ecx
0x005156C4: je       0x5156fd
0x005156C6: mov      ecx, dword ptr [esi]
0x005156C8: test     ecx, ecx
0x005156CA: je       0x5156fd
0x005156CC: mov      edx, dword ptr [ecx]
0x005156CE: mov      eax, dword ptr [edx]
0x005156D0: call     eax
0x005156D2: mov      ecx, dword ptr [edi + 0x90]
0x005156D8: test     dword ptr [eax + 0x14], ecx
0x005156DB: mov      ecx, dword ptr [esi]
0x005156DD: mov      edx, dword ptr [ecx]
0x005156DF: je       0x5156e6
0x005156E1: mov      eax, dword ptr [edx + 0xc]
0x005156E4: jmp      0x5156e9
0x005156E6: mov      eax, dword ptr [edx + 0x10]
0x005156E9: call     eax
0x005156EB: movzx    ecx, byte ptr [edi + 0x84]
0x005156F2: add      esi, 4
0x005156F5: lea      edx, [edi + ecx*4 + 4]
0x005156F9: cmp      esi, edx
0x005156FB: jne      0x5156c6
0x005156FD: mov      dword ptr [edi + 0x94], 0xffffffff
0x00515707: pop      edi
0x00515708: pop      esi
0x00515709: ret      
0x0051570A: int3     
0x0051570B: int3     
0x0051570C: int3     
0x0051570D: int3     
0x0051570E: int3     
0x0051570F: int3     
0x00515710: push     esi
0x00515711: push     edi
0x00515712: mov      edi, ecx
0x00515714: movzx    eax, byte ptr [edi + 0x84]
0x0051571B: lea      esi, [edi + 4]
0x0051571E: lea      ecx, [edi + eax*4 + 4]
0x00515722: cmp      esi, ecx
0x00515724: je       0x515745
0x00515726: mov      ecx, dword ptr [esi]
0x00515728: test     ecx, ecx
0x0051572A: je       0x515745
0x0051572C: mov      edx, dword ptr [ecx]
0x0051572E: mov      eax, dword ptr [edx + 0x10]
0x00515731: call     eax
0x00515733: movzx    ecx, byte ptr [edi + 0x84]
0x0051573A: add      esi, 4
0x0051573D: lea      edx, [edi + ecx*4 + 4]
0x00515741: cmp      esi, edx
0x00515743: jne      0x515726
0x00515745: pop      edi
0x00515746: pop      esi
0x00515747: ret      
0x00515748: int3     
0x00515749: int3     
0x0051574A: int3     
0x0051574B: int3     
0x0051574C: int3     
0x0051574D: int3     
0x0051574E: int3     
0x0051574F: int3     
0x00515750: push     ebx
0x00515751: push     esi
0x00515752: push     edi
0x00515753: mov      edi, ecx
0x00515755: movzx    eax, byte ptr [edi + 0x84]
0x0051575C: lea      esi, [edi + 4]
0x0051575F: lea      ecx, [edi + eax*4 + 4]
0x00515763: cmp      esi, ecx
0x00515765: je       0x515793
0x00515767: mov      ebx, dword ptr [esp + 0x10]
0x0051576B: jmp      0x515770
0x0051576D: lea      ecx, [ecx]
0x00515770: mov      ecx, dword ptr [esi]
0x00515772: test     ecx, ecx
0x00515774: je       0x515793
0x00515776: mov      edx, dword ptr [ecx]
0x00515778: mov      eax, dword ptr [edx]
0x0051577A: call     eax
0x0051577C: cmp      dword ptr [eax + 0x18], ebx
0x0051577F: je       0x51579b
0x00515781: movzx    ecx, byte ptr [edi + 0x84]
0x00515788: add      esi, 4
0x0051578B: lea      edx, [edi + ecx*4 + 4]
0x0051578F: cmp      esi, edx
0x00515791: jne      0x515770
0x00515793: pop      edi
0x00515794: pop      esi
0x00515795: xor      eax, eax
0x00515797: pop      ebx
0x00515798: ret      4
0x0051579B: mov      eax, dword ptr [esi]
0x0051579D: pop      edi
0x0051579E: pop      esi
0x0051579F: pop      ebx
0x005157A0: ret      4
0x005157A3: int3     
0x005157A4: int3     
0x005157A5: int3     
0x005157A6: int3     
0x005157A7: int3     
0x005157A8: int3     
0x005157A9: int3     
0x005157AA: int3     
0x005157AB: int3     
0x005157AC: int3     
0x005157AD: int3     
0x005157AE: int3     
0x005157AF: int3     
0x005157B0: push     esi
0x005157B1: push     edi
0x005157B2: mov      edi, ecx
0x005157B4: movzx    eax, byte ptr [edi + 0x84]
0x005157BB: lea      esi, [edi + 4]
0x005157BE: lea      ecx, [edi + eax*4 + 4]
0x005157C2: cmp      esi, ecx
0x005157C4: je       0x5157ee
0x005157C6: mov      ecx, dword ptr [esi]
0x005157C8: test     ecx, ecx
0x005157CA: je       0x5157ee
0x005157CC: cmp      dword ptr [ecx + 0xf0], 0
0x005157D3: jne      0x5157dc
0x005157D5: mov      edx, dword ptr [ecx]
0x005157D7: mov      eax, dword ptr [edx + 0x10]
0x005157DA: call     eax
0x005157DC: movzx    ecx, byte ptr [edi + 0x84]
0x005157E3: add      esi, 4
0x005157E6: lea      edx, [edi + ecx*4 + 4]
0x005157EA: cmp      esi, edx
0x005157EC: jne      0x5157c6
0x005157EE: pop      edi
0x005157EF: pop      esi
0x005157F0: ret      
0x005157F1: int3     
0x005157F2: int3     
0x005157F3: int3     
0x005157F4: int3     
0x005157F5: int3     
0x005157F6: int3     
0x005157F7: int3     
0x005157F8: int3     
0x005157F9: int3     
0x005157FA: int3     
0x005157FB: int3     
0x005157FC: int3     
0x005157FD: int3     
0x005157FE: int3     
0x005157FF: int3     
0x00515800: push     -1
0x00515802: push     0x943c5c
0x00515807: mov      eax, dword ptr fs:[0]
0x0051580D: push     eax
0x0051580E: push     ecx
0x0051580F: push     ebx
0x00515810: push     esi
0x00515811: mov      eax, dword ptr [0xb089c8]
0x00515816: xor      eax, esp
0x00515818: push     eax
0x00515819: lea      eax, [esp + 0x10]
0x0051581D: mov      dword ptr fs:[0], eax
0x00515823: mov      esi, ecx
0x00515825: mov      dword ptr [esp + 0xc], esi
0x00515829: xor      ebx, ebx
0x0051582B: mov      dword ptr [esi + 0x88], ebx
0x00515831: mov      dword ptr [esp + 0x18], ebx
0x00515835: mov      dword ptr [esi + 0x8c], ebx
0x0051583B: lea      eax, [esi + 4]
0x0051583E: mov      byte ptr [esp + 0x18], 1
0x00515843: mov      dword ptr [esi], ebx
0x00515845: push     0x80
0x0051584A: test     al, 0x7f
0x0051584C: je       0x515859
0x0051584E: push     eax
0x0051584F: call     0x6a9700
0x00515854: add      esp, 8
0x00515857: jmp      0x515863
0x00515859: push     ebx
0x0051585A: push     eax
0x0051585B: call     0x8eb080
0x00515860: add      esp, 0xc
0x00515863: mov      byte ptr [esi + 0x84], bl
0x00515869: mov      dword ptr [esi + 0x90], ebx
0x0051586F: mov      dword ptr [esi + 0x94], ebx
0x00515875: mov      eax, esi
0x00515877: mov      ecx, dword ptr [esp + 0x10]
0x0051587B: mov      dword ptr fs:[0], ecx
0x00515882: pop      ecx
0x00515883: pop      esi
0x00515884: pop      ebx
0x00515885: add      esp, 0x10
0x00515888: ret      
0x00515889: int3     
0x0051588A: int3     
0x0051588B: int3     
0x0051588C: int3     
0x0051588D: int3     
0x0051588E: int3     
0x0051588F: int3     
0x00515890: push     -1
0x00515892: push     0x943c93
0x00515897: mov      eax, dword ptr fs:[0]
0x0051589D: push     eax
0x0051589E: push     ecx
0x0051589F: push     esi
0x005158A0: mov      eax, dword ptr [0xb089c8]
0x005158A5: xor      eax, esp
0x005158A7: push     eax
0x005158A8: lea      eax, [esp + 0xc]
0x005158AC: mov      dword ptr fs:[0], eax
0x005158B2: mov      esi, ecx
0x005158B4: mov      dword ptr [esp + 8], esi
0x005158B8: mov      dword ptr [esp + 0x14], 1
0x005158C0: call     0x515650
0x005158C5: mov      eax, dword ptr [esi + 0x8c]
0x005158CB: push     eax
0x005158CC: mov      byte ptr [esp + 0x18], 0
0x005158D1: call     0x52d1b0
0x005158D6: mov      dword ptr [esi + 0x8c], 0
0x005158E0: mov      ecx, dword ptr [esi + 0x88]
0x005158E6: push     ecx
0x005158E7: mov      dword ptr [esp + 0x1c], 0xffffffff
0x005158EF: call     0x52d1b0
0x005158F4: add      esp, 8
0x005158F7: mov      dword ptr [esi + 0x88], 0
0x00515901: mov      ecx, dword ptr [esp + 0xc]
0x00515905: mov      dword ptr fs:[0], ecx
0x0051590C: pop      ecx
0x0051590D: pop      esi
0x0051590E: add      esp, 0x10
0x00515911: ret      
0x00515912: int3     
0x00515913: int3     
0x00515914: int3     
0x00515915: int3     
0x00515916: int3     
0x00515917: int3     
0x00515918: int3     
0x00515919: int3     
0x0051591A: int3     
0x0051591B: int3     
0x0051591C: int3     
0x0051591D: int3     
0x0051591E: int3     
0x0051591F: int3     
0x00515920: push     ebx
0x00515921: mov      ebx, dword ptr [esp + 8]
0x00515925: push     edi
0x00515926: mov      edi, ecx
0x00515928: mov      eax, dword ptr [edi]
0x0051592A: mov      ecx, dword ptr [ebx]
0x0051592C: cmp      ecx, dword ptr [eax + 8]
0x0051592F: jne      0x515985
0x00515931: mov      ecx, dword ptr [ebx + 4]
0x00515934: mov      edx, dword ptr [ecx]
0x00515936: mov      eax, dword ptr [edx]
0x00515938: call     eax
0x0051593A: cmp      byte ptr [eax + 0xc], 0
0x0051593E: jne      0x515985
0x00515940: mov      ecx, dword ptr [ebx + 4]
0x00515943: cmp      dword ptr [ecx + 0xf4], 0
0x0051594A: jne      0x515985
0x0051594C: movzx    edx, byte ptr [edi + 0x84]
0x00515953: push     esi
0x00515954: lea      esi, [edi + 4]
0x00515957: lea      eax, [edi + edx*4 + 4]
0x0051595B: cmp      esi, eax
0x0051595D: je       0x515984
0x0051595F: nop      
0x00515960: mov      ecx, dword ptr [esi]
0x00515962: test     ecx, ecx
0x00515964: je       0x515984
0x00515966: cmp      dword ptr [ebx + 4], ecx
0x00515969: je       0x515972
0x0051596B: mov      edx, dword ptr [ecx]
0x0051596D: mov      eax, dword ptr [edx + 0x10]
0x00515970: call     eax
0x00515972: movzx    ecx, byte ptr [edi + 0x84]
0x00515979: add      esi, 4
0x0051597C: lea      edx, [edi + ecx*4 + 4]
0x00515980: cmp      esi, edx
0x00515982: jne      0x515960
0x00515984: pop      esi
0x00515985: pop      edi
0x00515986: pop      ebx
0x00515987: ret      4
0x0051598A: int3     
0x0051598B: int3     
0x0051598C: int3     
0x0051598D: int3     
0x0051598E: int3     
0x0051598F: int3     
0x00515990: sub      esp, 0x108
0x00515996: mov      eax, dword ptr [0xb089c8]
0x0051599B: xor      eax, esp
0x0051599D: mov      dword ptr [esp + 0x104], eax
0x005159A4: push     ebx
0x005159A5: push     ebp
0x005159A6: push     esi
0x005159A7: push     edi
0x005159A8: mov      edi, ecx
0x005159AA: movzx    eax, byte ptr [edi + 0x84]
0x005159B1: lea      esi, [edi + 4]
0x005159B4: lea      ecx, [edi + eax*4 + 4]
0x005159B8: mov      dword ptr [esp + 0x10], edi
0x005159BC: cmp      esi, ecx
0x005159BE: je       0x5159ec
0x005159C0: mov      ebx, dword ptr [esp + 0x11c]
0x005159C7: mov      ecx, dword ptr [esi]
0x005159C9: test     ecx, ecx
0x005159CB: je       0x5159ec
0x005159CD: mov      edx, dword ptr [ecx]
0x005159CF: mov      eax, dword ptr [edx]
0x005159D1: call     eax
0x005159D3: mov      ebp, eax
0x005159D5: cmp      dword ptr [ebp + 8], ebx
0x005159D8: je       0x515a0c
0x005159DA: movzx    ecx, byte ptr [edi + 0x84]
0x005159E1: add      esi, 4
0x005159E4: lea      edx, [edi + ecx*4 + 4]
0x005159E8: cmp      esi, edx
0x005159EA: jne      0x5159c7
0x005159EC: mov      eax, 0x983c2b
0x005159F1: mov      ecx, dword ptr [esp + 0x114]
0x005159F8: pop      edi
0x005159F9: pop      esi
0x005159FA: pop      ebp
0x005159FB: pop      ebx
0x005159FC: xor      ecx, esp
0x005159FE: call     0x8eac64
0x00515A03: add      esp, 0x108
0x00515A09: ret      4
0x00515A0C: mov      ecx, dword ptr [0xb76118]
0x00515A12: push     0
0x00515A14: push     0
0x00515A16: push     0x983c24
0x00515A1B: call     0x6eeaa0
0x00515A20: mov      ecx, eax
0x00515A22: xor      eax, eax
0x00515A24: test     ecx, ecx
0x00515A26: je       0x515a49
0x00515A28: mov      ecx, dword ptr [ecx + 0xc4]
0x00515A2E: test     ecx, ecx
0x00515A30: je       0x515a49
0x00515A32: mov      ecx, dword ptr [ecx + 0x114]
0x00515A38: test     ecx, ecx
0x00515A3A: je       0x515a49
0x00515A3C: push     eax
0x00515A3D: push     eax
0x00515A3E: mov      eax, dword ptr [0x9602d8] ; [u32=0x779BED0C]
0x00515A43: push     eax
0x00515A44: call     0x7cd3c0
0x00515A49: movzx    ecx, byte ptr [eax + 1]
0x00515A4D: mov      edx, dword ptr [eax + 4]
0x00515A50: mov      eax, dword ptr [edx + 0x38]
0x00515A53: mov      ecx, dword ptr [eax + ecx*4]
0x00515A56: mov      ebx, dword ptr [ecx + 0x38]
0x00515A59: xor      edi, edi
0x00515A5B: cmp      dword ptr [ebx + 4], edi
0x00515A5E: jle      0x515ac5
0x00515A60: mov      edx, dword ptr [ebx + 8]
0x00515A63: mov      esi, dword ptr [edx + edi*4]
0x00515A66: mov      eax, dword ptr [esi + 0x38]
0x00515A69: cmp      eax, dword ptr [ebp + 0x18]
0x00515A6C: jne      0x515a7e
0x00515A6E: mov      ecx, dword ptr [esi + 0x50]
0x00515A71: push     ecx
0x00515A72: call     0x4e8fc0
0x00515A77: add      esp, 4
0x00515A7A: test     eax, eax
0x00515A7C: jne      0x515a92
0x00515A7E: inc      edi
0x00515A7F: cmp      edi, dword ptr [ebx + 4]
0x00515A82: jl       0x515a60
0x00515A84: mov      eax, dword ptr [esp + 0x10]
0x00515A88: add      eax, 0x98
0x00515A8D: jmp      0x5159f1
0x00515A92: mov      edx, dword ptr [esi + 0x54]
0x00515A95: push     0
0x00515A97: push     edx
0x00515A98: push     0x80
0x00515A9D: lea      ecx, [esp + 0x20]
0x00515AA1: push     ecx
0x00515AA2: mov      ecx, eax
0x00515AA4: call     0x703820
0x00515AA9: mov      eax, dword ptr [esp + 0x10]
0x00515AAD: push     0x80
0x00515AB2: lea      edx, [esp + 0x18]
0x00515AB6: push     edx
0x00515AB7: add      eax, 0x98
0x00515ABC: push     eax
0x00515ABD: call     0x691800
0x00515AC2: add      esp, 0xc
0x00515AC5: mov      eax, dword ptr [esp + 0x10]
0x00515AC9: add      eax, 0x98
0x00515ACE: jmp      0x5159f1
0x00515AD3: int3     
0x00515AD4: int3     
0x00515AD5: int3     
0x00515AD6: int3     
0x00515AD7: int3     
0x00515AD8: int3     
0x00515AD9: int3     
0x00515ADA: int3     
0x00515ADB: int3     
0x00515ADC: int3     
0x00515ADD: int3     
0x00515ADE: int3     
0x00515ADF: int3     
0x00515AE0: push     ecx
0x00515AE1: push     ebx
0x00515AE2: push     ebp
0x00515AE3: push     esi
0x00515AE4: push     edi
0x00515AE5: push     0
0x00515AE7: mov      edi, ecx
0x00515AE9: mov      ecx, dword ptr [0xb76118]
0x00515AEF: push     0
0x00515AF1: push     0x983c2c
0x00515AF6: mov      dword ptr [esp + 0x1c], edi
0x00515AFA: call     0x6eeaa0
0x00515AFF: mov      ecx, eax
0x00515B01: xor      eax, eax
0x00515B03: test     ecx, ecx
0x00515B05: je       0x515b28
0x00515B07: mov      ecx, dword ptr [ecx + 0xc4]
0x00515B0D: test     ecx, ecx
0x00515B0F: je       0x515b28
0x00515B11: mov      ecx, dword ptr [ecx + 0x114]
0x00515B17: test     ecx, ecx
0x00515B19: je       0x515b28
0x00515B1B: push     eax
0x00515B1C: push     eax
0x00515B1D: mov      eax, dword ptr [0x9602d8] ; [u32=0x779BED0C]
0x00515B22: push     eax
0x00515B23: call     0x7cd3c0
0x00515B28: mov      edx, dword ptr [eax + 4]
0x00515B2B: movzx    ecx, byte ptr [eax + 1]
0x00515B2F: mov      eax, dword ptr [edx + 0x38]
0x00515B32: movzx    edx, byte ptr [edi + 0x84]
0x00515B39: mov      ecx, dword ptr [eax + ecx*4]
0x00515B3C: mov      ebp, dword ptr [ecx + 0x38]
0x00515B3F: lea      ebx, [edi + 4]
0x00515B42: lea      eax, [edi + edx*4 + 4]
0x00515B46: cmp      ebx, eax
0x00515B48: je       0x515ba2
0x00515B4A: lea      ebx, [ebx]
0x00515B50: mov      ecx, dword ptr [ebx]
0x00515B52: test     ecx, ecx
0x00515B54: je       0x515ba2
0x00515B56: mov      edx, dword ptr [ecx]
0x00515B58: mov      eax, dword ptr [edx]
0x00515B5A: call     eax
0x00515B5C: mov      ecx, dword ptr [esp + 0x18]
0x00515B60: cmp      dword ptr [eax + 8], ecx
0x00515B63: jne      0x515b90
0x00515B65: xor      esi, esi
0x00515B67: cmp      dword ptr [ebp + 4], esi
0x00515B6A: jle      0x515b90
0x00515B6C: lea      esp, [esp]
0x00515B70: mov      edx, dword ptr [ebp + 8]
0x00515B73: mov      ecx, dword ptr [ebx]
0x00515B75: mov      eax, dword ptr [ecx]
0x00515B77: mov      edi, dword ptr [edx + esi*4]
0x00515B7A: mov      edx, dword ptr [eax]
0x00515B7C: call     edx
0x00515B7E: mov      ecx, dword ptr [edi + 0x38]
0x00515B81: cmp      ecx, dword ptr [eax + 0x18]
0x00515B84: je       0x515bac
0x00515B86: inc      esi
0x00515B87: cmp      esi, dword ptr [ebp + 4]
0x00515B8A: jl       0x515b70
0x00515B8C: mov      edi, dword ptr [esp + 0x10]
0x00515B90: movzx    edx, byte ptr [edi + 0x84]
0x00515B97: add      ebx, 4
0x00515B9A: lea      eax, [edi + edx*4 + 4]
0x00515B9E: cmp      ebx, eax
0x00515BA0: jne      0x515b50
0x00515BA2: pop      edi
0x00515BA3: pop      esi
0x00515BA4: pop      ebp
0x00515BA5: xor      eax, eax
0x00515BA7: pop      ebx
0x00515BA8: pop      ecx
0x00515BA9: ret      4
0x00515BAC: mov      eax, dword ptr [edi + 0x54]
0x00515BAF: pop      edi
0x00515BB0: pop      esi
0x00515BB1: pop      ebp
0x00515BB2: pop      ebx
0x00515BB3: pop      ecx
0x00515BB4: ret      4
0x00515BB7: int3     
0x00515BB8: int3     
0x00515BB9: int3     
0x00515BBA: int3     
0x00515BBB: int3     
0x00515BBC: int3     
0x00515BBD: int3     
0x00515BBE: int3     
0x00515BBF: int3     
0x00515BC0: mov      eax, dword ptr [esp + 0xc]
0x00515BC4: mov      edx, dword ptr [eax]
0x00515BC6: push     edi
0x00515BC7: mov      edi, dword ptr [esp + 0x14]
0x00515BCB: mov      ecx, dword ptr [edi]
0x00515BCD: cmp      edx, dword ptr [ecx + 8]
0x00515BD0: jne      0x515c39
0x00515BD2: mov      eax, dword ptr [eax + 4]
0x00515BD5: test     eax, eax
0x00515BD7: je       0x515c39
0x00515BD9: movzx    ecx, byte ptr [eax + 1]
0x00515BDD: mov      edx, dword ptr [eax + 4]
0x00515BE0: mov      eax, dword ptr [edx + 0x38]
0x00515BE3: mov      ecx, dword ptr [eax + ecx*4]
0x00515BE6: mov      eax, dword ptr [ecx + 0x28]
0x00515BE9: cmp      eax, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x00515BEF: je       0x515bf9
0x00515BF1: cmp      eax, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x00515BF7: jne      0x515c39
0x00515BF9: movzx    edx, byte ptr [edi + 0x84]
0x00515C00: push     esi
0x00515C01: lea      esi, [edi + 4]
0x00515C04: lea      eax, [edi + edx*4 + 4]
0x00515C08: cmp      esi, eax
0x00515C0A: je       0x515c38
0x00515C0C: lea      esp, [esp]
0x00515C10: mov      ecx, dword ptr [esi]
0x00515C12: test     ecx, ecx
0x00515C14: je       0x515c38
0x00515C16: cmp      dword ptr [ecx + 0xec], 0
0x00515C1D: jne      0x515c26
0x00515C1F: mov      edx, dword ptr [ecx]
0x00515C21: mov      eax, dword ptr [edx + 0x10]
0x00515C24: call     eax
0x00515C26: movzx    ecx, byte ptr [edi + 0x84]
0x00515C2D: add      esi, 4
0x00515C30: lea      edx, [edi + ecx*4 + 4]
0x00515C34: cmp      esi, edx
0x00515C36: jne      0x515c10
0x00515C38: pop      esi
0x00515C39: pop      edi
0x00515C3A: ret      
0x00515C3B: int3     
0x00515C3C: int3     
0x00515C3D: int3     
0x00515C3E: int3     
0x00515C3F: int3     
0x00515C40: mov      eax, dword ptr [esp + 0xc]
0x00515C44: mov      ecx, dword ptr [esp + 0x10]
0x00515C48: push     eax
0x00515C49: call     0x515920
0x00515C4E: ret      
0x00515C4F: int3     
0x00515C50: push     -1
0x00515C52: push     0x943e61
0x00515C57: mov      eax, dword ptr fs:[0]
0x00515C5D: push     eax
0x00515C5E: push     ebx
0x00515C5F: push     ebp
0x00515C60: push     esi
0x00515C61: push     edi
0x00515C62: mov      eax, dword ptr [0xb089c8]
0x00515C67: xor      eax, esp
0x00515C69: push     eax
0x00515C6A: lea      eax, [esp + 0x14]
0x00515C6E: mov      dword ptr fs:[0], eax
0x00515C74: mov      edi, ecx
0x00515C76: cmp      dword ptr [edi], 0
0x00515C79: jne      0x51610c
0x00515C7F: mov      eax, dword ptr [esp + 0x24]
0x00515C83: push     0
0x00515C85: push     1
0x00515C87: push     0
0x00515C89: push     1
0x00515C8B: mov      dword ptr [edi], eax
0x00515C8D: mov      ecx, dword ptr [0xb01b28]
0x00515C93: push     0
0x00515C95: push     ecx
0x00515C96: lea      ebp, [edi + 4]
0x00515C99: push     0x108
0x00515C9E: mov      esi, ebp
0x00515CA0: call     0x688fe0
0x00515CA5: add      esp, 0x1c
0x00515CA8: mov      dword ptr [esp + 0x24], eax
0x00515CAC: mov      dword ptr [esp + 0x1c], 0
0x00515CB4: test     eax, eax
0x00515CB6: je       0x515cc4
0x00515CB8: mov      edx, dword ptr [edi]
0x00515CBA: push     edx
0x00515CBB: mov      ecx, eax
0x00515CBD: call     0x570ba0
0x00515CC2: jmp      0x515cc6
0x00515CC4: xor      eax, eax
0x00515CC6: push     0
0x00515CC8: push     1
0x00515CCA: push     0
0x00515CCC: push     1
0x00515CCE: mov      dword ptr [esi], eax
0x00515CD0: mov      eax, dword ptr [0xb01b28]
0x00515CD5: push     0
0x00515CD7: push     eax
0x00515CD8: or       ebx, 0xffffffff
0x00515CDB: push     0x12c
0x00515CE0: mov      dword ptr [esp + 0x38], ebx
0x00515CE4: add      esi, 4
0x00515CE7: call     0x688fe0
0x00515CEC: add      esp, 0x1c
0x00515CEF: mov      dword ptr [esp + 0x24], eax
0x00515CF3: mov      dword ptr [esp + 0x1c], 1
0x00515CFB: test     eax, eax
0x00515CFD: je       0x515d0b
0x00515CFF: mov      ecx, dword ptr [edi]
0x00515D01: push     ecx
0x00515D02: mov      ecx, eax
0x00515D04: call     0x570b20
0x00515D09: jmp      0x515d0d
0x00515D0B: xor      eax, eax
0x00515D0D: push     0
0x00515D0F: push     1
0x00515D11: push     0
0x00515D13: push     1
0x00515D15: mov      dword ptr [esi], eax
0x00515D17: mov      edx, dword ptr [0xb01b28]
0x00515D1D: push     0
0x00515D1F: push     edx
0x00515D20: push     0x128
0x00515D25: mov      dword ptr [esp + 0x38], ebx
0x00515D29: add      esi, 4
0x00515D2C: call     0x688fe0
0x00515D31: add      esp, 0x1c
0x00515D34: mov      dword ptr [esp + 0x24], eax
0x00515D38: mov      dword ptr [esp + 0x1c], 2
0x00515D40: test     eax, eax
0x00515D42: je       0x515d50
0x00515D44: mov      ecx, dword ptr [edi]
0x00515D46: push     ecx
0x00515D47: mov      ecx, eax
0x00515D49: call     0x570870
0x00515D4E: jmp      0x515d52
0x00515D50: xor      eax, eax
0x00515D52: push     0
0x00515D54: push     1
0x00515D56: push     0
0x00515D58: push     1
0x00515D5A: mov      dword ptr [esi], eax
0x00515D5C: mov      edx, dword ptr [0xb01b28]
0x00515D62: push     0
0x00515D64: push     edx
0x00515D65: push     0x128
0x00515D6A: mov      dword ptr [esp + 0x38], ebx
0x00515D6E: add      esi, 4
0x00515D71: call     0x688fe0
0x00515D76: add      esp, 0x1c
0x00515D79: mov      dword ptr [esp + 0x24], eax
0x00515D7D: mov      dword ptr [esp + 0x1c], 3
0x00515D85: test     eax, eax
0x00515D87: je       0x515d95
0x00515D89: mov      ecx, dword ptr [edi]
0x00515D8B: push     ecx
0x00515D8C: mov      ecx, eax
0x00515D8E: call     0x570830
0x00515D93: jmp      0x515d97
0x00515D95: xor      eax, eax
0x00515D97: push     0
0x00515D99: push     1
0x00515D9B: push     0
0x00515D9D: push     1
0x00515D9F: mov      dword ptr [esi], eax
0x00515DA1: mov      edx, dword ptr [0xb01b28]
0x00515DA7: push     0
0x00515DA9: push     edx
0x00515DAA: push     0x128
0x00515DAF: mov      dword ptr [esp + 0x38], ebx
0x00515DB3: add      esi, 4
0x00515DB6: call     0x688fe0
0x00515DBB: add      esp, 0x1c
0x00515DBE: mov      dword ptr [esp + 0x24], eax
0x00515DC2: mov      dword ptr [esp + 0x1c], 4
0x00515DCA: test     eax, eax
0x00515DCC: je       0x515dda
0x00515DCE: mov      ecx, dword ptr [edi]
0x00515DD0: push     ecx
0x00515DD1: mov      ecx, eax
0x00515DD3: call     0x5707f0
0x00515DD8: jmp      0x515ddc
0x00515DDA: xor      eax, eax
0x00515DDC: push     0
0x00515DDE: push     1
0x00515DE0: push     0
0x00515DE2: push     1
0x00515DE4: mov      dword ptr [esi], eax
0x00515DE6: mov      edx, dword ptr [0xb01b28]
0x00515DEC: push     0
0x00515DEE: push     edx
0x00515DEF: push     0x114
0x00515DF4: mov      dword ptr [esp + 0x38], ebx
0x00515DF8: add      esi, 4
0x00515DFB: call     0x688fe0
0x00515E00: add      esp, 0x1c
0x00515E03: mov      dword ptr [esp + 0x24], eax
0x00515E07: mov      dword ptr [esp + 0x1c], 5
0x00515E0F: test     eax, eax
0x00515E11: je       0x515e1f
0x00515E13: mov      ecx, dword ptr [edi]
0x00515E15: push     ecx
0x00515E16: mov      ecx, eax
0x00515E18: call     0x570340
0x00515E1D: jmp      0x515e21
0x00515E1F: xor      eax, eax
0x00515E21: push     0
0x00515E23: push     1
0x00515E25: push     0
0x00515E27: push     1
0x00515E29: mov      dword ptr [esi], eax
0x00515E2B: mov      edx, dword ptr [0xb01b28]
0x00515E31: push     0
0x00515E33: push     edx
0x00515E34: push     0x12c
0x00515E39: mov      dword ptr [esp + 0x38], ebx
0x00515E3D: add      esi, 4
0x00515E40: call     0x688fe0
0x00515E45: add      esp, 0x1c
0x00515E48: mov      dword ptr [esp + 0x24], eax
0x00515E4C: mov      dword ptr [esp + 0x1c], 6
0x00515E54: test     eax, eax
0x00515E56: je       0x515e64
0x00515E58: mov      ecx, dword ptr [edi]
0x00515E5A: push     ecx
0x00515E5B: mov      ecx, eax
0x00515E5D: call     0x56fb60
0x00515E62: jmp      0x515e66
0x00515E64: xor      eax, eax
0x00515E66: push     0
0x00515E68: push     1
0x00515E6A: push     0
0x00515E6C: push     1
0x00515E6E: mov      dword ptr [esi], eax
0x00515E70: mov      edx, dword ptr [0xb01b28]
0x00515E76: push     0
0x00515E78: push     edx
0x00515E79: push     0x158
0x00515E7E: mov      dword ptr [esp + 0x38], ebx
0x00515E82: add      esi, 4
0x00515E85: call     0x688fe0
0x00515E8A: add      esp, 0x1c
0x00515E8D: mov      dword ptr [esp + 0x24], eax
0x00515E91: mov      dword ptr [esp + 0x1c], 7
0x00515E99: test     eax, eax
0x00515E9B: je       0x515ea9
0x00515E9D: mov      ecx, dword ptr [edi]
0x00515E9F: push     ecx
0x00515EA0: mov      ecx, eax
0x00515EA2: call     0x56f1b0
0x00515EA7: jmp      0x515eab
0x00515EA9: xor      eax, eax
0x00515EAB: push     0
0x00515EAD: push     1
0x00515EAF: push     0
0x00515EB1: push     1
0x00515EB3: mov      dword ptr [esi], eax
0x00515EB5: mov      edx, dword ptr [0xb01b28]
0x00515EBB: push     0
0x00515EBD: push     edx
0x00515EBE: push     0x128
0x00515EC3: mov      dword ptr [esp + 0x38], ebx
0x00515EC7: add      esi, 4
0x00515ECA: call     0x688fe0
0x00515ECF: add      esp, 0x1c
0x00515ED2: mov      dword ptr [esp + 0x24], eax
0x00515ED6: mov      dword ptr [esp + 0x1c], 8
0x00515EDE: test     eax, eax
0x00515EE0: je       0x515eee
0x00515EE2: mov      ecx, dword ptr [edi]
0x00515EE4: push     ecx
0x00515EE5: mov      ecx, eax
0x00515EE7: call     0x56e900
0x00515EEC: jmp      0x515ef0
0x00515EEE: xor      eax, eax
0x00515EF0: push     0
0x00515EF2: push     1
0x00515EF4: push     0
0x00515EF6: push     1
0x00515EF8: mov      dword ptr [esi], eax
0x00515EFA: mov      edx, dword ptr [0xb01b28]
0x00515F00: push     0
0x00515F02: push     edx
0x00515F03: push     0x118
0x00515F08: mov      dword ptr [esp + 0x38], ebx
0x00515F0C: add      esi, 4
0x00515F0F: call     0x688fe0
0x00515F14: add      esp, 0x1c
0x00515F17: mov      dword ptr [esp + 0x24], eax
0x00515F1B: mov      dword ptr [esp + 0x1c], 9
0x00515F23: test     eax, eax
0x00515F25: je       0x515f33
0x00515F27: mov      ecx, dword ptr [edi]
0x00515F29: push     ecx
0x00515F2A: mov      ecx, eax
0x00515F2C: call     0x56e7a0
0x00515F31: jmp      0x515f35
0x00515F33: xor      eax, eax
0x00515F35: push     0
0x00515F37: push     1
0x00515F39: push     0
0x00515F3B: push     1
0x00515F3D: mov      dword ptr [esi], eax
0x00515F3F: mov      edx, dword ptr [0xb01b28]
0x00515F45: push     0
0x00515F47: push     edx
0x00515F48: push     0x100
0x00515F4D: mov      dword ptr [esp + 0x38], ebx
0x00515F51: add      esi, 4
0x00515F54: call     0x688fe0
0x00515F59: add      esp, 0x1c
0x00515F5C: mov      dword ptr [esp + 0x24], eax
0x00515F60: mov      dword ptr [esp + 0x1c], 0xa
0x00515F68: test     eax, eax
0x00515F6A: je       0x515f78
0x00515F6C: mov      ecx, dword ptr [edi]
0x00515F6E: push     ecx
0x00515F6F: mov      ecx, eax
0x00515F71: call     0x56e1f0
0x00515F76: jmp      0x515f7a
0x00515F78: xor      eax, eax
0x00515F7A: push     0
0x00515F7C: push     1
0x00515F7E: push     0
0x00515F80: push     1
0x00515F82: mov      dword ptr [esi], eax
0x00515F84: mov      edx, dword ptr [0xb01b28]
0x00515F8A: push     0
0x00515F8C: push     edx
0x00515F8D: push     0xfc
0x00515F92: mov      dword ptr [esp + 0x38], ebx
0x00515F96: add      esi, 4
0x00515F99: call     0x688fe0
0x00515F9E: add      esp, 0x1c
0x00515FA1: mov      dword ptr [esp + 0x24], eax
0x00515FA5: mov      dword ptr [esp + 0x1c], 0xb
0x00515FAD: test     eax, eax
0x00515FAF: je       0x515fbd
0x00515FB1: mov      ecx, dword ptr [edi]
0x00515FB3: push     ecx
0x00515FB4: mov      ecx, eax
0x00515FB6: call     0x56e020
0x00515FBB: jmp      0x515fbf
0x00515FBD: xor      eax, eax
0x00515FBF: push     0
0x00515FC1: push     1
0x00515FC3: push     0
0x00515FC5: push     1
0x00515FC7: mov      dword ptr [esi], eax
0x00515FC9: mov      edx, dword ptr [0xb01b28]
0x00515FCF: push     0
0x00515FD1: push     edx
0x00515FD2: push     0x128
0x00515FD7: mov      dword ptr [esp + 0x38], ebx
0x00515FDB: add      esi, 4
0x00515FDE: call     0x688fe0
0x00515FE3: add      esp, 0x1c
0x00515FE6: mov      dword ptr [esp + 0x24], eax
0x00515FEA: mov      dword ptr [esp + 0x1c], 0xc
0x00515FF2: test     eax, eax
0x00515FF4: je       0x516002
0x00515FF6: mov      ecx, dword ptr [edi]
0x00515FF8: push     ecx
0x00515FF9: mov      ecx, eax
0x00515FFB: call     0x56dec0
0x00516000: jmp      0x516004
0x00516002: xor      eax, eax
0x00516004: push     0
0x00516006: push     1
0x00516008: push     0
0x0051600A: push     1
0x0051600C: mov      dword ptr [esi], eax
0x0051600E: mov      edx, dword ptr [0xb01b28]
0x00516014: push     0
0x00516016: push     edx
0x00516017: push     0xf8
0x0051601C: mov      dword ptr [esp + 0x38], ebx
0x00516020: add      esi, 4
0x00516023: call     0x688fe0
0x00516028: add      esp, 0x1c
0x0051602B: mov      dword ptr [esp + 0x24], eax
0x0051602F: mov      dword ptr [esp + 0x1c], 0xd
0x00516037: test     eax, eax
0x00516039: je       0x516047
0x0051603B: mov      ecx, dword ptr [edi]
0x0051603D: push     ecx
0x0051603E: mov      ecx, eax
0x00516040: call     0x56dc40
0x00516045: jmp      0x516049
0x00516047: xor      eax, eax
0x00516049: push     0
0x0051604B: push     1
0x0051604D: push     0
0x0051604F: push     1
0x00516051: mov      dword ptr [esi], eax
0x00516053: mov      edx, dword ptr [0xb01b28]
0x00516059: push     0
0x0051605B: push     edx
0x0051605C: push     0x128
0x00516061: mov      dword ptr [esp + 0x38], ebx
0x00516065: add      esi, 4
0x00516068: call     0x688fe0
0x0051606D: add      esp, 0x1c
0x00516070: mov      dword ptr [esp + 0x24], eax
0x00516074: mov      dword ptr [esp + 0x1c], 0xe
0x0051607C: test     eax, eax
0x0051607E: je       0x51608c
0x00516080: mov      ecx, dword ptr [edi]
0x00516082: push     ecx
0x00516083: mov      ecx, eax
0x00516085: call     0x56dae0
0x0051608A: jmp      0x51608e
0x0051608C: xor      eax, eax
0x0051608E: mov      dword ptr [esi], eax
0x00516090: sub      esi, edi
0x00516092: mov      eax, esi
0x00516094: sar      eax, 2
0x00516097: movzx    edx, al
0x0051609A: mov      byte ptr [edi + 0x84], al
0x005160A0: mov      esi, ebp
0x005160A2: lea      eax, [edi + edx*4 + 4]
0x005160A6: mov      dword ptr [esp + 0x1c], ebx
0x005160AA: cmp      esi, eax
0x005160AC: je       0x5160cb
0x005160AE: mov      ecx, dword ptr [esi]
0x005160B0: test     ecx, ecx
0x005160B2: je       0x5160cb
0x005160B4: call     0x522010
0x005160B9: movzx    ecx, byte ptr [edi + 0x84]
0x005160C0: add      esi, 4
0x005160C3: lea      edx, [edi + ecx*4 + 4]
0x005160C7: cmp      esi, edx
0x005160C9: jne      0x5160ae
0x005160CB: push     edi
0x005160CC: push     0x515c40
0x005160D1: lea      eax, [edi + 0x88]
0x005160D7: mov      dword ptr [edi + 0x90], ebx
0x005160DD: mov      dword ptr [edi + 0x94], ebx
0x005160E3: mov      ecx, dword ptr [0xb1badc]
0x005160E9: push     eax
0x005160EA: push     ecx
0x005160EB: call     0x52d1d0
0x005160F0: mov      edx, dword ptr [0xb1bac0]
0x005160F6: push     edi
0x005160F7: push     0x515bc0
0x005160FC: add      edi, 0x8c
0x00516102: push     edi
0x00516103: push     edx
0x00516104: call     0x52d1d0
0x00516109: add      esp, 0x20
0x0051610C: mov      ecx, dword ptr [esp + 0x14]
0x00516110: mov      dword ptr fs:[0], ecx
0x00516117: pop      ecx
0x00516118: pop      edi
0x00516119: pop      esi
0x0051611A: pop      ebp
0x0051611B: pop      ebx
0x0051611C: add      esp, 0xc
0x0051611F: ret      4
0x00516122: int3     
0x00516123: int3     
0x00516124: int3     
0x00516125: int3     
0x00516126: int3     
0x00516127: int3     
0x00516128: int3     
0x00516129: int3     
0x0051612A: int3     
0x0051612B: int3     
0x0051612C: int3     
0x0051612D: int3     
0x0051612E: int3     
0x0051612F: int3     

--- faTrickListDisableAllBut::execute @ 0x00516130 ---
0x00516130: push     edi
0x00516131: mov      edi, dword ptr [esp + 8]
0x00516135: push     0
0x00516137: push     0x1c
0x00516139: lea      ecx, [edi + 0x4c]
0x0051613C: call     0x499c00
0x00516141: test     eax, eax
0x00516143: je       0x516184
0x00516145: push     0xe40e8f3a
0x0051614A: lea      ecx, [eax + 0x1a8]
0x00516150: call     0x5691a0
0x00516155: test     eax, eax
0x00516157: je       0x516184
0x00516159: push     esi
0x0051615A: lea      esi, [eax + 0x40]
0x0051615D: mov      dword ptr [esi + 0x90], 0
0x00516167: mov      eax, dword ptr [edi + 0x58]
0x0051616A: push     eax
0x0051616B: mov      ecx, esi
0x0051616D: call     0x515750
0x00516172: mov      edx, dword ptr [eax]
0x00516174: mov      ecx, eax
0x00516176: mov      eax, dword ptr [edx]
0x00516178: call     eax
0x0051617A: mov      ecx, dword ptr [eax + 0x14]
0x0051617D: or       dword ptr [esi + 0x90], ecx
0x00516183: pop      esi
0x00516184: pop      edi
0x00516185: ret      
0x00516186: int3     
0x00516187: int3     
0x00516188: int3     
0x00516189: int3     
0x0051618A: int3     
0x0051618B: int3     
0x0051618C: int3     
0x0051618D: int3     
0x0051618E: int3     
0x0051618F: int3     
0x00516190: mov      eax, dword ptr [esp + 4]
0x00516194: test     eax, eax
0x00516196: je       0x5161be
0x00516198: movzx    ecx, byte ptr [eax + 1]
0x0051619C: mov      edx, dword ptr [eax + 4]
0x0051619F: mov      eax, dword ptr [edx + 0x38]
0x005161A2: mov      ecx, dword ptr [eax + ecx*4]
0x005161A5: mov      eax, dword ptr [ecx + 0x28]
0x005161A8: cmp      eax, dword ptr [0x960330] ; [u32=0xABAA7DA9]
0x005161AE: je       0x5161b8
0x005161B0: cmp      eax, dword ptr [0x96033c] ; [u32=0x5A0BC9EA]
0x005161B6: jne      0x5161be
0x005161B8: mov      eax, 1
0x005161BD: ret      
0x005161BE: xor      eax, eax
0x005161C0: ret      
0x005161C1: int3     
0x005161C2: int3     
0x005161C3: int3     
0x005161C4: int3     
0x005161C5: int3     
0x005161C6: int3     
0x005161C7: int3     
0x005161C8: int3     
0x005161C9: int3     
0x005161CA: int3     
0x005161CB: int3     
0x005161CC: int3     
0x005161CD: int3     
0x005161CE: int3     
0x005161CF: int3     
0x005161D0: mov      eax, dword ptr [esp + 4]
0x005161D4: push     esi
0x005161D5: push     eax
0x005161D6: mov      esi, ecx
0x005161D8: call     0x4d5530
0x005161DD: xor      eax, eax
0x005161DF: mov      dword ptr [esi + 0x264], eax
0x005161E5: mov      dword ptr [esi + 0x268], eax
0x005161EB: mov      dword ptr [esi + 0x270], eax
0x005161F1: mov      dword ptr [esi], 0x983c50
0x005161F7: mov      dword ptr [esi + 0x26c], 0xffffffff
0x00516201: mov      dword ptr [esi + 0x278], eax
0x00516207: mov      dword ptr [esi + 0x28c], eax
0x0051620D: mov      dword ptr [esi + 0x2a0], eax
0x00516213: mov      dword ptr [esi + 0x2b4], eax
0x00516219: mov      dword ptr [esi + 0x2c8], eax
0x0051621F: mov      dword ptr [esi + 0x27c], eax
0x00516225: mov      dword ptr [esi + 0x290], eax
0x0051622B: mov      dword ptr [esi + 0x2a4], eax
0x00516231: mov      dword ptr [esi + 0x2b8], eax
0x00516237: mov      dword ptr [esi + 0x2cc], eax
0x0051623D: mov      dword ptr [esi + 0x280], eax
0x00516243: mov      dword ptr [esi + 0x294], eax
0x00516249: mov      dword ptr [esi + 0x2a8], eax
0x0051624F: mov      dword ptr [esi + 0x2bc], eax
0x00516255: mov      dword ptr [esi + 0x2d0], eax
0x0051625B: mov      dword ptr [esi + 0x284], eax
0x00516261: mov      dword ptr [esi + 0x298], eax
0x00516267: mov      dword ptr [esi + 0x2ac], eax
0x0051626D: mov      dword ptr [esi + 0x2c0], eax
0x00516273: mov      dword ptr [esi + 0x2d4], eax
0x00516279: mov      dword ptr [esi + 0x288], eax
0x0051627F: mov      dword ptr [esi + 0x29c], eax
0x00516285: mov      dword ptr [esi + 0x2b0], eax
0x0051628B: mov      dword ptr [esi + 0x2c4], eax
0x00516291: mov      dword ptr [esi + 0x2d8], eax
0x00516297: mov      ecx, 1
0x0051629C: mov      dword ptr [esi + 0x2f0], eax
0x005162A2: mov      dword ptr [esi + 0x2f4], eax
0x005162A8: mov      dword ptr [esi + 0x2f8], eax
0x005162AE: mov      dword ptr [esi + 0x2fc], eax
0x005162B4: mov      dword ptr [esi + 0x300], eax
0x005162BA: mov      dword ptr [esi + 0x304], eax
0x005162C0: mov      dword ptr [esi + 0x308], eax
0x005162C6: mov      dword ptr [esi + 0x30c], eax
0x005162CC: mov      dword ptr [esi + 0x310], eax
0x005162D2: mov      dword ptr [esi + 0x314], eax
0x005162D8: mov      dword ptr [esi + 0x318], eax
0x005162DE: mov      dword ptr [esi + 0x31c], eax
0x005162E4: mov      dword ptr [esi + 0x320], eax
0x005162EA: mov      dword ptr [esi + 0x324], eax
0x005162F0: mov      dword ptr [esi + 0x328], eax
0x005162F6: mov      dword ptr [esi + 0x32c], eax
0x005162FC: mov      dword ptr [esi + 0x330], eax
0x00516302: mov      dword ptr [esi + 0x350], eax
0x00516308: mov      dword ptr [esi + 0x354], eax
0x0051630E: mov      dword ptr [esi + 0x358], eax
0x00516314: mov      dword ptr [esi + 0x35c], eax
0x0051631A: mov      dword ptr [esi + 0x360], eax
0x00516320: mov      dword ptr [esi + 0x364], eax
0x00516326: mov      dword ptr [esi + 0x368], eax
0x0051632C: mov      dword ptr [esi + 0x33c], ecx
0x00516332: mov      dword ptr [esi + 0x340], ecx
0x00516338: mov      dword ptr [esi + 0x344], ecx
0x0051633E: mov      dword ptr [esi + 0x348], ecx
0x00516344: mov      dword ptr [esi + 0x334], ecx
0x0051634A: mov      dword ptr [esi + 0x338], 3
0x00516354: mov      eax, esi
0x00516356: pop      esi
0x00516357: ret      4
0x0051635A: int3     
0x0051635B: int3     
0x0051635C: int3     
0x0051635D: int3     
0x0051635E: int3     
0x0051635F: int3     
0x00516360: mov      eax, dword ptr [ecx + 0x270]
0x00516366: mov      ecx, dword ptr [ecx + 0x358]
0x0051636C: cmp      ecx, 1
0x0051636F: jne      0x516374
0x00516371: add      eax, 4
0x00516374: cmp      ecx, 2
0x00516377: jne      0x51637c
0x00516379: add      eax, 9
0x0051637C: ret      
0x0051637D: int3     
0x0051637E: int3     
0x0051637F: int3     
0x00516380: mov      edx, dword ptr [ecx + 0x358]
0x00516386: mov      eax, dword ptr [ecx + 0x270]
0x0051638C: cmp      edx, 1
0x0051638F: jne      0x516394
0x00516391: add      eax, 4
0x00516394: cmp      edx, 2
0x00516397: jne      0x51639c
0x00516399: add      eax, 9
0x0051639C: mov      ecx, dword ptr [ecx + 0x31c]
0x005163A2: mov      edx, dword ptr [ecx + 8]
0x005163A5: mov      ecx, dword ptr [edx + eax*4]
0x005163A8: mov      edx, dword ptr [ecx + 0x4c]
0x005163AB: mov      eax, dword ptr [esp + 4]
0x005163AF: mov      ecx, dword ptr [ecx + 0x50]
0x005163B2: mov      dword ptr [eax], edx
0x005163B4: mov      dword ptr [eax + 4], ecx
0x005163B7: ret      4
0x005163BA: int3     
0x005163BB: int3     
0x005163BC: int3     
0x005163BD: int3     
0x005163BE: int3     
0x005163BF: int3     
0x005163C0: mov      edx, dword ptr [ecx + 0x358]
0x005163C6: mov      eax, dword ptr [ecx + 0x270]
0x005163CC: cmp      edx, 1
0x005163CF: jne      0x5163d4
0x005163D1: add      eax, 4
0x005163D4: cmp      edx, 2
0x005163D7: jne      0x5163dc
0x005163D9: add      eax, 9
0x005163DC: mov      ecx, dword ptr [ecx + 0x31c]
0x005163E2: mov      edx, dword ptr [ecx + 8]
0x005163E5: mov      eax, dword ptr [edx + eax*4]
0x005163E8: cmp      dword ptr [eax + 0x44], 1
0x005163EC: mov      eax, 3
0x005163F1: je       0x5163f8
0x005163F3: mov      eax, 2
0x005163F8: ret      
0x005163F9: int3     
0x005163FA: int3     
0x005163FB: int3     
0x005163FC: int3     
0x005163FD: int3     
0x005163FE: int3     
0x005163FF: int3     
0x00516400: mov      edx, dword ptr [ecx + 0x358]
0x00516406: mov      eax, dword ptr [ecx + 0x270]
0x0051640C: cmp      edx, 1
0x0051640F: jne      0x516414
0x00516411: add      eax, 4
0x00516414: cmp      edx, 2
0x00516417: jne      0x51641c
0x00516419: add      eax, 9
0x0051641C: mov      ecx, dword ptr [ecx + 0x31c]
0x00516422: mov      edx, dword ptr [ecx + 8]
0x00516425: mov      eax, dword ptr [edx + eax*4]
0x00516428: cmp      dword ptr [eax + 0x44], 1
0x0051642C: jne      0x516434
0x0051642E: mov      eax, 1
0x00516433: ret      
0x00516434: xor      eax, eax
0x00516436: ret      
0x00516437: int3     
0x00516438: int3     
0x00516439: int3     
0x0051643A: int3     
0x0051643B: int3     
0x0051643C: int3     
0x0051643D: int3     
0x0051643E: int3     
0x0051643F: int3     
0x00516440: mov      edx, dword ptr [ecx + 0x358]
0x00516446: mov      eax, dword ptr [ecx + 0x270]
0x0051644C: cmp      edx, 1
0x0051644F: jne      0x516454
0x00516451: add      eax, 4
0x00516454: cmp      edx, 2
0x00516457: jne      0x51645c
0x00516459: add      eax, 9
0x0051645C: mov      ecx, dword ptr [ecx + 0x31c]
0x00516462: mov      edx, dword ptr [ecx + 8]
0x00516465: mov      eax, dword ptr [edx + eax*4]
0x00516468: cmp      dword ptr [eax + 0x44], 1
0x0051646C: mov      eax, 3
0x00516471: je       0x516478
0x00516473: mov      eax, 2
0x00516478: ret      
0x00516479: int3     
0x0051647A: int3     
0x0051647B: int3     
0x0051647C: int3     
0x0051647D: int3     
0x0051647E: int3     
0x0051647F: int3     
0x00516480: mov      edx, dword ptr [ecx + 0x358]
0x00516486: mov      eax, dword ptr [ecx + 0x270]
0x0051648C: cmp      edx, 1
0x0051648F: jne      0x516494
0x00516491: add      eax, 4
0x00516494: cmp      edx, 2
0x00516497: jne      0x51649c
0x00516499: add      eax, 9
0x0051649C: mov      edx, dword ptr [ecx + 0x31c]
0x005164A2: mov      edx, dword ptr [edx + 8]
0x005164A5: mov      eax, dword ptr [edx + eax*4]
0x005164A8: cmp      dword ptr [eax + 0x44], 1
0x005164AC: je       0x5164d3
0x005164AE: mov      eax, dword ptr [ecx + 0x334]
0x005164B4: test     eax, eax
0x005164B6: jne      0x5164c3
0x005164B8: mov      dword ptr [ecx + 0x334], 1
0x005164C2: ret      
0x005164C3: cmp      eax, 1
0x005164C6: jne      0x5164f8
0x005164C8: mov      dword ptr [ecx + 0x334], 0
0x005164D2: ret      
0x005164D3: mov      eax, dword ptr [ecx + 0x338]
0x005164D9: cmp      eax, 3
0x005164DC: jne      0x5164e9
0x005164DE: mov      dword ptr [ecx + 0x338], 2
0x005164E8: ret      
0x005164E9: cmp      eax, 2
0x005164EC: jne      0x5164f8
0x005164EE: mov      dword ptr [ecx + 0x338], 3
0x005164F8: ret      
0x005164F9: int3     
0x005164FA: int3     
0x005164FB: int3     
0x005164FC: int3     
0x005164FD: int3     
0x005164FE: int3     
0x005164FF: int3     