=== CModeMultiDeathMatch (0x005341E0 .. 0x00535350) ===

--- CModeMultiDeathMatch::vfunc_1 @ 0x005341E0 ---
0x005341E0: jmp      0x571ce0
0x005341E5: int3     
0x005341E6: int3     
0x005341E7: int3     
0x005341E8: int3     
0x005341E9: int3     
0x005341EA: int3     
0x005341EB: int3     
0x005341EC: int3     
0x005341ED: int3     
0x005341EE: int3     
0x005341EF: int3     

--- CModeMultiDeathMatch::vfunc_2 @ 0x005341F0 ---
0x005341F0: push     ebx
0x005341F1: push     esi
0x005341F2: push     edi
0x005341F3: mov      esi, ecx
0x005341F5: call     0x571c80
0x005341FA: mov      eax, dword ptr [esi + 8]
0x005341FD: mov      ebx, 1
0x00534202: test     eax, eax
0x00534204: je       0x534321
0x0053420A: cmp      dword ptr [esi + 0x134], 0
0x00534211: jne      0x53425a
0x00534213: cmp      dword ptr [esi + 0x168], 0x3c
0x0053421A: jle      0x53425a
0x0053421C: fld      dword ptr [eax + 0x164]
0x00534222: fcomp    qword ptr [0x983478] ; [f32=0, f64=60, u32=0x00000000]
0x00534228: fnstsw   ax
0x0053422A: test     ah, 0x41
0x0053422D: jp       0x53425a
0x0053422F: fldz     
0x00534231: mov      edx, dword ptr [esi + 0x12c]
0x00534237: mov      ecx, dword ptr [esi + 0x1c]
0x0053423A: fstp     dword ptr [esi + 0x18]
0x0053423D: mov      dword ptr [esi + 0x134], ebx
0x00534243: mov      edx, dword ptr [edx + 0x1c]
0x00534246: mov      eax, dword ptr [ecx]
0x00534248: mov      eax, dword ptr [eax + 0x1a8]
0x0053424E: push     0
0x00534250: push     edx
0x00534251: mov      edx, dword ptr [esi + 0x130]
0x00534257: push     edx
0x00534258: call     eax
0x0053425A: cmp      dword ptr [esi + 0x138], 0
0x00534261: jne      0x5342d7
0x00534263: fild     dword ptr [esi + 0x168]
0x00534269: mov      ecx, dword ptr [esi + 8]
0x0053426C: fmul     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x00534272: fld      dword ptr [ecx + 0x164]
0x00534278: fcomp    st(1)
0x0053427A: fnstsw   ax
0x0053427C: test     ah, 0x41
0x0053427F: jp       0x5342d5
0x00534281: fldz     
0x00534283: mov      dword ptr [esi + 0x138], ebx
0x00534289: fstp     dword ptr [esi + 0x18]
0x0053428C: lea      edi, [esi + 0x16c]
0x00534292: call     0x8ebdc0
0x00534297: push     ebx
0x00534298: push     ebx
0x00534299: push     0x3e8
0x0053429E: push     0
0x005342A0: push     edi
0x005342A1: mov      dword ptr [edi], eax
0x005342A3: mov      ecx, dword ptr [0xb761e0]
0x005342A9: push     0x98a02c
0x005342AE: call     0x706620
0x005342B3: mov      eax, dword ptr [esi + 0x12c]
0x005342B9: mov      eax, dword ptr [eax + 0x24]
0x005342BC: mov      ecx, dword ptr [esi + 0x1c]
0x005342BF: mov      edx, dword ptr [ecx]
0x005342C1: mov      edx, dword ptr [edx + 0x1a8]
0x005342C7: push     0
0x005342C9: push     eax
0x005342CA: mov      eax, dword ptr [esi + 0x130]
0x005342D0: push     eax
0x005342D1: call     edx
0x005342D3: jmp      0x5342d7
0x005342D5: fstp     st(0)
0x005342D7: cmp      dword ptr [esi + 0x13c], 0
0x005342DE: jne      0x534321
0x005342E0: mov      eax, dword ptr [esi + 8]
0x005342E3: fld      dword ptr [0x966e84] ; [f32=10, u32=0x41200000]
0x005342E9: fcomp    dword ptr [eax + 0x164]
0x005342EF: fnstsw   ax
0x005342F1: test     ah, 1
0x005342F4: jne      0x534321
0x005342F6: fldz     
0x005342F8: mov      eax, dword ptr [esi + 0x12c]
0x005342FE: mov      ecx, dword ptr [esi + 0x1c]
0x00534301: fstp     dword ptr [esi + 0x18]
0x00534304: mov      dword ptr [esi + 0x13c], ebx
0x0053430A: mov      eax, dword ptr [eax + 0x2c]
0x0053430D: mov      edx, dword ptr [ecx]
0x0053430F: mov      edx, dword ptr [edx + 0x1a8]
0x00534315: push     0
0x00534317: push     eax
0x00534318: mov      eax, dword ptr [esi + 0x130]
0x0053431E: push     eax
0x0053431F: call     edx
0x00534321: mov      eax, dword ptr [esi + 0x164]
0x00534327: test     eax, eax
0x00534329: je       0x53442f
0x0053432F: cmp      dword ptr [esi + 0x140], 0
0x00534336: jne      0x534374
0x00534338: cmp      eax, 0xa
0x0053433B: jle      0x534374
0x0053433D: mov      ecx, dword ptr [esi + 0x30]
0x00534340: sub      eax, dword ptr [esi + ecx*4 + 0x40]
0x00534344: cmp      eax, 0xa
0x00534347: jg       0x534374
0x00534349: fldz     
0x0053434B: mov      eax, dword ptr [esi + 0x12c]
0x00534351: mov      ecx, dword ptr [esi + 0x1c]
0x00534354: fstp     dword ptr [esi + 0x18]
0x00534357: mov      dword ptr [esi + 0x140], ebx
0x0053435D: mov      eax, dword ptr [eax + 0x34]
0x00534360: mov      edx, dword ptr [ecx]
0x00534362: mov      edx, dword ptr [edx + 0x1a8]
0x00534368: push     0
0x0053436A: push     eax
0x0053436B: mov      eax, dword ptr [esi + 0x130]
0x00534371: push     eax
0x00534372: call     edx
0x00534374: cmp      dword ptr [esi + 0x144], 0
0x0053437B: jne      0x5343e4
0x0053437D: mov      eax, dword ptr [esi + 0x30]
0x00534380: mov      ecx, dword ptr [esi + 0x164]
0x00534386: lea      edi, [esi + eax*4 + 0x40]
0x0053438A: mov      eax, ecx
0x0053438C: cdq      
0x0053438D: sub      eax, edx
0x0053438F: sar      eax, 1
0x00534391: cmp      dword ptr [edi], eax
0x00534393: jl       0x5343e4
0x00534395: fldz     
0x00534397: push     ebx
0x00534398: push     ebx
0x00534399: fstp     dword ptr [esi + 0x18]
0x0053439C: push     0x3e8
0x005343A1: mov      dword ptr [esi + 0x144], ebx
0x005343A7: sub      ecx, dword ptr [edi]
0x005343A9: lea      eax, [esi + 0x170]
0x005343AF: push     0
0x005343B1: push     eax
0x005343B2: mov      dword ptr [eax], ecx
0x005343B4: mov      ecx, dword ptr [0xb761e0]
0x005343BA: push     0x98a040
0x005343BF: call     0x706620
0x005343C4: mov      eax, dword ptr [esi + 0x12c]
0x005343CA: mov      eax, dword ptr [eax + 0x3c]
0x005343CD: mov      ecx, dword ptr [esi + 0x1c]
0x005343D0: mov      edx, dword ptr [ecx]
0x005343D2: mov      edx, dword ptr [edx + 0x1a8]
0x005343D8: push     0
0x005343DA: push     eax
0x005343DB: mov      eax, dword ptr [esi + 0x130]
0x005343E1: push     eax
0x005343E2: call     edx
0x005343E4: cmp      dword ptr [esi + 0x148], 0
0x005343EB: jne      0x53442f
0x005343ED: mov      eax, dword ptr [esi + 0x164]
0x005343F3: cmp      eax, 0xa
0x005343F6: jle      0x53442f
0x005343F8: mov      ecx, dword ptr [esi + 0x30]
0x005343FB: sub      eax, dword ptr [esi + ecx*4 + 0x40]
0x005343FF: cmp      eax, 5
0x00534402: jg       0x53442f
0x00534404: fldz     
0x00534406: mov      eax, dword ptr [esi + 0x12c]
0x0053440C: mov      ecx, dword ptr [esi + 0x1c]
0x0053440F: fstp     dword ptr [esi + 0x18]
0x00534412: mov      dword ptr [esi + 0x148], ebx
0x00534418: mov      eax, dword ptr [eax + 0x44]
0x0053441B: mov      edx, dword ptr [ecx]
0x0053441D: mov      edx, dword ptr [edx + 0x1a8]
0x00534423: push     0
0x00534425: push     eax
0x00534426: mov      eax, dword ptr [esi + 0x130]
0x0053442C: push     eax
0x0053442D: call     edx
0x0053442F: fldz     
0x00534431: fcomp    dword ptr [esi + 0x18]
0x00534434: fnstsw   ax
0x00534436: test     ah, 0x44
0x00534439: jp       0x534447
0x0053443B: mov      ecx, dword ptr [esi + 0x1c]
0x0053443E: push     ebx
0x0053443F: push     ebx
0x00534440: push     ebx
0x00534441: push     ebx
0x00534442: call     0x7ba3e0
0x00534447: pop      edi
0x00534448: pop      esi
0x00534449: pop      ebx
0x0053444A: ret      
0x0053444B: int3     
0x0053444C: int3     
0x0053444D: int3     
0x0053444E: int3     
0x0053444F: int3     
0x00534450: mov      eax, dword ptr [esp + 0x10]
0x00534454: mov      ecx, dword ptr [eax + 0x1b0]
0x0053445A: test     ecx, ecx
0x0053445C: je       0x534465
0x0053445E: push     1
0x00534460: call     0x50f4c0
0x00534465: mov      eax, dword ptr [esp + 0xc]
0x00534469: mov      byte ptr [eax + 0x64], 4
0x0053446D: mov      byte ptr [eax + 0x65], 1
0x00534471: mov      byte ptr [eax + 0x66], 2
0x00534475: mov      byte ptr [eax + 0x67], 0
0x00534479: ret      
0x0053447A: int3     
0x0053447B: int3     
0x0053447C: int3     
0x0053447D: int3     
0x0053447E: int3     
0x0053447F: int3     

--- CModeMultiDeathMatch::ctor @ 0x00534480 ---
0x00534480: push     -1
0x00534482: push     0x9452c8
0x00534487: mov      eax, dword ptr fs:[0]
0x0053448D: push     eax
0x0053448E: push     ecx
0x0053448F: push     ebx
0x00534490: push     esi
0x00534491: push     edi
0x00534492: mov      eax, dword ptr [0xb089c8]
0x00534497: xor      eax, esp
0x00534499: push     eax
0x0053449A: lea      eax, [esp + 0x14]
0x0053449E: mov      dword ptr fs:[0], eax
0x005344A4: mov      esi, ecx
0x005344A6: mov      dword ptr [esp + 0x10], esi
0x005344AA: mov      eax, dword ptr [esp + 0x24]
0x005344AE: push     eax
0x005344AF: call     0x506ab0
0x005344B4: xor      ebx, ebx
0x005344B6: lea      edi, [esi + 0x1a8]
0x005344BC: mov      ecx, edi
0x005344BE: mov      dword ptr [esp + 0x1c], ebx
0x005344C2: call     0x571a30
0x005344C7: mov      dword ptr [esi], 0x98a090
0x005344CD: mov      dword ptr [edi], 0x98a07c
0x005344D3: mov      dword ptr [esi + 0x30c], ebx
0x005344D9: mov      dword ptr [esi + 0x310], ebx
0x005344DF: mov      dword ptr [esi + 0x1b0], ebx
0x005344E5: mov      dword ptr [esi + 0x2d8], ebx
0x005344EB: mov      dword ptr [esi + 0x1c4], ebx
0x005344F1: mov      eax, esi
0x005344F3: mov      ecx, dword ptr [esp + 0x14]
0x005344F7: mov      dword ptr fs:[0], ecx
0x005344FE: pop      ecx
0x005344FF: pop      edi
0x00534500: pop      esi
0x00534501: pop      ebx
0x00534502: add      esp, 0x10
0x00534505: ret      4
0x00534508: int3     
0x00534509: int3     
0x0053450A: int3     
0x0053450B: int3     
0x0053450C: int3     
0x0053450D: int3     
0x0053450E: int3     
0x0053450F: int3     
0x00534510: push     -1
0x00534512: push     0x9452f9
0x00534517: mov      eax, dword ptr fs:[0]
0x0053451D: push     eax
0x0053451E: push     ecx
0x0053451F: push     esi
0x00534520: push     edi
0x00534521: mov      eax, dword ptr [0xb089c8]
0x00534526: xor      eax, esp
0x00534528: push     eax
0x00534529: lea      eax, [esp + 0x10]
0x0053452D: mov      dword ptr fs:[0], eax
0x00534533: mov      esi, ecx
0x00534535: mov      dword ptr [esp + 0xc], esi
0x00534539: lea      edi, [esi + 0x1a8]
0x0053453F: mov      dword ptr [esi], 0x98a090
0x00534545: mov      dword ptr [edi], 0x98a07c
0x0053454B: mov      ecx, dword ptr [0xb761e0]
0x00534551: push     0x989fd4
0x00534556: mov      dword ptr [esp + 0x1c], 1
0x0053455E: call     0x7063e0
0x00534563: mov      ecx, dword ptr [0xb761e0]
0x00534569: push     0x989fe8
0x0053456E: call     0x7063e0
0x00534573: mov      ecx, dword ptr [0xb761e0]
0x00534579: push     0x989ffc
0x0053457E: call     0x7063e0
0x00534583: mov      ecx, dword ptr [0xb761e0]
0x00534589: push     0x98a010
0x0053458E: call     0x7063e0
0x00534593: mov      ecx, edi
0x00534595: mov      byte ptr [esp + 0x18], 0
0x0053459A: call     0x571bd0
0x0053459F: mov      ecx, esi
0x005345A1: mov      dword ptr [esp + 0x18], 0xffffffff
0x005345A9: call     0x506b40
0x005345AE: mov      ecx, dword ptr [esp + 0x10]
0x005345B2: mov      dword ptr fs:[0], ecx
0x005345B9: pop      ecx
0x005345BA: pop      edi
0x005345BB: pop      esi
0x005345BC: add      esp, 0x10
0x005345BF: ret      

--- CModeMultiDeathMatch::vfunc_3 @ 0x005345C0 ---
0x005345C0: push     esi
0x005345C1: mov      esi, ecx
0x005345C3: mov      ecx, dword ptr [esi + 0x54]
0x005345C6: mov      edx, dword ptr [esi + ecx*4 + 0x60]
0x005345CA: mov      eax, dword ptr [esi + 0x50]
0x005345CD: add      edx, 0xa
0x005345D0: cmp      dword ptr [esi + eax*4 + 0x60], edx
0x005345D4: jl       0x534611
0x005345D6: mov      ecx, dword ptr [esi + ecx*4 + 0x40]
0x005345DA: add      ecx, 0xa
0x005345DD: cmp      dword ptr [esi + eax*4 + 0x40], ecx
0x005345E1: jge      0x534611
0x005345E3: mov      edx, dword ptr [esi + eax*4 + 0x80]
0x005345EA: mov      eax, dword ptr [edx + 8]
0x005345ED: lea      ecx, [esi + 0x14c]
0x005345F3: push     ecx
0x005345F4: mov      dword ptr [ecx], eax
0x005345F6: mov      dword ptr [esi + 0x150], 0xe
0x00534600: mov      ecx, dword ptr [0xb1bb3c]
0x00534606: push     0
0x00534608: push     ecx
0x00534609: call     0x52d190
0x0053460E: add      esp, 0xc
0x00534611: mov      eax, dword ptr [esi + 0x28]
0x00534614: mov      edx, 3
0x00534619: push     edi
0x0053461A: cmp      eax, edx
0x0053461C: jne      0x534626
0x0053461E: mov      eax, dword ptr [esi + 0x58]
0x00534621: mov      ecx, dword ptr [esi + 0x54]
0x00534624: jmp      0x534631
0x00534626: cmp      eax, 4
0x00534629: jne      0x534675
0x0053462B: mov      eax, dword ptr [esi + 0x5c]
0x0053462E: mov      ecx, dword ptr [esi + 0x58]
0x00534631: mov      edi, dword ptr [esi + eax*4 + 0x60]
0x00534635: add      edi, 0xa
0x00534638: cmp      dword ptr [esi + ecx*4 + 0x60], edi
0x0053463C: jl       0x534675
0x0053463E: mov      edi, dword ptr [esi + eax*4 + 0x40]
0x00534642: add      edi, 0xa
0x00534645: cmp      dword ptr [esi + ecx*4 + 0x40], edi
0x00534649: jge      0x534675
0x0053464B: mov      eax, dword ptr [esi + eax*4 + 0x80]
0x00534652: mov      eax, dword ptr [eax + 8]
0x00534655: lea      ecx, [esi + 0x14c]
0x0053465B: push     ecx
0x0053465C: mov      dword ptr [ecx], eax
0x0053465E: mov      dword ptr [esi + 0x150], edx
0x00534664: mov      ecx, dword ptr [0xb1bb40]
0x0053466A: push     0
0x0053466C: push     ecx
0x0053466D: call     0x52d190
0x00534672: add      esp, 0xc
0x00534675: cmp      dword ptr [esi + 0x9c], 0
0x0053467C: pop      edi
0x0053467D: jne      0x5346b5
0x0053467F: mov      eax, dword ptr [esi + 8]
0x00534682: test     eax, eax
0x00534684: je       0x5346b5
0x00534686: fld      dword ptr [eax + 0x164]
0x0053468C: fcomp    qword ptr [0x983478] ; [f32=0, f64=60, u32=0x00000000]
0x00534692: fnstsw   ax
0x00534694: test     ah, 0x41
0x00534697: jp       0x5346b5
0x00534699: mov      edx, dword ptr [esi + 0x60]
0x0053469C: sub      edx, dword ptr [esi + 0x64]
0x0053469F: cmp      edx, 2
0x005346A2: jg       0x5346b5
0x005346A4: mov      eax, 1
0x005346A9: mov      dword ptr [esi + 0xa0], eax
0x005346AF: mov      dword ptr [esi + 0x9c], eax
0x005346B5: mov      ecx, esi
0x005346B7: pop      esi
0x005346B8: jmp      0x571e30
0x005346BD: int3     
0x005346BE: int3     
0x005346BF: int3     
0x005346C0: sub      esp, 0x10
0x005346C3: cmp      dword ptr [0xb49c64], 0
0x005346CA: push     esi
0x005346CB: mov      esi, dword ptr [esp + 0x20]
0x005346CF: push     edi
0x005346D0: jne      0x5346f7
0x005346D2: mov      eax, dword ptr [esi + 0x3c]
0x005346D5: test     eax, eax
0x005346D7: je       0x5346e5
0x005346D9: mov      dword ptr [0xafce74], 0
0x005346E3: jmp      0x5346f2
0x005346E5: mov      eax, dword ptr [esi + 0x40]
0x005346E8: mov      dword ptr [0xafce74], 1
0x005346F2: mov      dword ptr [0xb49c68], eax
0x005346F7: mov      eax, dword ptr [0xb1aa7c]
0x005346FC: mov      ecx, dword ptr [eax + 0xc]
0x005346FF: push     0x2c
0x00534701: call     0x4c2bc0
0x00534706: mov      edi, eax
0x00534708: test     edi, edi
0x0053470A: je       0x53480f
0x00534710: lea      ecx, [esp + 8]
0x00534714: test     cl, 0x7f
0x00534717: je       0x534728
0x00534719: mov      edx, ecx
0x0053471B: push     8
0x0053471D: push     edx
0x0053471E: call     0x6a9700
0x00534723: add      esp, 8
0x00534726: jmp      0x534732
0x00534728: xor      eax, eax
0x0053472A: mov      dword ptr [esp + 8], eax
0x0053472E: mov      dword ptr [esp + 0xc], eax
0x00534732: mov      edx, dword ptr [0xb1bba0]
0x00534738: mov      eax, dword ptr [esi]
0x0053473A: push     ebx
0x0053473B: push     ebp
0x0053473C: lea      ecx, [esp + 0x10]
0x00534740: push     ecx
0x00534741: push     0
0x00534743: push     edx
0x00534744: mov      dword ptr [esp + 0x1c], eax
0x00534748: mov      dword ptr [esp + 0x20], 0x64
0x00534750: call     0x52d190
0x00534755: mov      eax, dword ptr [0xb1aa7c]
0x0053475A: mov      ecx, dword ptr [eax + 0xc]
0x0053475D: add      esp, 0xc
0x00534760: push     0x2c
0x00534762: call     0x4c2bc0
0x00534767: mov      ecx, eax
0x00534769: call     0x55b250
0x0053476E: mov      ebx, dword ptr [esp + 0x30]
0x00534772: mov      ecx, dword ptr [ebx + 0x2d4]
0x00534778: mov      edx, dword ptr [ecx]
0x0053477A: push     edx
0x0053477B: call     0x4e8fc0
0x00534780: mov      edx, dword ptr [ebx + 0x2d4]
0x00534786: mov      esi, eax
0x00534788: add      esp, 4
0x0053478B: mov      dword ptr [ebx + 0x2d8], esi
0x00534791: mov      ecx, dword ptr [edi + 0x268]
0x00534797: mov      edx, dword ptr [edx + 4]
0x0053479A: mov      eax, dword ptr [ecx]
0x0053479C: mov      eax, dword ptr [eax + 0x1a8]
0x005347A2: push     0
0x005347A4: push     edx
0x005347A5: push     esi
0x005347A6: call     eax
0x005347A8: mov      ecx, dword ptr [0xb1aa7c]
0x005347AE: mov      ecx, dword ptr [ecx + 0xc]
0x005347B1: push     0x38
0x005347B3: call     0x4c2bc0
0x005347B8: mov      ebp, dword ptr [edi + 0x26c]
0x005347BE: mov      edi, dword ptr [ebp]
0x005347C1: push     0
0x005347C3: lea      edx, [esp + 0x1c]
0x005347C7: push     edx
0x005347C8: mov      ecx, eax
0x005347CA: add      edi, 0x1a8
0x005347D0: call     0x516380
0x005347D5: mov      eax, dword ptr [eax + 4]
0x005347D8: mov      edx, dword ptr [edi]
0x005347DA: push     eax
0x005347DB: push     esi
0x005347DC: mov      ecx, ebp
0x005347DE: call     edx
0x005347E0: mov      eax, dword ptr [0xafce74]
0x005347E5: test     eax, eax
0x005347E7: jne      0x5347fc
0x005347E9: mov      eax, dword ptr [0xb49c68]
0x005347EE: pop      ebp
0x005347EF: mov      dword ptr [ebx + 0x30c], eax
0x005347F5: pop      ebx
0x005347F6: pop      edi
0x005347F7: pop      esi
0x005347F8: add      esp, 0x10
0x005347FB: ret      
0x005347FC: cmp      eax, 1
0x005347FF: jne      0x53480d
0x00534801: mov      ecx, dword ptr [0xb49c68]
0x00534807: mov      dword ptr [ebx + 0x310], ecx
0x0053480D: pop      ebp
0x0053480E: pop      ebx
0x0053480F: pop      edi
0x00534810: pop      esi
0x00534811: add      esp, 0x10
0x00534814: ret      
0x00534815: int3     
0x00534816: int3     
0x00534817: int3     
0x00534818: int3     
0x00534819: int3     
0x0053481A: int3     
0x0053481B: int3     
0x0053481C: int3     
0x0053481D: int3     
0x0053481E: int3     
0x0053481F: int3     

--- CModeMultiDeathMatch::vfunc_4 @ 0x00534820 ---
0x00534820: push     esi
0x00534821: mov      esi, ecx
0x00534823: cmp      dword ptr [esi + 0xa0], 1
0x0053482A: jne      0x5348d4
0x00534830: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00534836: fcomp    dword ptr [esi + 0x18]
0x00534839: fnstsw   ax
0x0053483B: test     ah, 0x44
0x0053483E: jp       0x5348d4
0x00534844: mov      eax, dword ptr [0xb01b28]
0x00534849: push     0x98a054
0x0053484E: push     0
0x00534850: push     eax
0x00534851: push     0x80000
0x00534856: push     0
0x00534858: push     7
0x0053485A: push     0
0x0053485C: push     1
0x0053485E: push     0xff
0x00534863: call     0x681de0
0x00534868: mov      ecx, dword ptr [esi + 0x1c]
0x0053486B: mov      edx, dword ptr [ecx]
0x0053486D: mov      eax, dword ptr [esi + 0x130]
0x00534873: mov      edx, dword ptr [edx + 0x1a8]
0x00534879: add      esp, 0x24
0x0053487C: push     0
0x0053487E: push     0x4018172a
0x00534883: push     eax
0x00534884: call     edx
0x00534886: fldz     
0x00534888: mov      eax, dword ptr [esi - 0x1a0]
0x0053488E: fstp     dword ptr [esi + 0x18]
0x00534891: movzx    ecx, byte ptr [eax + 1]
0x00534895: mov      edx, dword ptr [eax + 4]
0x00534898: mov      eax, dword ptr [edx + 0x28]
0x0053489B: mov      ecx, dword ptr [eax + ecx*4]
0x0053489E: mov      edx, dword ptr [ecx + 0x114]
0x005348A4: push     0
0x005348A6: add      edx, 0x13e0
0x005348AC: push     edx
0x005348AD: push     0x98a06c
0x005348B2: call     0x5710c0
0x005348B7: mov      ecx, dword ptr [esi + 0x1c]
0x005348BA: add      esp, 0xc
0x005348BD: push     1
0x005348BF: push     1
0x005348C1: push     1
0x005348C3: push     1
0x005348C5: call     0x7ba3e0
0x005348CA: mov      dword ptr [esi + 0xa0], 0
0x005348D4: pop      esi
0x005348D5: ret      
0x005348D6: int3     
0x005348D7: int3     
0x005348D8: int3     
0x005348D9: int3     
0x005348DA: int3     
0x005348DB: int3     
0x005348DC: int3     
0x005348DD: int3     
0x005348DE: int3     
0x005348DF: int3     

--- CModeMultiDeathMatch::vfunc_48 @ 0x005348E0 ---
0x005348E0: push     -1
0x005348E2: push     0x94532a
0x005348E7: mov      eax, dword ptr fs:[0]
0x005348ED: push     eax
0x005348EE: sub      esp, 0x448
0x005348F4: mov      eax, dword ptr [0xb089c8]
0x005348F9: xor      eax, esp
0x005348FB: mov      dword ptr [esp + 0x444], eax
0x00534902: push     ebx
0x00534903: push     ebp
0x00534904: push     esi
0x00534905: push     edi
0x00534906: mov      eax, dword ptr [0xb089c8]
0x0053490B: xor      eax, esp
0x0053490D: push     eax
0x0053490E: lea      eax, [esp + 0x45c]
0x00534915: mov      dword ptr fs:[0], eax
0x0053491B: mov      esi, ecx
0x0053491D: mov      eax, dword ptr [esi + 0x1a8]
0x00534923: mov      edx, dword ptr [eax + 4]
0x00534926: lea      edi, [esi + 0x1a8]
0x0053492C: mov      ecx, edi
0x0053492E: call     edx
0x00534930: mov      eax, dword ptr [edi]
0x00534932: mov      edx, dword ptr [eax + 8]
0x00534935: mov      ecx, edi
0x00534937: call     edx
0x00534939: mov      eax, dword ptr [edi]
0x0053493B: mov      edx, dword ptr [eax + 0xc]
0x0053493E: mov      ecx, edi
0x00534940: call     edx
0x00534942: mov      eax, dword ptr [edi]
0x00534944: mov      edx, dword ptr [eax + 0x10]
0x00534947: mov      ecx, edi
0x00534949: call     edx
0x0053494B: mov      ecx, dword ptr [esi + 0x1b0]
0x00534951: xor      ebx, ebx
0x00534953: cmp      ecx, ebx
0x00534955: je       0x534ae7
0x0053495B: fld      dword ptr [ecx + 0x164]
0x00534961: fstp     dword ptr [esp + 0x14]
0x00534965: fldz     
0x00534967: fcomp    dword ptr [esp + 0x14]
0x0053496B: fnstsw   ax
0x0053496D: test     ah, 1
0x00534970: jne      0x534ae7
0x00534976: mov      ebp, 1
0x0053497B: push     ebp
0x0053497C: call     0x50f4c0
0x00534981: mov      eax, dword ptr [esi + 8]
0x00534984: movzx    ecx, byte ptr [eax + 1]
0x00534988: mov      edx, dword ptr [eax + 4]
0x0053498B: mov      eax, dword ptr [edx + 0x28]
0x0053498E: mov      eax, dword ptr [eax + ecx*4]
0x00534991: mov      ecx, dword ptr [0x95f860] ; [u32=0x9A3BD65C]
0x00534997: mov      eax, dword ptr [eax + 0x114]
0x0053499D: push     ebx
0x0053499E: push     ebx
0x0053499F: push     ecx
0x005349A0: mov      ecx, eax
0x005349A2: call     0x7cd3c0
0x005349A7: movzx    ecx, byte ptr [eax + 1]
0x005349AB: mov      eax, dword ptr [eax + 4]
0x005349AE: lea      edx, [ecx + ecx*8]
0x005349B1: mov      ecx, dword ptr [eax + 0x14]
0x005349B4: lea      eax, [ecx + edx*4]
0x005349B7: mov      edx, 0x1f
0x005349BC: cmp      byte ptr [eax + 0x14], dl
0x005349BF: jne      0x5349c6
0x005349C1: mov      edi, dword ptr [eax + 4]
0x005349C4: jmp      0x5349f8
0x005349C6: cmp      byte ptr [eax + 0x15], dl
0x005349C9: jne      0x5349d0
0x005349CB: mov      edi, dword ptr [eax + 8]
0x005349CE: jmp      0x5349f8
0x005349D0: cmp      byte ptr [eax + 0x16], dl
0x005349D3: jne      0x5349da
0x005349D5: mov      edi, dword ptr [eax + 0xc]
0x005349D8: jmp      0x5349f8
0x005349DA: cmp      byte ptr [eax + 0x17], dl
0x005349DD: jne      0x5349e4
0x005349DF: mov      edi, dword ptr [eax + 0x10]
0x005349E2: jmp      0x5349f8
0x005349E4: mov      eax, dword ptr [eax]
0x005349E6: cmp      eax, ebx
0x005349E8: je       0x5349f6
0x005349EA: push     edx
0x005349EB: mov      ecx, eax
0x005349ED: call     0x461400
0x005349F2: mov      edi, eax
0x005349F4: jmp      0x5349f8
0x005349F6: xor      edi, edi
0x005349F8: mov      ecx, dword ptr [esi + 8]
0x005349FB: push     ebp
0x005349FC: push     ebp
0x005349FD: push     ebx
0x005349FE: push     ebx
0x005349FF: call     0x7f8950
0x00534A04: mov      ecx, edi
0x00534A06: call     0x5283e0
0x00534A0B: mov      esi, dword ptr [esi + 8]
0x00534A0E: mov      eax, dword ptr [esi + 4]
0x00534A11: movzx    edx, byte ptr [esi + 1]
0x00534A15: mov      ecx, dword ptr [eax + 0x28]
0x00534A18: mov      eax, dword ptr [ecx + edx*4]
0x00534A1B: cmp      eax, ebx
0x00534A1D: je       0x534a27
0x00534A1F: mov      eax, dword ptr [eax + 0x114]
0x00534A25: jmp      0x534a29
0x00534A27: xor      eax, eax
0x00534A29: mov      edx, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00534A2F: push     eax
0x00534A30: push     edx
0x00534A31: lea      ecx, [esp + 0x20]
0x00534A35: call     0x509b10
0x00534A3A: lea      ecx, [esp + 0x18]
0x00534A3E: mov      dword ptr [esp + 0x464], ebx
0x00534A45: call     0x509ba0
0x00534A4A: cmp      eax, ebx
0x00534A4C: je       0x534ade
0x00534A52: mov      ebx, 0x1c
0x00534A57: jmp      0x534a60
0x00534A59: lea      esp, [esp]
0x00534A60: movzx    ecx, byte ptr [eax + 1]
0x00534A64: mov      eax, dword ptr [eax + 4]
0x00534A67: mov      edx, dword ptr [eax + 8]
0x00534A6A: test     dword ptr [edx + ecx*4], 0x40000
0x00534A71: je       0x534ab5
0x00534A73: mov      edx, dword ptr [eax + 0x14]
0x00534A76: lea      ecx, [ecx + ecx*8]
0x00534A79: cmp      byte ptr [edx + ecx*4 + 0x14], bl
0x00534A7D: lea      eax, [edx + ecx*4]
0x00534A80: jne      0x534a87
0x00534A82: mov      eax, dword ptr [eax + 4]
0x00534A85: jmp      0x534ab7
0x00534A87: cmp      byte ptr [eax + 0x15], bl
0x00534A8A: jne      0x534a91
0x00534A8C: mov      eax, dword ptr [eax + 8]
0x00534A8F: jmp      0x534ab7
0x00534A91: cmp      byte ptr [eax + 0x16], bl
0x00534A94: jne      0x534a9b
0x00534A96: mov      eax, dword ptr [eax + 0xc]
0x00534A99: jmp      0x534ab7
0x00534A9B: cmp      byte ptr [eax + 0x17], bl
0x00534A9E: jne      0x534aa5
0x00534AA0: mov      eax, dword ptr [eax + 0x10]
0x00534AA3: jmp      0x534ab7
0x00534AA5: mov      eax, dword ptr [eax]
0x00534AA7: test     eax, eax
0x00534AA9: je       0x534ab5
0x00534AAB: push     ebx
0x00534AAC: mov      ecx, eax
0x00534AAE: call     0x461400
0x00534AB3: jmp      0x534ab7
0x00534AB5: xor      eax, eax
0x00534AB7: push     0x51b1e251
0x00534ABC: lea      ecx, [eax + 0x1a8]
0x00534AC2: call     0x5691a0
0x00534AC7: test     eax, eax
0x00534AC9: je       0x534ad1
0x00534ACB: mov      dword ptr [eax + 0x180], ebp
0x00534AD1: lea      ecx, [esp + 0x18]
0x00534AD5: call     0x509ba0
0x00534ADA: test     eax, eax
0x00534ADC: jne      0x534a60
0x00534ADE: lea      ecx, [esp + 0x28]
0x00534AE2: jmp      0x534cd2
0x00534AE7: mov      ecx, dword ptr [esi + 0x30c]
0x00534AED: cmp      ecx, ebx
0x00534AEF: je       0x534ce2
0x00534AF5: mov      eax, dword ptr [esi + 8]
0x00534AF8: movzx    edx, byte ptr [eax + 1]
0x00534AFC: mov      eax, dword ptr [eax + 4]
0x00534AFF: mov      eax, dword ptr [eax + 0x28]
0x00534B02: mov      eax, dword ptr [eax + edx*4]
0x00534B05: mov      ebp, dword ptr [eax + 0x114]
0x00534B0B: push     ecx
0x00534B0C: mov      ecx, dword ptr [esi + 0x1f8]
0x00534B12: mov      edx, dword ptr [esi + ecx*4 + 0x208]
0x00534B19: push     edx
0x00534B1A: push     0x98a024
0x00534B1F: lea      eax, [esp + 0x64]
0x00534B23: push     0x200
0x00534B28: push     eax
0x00534B29: call     0x6943d0
0x00534B2E: mov      ecx, dword ptr [esi + 0x1c8]
0x00534B34: mov      edx, dword ptr [ecx]
0x00534B36: mov      edx, dword ptr [edx + 0x1a4]
0x00534B3C: add      esp, 0x14
0x00534B3F: push     ebx
0x00534B40: lea      eax, [esp + 0x5c]
0x00534B44: push     eax
0x00534B45: call     edx
0x00534B47: lea      edi, [esi + 0x228]
0x00534B4D: lea      ecx, [ecx]
0x00534B50: mov      eax, dword ptr [edi]
0x00534B52: push     0x51b1e251
0x00534B57: lea      ecx, [eax + 0x1a8]
0x00534B5D: call     0x5691a0
0x00534B62: test     eax, eax
0x00534B64: je       0x534b71
0x00534B66: mov      eax, dword ptr [eax + 0x68]
0x00534B69: cmp      eax, dword ptr [esi + 0x30c]
0x00534B6F: jge      0x534b7f
0x00534B71: inc      ebx
0x00534B72: add      edi, 4
0x00534B75: cmp      ebx, 4
0x00534B78: jl       0x534b50
0x00534B7A: jmp      0x534ce2
0x00534B7F: mov      eax, dword ptr [0x95f860] ; [u32=0x9A3BD65C]
0x00534B84: push     0
0x00534B86: push     0
0x00534B88: push     eax
0x00534B89: mov      ecx, ebp
0x00534B8B: call     0x7cd3c0
0x00534B90: movzx    ecx, byte ptr [eax + 1]
0x00534B94: mov      edx, dword ptr [eax + 4]
0x00534B97: mov      eax, dword ptr [edx + 0x14]
0x00534B9A: lea      ecx, [ecx + ecx*8]
0x00534B9D: lea      eax, [eax + ecx*4]
0x00534BA0: mov      edx, 0x1f
0x00534BA5: cmp      byte ptr [eax + 0x14], dl
0x00534BA8: jne      0x534baf
0x00534BAA: mov      edi, dword ptr [eax + 4]
0x00534BAD: jmp      0x534be1
0x00534BAF: cmp      byte ptr [eax + 0x15], dl
0x00534BB2: jne      0x534bb9
0x00534BB4: mov      edi, dword ptr [eax + 8]
0x00534BB7: jmp      0x534be1
0x00534BB9: cmp      byte ptr [eax + 0x16], dl
0x00534BBC: jne      0x534bc3
0x00534BBE: mov      edi, dword ptr [eax + 0xc]
0x00534BC1: jmp      0x534be1
0x00534BC3: cmp      byte ptr [eax + 0x17], dl
0x00534BC6: jne      0x534bcd
0x00534BC8: mov      edi, dword ptr [eax + 0x10]
0x00534BCB: jmp      0x534be1
0x00534BCD: mov      eax, dword ptr [eax]
0x00534BCF: test     eax, eax
0x00534BD1: je       0x534bdf
0x00534BD3: push     edx
0x00534BD4: mov      ecx, eax
0x00534BD6: call     0x461400
0x00534BDB: mov      edi, eax
0x00534BDD: jmp      0x534be1
0x00534BDF: xor      edi, edi
0x00534BE1: mov      ecx, dword ptr [esi + 8]
0x00534BE4: mov      ebp, 1
0x00534BE9: push     ebp
0x00534BEA: push     ebp
0x00534BEB: push     0
0x00534BED: push     0
0x00534BEF: call     0x7f8950
0x00534BF4: mov      ecx, edi
0x00534BF6: call     0x5283e0
0x00534BFB: mov      esi, dword ptr [esi + 8]
0x00534BFE: movzx    ecx, byte ptr [esi + 1]
0x00534C02: mov      edx, dword ptr [esi + 4]
0x00534C05: mov      eax, dword ptr [edx + 0x28]
0x00534C08: mov      eax, dword ptr [eax + ecx*4]
0x00534C0B: test     eax, eax
0x00534C0D: je       0x534c17
0x00534C0F: mov      eax, dword ptr [eax + 0x114]
0x00534C15: jmp      0x534c19
0x00534C17: xor      eax, eax
0x00534C19: mov      ecx, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00534C1F: push     eax
0x00534C20: push     ecx
0x00534C21: lea      ecx, [esp + 0x40]
0x00534C25: call     0x509b10
0x00534C2A: lea      ecx, [esp + 0x38]
0x00534C2E: mov      dword ptr [esp + 0x464], ebp
0x00534C35: call     0x509ba0
0x00534C3A: test     eax, eax
0x00534C3C: je       0x534cce
0x00534C42: mov      ebx, 0x1c
0x00534C47: jmp      0x534c50
0x00534C49: lea      esp, [esp]
0x00534C50: movzx    ecx, byte ptr [eax + 1]
0x00534C54: mov      eax, dword ptr [eax + 4]
0x00534C57: mov      edx, dword ptr [eax + 8]
0x00534C5A: test     dword ptr [edx + ecx*4], 0x40000
0x00534C61: je       0x534ca5
0x00534C63: mov      edx, dword ptr [eax + 0x14]
0x00534C66: lea      ecx, [ecx + ecx*8]
0x00534C69: cmp      byte ptr [edx + ecx*4 + 0x14], bl
0x00534C6D: lea      eax, [edx + ecx*4]
0x00534C70: jne      0x534c77
0x00534C72: mov      eax, dword ptr [eax + 4]
0x00534C75: jmp      0x534ca7
0x00534C77: cmp      byte ptr [eax + 0x15], bl
0x00534C7A: jne      0x534c81
0x00534C7C: mov      eax, dword ptr [eax + 8]
0x00534C7F: jmp      0x534ca7
0x00534C81: cmp      byte ptr [eax + 0x16], bl
0x00534C84: jne      0x534c8b
0x00534C86: mov      eax, dword ptr [eax + 0xc]
0x00534C89: jmp      0x534ca7
0x00534C8B: cmp      byte ptr [eax + 0x17], bl
0x00534C8E: jne      0x534c95
0x00534C90: mov      eax, dword ptr [eax + 0x10]
0x00534C93: jmp      0x534ca7
0x00534C95: mov      eax, dword ptr [eax]
0x00534C97: test     eax, eax
0x00534C99: je       0x534ca5
0x00534C9B: push     ebx
0x00534C9C: mov      ecx, eax
0x00534C9E: call     0x461400
0x00534CA3: jmp      0x534ca7
0x00534CA5: xor      eax, eax
0x00534CA7: push     0x51b1e251
0x00534CAC: lea      ecx, [eax + 0x1a8]
0x00534CB2: call     0x5691a0
0x00534CB7: test     eax, eax
0x00534CB9: je       0x534cc1
0x00534CBB: mov      dword ptr [eax + 0x180], ebp
0x00534CC1: lea      ecx, [esp + 0x38]
0x00534CC5: call     0x509ba0
0x00534CCA: test     eax, eax
0x00534CCC: jne      0x534c50
0x00534CCE: lea      ecx, [esp + 0x48]
0x00534CD2: mov      dword ptr [esp + 0x464], 0xffffffff
0x00534CDD: call     0x509910
0x00534CE2: mov      ecx, dword ptr [esp + 0x45c]
0x00534CE9: mov      dword ptr fs:[0], ecx
0x00534CF0: pop      ecx
0x00534CF1: pop      edi
0x00534CF2: pop      esi
0x00534CF3: pop      ebp
0x00534CF4: pop      ebx
0x00534CF5: mov      ecx, dword ptr [esp + 0x444]
0x00534CFC: xor      ecx, esp
0x00534CFE: call     0x8eac64
0x00534D03: add      esp, 0x454
0x00534D09: ret      
0x00534D0A: int3     
0x00534D0B: int3     
0x00534D0C: int3     
0x00534D0D: int3     
0x00534D0E: int3     
0x00534D0F: int3     
0x00534D10: push     -1
0x00534D12: push     0x945360
0x00534D17: mov      eax, dword ptr fs:[0]
0x00534D1D: push     eax
0x00534D1E: sub      esp, 0x20
0x00534D21: push     ebx
0x00534D22: push     ebp
0x00534D23: push     esi
0x00534D24: push     edi
0x00534D25: mov      eax, dword ptr [0xb089c8]
0x00534D2A: xor      eax, esp
0x00534D2C: push     eax
0x00534D2D: lea      eax, [esp + 0x34]
0x00534D31: mov      dword ptr fs:[0], eax
0x00534D37: mov      edi, dword ptr [esp + 0x50]
0x00534D3B: mov      ecx, dword ptr [edi + 8]
0x00534D3E: mov      ebp, 1
0x00534D43: push     ebp
0x00534D44: push     ebp
0x00534D45: push     ebp
0x00534D46: push     ebp
0x00534D47: call     0x7f8950
0x00534D4C: fldz     
0x00534D4E: cmp      dword ptr [edi + 0x1b0], 0
0x00534D55: fstp     dword ptr [edi + 0x240]
0x00534D5B: jne      0x534e92
0x00534D61: mov      eax, dword ptr [edi + 8]
0x00534D64: movzx    ecx, byte ptr [eax + 1]
0x00534D68: mov      edx, dword ptr [eax + 4]
0x00534D6B: mov      eax, dword ptr [edx + 0x28]
0x00534D6E: mov      eax, dword ptr [eax + ecx*4]
0x00534D71: mov      ecx, dword ptr [0x95fe04] ; [u32=0x74E35252]
0x00534D77: mov      eax, dword ptr [eax + 0x114]
0x00534D7D: push     0
0x00534D7F: push     0
0x00534D81: push     ecx
0x00534D82: mov      ecx, eax
0x00534D84: call     0x7cd3c0
0x00534D89: mov      esi, eax
0x00534D8B: movzx    eax, byte ptr [esi + 1]
0x00534D8F: lea      edx, [eax + eax*8]
0x00534D92: mov      eax, dword ptr [esi + 4]
0x00534D95: mov      ecx, dword ptr [eax + 0x14]
0x00534D98: lea      eax, [ecx + edx*4]
0x00534D9B: lea      ecx, [ebp + 0x1e]
0x00534D9E: cmp      dword ptr [0xafce74], ebp
0x00534DA4: jne      0x534e35
0x00534DAA: cmp      byte ptr [eax + 0x14], cl
0x00534DAD: jne      0x534dc3
0x00534DAF: mov      eax, dword ptr [eax + 4]
0x00534DB2: push     ebp
0x00534DB3: push     ebp
0x00534DB4: push     0
0x00534DB6: mov      dword ptr [edi + 0x1b0], eax
0x00534DBC: push     0
0x00534DBE: jmp      0x534e87
0x00534DC3: cmp      byte ptr [eax + 0x15], cl
0x00534DC6: jne      0x534ddc
0x00534DC8: mov      eax, dword ptr [eax + 8]
0x00534DCB: push     ebp
0x00534DCC: push     ebp
0x00534DCD: push     0
0x00534DCF: mov      dword ptr [edi + 0x1b0], eax
0x00534DD5: push     0
0x00534DD7: jmp      0x534e87
0x00534DDC: cmp      byte ptr [eax + 0x16], cl
0x00534DDF: jne      0x534df5
0x00534DE1: mov      eax, dword ptr [eax + 0xc]
0x00534DE4: push     ebp
0x00534DE5: push     ebp
0x00534DE6: push     0
0x00534DE8: mov      dword ptr [edi + 0x1b0], eax
0x00534DEE: push     0
0x00534DF0: jmp      0x534e87
0x00534DF5: cmp      byte ptr [eax + 0x17], cl
0x00534DF8: jne      0x534e0b
0x00534DFA: mov      eax, dword ptr [eax + 0x10]
0x00534DFD: push     ebp
0x00534DFE: push     ebp
0x00534DFF: push     0
0x00534E01: mov      dword ptr [edi + 0x1b0], eax
0x00534E07: push     0
0x00534E09: jmp      0x534e87
0x00534E0B: mov      eax, dword ptr [eax]
0x00534E0D: test     eax, eax
0x00534E0F: je       0x534e27
0x00534E11: push     ecx
0x00534E12: mov      ecx, eax
0x00534E14: call     0x461400
0x00534E19: push     ebp
0x00534E1A: push     ebp
0x00534E1B: push     0
0x00534E1D: mov      dword ptr [edi + 0x1b0], eax
0x00534E23: push     0
0x00534E25: jmp      0x534e87
0x00534E27: push     ebp
0x00534E28: xor      eax, eax
0x00534E2A: push     ebp
0x00534E2B: push     eax
0x00534E2C: mov      dword ptr [edi + 0x1b0], eax
0x00534E32: push     eax
0x00534E33: jmp      0x534e87
0x00534E35: cmp      byte ptr [eax + 0x14], cl
0x00534E38: jne      0x534e3f
0x00534E3A: mov      eax, dword ptr [eax + 4]
0x00534E3D: jmp      0x534e6b
0x00534E3F: cmp      byte ptr [eax + 0x15], cl
0x00534E42: jne      0x534e49
0x00534E44: mov      eax, dword ptr [eax + 8]
0x00534E47: jmp      0x534e6b
0x00534E49: cmp      byte ptr [eax + 0x16], cl
0x00534E4C: jne      0x534e53
0x00534E4E: mov      eax, dword ptr [eax + 0xc]
0x00534E51: jmp      0x534e6b
0x00534E53: cmp      byte ptr [eax + 0x17], cl
0x00534E56: jne      0x534e5d
0x00534E58: mov      eax, dword ptr [eax + 0x10]
0x00534E5B: jmp      0x534e6b
0x00534E5D: mov      eax, dword ptr [eax]
0x00534E5F: test     eax, eax
0x00534E61: je       0x534e76
0x00534E63: push     ecx
0x00534E64: mov      ecx, eax
0x00534E66: call     0x461400
0x00534E6B: test     eax, eax
0x00534E6D: je       0x534e76
0x00534E6F: mov      ecx, eax
0x00534E71: call     0x50fb40
0x00534E76: push     ebp
0x00534E77: push     ebp
0x00534E78: push     0
0x00534E7A: push     0
0x00534E7C: mov      ecx, esi
0x00534E7E: call     0x7f8950
0x00534E83: push     ebp
0x00534E84: push     ebp
0x00534E85: push     ebp
0x00534E86: push     ebp
0x00534E87: mov      ecx, dword ptr [edi + 0x1cc]
0x00534E8D: call     0x7ba3e0
0x00534E92: cmp      dword ptr [0xafce74], ebp
0x00534E98: jne      0x534eba
0x00534E9A: fild     dword ptr [edi + 0x310]
0x00534EA0: push     ecx
0x00534EA1: mov      ecx, dword ptr [edi + 0x1b0]
0x00534EA7: fstp     dword ptr [esp]
0x00534EAA: call     0x50f3f0
0x00534EAF: mov      ecx, dword ptr [edi + 0x1b0]
0x00534EB5: call     0x50f3e0
0x00534EBA: mov      eax, dword ptr [edi + 8]
0x00534EBD: movzx    edx, byte ptr [eax + 1]
0x00534EC1: mov      eax, dword ptr [eax + 4]
0x00534EC4: mov      ecx, dword ptr [eax + 0x28]
0x00534EC7: mov      eax, dword ptr [ecx + edx*4]
0x00534ECA: mov      eax, dword ptr [eax + 0x114]
0x00534ED0: mov      edx, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x00534ED6: push     eax
0x00534ED7: push     edx
0x00534ED8: lea      ecx, [esp + 0x1c]
0x00534EDC: call     0x509b10
0x00534EE1: lea      ecx, [esp + 0x14]
0x00534EE5: mov      dword ptr [esp + 0x3c], 0
0x00534EED: call     0x509ba0
0x00534EF2: test     eax, eax
0x00534EF4: je       0x534f87
0x00534EFA: mov      ebx, 0x1c
0x00534EFF: nop      
0x00534F00: movzx    ecx, byte ptr [eax + 1]
0x00534F04: mov      eax, dword ptr [eax + 4]
0x00534F07: mov      edx, dword ptr [eax + 8]
0x00534F0A: test     dword ptr [edx + ecx*4], 0x40000
0x00534F11: je       0x534f55
0x00534F13: mov      edx, dword ptr [eax + 0x14]
0x00534F16: lea      ecx, [ecx + ecx*8]
0x00534F19: cmp      byte ptr [edx + ecx*4 + 0x14], bl
0x00534F1D: lea      eax, [edx + ecx*4]
0x00534F20: jne      0x534f27
0x00534F22: mov      eax, dword ptr [eax + 4]
0x00534F25: jmp      0x534f57
0x00534F27: cmp      byte ptr [eax + 0x15], bl
0x00534F2A: jne      0x534f31
0x00534F2C: mov      eax, dword ptr [eax + 8]
0x00534F2F: jmp      0x534f57
0x00534F31: cmp      byte ptr [eax + 0x16], bl
0x00534F34: jne      0x534f3b
0x00534F36: mov      eax, dword ptr [eax + 0xc]
0x00534F39: jmp      0x534f57
0x00534F3B: cmp      byte ptr [eax + 0x17], bl
0x00534F3E: jne      0x534f45
0x00534F40: mov      eax, dword ptr [eax + 0x10]
0x00534F43: jmp      0x534f57
0x00534F45: mov      eax, dword ptr [eax]
0x00534F47: test     eax, eax
0x00534F49: je       0x534f55
0x00534F4B: push     ebx
0x00534F4C: mov      ecx, eax
0x00534F4E: call     0x461400
0x00534F53: jmp      0x534f57
0x00534F55: xor      eax, eax
0x00534F57: mov      ecx, dword ptr [eax + 0x1dc]
0x00534F5D: movsx    ecx, byte ptr [ecx]
0x00534F60: mov      dword ptr [edi + ecx*4 + 0x228], eax
0x00534F67: cmp      dword ptr [eax + 0x1ec], 0
0x00534F6E: je       0x534f76
0x00534F70: add      dword ptr [edi + 0x1d0], ebp
0x00534F76: lea      ecx, [esp + 0x14]
0x00534F7A: call     0x509ba0
0x00534F7F: test     eax, eax
0x00534F81: jne      0x534f00
0x00534F87: lea      ecx, [esp + 0x24]
0x00534F8B: mov      dword ptr [esp + 0x3c], 0xffffffff
0x00534F93: call     0x509910
0x00534F98: mov      ecx, dword ptr [esp + 0x34]
0x00534F9C: mov      dword ptr fs:[0], ecx
0x00534FA3: pop      ecx
0x00534FA4: pop      edi
0x00534FA5: pop      esi
0x00534FA6: pop      ebp
0x00534FA7: pop      ebx
0x00534FA8: add      esp, 0x2c
0x00534FAB: ret      
0x00534FAC: int3     
0x00534FAD: int3     
0x00534FAE: int3     
0x00534FAF: int3     

--- CModeMultiDeathMatch::vfunc_9 @ 0x00534FB0 ---
0x00534FB0: push     ebx
0x00534FB1: push     esi
0x00534FB2: mov      esi, ecx
0x00534FB4: mov      ecx, dword ptr [esi + 8]
0x00534FB7: push     edi
0x00534FB8: lea      eax, [esi + 0x60]
0x00534FBB: push     eax
0x00534FBC: push     ecx
0x00534FBD: call     0x5687c0
0x00534FC2: mov      ecx, dword ptr [esi + 0xc]
0x00534FC5: mov      edi, dword ptr [esp + 0x1c]
0x00534FC9: add      esp, 8
0x00534FCC: test     ecx, ecx
0x00534FCE: je       0x534ff0
0x00534FD0: mov      eax, dword ptr [esi + 8]
0x00534FD3: movzx    edx, byte ptr [eax + 1]
0x00534FD7: mov      ebx, dword ptr [eax + 4]
0x00534FDA: mov      ebx, dword ptr [ebx + 0x38]
0x00534FDD: cmp      ecx, dword ptr [ebx + edx*4]
0x00534FE0: je       0x534ff0
0x00534FE2: mov      edx, dword ptr [ecx]
0x00534FE4: mov      edx, dword ptr [edx + 0x24]
0x00534FE7: push     edi
0x00534FE8: push     eax
0x00534FE9: mov      eax, dword ptr [esp + 0x18]
0x00534FED: push     eax
0x00534FEE: call     edx
0x00534FF0: mov      eax, edi
0x00534FF2: sub      eax, 2
0x00534FF5: jne      0x5352d2
0x00534FFB: mov      ecx, dword ptr [0xb1bab0]
0x00535001: push     esi
0x00535002: push     0x534d10
0x00535007: lea      eax, [esi + 0x2fc]
0x0053500D: push     eax
0x0053500E: push     ecx
0x0053500F: call     0x52d1d0
0x00535014: mov      eax, dword ptr [0xb1baa0]
0x00535019: push     esi
0x0053501A: push     0x534450
0x0053501F: lea      edx, [esi + 0x300]
0x00535025: push     edx
0x00535026: push     eax
0x00535027: call     0x52d1d0
0x0053502C: mov      edx, dword ptr [0xb1baac]
0x00535032: push     esi
0x00535033: push     0x5346c0
0x00535038: lea      ecx, [esi + 0x304]
0x0053503E: push     ecx
0x0053503F: push     edx
0x00535040: call     0x52d1d0
0x00535045: mov      ecx, dword ptr [esi + 8]
0x00535048: movzx    eax, byte ptr [ecx + 1]
0x0053504C: mov      edx, dword ptr [ecx + 4]
0x0053504F: mov      edx, dword ptr [edx + 0x38]
0x00535052: mov      eax, dword ptr [edx + eax*4]
0x00535055: add      esp, 0x30
0x00535058: push     1
0x0053505A: push     1
0x0053505C: push     0
0x0053505E: add      eax, 0x38
0x00535061: push     0
0x00535063: mov      dword ptr [esi + 0x2d4], eax
0x00535069: call     0x7f8950
0x0053506E: mov      eax, dword ptr [esi + 8]
0x00535071: movzx    ecx, byte ptr [eax + 1]
0x00535075: mov      edx, dword ptr [eax + 4]
0x00535078: mov      eax, dword ptr [edx + 0x58]
0x0053507B: mov      edx, dword ptr [0xb78a28]
0x00535081: lea      eax, [eax + ecx*2]
0x00535084: mov      cl, byte ptr [eax]
0x00535086: cmp      cl, 0xff
0x00535089: jne      0x53508f
0x0053508B: xor      eax, eax
0x0053508D: jmp      0x5350a3
0x0053508F: movzx    eax, byte ptr [eax + 1]
0x00535093: movzx    ecx, cl
0x00535096: lea      ecx, [ecx + ecx*2]
0x00535099: mov      ecx, dword ptr [edx + ecx*4 + 8]
0x0053509D: mov      ecx, dword ptr [ecx + 0x78]
0x005350A0: mov      eax, dword ptr [ecx + eax*4]
0x005350A3: movzx    ecx, byte ptr [eax + 1]
0x005350A7: mov      eax, dword ptr [eax + 4]
0x005350AA: mov      eax, dword ptr [eax + 0x5c]
0x005350AD: lea      ecx, [eax + ecx*2]
0x005350B0: mov      al, byte ptr [ecx]
0x005350B2: cmp      al, 0xff
0x005350B4: jne      0x5350ba
0x005350B6: xor      eax, eax
0x005350B8: jmp      0x5350ce
0x005350BA: movzx    ecx, byte ptr [ecx + 1]
0x005350BE: movzx    eax, al
0x005350C1: lea      eax, [eax + eax*2]
0x005350C4: mov      eax, dword ptr [edx + eax*4 + 8]
0x005350C8: mov      eax, dword ptr [eax + 0x78]
0x005350CB: mov      eax, dword ptr [eax + ecx*4]
0x005350CE: movzx    ecx, byte ptr [eax + 1]
0x005350D2: mov      eax, dword ptr [eax + 4]
0x005350D5: mov      eax, dword ptr [eax + 0x58]
0x005350D8: lea      ecx, [eax + ecx*2]
0x005350DB: mov      al, byte ptr [ecx]
0x005350DD: cmp      al, 0xff
0x005350DF: jne      0x5350e5
0x005350E1: xor      eax, eax
0x005350E3: jmp      0x5350f9
0x005350E5: movzx    eax, al
0x005350E8: lea      eax, [eax + eax*2]
0x005350EB: mov      edx, dword ptr [edx + eax*4 + 8]
0x005350EF: movzx    eax, byte ptr [ecx + 1]
0x005350F3: mov      ecx, dword ptr [edx + 0x78]
0x005350F6: mov      eax, dword ptr [ecx + eax*4]
0x005350F9: movzx    ecx, byte ptr [eax + 1]
0x005350FD: mov      eax, dword ptr [eax + 4]
0x00535100: lea      edx, [ecx + ecx*8]
0x00535103: mov      ecx, dword ptr [eax + 0x14]
0x00535106: lea      eax, [ecx + edx*4]
0x00535109: mov      ebx, 0x17
0x0053510E: cmp      byte ptr [eax + 0x14], bl
0x00535111: jne      0x535118
0x00535113: mov      eax, dword ptr [eax + 4]
0x00535116: jmp      0x535148
0x00535118: cmp      byte ptr [eax + 0x15], bl
0x0053511B: jne      0x535122
0x0053511D: mov      eax, dword ptr [eax + 8]
0x00535120: jmp      0x535148
0x00535122: cmp      byte ptr [eax + 0x16], bl
0x00535125: jne      0x53512c
0x00535127: mov      eax, dword ptr [eax + 0xc]
0x0053512A: jmp      0x535148
0x0053512C: cmp      byte ptr [eax + 0x17], bl
0x0053512F: jne      0x535136
0x00535131: mov      eax, dword ptr [eax + 0x10]
0x00535134: jmp      0x535148
0x00535136: mov      eax, dword ptr [eax]
0x00535138: test     eax, eax
0x0053513A: je       0x535146
0x0053513C: push     ebx
0x0053513D: mov      ecx, eax
0x0053513F: call     0x461400
0x00535144: jmp      0x535148
0x00535146: xor      eax, eax
0x00535148: push     ebp
0x00535149: push     1
0x0053514B: push     1
0x0053514D: push     0
0x0053514F: push     0
0x00535151: mov      ecx, eax
0x00535153: mov      dword ptr [esi + 0x1c4], eax
0x00535159: call     0x7ba3e0
0x0053515E: mov      edi, dword ptr [esi + 0x2d4]
0x00535164: add      edi, 0x48
0x00535167: lea      ebp, [edi + 8]
0x0053516A: mov      ecx, ebp
0x0053516C: call     0x7bfe00
0x00535171: test     eax, eax
0x00535173: je       0x53519c
0x00535175: mov      ecx, ebp
0x00535177: call     0x7bfe00
0x0053517C: test     eax, eax
0x0053517E: je       0x5351b8
0x00535180: movzx    eax, byte ptr [ebp]
0x00535184: lea      edx, [eax + eax*2]
0x00535187: mov      eax, dword ptr [0xb78a28]
0x0053518C: mov      ecx, dword ptr [eax + edx*4 + 8]
0x00535190: movzx    edx, byte ptr [ebp + 1]
0x00535194: mov      eax, dword ptr [ecx + 0x78]
0x00535197: mov      eax, dword ptr [eax + edx*4]
0x0053519A: jmp      0x5351ba
0x0053519C: mov      ecx, dword ptr [0xb79350]
0x005351A2: test     ecx, ecx
0x005351A4: je       0x5351b8
0x005351A6: mov      edx, dword ptr [edi + 4]
0x005351A9: mov      eax, dword ptr [edi]
0x005351AB: push     edx
0x005351AC: push     0
0x005351AE: push     0
0x005351B0: push     eax
0x005351B1: call     0x7cd120
0x005351B6: jmp      0x5351ba
0x005351B8: xor      eax, eax
0x005351BA: movzx    ecx, byte ptr [eax + 1]
0x005351BE: mov      edx, dword ptr [eax + 4]
0x005351C1: mov      eax, dword ptr [edx + 0x14]
0x005351C4: lea      ecx, [ecx + ecx*8]
0x005351C7: cmp      byte ptr [eax + ecx*4 + 0x14], bl
0x005351CB: lea      eax, [eax + ecx*4]
0x005351CE: jne      0x5351d5
0x005351D0: mov      eax, dword ptr [eax + 4]
0x005351D3: jmp      0x535205
0x005351D5: cmp      byte ptr [eax + 0x15], bl
0x005351D8: jne      0x5351df
0x005351DA: mov      eax, dword ptr [eax + 8]
0x005351DD: jmp      0x535205
0x005351DF: cmp      byte ptr [eax + 0x16], bl
0x005351E2: jne      0x5351e9
0x005351E4: mov      eax, dword ptr [eax + 0xc]
0x005351E7: jmp      0x535205
0x005351E9: cmp      byte ptr [eax + 0x17], bl
0x005351EC: jne      0x5351f3
0x005351EE: mov      eax, dword ptr [eax + 0x10]
0x005351F1: jmp      0x535205
0x005351F3: mov      eax, dword ptr [eax]
0x005351F5: test     eax, eax
0x005351F7: je       0x535203
0x005351F9: push     ebx
0x005351FA: mov      ecx, eax
0x005351FC: call     0x461400
0x00535201: jmp      0x535205
0x00535203: xor      eax, eax
0x00535205: push     1
0x00535207: push     1
0x00535209: push     0
0x0053520B: push     0
0x0053520D: mov      ecx, eax
0x0053520F: mov      dword ptr [esi + 0x1cc], eax
0x00535215: call     0x7ba3e0
0x0053521A: mov      edi, dword ptr [esi + 0x2d4]
0x00535220: add      edi, 0x54
0x00535223: lea      ebp, [edi + 8]
0x00535226: mov      ecx, ebp
0x00535228: call     0x7bfe00
0x0053522D: test     eax, eax
0x0053522F: je       0x535259
0x00535231: mov      ecx, ebp
0x00535233: call     0x7bfe00
0x00535238: test     eax, eax
0x0053523A: je       0x535275
0x0053523C: movzx    eax, byte ptr [ebp]
0x00535240: mov      edx, dword ptr [0xb78a28]
0x00535246: lea      ecx, [eax + eax*2]
0x00535249: mov      eax, dword ptr [edx + ecx*4 + 8]
0x0053524D: movzx    ecx, byte ptr [ebp + 1]
0x00535251: mov      edx, dword ptr [eax + 0x78]
0x00535254: mov      eax, dword ptr [edx + ecx*4]
0x00535257: jmp      0x535277
0x00535259: mov      ecx, dword ptr [0xb79350]
0x0053525F: test     ecx, ecx
0x00535261: je       0x535275
0x00535263: mov      eax, dword ptr [edi + 4]
0x00535266: mov      edx, dword ptr [edi]
0x00535268: push     eax
0x00535269: push     0
0x0053526B: push     0
0x0053526D: push     edx
0x0053526E: call     0x7cd120
0x00535273: jmp      0x535277
0x00535275: xor      eax, eax
0x00535277: movzx    ecx, byte ptr [eax + 1]
0x0053527B: mov      edx, dword ptr [eax + 4]
0x0053527E: mov      eax, dword ptr [edx + 0x14]
0x00535281: lea      ecx, [ecx + ecx*8]
0x00535284: lea      eax, [eax + ecx*4]
0x00535287: pop      ebp
0x00535288: cmp      byte ptr [eax + 0x14], bl
0x0053528B: jne      0x535292
0x0053528D: mov      eax, dword ptr [eax + 4]
0x00535290: jmp      0x5352c2
0x00535292: cmp      byte ptr [eax + 0x15], bl
0x00535295: jne      0x53529c
0x00535297: mov      eax, dword ptr [eax + 8]
0x0053529A: jmp      0x5352c2
0x0053529C: cmp      byte ptr [eax + 0x16], bl
0x0053529F: jne      0x5352a6
0x005352A1: mov      eax, dword ptr [eax + 0xc]
0x005352A4: jmp      0x5352c2
0x005352A6: cmp      byte ptr [eax + 0x17], bl
0x005352A9: jne      0x5352b0
0x005352AB: mov      eax, dword ptr [eax + 0x10]
0x005352AE: jmp      0x5352c2
0x005352B0: mov      eax, dword ptr [eax]
0x005352B2: test     eax, eax
0x005352B4: je       0x5352c0
0x005352B6: push     ebx
0x005352B7: mov      ecx, eax
0x005352B9: call     0x461400
0x005352BE: jmp      0x5352c2
0x005352C0: xor      eax, eax
0x005352C2: mov      dword ptr [esi + 0x1c8], eax
0x005352C8: mov      dword ptr [esi + 0x1ac], 1
0x005352D2: pop      edi
0x005352D3: pop      esi
0x005352D4: pop      ebx
0x005352D5: ret      8
0x005352D8: int3     
0x005352D9: int3     
0x005352DA: int3     
0x005352DB: int3     
0x005352DC: int3     
0x005352DD: int3     
0x005352DE: int3     
0x005352DF: int3     

--- CModeMultiDeathMatch::vfunc_0 @ 0x005352E0 ---
0x005352E0: sub      ecx, 0x1a8
0x005352E6: jmp      0x5352f0
0x005352EB: int3     
0x005352EC: int3     
0x005352ED: int3     
0x005352EE: int3     
0x005352EF: int3     

--- CModeMultiDeathMatch::vfunc_5 @ 0x005352F0 ---
0x005352F0: push     esi
0x005352F1: mov      esi, ecx
0x005352F3: call     0x534510
0x005352F8: test     byte ptr [esp + 8], 1
0x005352FD: je       0x535308
0x005352FF: push     esi
0x00535300: call     0x688fb0
0x00535305: add      esp, 4
0x00535308: mov      eax, esi
0x0053530A: pop      esi
0x0053530B: ret      4
0x0053530E: int3     
0x0053530F: int3     
0x00535310: mov      eax, dword ptr [ecx + 0x1b4]
0x00535316: ret      
0x00535317: int3     
0x00535318: int3     
0x00535319: int3     
0x0053531A: int3     
0x0053531B: int3     
0x0053531C: int3     
0x0053531D: int3     
0x0053531E: int3     
0x0053531F: int3     
0x00535320: push     esi
0x00535321: mov      esi, ecx
0x00535323: mov      ecx, dword ptr [0xb1bab4]
0x00535329: lea      eax, [esi + 0x1ac]
0x0053532F: push     eax
0x00535330: push     0
0x00535332: push     ecx
0x00535333: call     0x52d190
0x00535338: mov      edx, dword ptr [esp + 0x14]
0x0053533C: add      esp, 0xc
0x0053533F: mov      dword ptr [esi + 0x1bc], edx
0x00535345: mov      dword ptr [esi + 0x1e8], 1
0x0053534F: pop      esi