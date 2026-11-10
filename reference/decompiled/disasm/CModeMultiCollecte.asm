=== CModeMultiCollecte (0x005533A0 .. 0x00554C50) ===

--- CModeMultiCollecte::vfunc_1 @ 0x005533A0 ---
0x005533A0: jmp      0x571ce0
0x005533A5: int3     
0x005533A6: int3     
0x005533A7: int3     
0x005533A8: int3     
0x005533A9: int3     
0x005533AA: int3     
0x005533AB: int3     
0x005533AC: int3     
0x005533AD: int3     
0x005533AE: int3     
0x005533AF: int3     
0x005533B0: mov      ecx, dword ptr [esp + 0x10]
0x005533B4: mov      eax, dword ptr [ecx + 0x314]
0x005533BA: mov      edx, 1
0x005533BF: cmp      dword ptr [eax + 0x1a8], edx
0x005533C5: mov      eax, dword ptr [esp + 0xc]
0x005533C9: push     ebx
0x005533CA: setne    bl
0x005533CD: dec      bl
0x005533CF: and      bl, 8
0x005533D2: mov      byte ptr [eax + 0x64], bl
0x005533D5: mov      byte ptr [eax + 0x65], dl
0x005533D8: mov      ecx, dword ptr [ecx + 0x314]
0x005533DE: mov      ecx, dword ptr [ecx + 0x1a8]
0x005533E4: sub      ecx, edx
0x005533E6: neg      ecx
0x005533E8: sbb      cl, cl
0x005533EA: and      cl, 0xfd
0x005533ED: add      cl, 4
0x005533F0: mov      byte ptr [eax + 0x66], cl
0x005533F3: mov      byte ptr [eax + 0x67], 0
0x005533F7: pop      ebx
0x005533F8: ret      
0x005533F9: int3     
0x005533FA: int3     
0x005533FB: int3     
0x005533FC: int3     
0x005533FD: int3     
0x005533FE: int3     
0x005533FF: int3     
0x00553400: sub      esp, 0x404
0x00553406: mov      eax, dword ptr [0xb089c8]
0x0055340B: xor      eax, esp
0x0055340D: mov      dword ptr [esp + 0x400], eax
0x00553414: push     esi
0x00553415: mov      esi, ecx
0x00553417: mov      eax, dword ptr [esi + 0x1a8]
0x0055341D: mov      edx, dword ptr [eax + 4]
0x00553420: lea      ecx, [esi + 0x1a8]
0x00553426: call     edx
0x00553428: mov      eax, dword ptr [esi + 0x1ac]
0x0055342E: cmp      eax, 3
0x00553431: jne      0x553455
0x00553433: mov      eax, dword ptr [esi + 0x314]
0x00553439: mov      ecx, dword ptr [eax + 0x1bc]
0x0055343F: mov      edx, dword ptr [esi + 0x1f8]
0x00553445: mov      eax, dword ptr [esi + edx*4 + 0x208]
0x0055344C: push     ecx
0x0055344D: push     eax
0x0055344E: push     0x98e340
0x00553453: jmp      0x553473
0x00553455: cmp      eax, 2
0x00553458: jne      0x553485
0x0055345A: mov      eax, dword ptr [esi + 0x314]
0x00553460: mov      edx, dword ptr [eax + 0x1bc]
0x00553466: mov      eax, dword ptr [eax + 0x1c0]
0x0055346C: push     edx
0x0055346D: push     eax
0x0055346E: push     0x98e348
0x00553473: lea      ecx, [esp + 0x10]
0x00553477: push     0x200
0x0055347C: push     ecx
0x0055347D: call     0x6943d0
0x00553482: add      esp, 0x14
0x00553485: mov      ecx, dword ptr [esi + 0x1c8]
0x0055348B: mov      edx, dword ptr [ecx]
0x0055348D: mov      edx, dword ptr [edx + 0x1a4]
0x00553493: push     0
0x00553495: lea      eax, [esp + 8]
0x00553499: push     eax
0x0055349A: call     edx
0x0055349C: mov      ecx, dword ptr [esp + 0x404]
0x005534A3: pop      esi
0x005534A4: xor      ecx, esp
0x005534A6: call     0x8eac64
0x005534AB: add      esp, 0x404
0x005534B1: ret      
0x005534B2: int3     
0x005534B3: int3     
0x005534B4: int3     
0x005534B5: int3     
0x005534B6: int3     
0x005534B7: int3     
0x005534B8: int3     
0x005534B9: int3     
0x005534BA: int3     
0x005534BB: int3     
0x005534BC: int3     
0x005534BD: int3     
0x005534BE: int3     
0x005534BF: int3     

--- CModeMultiCollecte::ctor @ 0x005534C0 ---
0x005534C0: push     -1
0x005534C2: push     0x946c88
0x005534C7: mov      eax, dword ptr fs:[0]
0x005534CD: push     eax
0x005534CE: push     ecx
0x005534CF: push     ebx
0x005534D0: push     esi
0x005534D1: push     edi
0x005534D2: mov      eax, dword ptr [0xb089c8]
0x005534D7: xor      eax, esp
0x005534D9: push     eax
0x005534DA: lea      eax, [esp + 0x14]
0x005534DE: mov      dword ptr fs:[0], eax
0x005534E4: mov      esi, ecx
0x005534E6: mov      dword ptr [esp + 0x10], esi
0x005534EA: mov      eax, dword ptr [esp + 0x24]
0x005534EE: push     eax
0x005534EF: call     0x506ab0
0x005534F4: xor      ebx, ebx
0x005534F6: lea      edi, [esi + 0x1a8]
0x005534FC: mov      ecx, edi
0x005534FE: mov      dword ptr [esp + 0x1c], ebx
0x00553502: call     0x571a30
0x00553507: fldz     
0x00553509: mov      dword ptr [esi], 0x98e390
0x0055350F: mov      dword ptr [edi], 0x98e37c
0x00553515: mov      dword ptr [esi + 0x30c], ebx
0x0055351B: fst      dword ptr [esi + 0x328]
0x00553521: fst      dword ptr [esi + 0x32c]
0x00553527: mov      dword ptr [esi + 0x318], ebx
0x0055352D: fst      dword ptr [esi + 0x330]
0x00553533: mov      dword ptr [esi + 0x31c], ebx
0x00553539: fstp     dword ptr [esi + 0x334]
0x0055353F: mov      dword ptr [esi + 0x320], ebx
0x00553545: mov      dword ptr [esi + 0x324], ebx
0x0055354B: mov      dword ptr [esi + 0x338], 0xffffffff
0x00553555: mov      eax, esi
0x00553557: mov      ecx, dword ptr [esp + 0x14]
0x0055355B: mov      dword ptr fs:[0], ecx
0x00553562: pop      ecx
0x00553563: pop      edi
0x00553564: pop      esi
0x00553565: pop      ebx
0x00553566: add      esp, 0x10
0x00553569: ret      4
0x0055356C: int3     
0x0055356D: int3     
0x0055356E: int3     
0x0055356F: int3     
0x00553570: push     -1
0x00553572: push     0x946cc7
0x00553577: mov      eax, dword ptr fs:[0]
0x0055357D: push     eax
0x0055357E: push     ecx
0x0055357F: push     esi
0x00553580: push     edi
0x00553581: mov      eax, dword ptr [0xb089c8]
0x00553586: xor      eax, esp
0x00553588: push     eax
0x00553589: lea      eax, [esp + 0x10]
0x0055358D: mov      dword ptr fs:[0], eax
0x00553593: mov      esi, ecx
0x00553595: mov      dword ptr [esp + 0xc], esi
0x00553599: lea      edi, [esi + 0x1a8]
0x0055359F: mov      dword ptr [esi], 0x98e390
0x005535A5: mov      dword ptr [edi], 0x98e37c
0x005535AB: mov      ecx, dword ptr [0xb761e0]
0x005535B1: push     0x98e26c
0x005535B6: mov      dword ptr [esp + 0x1c], 2
0x005535BE: call     0x7063e0
0x005535C3: mov      ecx, dword ptr [0xb761e0]
0x005535C9: push     0x98e280
0x005535CE: call     0x7063e0
0x005535D3: mov      ecx, dword ptr [0xb761e0]
0x005535D9: push     0x98e294
0x005535DE: call     0x7063e0
0x005535E3: mov      ecx, dword ptr [0xb761e0]
0x005535E9: push     0x98e2a8
0x005535EE: call     0x7063e0
0x005535F3: mov      ecx, dword ptr [0xb761e0]
0x005535F9: push     0x98e2bc
0x005535FE: call     0x7063e0
0x00553603: mov      ecx, dword ptr [0xb761e0]
0x00553609: push     0x98e2d0
0x0055360E: call     0x7063e0
0x00553613: mov      eax, dword ptr [esi + 0x30c]
0x00553619: push     eax
0x0055361A: mov      byte ptr [esp + 0x1c], 1
0x0055361F: call     0x52d1b0
0x00553624: xor      eax, eax
0x00553626: add      esp, 4
0x00553629: mov      ecx, edi
0x0055362B: mov      dword ptr [esi + 0x30c], eax
0x00553631: mov      byte ptr [esp + 0x18], al
0x00553635: call     0x571bd0
0x0055363A: mov      ecx, esi
0x0055363C: mov      dword ptr [esp + 0x18], 0xffffffff
0x00553644: call     0x506b40
0x00553649: mov      ecx, dword ptr [esp + 0x10]
0x0055364D: mov      dword ptr fs:[0], ecx
0x00553654: pop      ecx
0x00553655: pop      edi
0x00553656: pop      esi
0x00553657: add      esp, 0x10
0x0055365A: ret      
0x0055365B: int3     
0x0055365C: int3     
0x0055365D: int3     
0x0055365E: int3     
0x0055365F: int3     

--- CModeMultiCollecte::vfunc_3 @ 0x00553660 ---
0x00553660: fld      qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x00553666: sub      esp, 0xc
0x00553669: push     ebx
0x0055366A: push     ebp
0x0055366B: push     esi
0x0055366C: mov      esi, ecx
0x0055366E: mov      eax, dword ptr [esi + 4]
0x00553671: push     edi
0x00553672: cmp      eax, 2
0x00553675: jne      0x5536da
0x00553677: mov      ecx, dword ptr [esi + 0x54]
0x0055367A: mov      edx, dword ptr [esi + ecx*4 + 0x60]
0x0055367E: mov      eax, dword ptr [esi + 0x50]
0x00553681: add      edx, 0x14
0x00553684: cmp      dword ptr [esi + eax*4 + 0x60], edx
0x00553688: jl       0x553768
0x0055368E: mov      ecx, dword ptr [esi + ecx*4 + 0x40]
0x00553692: add      ecx, 0x14
0x00553695: cmp      dword ptr [esi + eax*4 + 0x40], ecx
0x00553699: jge      0x553768
0x0055369F: mov      edx, dword ptr [esi + eax*4 + 0x80]
0x005536A6: fstp     st(0)
0x005536A8: mov      eax, dword ptr [edx + 8]
0x005536AB: lea      ecx, [esi + 0x14c]
0x005536B1: push     ecx
0x005536B2: mov      dword ptr [ecx], eax
0x005536B4: mov      dword ptr [esi + 0x150], 0xd
0x005536BE: mov      ecx, dword ptr [0xb1bb3c]
0x005536C4: push     0
0x005536C6: push     ecx
0x005536C7: call     0x52d190
0x005536CC: fld      qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x005536D2: add      esp, 0xc
0x005536D5: jmp      0x553768
0x005536DA: cmp      eax, 3
0x005536DD: jne      0x553768
0x005536E3: mov      eax, dword ptr [esi + 0x16c]
0x005536E9: fild     dword ptr [eax + 0x1bc]
0x005536EF: mov      ecx, dword ptr [esi + 0x50]
0x005536F2: mov      edx, dword ptr [esi + 0x54]
0x005536F5: mov      eax, dword ptr [esi + ecx*4 + 0x60]
0x005536F9: fmul     qword ptr [0x98e4a0] ; [f32=0, f64=20, u32=0x00000000]
0x005536FF: sub      eax, dword ptr [esi + edx*4 + 0x60]
0x00553703: mov      dword ptr [esp + 0x14], eax
0x00553707: fdiv     st(1)
0x00553709: fild     dword ptr [esp + 0x14]
0x0055370D: fcomp    st(1)
0x0055370F: fnstsw   ax
0x00553711: test     ah, 1
0x00553714: jne      0x553766
0x00553716: mov      eax, dword ptr [esi + ecx*4 + 0x40]
0x0055371A: sub      eax, dword ptr [esi + edx*4 + 0x40]
0x0055371E: mov      dword ptr [esp + 0x14], eax
0x00553722: fild     dword ptr [esp + 0x14]
0x00553726: fcompp   
0x00553728: fnstsw   ax
0x0055372A: test     ah, 5
0x0055372D: jp       0x553768
0x0055372F: mov      ecx, dword ptr [esi + ecx*4 + 0x80]
0x00553736: fstp     st(0)
0x00553738: mov      edx, dword ptr [ecx + 8]
0x0055373B: lea      eax, [esi + 0x14c]
0x00553741: push     eax
0x00553742: mov      dword ptr [eax], edx
0x00553744: mov      dword ptr [esi + 0x150], 0xd
0x0055374E: mov      eax, dword ptr [0xb1bb3c]
0x00553753: push     0
0x00553755: push     eax
0x00553756: call     0x52d190
0x0055375B: fld      qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x00553761: add      esp, 0xc
0x00553764: jmp      0x553768
0x00553766: fstp     st(0)
0x00553768: cmp      dword ptr [esi + 0x9c], 0
0x0055376F: jne      0x553820
0x00553775: mov      eax, dword ptr [esi + 4]
0x00553778: cmp      eax, 2
0x0055377B: jne      0x5537d2
0x0055377D: mov      ecx, dword ptr [esi + 0x50]
0x00553780: mov      eax, dword ptr [esi + ecx*4 + 0x60]
0x00553784: mov      edx, dword ptr [esi + 0x54]
0x00553787: mov      dword ptr [esp + 0x14], eax
0x0055378B: sub      eax, dword ptr [esi + edx*4 + 0x60]
0x0055378F: cmp      eax, 0xa
0x00553792: jg       0x553820
0x00553798: mov      eax, dword ptr [esi + 0x16c]
0x0055379E: fild     dword ptr [eax + 0x1bc]
0x005537A4: fild     dword ptr [esp + 0x14]
0x005537A8: fld      st(1)
0x005537AA: fmul     qword ptr [0x98ab70] ; [f32=0, f64=15, u32=0x00000000]
0x005537B0: fdivrp   st(3)
0x005537B2: fxch     st(1)
0x005537B4: fsubrp   st(2)
0x005537B6: fcompp   
0x005537B8: fnstsw   ax
0x005537BA: test     ah, 1
0x005537BD: jne      0x553822
0x005537BF: mov      eax, 1
0x005537C4: mov      dword ptr [esi + 0x9c], eax
0x005537CA: mov      dword ptr [esi + 0xa0], eax
0x005537D0: jmp      0x553822
0x005537D2: cmp      eax, 3
0x005537D5: jne      0x553820
0x005537D7: mov      ecx, dword ptr [esi + 0x50]
0x005537DA: mov      eax, dword ptr [esi + ecx*4 + 0x60]
0x005537DE: mov      edx, dword ptr [esi + 0x54]
0x005537E1: mov      ecx, dword ptr [esi + 0x16c]
0x005537E7: mov      dword ptr [esp + 0x14], eax
0x005537EB: sub      eax, dword ptr [esi + edx*4 + 0x60]
0x005537EF: add      ecx, 0x1bc
0x005537F5: mov      dword ptr [esp + 0x10], eax
0x005537F9: fild     dword ptr [esp + 0x10]
0x005537FD: fild     dword ptr [ecx]
0x005537FF: fmul     qword ptr [0x97ea78] ; [f32=0, f64=3, u32=0x00000000]
0x00553805: fdiv     st(2)
0x00553807: fcompp   
0x00553809: fnstsw   ax
0x0055380B: test     ah, 1
0x0055380E: jne      0x553820
0x00553810: fild     dword ptr [ecx]
0x00553812: fild     dword ptr [esp + 0x14]
0x00553816: fld      st(1)
0x00553818: fmul     qword ptr [0x9837d8] ; [f32=0, f64=5, u32=0x00000000]
0x0055381E: jmp      0x5537b0
0x00553820: fstp     st(0)
0x00553822: fld      dword ptr [esi + 0x124]
0x00553828: fadd     dword ptr [0xb76120]
0x0055382E: fstp     dword ptr [esp + 0x14]
0x00553832: fld      dword ptr [esp + 0x14]
0x00553836: fst      dword ptr [esi + 0x124]
0x0055383C: fld      dword ptr [esi + 0x128]
0x00553842: fadd     qword ptr [0x97bc30] ; [f32=0, f64=0.5, u32=0x00000000]
0x00553848: fcomp    st(1)
0x0055384A: fnstsw   ax
0x0055384C: test     ah, 5
0x0055384F: jp       0x553a80
0x00553855: lea      edx, [esi + 0x80]
0x0055385B: fstp     dword ptr [esi + 0x128]
0x00553861: mov      dword ptr [esp + 0x14], 0
0x00553869: lea      ebp, [esi + 0xa4]
0x0055386F: mov      dword ptr [esp + 0x10], edx
0x00553873: lea      edi, [esi + 0xa8]
0x00553879: lea      esp, [esp]
0x00553880: xor      ebx, ebx
0x00553882: mov      ecx, ebp
0x00553884: fldz     
0x00553886: fcomp    dword ptr [ecx]
0x00553888: fnstsw   ax
0x0055388A: test     ah, 0x44
0x0055388D: jnp      0x5538f6
0x0055388F: inc      ebx
0x00553890: add      ecx, 4
0x00553893: cmp      ebx, 8
0x00553896: jl       0x553884
0x00553898: fld      dword ptr [edi]
0x0055389A: fstp     dword ptr [edi - 4]
0x0055389D: fld      dword ptr [edi + 4]
0x005538A0: fstp     dword ptr [edi]
0x005538A2: fld      dword ptr [edi + 8]
0x005538A5: fstp     dword ptr [edi + 4]
0x005538A8: fld      dword ptr [edi + 0xc]
0x005538AB: fstp     dword ptr [edi + 8]
0x005538AE: fld      dword ptr [edi + 0x10]
0x005538B1: fstp     dword ptr [edi + 0xc]
0x005538B4: fld      dword ptr [edi + 0x14]
0x005538B7: fstp     dword ptr [edi + 0x10]
0x005538BA: fld      dword ptr [edi + 0x18]
0x005538BD: fstp     dword ptr [edi + 0x14]
0x005538C0: mov      eax, dword ptr [esi + 4]
0x005538C3: cmp      eax, 2
0x005538C6: jne      0x5539a0
0x005538CC: mov      edx, dword ptr [edx]
0x005538CE: push     0x51b1e251
0x005538D3: lea      ecx, [edx + 0x1a8]
0x005538D9: call     0x5691a0
0x005538DE: test     eax, eax
0x005538E0: je       0x553a59
0x005538E6: fild     dword ptr [eax + 0x48]
0x005538E9: fstp     dword ptr [esp + 0x18]
0x005538ED: fld      dword ptr [esp + 0x18]
0x005538F1: fst      dword ptr [ebp + 0x1c]
0x005538F4: jmp      0x553930
0x005538F6: mov      eax, dword ptr [esi + 4]
0x005538F9: cmp      eax, 2
0x005538FC: jne      0x553950
0x005538FE: mov      edx, dword ptr [edx]
0x00553900: push     0x51b1e251
0x00553905: lea      ecx, [edx + 0x1a8]
0x0055390B: call     0x5691a0
0x00553910: test     eax, eax
0x00553912: je       0x553a59
0x00553918: fild     dword ptr [eax + 0x48]
0x0055391B: mov      eax, dword ptr [esp + 0x14]
0x0055391F: add      eax, ebx
0x00553921: fstp     dword ptr [esp + 0x18]
0x00553925: fld      dword ptr [esp + 0x18]
0x00553929: fst      dword ptr [esi + eax*4 + 0xa4]
0x00553930: fld      dword ptr [ebp]
0x00553933: fadd     qword ptr [0x98a2a8] ; [f32=0, f64=10, u32=0x00000000]
0x00553939: fcompp   
0x0055393B: fnstsw   ax
0x0055393D: test     ah, 0x41
0x00553940: jp       0x553a59
0x00553946: mov      eax, 1
0x0055394B: jmp      0x5539fd
0x00553950: cmp      eax, 3
0x00553953: jne      0x553a5d
0x00553959: mov      edx, dword ptr [edx]
0x0055395B: push     0x51b1e251
0x00553960: lea      ecx, [edx + 0x1a8]
0x00553966: call     0x5691a0
0x0055396B: test     eax, eax
0x0055396D: je       0x553a59
0x00553973: mov      ecx, dword ptr [eax + 0xd4]
0x00553979: fild     dword ptr [eax + 0xd4]
0x0055397F: test     ecx, ecx
0x00553981: jge      0x553989
0x00553983: fadd     dword ptr [0x982b48] ; [f64=0.01875, u32=0x4F800000]
0x00553989: mov      edx, dword ptr [esp + 0x14]
0x0055398D: fstp     dword ptr [esp + 0x18]
0x00553991: fld      dword ptr [esp + 0x18]
0x00553995: add      edx, ebx
0x00553997: fst      dword ptr [esi + edx*4 + 0xa4]
0x0055399E: jmp      0x5539e6
0x005539A0: cmp      eax, 3
0x005539A3: jne      0x553a5d
0x005539A9: mov      edx, dword ptr [edx]
0x005539AB: push     0x51b1e251
0x005539B0: lea      ecx, [edx + 0x1a8]
0x005539B6: call     0x5691a0
0x005539BB: test     eax, eax
0x005539BD: je       0x553a59
0x005539C3: mov      eax, dword ptr [eax + 0xd4]
0x005539C9: mov      dword ptr [esp + 0x18], eax
0x005539CD: fild     dword ptr [esp + 0x18]
0x005539D1: test     eax, eax
0x005539D3: jge      0x5539db
0x005539D5: fadd     dword ptr [0x982b48] ; [f64=0.01875, u32=0x4F800000]
0x005539DB: fstp     dword ptr [esp + 0x18]
0x005539DF: fld      dword ptr [esp + 0x18]
0x005539E3: fst      dword ptr [ebp + 0x1c]
0x005539E6: fld      dword ptr [ebp]
0x005539E9: fadd     qword ptr [0x98e498] ; [f32=0, f64=10000, u32=0x00000000]
0x005539EF: fcompp   
0x005539F1: fnstsw   ax
0x005539F3: test     ah, 0x41
0x005539F6: jp       0x553a59
0x005539F8: mov      eax, 2
0x005539FD: mov      edx, dword ptr [esp + 0x10]
0x00553A01: mov      edx, dword ptr [edx]
0x00553A03: mov      edx, dword ptr [edx + 8]
0x00553A06: lea      ecx, [esi + 0x14c]
0x00553A0C: mov      dword ptr [ecx], edx
0x00553A0E: mov      dword ptr [esi + 0x150], 0xa
0x00553A18: cmp      eax, 1
0x00553A1B: jne      0x553a28
0x00553A1D: mov      eax, dword ptr [0xb1bb58]
0x00553A22: push     ecx
0x00553A23: push     0
0x00553A25: push     eax
0x00553A26: jmp      0x553a37
0x00553A28: cmp      eax, 2
0x00553A2B: jne      0x553a3f
0x00553A2D: push     ecx
0x00553A2E: mov      ecx, dword ptr [0xb1bb5c]
0x00553A34: push     0
0x00553A36: push     ecx
0x00553A37: call     0x52d190
0x00553A3C: add      esp, 0xc
0x00553A3F: xor      eax, eax
0x00553A41: mov      dword ptr [ebp], eax
0x00553A44: mov      dword ptr [ebp + 4], eax
0x00553A47: mov      dword ptr [ebp + 8], eax
0x00553A4A: mov      dword ptr [ebp + 0xc], eax
0x00553A4D: mov      dword ptr [ebp + 0x10], eax
0x00553A50: mov      dword ptr [ebp + 0x14], eax
0x00553A53: mov      dword ptr [ebp + 0x18], eax
0x00553A56: mov      dword ptr [ebp + 0x1c], eax
0x00553A59: mov      edx, dword ptr [esp + 0x10]
0x00553A5D: mov      eax, dword ptr [esp + 0x14]
0x00553A61: add      eax, 8
0x00553A64: add      edx, 4
0x00553A67: add      edi, 0x20
0x00553A6A: add      ebp, 0x20
0x00553A6D: cmp      eax, 0x20
0x00553A70: mov      dword ptr [esp + 0x10], edx
0x00553A74: mov      dword ptr [esp + 0x14], eax
0x00553A78: jl       0x553880
0x00553A7E: jmp      0x553a82
0x00553A80: fstp     st(0)
0x00553A82: lea      edi, [esi + 0x170]
0x00553A88: mov      dword ptr [esp + 0x14], 4
0x00553A90: mov      ebp, 9
0x00553A95: jmp      0x553aa0
0x00553A97: lea      esp, [esp]
0x00553A9E: mov      edi, edi
0x00553AA0: fld      dword ptr [edi + 0x10]
0x00553AA3: fadd     qword ptr [0x9837d8] ; [f32=0, f64=5, u32=0x00000000]
0x00553AA9: fcomp    qword ptr [0xb75ff0]
0x00553AAF: fnstsw   ax
0x00553AB1: test     ah, 0x41
0x00553AB4: jp       0x553b98
0x00553ABA: mov      eax, dword ptr [esi + 4]
0x00553ABD: cmp      eax, 2
0x00553AC0: jne      0x553b25
0x00553AC2: mov      eax, dword ptr [edi - 0xf0]
0x00553AC8: push     0x51b1e251
0x00553ACD: lea      ecx, [eax + 0x1a8]
0x00553AD3: call     0x5691a0
0x00553AD8: mov      ebx, eax
0x00553ADA: test     ebx, ebx
0x00553ADC: je       0x553b98
0x00553AE2: mov      eax, dword ptr [ebx + 0x54]
0x00553AE5: cmp      eax, 0xf
0x00553AE8: jl       0x553b98
0x00553AEE: mov      edx, dword ptr [edi]
0x00553AF0: add      edx, 0xa
0x00553AF3: cmp      eax, edx
0x00553AF5: jl       0x553b98
0x00553AFB: mov      ecx, dword ptr [edi - 0xf0]
0x00553B01: mov      edx, dword ptr [ecx + 8]
0x00553B04: lea      eax, [esi + 0x14c]
0x00553B0A: push     eax
0x00553B0B: mov      dword ptr [eax], edx
0x00553B0D: mov      dword ptr [esi + 0x150], ebp
0x00553B13: mov      eax, dword ptr [0xb1bb60]
0x00553B18: push     0
0x00553B1A: push     eax
0x00553B1B: call     0x52d190
0x00553B20: mov      ecx, dword ptr [ebx + 0x54]
0x00553B23: jmp      0x553b8a
0x00553B25: cmp      eax, 3
0x00553B28: jne      0x553b98
0x00553B2A: mov      eax, dword ptr [edi - 0xf0]
0x00553B30: push     0x51b1e251
0x00553B35: lea      ecx, [eax + 0x1a8]
0x00553B3B: call     0x5691a0
0x00553B40: mov      ebx, eax
0x00553B42: test     ebx, ebx
0x00553B44: je       0x553b98
0x00553B46: mov      eax, dword ptr [ebx + 0xd8]
0x00553B4C: cmp      eax, 0x7530
0x00553B51: jl       0x553b98
0x00553B53: mov      edx, dword ptr [edi]
0x00553B55: add      edx, 0x2710
0x00553B5B: cmp      eax, edx
0x00553B5D: jl       0x553b98
0x00553B5F: mov      ecx, dword ptr [edi - 0xf0]
0x00553B65: mov      edx, dword ptr [ecx + 8]
0x00553B68: lea      eax, [esi + 0x14c]
0x00553B6E: push     eax
0x00553B6F: mov      dword ptr [eax], edx
0x00553B71: mov      dword ptr [esi + 0x150], ebp
0x00553B77: mov      eax, dword ptr [0xb1bb64]
0x00553B7C: push     0
0x00553B7E: push     eax
0x00553B7F: call     0x52d190
0x00553B84: mov      ecx, dword ptr [ebx + 0xd8]
0x00553B8A: mov      dword ptr [edi], ecx
0x00553B8C: fld      qword ptr [0xb75ff0]
0x00553B92: fstp     dword ptr [edi + 0x10]
0x00553B95: add      esp, 0xc
0x00553B98: add      edi, 4
0x00553B9B: sub      dword ptr [esp + 0x14], 1
0x00553BA0: jne      0x553aa0
0x00553BA6: mov      ecx, dword ptr [esi + 0x190]
0x00553BAC: xor      edi, edi
0x00553BAE: cmp      ecx, -1
0x00553BB1: je       0x553bea
0x00553BB3: mov      edx, dword ptr [esi + ecx*4 + 0x80]
0x00553BBA: mov      ecx, dword ptr [edx + 8]
0x00553BBD: lea      eax, [esi + 0x14c]
0x00553BC3: push     eax
0x00553BC4: mov      dword ptr [eax], ecx
0x00553BC6: mov      dword ptr [esi + 0x150], 5
0x00553BD0: mov      edx, dword ptr [0xb1bb68]
0x00553BD6: push     edi
0x00553BD7: push     edx
0x00553BD8: call     0x52d190
0x00553BDD: add      esp, 0xc
0x00553BE0: mov      dword ptr [esi + 0x190], 0xffffffff
0x00553BEA: mov      eax, dword ptr [esi + 4]
0x00553BED: cmp      eax, 2
0x00553BF0: jne      0x553cd3
0x00553BF6: mov      eax, dword ptr [esi + 0x28]
0x00553BF9: cmp      eax, 4
0x00553BFC: jne      0x553c64
0x00553BFE: mov      ecx, dword ptr [esi + 0x5c]
0x00553C01: mov      eax, dword ptr [esi + ecx*4 + 0x60]
0x00553C05: mov      edx, dword ptr [esi + 0x58]
0x00553C08: add      eax, 0x1e
0x00553C0B: cmp      dword ptr [esi + edx*4 + 0x60], eax
0x00553C0F: jl       0x553dae
0x00553C15: cmp      dword ptr [esi + ecx*4 + 0x70], edi
0x00553C19: jne      0x553db2
0x00553C1F: mov      ecx, dword ptr [esi + ecx*4 + 0x80]
0x00553C26: mov      edx, dword ptr [ecx + 8]
0x00553C29: lea      eax, [esi + 0x14c]
0x00553C2F: push     eax
0x00553C30: mov      dword ptr [eax], edx
0x00553C32: mov      dword ptr [esi + 0x150], 3
0x00553C3C: mov      eax, dword ptr [0xb1bb40]
0x00553C41: push     edi
0x00553C42: push     eax
0x00553C43: call     0x52d190
0x00553C48: mov      ecx, dword ptr [esi + 0x5c]
0x00553C4B: add      esp, 0xc
0x00553C4E: pop      edi
0x00553C4F: mov      dword ptr [esi + ecx*4 + 0x70], 1
0x00553C57: mov      ecx, esi
0x00553C59: pop      esi
0x00553C5A: pop      ebp
0x00553C5B: pop      ebx
0x00553C5C: add      esp, 0xc
0x00553C5F: jmp      0x571e30
0x00553C64: cmp      eax, 3
0x00553C67: jne      0x553db2
0x00553C6D: mov      ecx, dword ptr [esi + 0x58]
0x00553C70: mov      edx, dword ptr [esi + ecx*4 + 0x60]
0x00553C74: mov      eax, dword ptr [esi + 0x54]
0x00553C77: add      edx, 0x1e
0x00553C7A: cmp      dword ptr [esi + eax*4 + 0x60], edx
0x00553C7E: jl       0x553dae
0x00553C84: cmp      dword ptr [esi + ecx*4 + 0x70], edi
0x00553C88: jne      0x553db2
0x00553C8E: mov      ecx, dword ptr [esi + ecx*4 + 0x80]
0x00553C95: mov      edx, dword ptr [ecx + 8]
0x00553C98: lea      eax, [esi + 0x14c]
0x00553C9E: push     eax
0x00553C9F: mov      dword ptr [eax], edx
0x00553CA1: mov      dword ptr [esi + 0x150], 3
0x00553CAB: mov      eax, dword ptr [0xb1bb40]
0x00553CB0: push     edi
0x00553CB1: push     eax
0x00553CB2: call     0x52d190
0x00553CB7: mov      ecx, dword ptr [esi + 0x58]
0x00553CBA: add      esp, 0xc
0x00553CBD: pop      edi
0x00553CBE: mov      dword ptr [esi + ecx*4 + 0x70], 1
0x00553CC6: mov      ecx, esi
0x00553CC8: pop      esi
0x00553CC9: pop      ebp
0x00553CCA: pop      ebx
0x00553CCB: add      esp, 0xc
0x00553CCE: jmp      0x571e30
0x00553CD3: mov      edx, 3
0x00553CD8: cmp      eax, edx
0x00553CDA: jne      0x553db2
0x00553CE0: mov      eax, dword ptr [esi + 0x28]
0x00553CE3: cmp      eax, 4
0x00553CE6: jne      0x553d4d
0x00553CE8: mov      ecx, dword ptr [esi + 0x5c]
0x00553CEB: mov      eax, dword ptr [esi + ecx*4 + 0x60]
0x00553CEF: mov      ebx, dword ptr [esi + 0x58]
0x00553CF2: add      eax, 0x7530
0x00553CF7: cmp      dword ptr [esi + ebx*4 + 0x60], eax
0x00553CFB: jl       0x553dae
0x00553D01: cmp      dword ptr [esi + ecx*4 + 0x70], edi
0x00553D05: jne      0x553db2
0x00553D0B: mov      ecx, dword ptr [esi + ecx*4 + 0x80]
0x00553D12: mov      ecx, dword ptr [ecx + 8]
0x00553D15: lea      eax, [esi + 0x14c]
0x00553D1B: push     eax
0x00553D1C: mov      dword ptr [eax], ecx
0x00553D1E: mov      dword ptr [esi + 0x150], edx
0x00553D24: mov      edx, dword ptr [0xb1bb40]
0x00553D2A: push     edi
0x00553D2B: push     edx
0x00553D2C: call     0x52d190
0x00553D31: mov      eax, dword ptr [esi + 0x5c]
0x00553D34: add      esp, 0xc
0x00553D37: pop      edi
0x00553D38: mov      dword ptr [esi + eax*4 + 0x70], 1
0x00553D40: mov      ecx, esi
0x00553D42: pop      esi
0x00553D43: pop      ebp
0x00553D44: pop      ebx
0x00553D45: add      esp, 0xc
0x00553D48: jmp      0x571e30
0x00553D4D: cmp      eax, edx
0x00553D4F: jne      0x553db2
0x00553D51: mov      ecx, dword ptr [esi + 0x58]
0x00553D54: mov      eax, dword ptr [esi + ecx*4 + 0x60]
0x00553D58: mov      ebx, dword ptr [esi + 0x54]
0x00553D5B: add      eax, 0x7530
0x00553D60: cmp      dword ptr [esi + ebx*4 + 0x60], eax
0x00553D64: jl       0x553dae
0x00553D66: cmp      dword ptr [esi + ecx*4 + 0x70], edi
0x00553D6A: jne      0x553db2
0x00553D6C: mov      ecx, dword ptr [esi + ecx*4 + 0x80]
0x00553D73: mov      ecx, dword ptr [ecx + 8]
0x00553D76: lea      eax, [esi + 0x14c]
0x00553D7C: push     eax
0x00553D7D: mov      dword ptr [eax], ecx
0x00553D7F: mov      dword ptr [esi + 0x150], edx
0x00553D85: mov      edx, dword ptr [0xb1bb40]
0x00553D8B: push     edi
0x00553D8C: push     edx
0x00553D8D: call     0x52d190
0x00553D92: mov      eax, dword ptr [esi + 0x58]
0x00553D95: add      esp, 0xc
0x00553D98: pop      edi
0x00553D99: mov      dword ptr [esi + eax*4 + 0x70], 1
0x00553DA1: mov      ecx, esi
0x00553DA3: pop      esi
0x00553DA4: pop      ebp
0x00553DA5: pop      ebx
0x00553DA6: add      esp, 0xc
0x00553DA9: jmp      0x571e30
0x00553DAE: mov      dword ptr [esi + ecx*4 + 0x70], edi
0x00553DB2: pop      edi
0x00553DB3: mov      ecx, esi
0x00553DB5: pop      esi
0x00553DB6: pop      ebp
0x00553DB7: pop      ebx
0x00553DB8: add      esp, 0xc
0x00553DBB: jmp      0x571e30

--- CModeMultiCollecte::vfunc_2 @ 0x00553DC0 ---
0x00553DC0: push     ebx
0x00553DC1: push     esi
0x00553DC2: push     edi
0x00553DC3: mov      esi, ecx
0x00553DC5: call     0x571c80
0x00553DCA: fldz     
0x00553DCC: mov      eax, dword ptr [esi + 4]
0x00553DCF: mov      ebx, 1
0x00553DD4: cmp      eax, 2
0x00553DD7: jne      0x553f01
0x00553DDD: cmp      dword ptr [esi + 0x140], 0
0x00553DE4: jne      0x553e2d
0x00553DE6: mov      ecx, dword ptr [esi + 0x16c]
0x00553DEC: mov      eax, dword ptr [ecx + 0x1bc]
0x00553DF2: cmp      eax, 0x32
0x00553DF5: jl       0x553e2d
0x00553DF7: sub      eax, dword ptr [ecx + 0x1c0]
0x00553DFD: cmp      eax, 0x1e
0x00553E00: jg       0x553e2d
0x00553E02: mov      edx, dword ptr [esi + 0x12c]
0x00553E08: fstp     dword ptr [esi + 0x18]
0x00553E0B: mov      ecx, dword ptr [esi + 0x1c]
0x00553E0E: mov      dword ptr [esi + 0x140], ebx
0x00553E14: mov      edx, dword ptr [edx + 0x1c]
0x00553E17: mov      eax, dword ptr [ecx]
0x00553E19: mov      eax, dword ptr [eax + 0x1a8]
0x00553E1F: push     0
0x00553E21: push     edx
0x00553E22: mov      edx, dword ptr [esi + 0x130]
0x00553E28: push     edx
0x00553E29: call     eax
0x00553E2B: jmp      0x553e2f
0x00553E2D: fstp     st(0)
0x00553E2F: cmp      dword ptr [esi + 0x144], 0
0x00553E36: jne      0x553ea9
0x00553E38: mov      edi, dword ptr [esi + 0x16c]
0x00553E3E: mov      eax, dword ptr [edi + 0x1bc]
0x00553E44: cdq      
0x00553E45: sub      eax, edx
0x00553E47: sar      eax, 1
0x00553E49: cmp      dword ptr [edi + 0x1c0], eax
0x00553E4F: jl       0x553ea9
0x00553E51: fldz     
0x00553E53: push     ebx
0x00553E54: fstp     dword ptr [esi + 0x18]
0x00553E57: mov      dword ptr [esi + 0x144], ebx
0x00553E5D: mov      eax, dword ptr [edi + 0x1bc]
0x00553E63: push     ebx
0x00553E64: cdq      
0x00553E65: push     0x3e8
0x00553E6A: lea      ecx, [esi + 0x194]
0x00553E70: sub      eax, edx
0x00553E72: push     0
0x00553E74: sar      eax, 1
0x00553E76: push     ecx
0x00553E77: mov      dword ptr [ecx], eax
0x00553E79: mov      ecx, dword ptr [0xb761e0]
0x00553E7F: push     0x98e2e4
0x00553E84: call     0x706620
0x00553E89: mov      eax, dword ptr [esi + 0x12c]
0x00553E8F: mov      eax, dword ptr [eax + 0x24]
0x00553E92: mov      ecx, dword ptr [esi + 0x1c]
0x00553E95: mov      edx, dword ptr [ecx]
0x00553E97: mov      edx, dword ptr [edx + 0x1a8]
0x00553E9D: push     0
0x00553E9F: push     eax
0x00553EA0: mov      eax, dword ptr [esi + 0x130]
0x00553EA6: push     eax
0x00553EA7: call     edx
0x00553EA9: cmp      dword ptr [esi + 0x148], 0
0x00553EB0: jne      0x5540ac
0x00553EB6: mov      eax, dword ptr [esi + 0x16c]
0x00553EBC: mov      ecx, dword ptr [eax + 0x1bc]
0x00553EC2: sub      ecx, dword ptr [eax + 0x1c0]
0x00553EC8: cmp      ecx, 0xa
0x00553ECB: jg       0x5540ac
0x00553ED1: fldz     
0x00553ED3: mov      eax, dword ptr [esi + 0x12c]
0x00553ED9: mov      ecx, dword ptr [esi + 0x1c]
0x00553EDC: fstp     dword ptr [esi + 0x18]
0x00553EDF: mov      dword ptr [esi + 0x148], ebx
0x00553EE5: mov      eax, dword ptr [eax + 0x2c]
0x00553EE8: mov      edx, dword ptr [ecx]
0x00553EEA: mov      edx, dword ptr [edx + 0x1a8]
0x00553EF0: push     0
0x00553EF2: push     eax
0x00553EF3: mov      eax, dword ptr [esi + 0x130]
0x00553EF9: push     eax
0x00553EFA: call     edx
0x00553EFC: jmp      0x5540ac
0x00553F01: cmp      eax, 3
0x00553F04: jne      0x5540aa
0x00553F0A: cmp      dword ptr [esi + 0x134], 0
0x00553F11: jne      0x553f9b
0x00553F17: mov      eax, dword ptr [esi + 0x16c]
0x00553F1D: fild     dword ptr [eax + 0x1c0]
0x00553F23: lea      ecx, [eax + 0x1c0]
0x00553F29: fild     dword ptr [eax + 0x1bc]
0x00553F2F: lea      edx, [eax + 0x1bc]
0x00553F35: fmul     qword ptr [0x98e4b0] ; [f32=0, f64=85, u32=0x00000000]
0x00553F3B: fdiv     qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x00553F41: fcompp   
0x00553F43: fnstsw   ax
0x00553F45: test     ah, 0x41
0x00553F48: jp       0x553f9b
0x00553F4A: push     ebx
0x00553F4B: fstp     dword ptr [esi + 0x18]
0x00553F4E: push     ebx
0x00553F4F: mov      dword ptr [esi + 0x134], ebx
0x00553F55: mov      edx, dword ptr [edx]
0x00553F57: sub      edx, dword ptr [ecx]
0x00553F59: push     0x3e8
0x00553F5E: lea      eax, [esi + 0x194]
0x00553F64: push     0
0x00553F66: push     eax
0x00553F67: mov      dword ptr [eax], edx
0x00553F69: mov      ecx, dword ptr [0xb761e0]
0x00553F6F: push     0x98e2f8
0x00553F74: call     0x706620
0x00553F79: mov      edx, dword ptr [esi + 0x12c]
0x00553F7F: mov      edx, dword ptr [edx + 0x34]
0x00553F82: mov      ecx, dword ptr [esi + 0x1c]
0x00553F85: mov      eax, dword ptr [ecx]
0x00553F87: mov      eax, dword ptr [eax + 0x1a8]
0x00553F8D: push     0
0x00553F8F: push     edx
0x00553F90: mov      edx, dword ptr [esi + 0x130]
0x00553F96: push     edx
0x00553F97: call     eax
0x00553F99: jmp      0x553f9d
0x00553F9B: fstp     st(0)
0x00553F9D: cmp      dword ptr [esi + 0x138], 0
0x00553FA4: jne      0x554017
0x00553FA6: mov      edi, dword ptr [esi + 0x16c]
0x00553FAC: mov      eax, dword ptr [edi + 0x1bc]
0x00553FB2: cdq      
0x00553FB3: sub      eax, edx
0x00553FB5: sar      eax, 1
0x00553FB7: cmp      dword ptr [edi + 0x1c0], eax
0x00553FBD: jl       0x554017
0x00553FBF: fldz     
0x00553FC1: push     ebx
0x00553FC2: fstp     dword ptr [esi + 0x18]
0x00553FC5: mov      dword ptr [esi + 0x138], ebx
0x00553FCB: mov      eax, dword ptr [edi + 0x1bc]
0x00553FD1: push     ebx
0x00553FD2: cdq      
0x00553FD3: push     0x3e8
0x00553FD8: lea      ecx, [esi + 0x194]
0x00553FDE: sub      eax, edx
0x00553FE0: push     0
0x00553FE2: sar      eax, 1
0x00553FE4: push     ecx
0x00553FE5: mov      dword ptr [ecx], eax
0x00553FE7: mov      ecx, dword ptr [0xb761e0]
0x00553FED: push     0x98e30c
0x00553FF2: call     0x706620
0x00553FF7: mov      eax, dword ptr [esi + 0x12c]
0x00553FFD: mov      eax, dword ptr [eax + 0x3c]
0x00554000: mov      ecx, dword ptr [esi + 0x1c]
0x00554003: mov      edx, dword ptr [ecx]
0x00554005: mov      edx, dword ptr [edx + 0x1a8]
0x0055400B: push     0
0x0055400D: push     eax
0x0055400E: mov      eax, dword ptr [esi + 0x130]
0x00554014: push     eax
0x00554015: call     edx
0x00554017: cmp      dword ptr [esi + 0x13c], 0
0x0055401E: jne      0x5540ac
0x00554024: mov      eax, dword ptr [esi + 0x16c]
0x0055402A: fild     dword ptr [eax + 0x1c0]
0x00554030: lea      ecx, [eax + 0x1c0]
0x00554036: fild     dword ptr [eax + 0x1bc]
0x0055403C: lea      edx, [eax + 0x1bc]
0x00554042: fmul     qword ptr [0x98e4a8] ; [f32=0, f64=95, u32=0x00000000]
0x00554048: fdiv     qword ptr [0x97ce38] ; [f32=0, f64=100, u32=0x00000000]
0x0055404E: fcompp   
0x00554050: fnstsw   ax
0x00554052: test     ah, 0x41
0x00554055: jp       0x5540ac
0x00554057: fldz     
0x00554059: push     ebx
0x0055405A: push     ebx
0x0055405B: fstp     dword ptr [esi + 0x18]
0x0055405E: mov      dword ptr [esi + 0x13c], ebx
0x00554064: mov      edx, dword ptr [edx]
0x00554066: sub      edx, dword ptr [ecx]
0x00554068: push     0x3e8
0x0055406D: lea      eax, [esi + 0x194]
0x00554073: push     0
0x00554075: push     eax
0x00554076: mov      dword ptr [eax], edx
0x00554078: mov      ecx, dword ptr [0xb761e0]
0x0055407E: push     0x98e320
0x00554083: call     0x706620
0x00554088: mov      edx, dword ptr [esi + 0x12c]
0x0055408E: mov      edx, dword ptr [edx + 0x44]
0x00554091: mov      ecx, dword ptr [esi + 0x1c]
0x00554094: mov      eax, dword ptr [ecx]
0x00554096: mov      eax, dword ptr [eax + 0x1a8]
0x0055409C: push     0
0x0055409E: push     edx
0x0055409F: mov      edx, dword ptr [esi + 0x130]
0x005540A5: push     edx
0x005540A6: call     eax
0x005540A8: jmp      0x5540ac
0x005540AA: fstp     st(0)
0x005540AC: fldz     
0x005540AE: fcomp    dword ptr [esi + 0x18]
0x005540B1: fnstsw   ax
0x005540B3: test     ah, 0x44
0x005540B6: jp       0x5540f3
0x005540B8: mov      eax, dword ptr [esi - 0x1a0]
0x005540BE: movzx    ecx, byte ptr [eax + 1]
0x005540C2: mov      edx, dword ptr [eax + 4]
0x005540C5: mov      eax, dword ptr [edx + 0x28]
0x005540C8: mov      ecx, dword ptr [eax + ecx*4]
0x005540CB: mov      edx, dword ptr [ecx + 0x114]
0x005540D1: push     0
0x005540D3: add      edx, 0x13e0
0x005540D9: push     edx
0x005540DA: push     0x98e334
0x005540DF: call     0x5710c0
0x005540E4: mov      ecx, dword ptr [esi + 0x1c]
0x005540E7: add      esp, 0xc
0x005540EA: push     ebx
0x005540EB: push     ebx
0x005540EC: push     ebx
0x005540ED: push     ebx
0x005540EE: call     0x7ba3e0
0x005540F3: pop      edi
0x005540F4: pop      esi
0x005540F5: pop      ebx
0x005540F6: ret      
0x005540F7: int3     
0x005540F8: int3     
0x005540F9: int3     
0x005540FA: int3     
0x005540FB: int3     
0x005540FC: int3     
0x005540FD: int3     
0x005540FE: int3     
0x005540FF: int3     
0x00554100: mov      eax, dword ptr [0xb1aa7c]
0x00554105: mov      ecx, dword ptr [eax + 0xc]
0x00554108: sub      esp, 0x10
0x0055410B: push     edi
0x0055410C: push     0x2c
0x0055410E: call     0x4c2bc0
0x00554113: mov      edi, eax
0x00554115: test     edi, edi
0x00554117: je       0x554303
0x0055411D: lea      ecx, [esp + 4]
0x00554121: test     cl, 0x7f
0x00554124: je       0x554135
0x00554126: mov      edx, ecx
0x00554128: push     8
0x0055412A: push     edx
0x0055412B: call     0x6a9700
0x00554130: add      esp, 8
0x00554133: jmp      0x55413f
0x00554135: xor      eax, eax
0x00554137: mov      dword ptr [esp + 4], eax
0x0055413B: mov      dword ptr [esp + 8], eax
0x0055413F: mov      eax, dword ptr [esp + 0x20]
0x00554143: mov      ecx, dword ptr [eax]
0x00554145: mov      eax, dword ptr [0xb1bba0]
0x0055414A: push     ebx
0x0055414B: push     esi
0x0055414C: lea      edx, [esp + 0xc]
0x00554150: push     edx
0x00554151: push     0
0x00554153: push     eax
0x00554154: mov      dword ptr [esp + 0x18], ecx
0x00554158: mov      dword ptr [esp + 0x1c], 0x64
0x00554160: call     0x52d190
0x00554165: mov      ecx, dword ptr [0xb1aa7c]
0x0055416B: mov      ecx, dword ptr [ecx + 0xc]
0x0055416E: add      esp, 0xc
0x00554171: push     0x2c
0x00554173: call     0x4c2bc0
0x00554178: mov      ecx, eax
0x0055417A: call     0x55b250
0x0055417F: mov      esi, dword ptr [esp + 0x2c]
0x00554183: mov      edx, dword ptr [esi + 0x2d4]
0x00554189: mov      eax, dword ptr [edx + 8]
0x0055418C: push     eax
0x0055418D: call     0x4e8fc0
0x00554192: mov      ebx, dword ptr [esi + 0x2d4]
0x00554198: add      esp, 4
0x0055419B: mov      dword ptr [esi + 0x2d8], eax
0x005541A1: mov      ebx, dword ptr [ebx + 4]
0x005541A4: mov      ecx, dword ptr [edi + 0x268]
0x005541AA: mov      edx, dword ptr [ecx]
0x005541AC: push     0
0x005541AE: push     ebx
0x005541AF: push     eax
0x005541B0: mov      eax, dword ptr [edx + 0x1a8]
0x005541B6: call     eax
0x005541B8: mov      ecx, dword ptr [0xb1aa7c]
0x005541BE: mov      ecx, dword ptr [ecx + 0xc]
0x005541C1: push     0x38
0x005541C3: call     0x4c2bc0
0x005541C8: mov      ebx, dword ptr [edi + 0x26c]
0x005541CE: mov      edi, dword ptr [ebx]
0x005541D0: push     0
0x005541D2: lea      edx, [esp + 0x18]
0x005541D6: push     edx
0x005541D7: mov      ecx, eax
0x005541D9: add      edi, 0x1a8
0x005541DF: call     0x516380
0x005541E4: mov      eax, dword ptr [eax + 4]
0x005541E7: mov      ecx, dword ptr [esi + 0x2d8]
0x005541ED: mov      edx, dword ptr [edi]
0x005541EF: push     eax
0x005541F0: push     ecx
0x005541F1: mov      ecx, ebx
0x005541F3: call     edx
0x005541F5: mov      eax, dword ptr [0xafce74]
0x005541FA: cmp      eax, 3
0x005541FD: jne      0x55423f
0x005541FF: mov      ecx, dword ptr [0xb49c68]
0x00554205: mov      eax, dword ptr [esi + 0x314]
0x0055420B: mov      dword ptr [eax + 0x1bc], ecx
0x00554211: mov      edx, dword ptr [esi + 0x314]
0x00554217: mov      dword ptr [esi + 0x1ac], 2
0x00554221: mov      dword ptr [edx + 0x1a8], 1
0x0055422B: mov      eax, dword ptr [esi + 0x314]
0x00554231: mov      ecx, dword ptr [eax + 0x1bc]
0x00554237: mov      dword ptr [esi + 0x33c], ecx
0x0055423D: jmp      0x554281
0x0055423F: cmp      eax, 2
0x00554242: jne      0x554281
0x00554244: mov      eax, dword ptr [0xb49c68]
0x00554249: mov      edx, dword ptr [esi + 0x314]
0x0055424F: mov      dword ptr [edx + 0x1bc], eax
0x00554255: mov      ecx, dword ptr [esi + 0x314]
0x0055425B: mov      dword ptr [esi + 0x1ac], 3
0x00554265: mov      dword ptr [ecx + 0x1a8], 2
0x0055426F: mov      edx, dword ptr [esi + 0x314]
0x00554275: mov      eax, dword ptr [edx + 0x1bc]
0x0055427B: mov      dword ptr [esi + 0x33c], eax
0x00554281: mov      esi, dword ptr [esi + 8]
0x00554284: mov      edx, dword ptr [esi + 4]
0x00554287: movzx    ecx, byte ptr [esi + 1]
0x0055428B: mov      eax, dword ptr [edx + 0x28]
0x0055428E: mov      ecx, dword ptr [eax + ecx*4]
0x00554291: mov      edx, dword ptr [0x95fe04] ; [u32=0x74E35252]
0x00554297: mov      ecx, dword ptr [ecx + 0x114]
0x0055429D: push     0
0x0055429F: push     0
0x005542A1: push     edx
0x005542A2: call     0x7cd3c0
0x005542A7: pop      esi
0x005542A8: pop      ebx
0x005542A9: test     eax, eax
0x005542AB: je       0x554303
0x005542AD: movzx    ecx, byte ptr [eax + 1]
0x005542B1: mov      edx, dword ptr [eax + 4]
0x005542B4: mov      eax, dword ptr [edx + 0x14]
0x005542B7: lea      ecx, [ecx + ecx*8]
0x005542BA: lea      eax, [eax + ecx*4]
0x005542BD: mov      ecx, 0x1f
0x005542C2: cmp      byte ptr [eax + 0x14], cl
0x005542C5: jne      0x5542cc
0x005542C7: mov      eax, dword ptr [eax + 4]
0x005542CA: jmp      0x5542f8
0x005542CC: cmp      byte ptr [eax + 0x15], cl
0x005542CF: jne      0x5542d6
0x005542D1: mov      eax, dword ptr [eax + 8]
0x005542D4: jmp      0x5542f8
0x005542D6: cmp      byte ptr [eax + 0x16], cl
0x005542D9: jne      0x5542e0
0x005542DB: mov      eax, dword ptr [eax + 0xc]
0x005542DE: jmp      0x5542f8
0x005542E0: cmp      byte ptr [eax + 0x17], cl
0x005542E3: jne      0x5542ea
0x005542E5: mov      eax, dword ptr [eax + 0x10]
0x005542E8: jmp      0x5542f8
0x005542EA: mov      eax, dword ptr [eax]
0x005542EC: test     eax, eax
0x005542EE: je       0x554303
0x005542F0: push     ecx
0x005542F1: mov      ecx, eax
0x005542F3: call     0x461400
0x005542F8: test     eax, eax
0x005542FA: je       0x554303
0x005542FC: mov      ecx, eax
0x005542FE: call     0x50fb40
0x00554303: pop      edi
0x00554304: add      esp, 0x10
0x00554307: ret      
0x00554308: int3     
0x00554309: int3     
0x0055430A: int3     
0x0055430B: int3     
0x0055430C: int3     
0x0055430D: int3     
0x0055430E: int3     
0x0055430F: int3     
0x00554310: mov      eax, dword ptr [esp + 0xc]
0x00554314: mov      ecx, dword ptr [eax]
0x00554316: movzx    eax, byte ptr [ecx + 1]
0x0055431A: mov      ecx, dword ptr [ecx + 4]
0x0055431D: mov      edx, dword ptr [ecx + 8]
0x00554320: test     dword ptr [edx + eax*4], 0x40000
0x00554327: je       0x55436f
0x00554329: mov      ecx, dword ptr [ecx + 0x14]
0x0055432C: lea      eax, [eax + eax*8]
0x0055432F: lea      eax, [ecx + eax*4]
0x00554332: mov      ecx, 0x1c
0x00554337: cmp      byte ptr [eax + 0x14], cl
0x0055433A: jne      0x554341
0x0055433C: mov      eax, dword ptr [eax + 4]
0x0055433F: jmp      0x554371
0x00554341: cmp      byte ptr [eax + 0x15], cl
0x00554344: jne      0x55434b
0x00554346: mov      eax, dword ptr [eax + 8]
0x00554349: jmp      0x554371
0x0055434B: cmp      byte ptr [eax + 0x16], cl
0x0055434E: jne      0x554355
0x00554350: mov      eax, dword ptr [eax + 0xc]
0x00554353: jmp      0x554371
0x00554355: cmp      byte ptr [eax + 0x17], cl
0x00554358: jne      0x55435f
0x0055435A: mov      eax, dword ptr [eax + 0x10]
0x0055435D: jmp      0x554371
0x0055435F: mov      eax, dword ptr [eax]
0x00554361: test     eax, eax
0x00554363: je       0x55436f
0x00554365: push     ecx
0x00554366: mov      ecx, eax
0x00554368: call     0x461400
0x0055436D: jmp      0x554371
0x0055436F: xor      eax, eax
0x00554371: mov      edx, dword ptr [eax + 0x1dc]
0x00554377: fldz     
0x00554379: push     esi
0x0055437A: movsx    esi, byte ptr [edx]
0x0055437D: push     edi
0x0055437E: mov      edi, dword ptr [esp + 0x18]
0x00554382: mov      eax, dword ptr [edi + esi*4 + 0x228]
0x00554389: push     0x51b1e251
0x0055438E: lea      ecx, [eax + 0x1a8]
0x00554394: fstp     dword ptr [edi + esi*4 + 0x328]
0x0055439B: mov      dword ptr [edi + esi*4 + 0x318], 0
0x005543A6: call     0x5691a0
0x005543AB: test     eax, eax
0x005543AD: je       0x5543bb
0x005543AF: cmp      dword ptr [eax + 0x50], 5
0x005543B3: jl       0x5543bb
0x005543B5: mov      dword ptr [edi + 0x338], esi
0x005543BB: pop      edi
0x005543BC: pop      esi
0x005543BD: ret      
0x005543BE: int3     
0x005543BF: int3     

--- CModeMultiCollecte::vfunc_4 @ 0x005543C0 ---
0x005543C0: push     esi
0x005543C1: mov      esi, ecx
0x005543C3: cmp      dword ptr [esi + 0xa0], 1
0x005543CA: jne      0x554474
0x005543D0: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x005543D6: fcomp    dword ptr [esi + 0x18]
0x005543D9: fnstsw   ax
0x005543DB: test     ah, 0x44
0x005543DE: jp       0x554474
0x005543E4: mov      eax, dword ptr [0xb01b28]
0x005543E9: push     0x98e350
0x005543EE: push     0
0x005543F0: push     eax
0x005543F1: push     0x80000
0x005543F6: push     0
0x005543F8: push     7
0x005543FA: push     0
0x005543FC: push     1
0x005543FE: push     0xff
0x00554403: call     0x681de0
0x00554408: mov      ecx, dword ptr [esi + 0x1c]
0x0055440B: mov      edx, dword ptr [ecx]
0x0055440D: mov      eax, dword ptr [esi + 0x130]
0x00554413: mov      edx, dword ptr [edx + 0x1a8]
0x00554419: add      esp, 0x24
0x0055441C: push     0
0x0055441E: push     0x4018172a
0x00554423: push     eax
0x00554424: call     edx
0x00554426: fldz     
0x00554428: mov      eax, dword ptr [esi - 0x1a0]
0x0055442E: fstp     dword ptr [esi + 0x18]
0x00554431: movzx    ecx, byte ptr [eax + 1]
0x00554435: mov      edx, dword ptr [eax + 4]
0x00554438: mov      eax, dword ptr [edx + 0x28]
0x0055443B: mov      ecx, dword ptr [eax + ecx*4]
0x0055443E: mov      edx, dword ptr [ecx + 0x114]
0x00554444: push     0
0x00554446: add      edx, 0x13e0
0x0055444C: push     edx
0x0055444D: push     0x98e36c
0x00554452: call     0x5710c0
0x00554457: mov      ecx, dword ptr [esi + 0x1c]
0x0055445A: add      esp, 0xc
0x0055445D: push     1
0x0055445F: push     1
0x00554461: push     1
0x00554463: push     1
0x00554465: call     0x7ba3e0
0x0055446A: mov      dword ptr [esi + 0xa0], 0
0x00554474: pop      esi
0x00554475: ret      
0x00554476: int3     
0x00554477: int3     
0x00554478: int3     
0x00554479: int3     
0x0055447A: int3     
0x0055447B: int3     
0x0055447C: int3     
0x0055447D: int3     
0x0055447E: int3     
0x0055447F: int3     

--- CModeMultiCollecte::vfunc_48 @ 0x00554480 ---
0x00554480: push     -1
0x00554482: push     0x946cea
0x00554487: mov      eax, dword ptr fs:[0]
0x0055448D: push     eax
0x0055448E: sub      esp, 0x20
0x00554491: push     ebx
0x00554492: push     esi
0x00554493: push     edi
0x00554494: mov      eax, dword ptr [0xb089c8]
0x00554499: xor      eax, esp
0x0055449B: push     eax
0x0055449C: lea      eax, [esp + 0x30]
0x005544A0: mov      dword ptr fs:[0], eax
0x005544A6: mov      esi, ecx
0x005544A8: call     0x795870
0x005544AD: mov      ecx, esi
0x005544AF: call     0x553400
0x005544B4: mov      eax, dword ptr [esi + 0x1a8]
0x005544BA: mov      edx, dword ptr [eax + 0x10]
0x005544BD: lea      edi, [esi + 0x1a8]
0x005544C3: mov      ecx, edi
0x005544C5: call     edx
0x005544C7: mov      eax, dword ptr [esi + 0x314]
0x005544CD: cmp      dword ptr [eax + 0x1bc], 0
0x005544D4: je       0x55468a
0x005544DA: mov      ecx, dword ptr [eax + 0x1c0]
0x005544E0: cmp      ecx, dword ptr [eax + 0x1bc]
0x005544E6: jl       0x55468a
0x005544EC: mov      edx, dword ptr [esi + 0x310]
0x005544F2: cmp      byte ptr [edx + 0x18], 0
0x005544F6: jne      0x55468a
0x005544FC: mov      eax, dword ptr [esi + 8]
0x005544FF: movzx    ecx, byte ptr [eax + 1]
0x00554503: mov      edx, dword ptr [eax + 4]
0x00554506: mov      eax, dword ptr [edx + 0x28]
0x00554509: mov      eax, dword ptr [eax + ecx*4]
0x0055450C: mov      ecx, dword ptr [0x95f860] ; [u32=0x9A3BD65C]
0x00554512: mov      eax, dword ptr [eax + 0x114]
0x00554518: push     0
0x0055451A: push     0
0x0055451C: push     ecx
0x0055451D: mov      ecx, eax
0x0055451F: call     0x7cd3c0
0x00554524: movzx    ecx, byte ptr [eax + 1]
0x00554528: mov      eax, dword ptr [eax + 4]
0x0055452B: lea      edx, [ecx + ecx*8]
0x0055452E: mov      ecx, dword ptr [eax + 0x14]
0x00554531: lea      eax, [ecx + edx*4]
0x00554534: mov      ecx, 0x1f
0x00554539: cmp      byte ptr [eax + 0x14], cl
0x0055453C: jne      0x554543
0x0055453E: mov      edi, dword ptr [eax + 4]
0x00554541: jmp      0x554575
0x00554543: cmp      byte ptr [eax + 0x15], cl
0x00554546: jne      0x55454d
0x00554548: mov      edi, dword ptr [eax + 8]
0x0055454B: jmp      0x554575
0x0055454D: cmp      byte ptr [eax + 0x16], cl
0x00554550: jne      0x554557
0x00554552: mov      edi, dword ptr [eax + 0xc]
0x00554555: jmp      0x554575
0x00554557: cmp      byte ptr [eax + 0x17], cl
0x0055455A: jne      0x554561
0x0055455C: mov      edi, dword ptr [eax + 0x10]
0x0055455F: jmp      0x554575
0x00554561: mov      eax, dword ptr [eax]
0x00554563: test     eax, eax
0x00554565: je       0x554573
0x00554567: push     ecx
0x00554568: mov      ecx, eax
0x0055456A: call     0x461400
0x0055456F: mov      edi, eax
0x00554571: jmp      0x554575
0x00554573: xor      edi, edi
0x00554575: mov      ecx, dword ptr [esi + 8]
0x00554578: push     1
0x0055457A: push     1
0x0055457C: push     0
0x0055457E: push     0
0x00554580: call     0x7f8950
0x00554585: mov      ecx, edi
0x00554587: call     0x5283e0
0x0055458C: mov      esi, dword ptr [esi + 8]
0x0055458F: mov      eax, dword ptr [esi + 4]
0x00554592: movzx    edx, byte ptr [esi + 1]
0x00554596: mov      ecx, dword ptr [eax + 0x28]
0x00554599: mov      eax, dword ptr [ecx + edx*4]
0x0055459C: test     eax, eax
0x0055459E: je       0x5545a8
0x005545A0: mov      eax, dword ptr [eax + 0x114]
0x005545A6: jmp      0x5545aa
0x005545A8: xor      eax, eax
0x005545AA: mov      edx, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x005545B0: push     eax
0x005545B1: push     edx
0x005545B2: lea      ecx, [esp + 0x18]
0x005545B6: call     0x509b10
0x005545BB: lea      ecx, [esp + 0x10]
0x005545BF: mov      dword ptr [esp + 0x38], 0
0x005545C7: call     0x509ba0
0x005545CC: test     eax, eax
0x005545CE: je       0x554666
0x005545D4: mov      ebx, 0x1c
0x005545D9: lea      esp, [esp]
0x005545E0: movzx    ecx, byte ptr [eax + 1]
0x005545E4: mov      eax, dword ptr [eax + 4]
0x005545E7: mov      edx, dword ptr [eax + 8]
0x005545EA: test     dword ptr [edx + ecx*4], 0x40000
0x005545F1: je       0x554635
0x005545F3: mov      edx, dword ptr [eax + 0x14]
0x005545F6: lea      ecx, [ecx + ecx*8]
0x005545F9: cmp      byte ptr [edx + ecx*4 + 0x14], bl
0x005545FD: lea      eax, [edx + ecx*4]
0x00554600: jne      0x554607
0x00554602: mov      eax, dword ptr [eax + 4]
0x00554605: jmp      0x554637
0x00554607: cmp      byte ptr [eax + 0x15], bl
0x0055460A: jne      0x554611
0x0055460C: mov      eax, dword ptr [eax + 8]
0x0055460F: jmp      0x554637
0x00554611: cmp      byte ptr [eax + 0x16], bl
0x00554614: jne      0x55461b
0x00554616: mov      eax, dword ptr [eax + 0xc]
0x00554619: jmp      0x554637
0x0055461B: cmp      byte ptr [eax + 0x17], bl
0x0055461E: jne      0x554625
0x00554620: mov      eax, dword ptr [eax + 0x10]
0x00554623: jmp      0x554637
0x00554625: mov      eax, dword ptr [eax]
0x00554627: test     eax, eax
0x00554629: je       0x554635
0x0055462B: push     ebx
0x0055462C: mov      ecx, eax
0x0055462E: call     0x461400
0x00554633: jmp      0x554637
0x00554635: xor      eax, eax
0x00554637: push     0x51b1e251
0x0055463C: lea      ecx, [eax + 0x1a8]
0x00554642: call     0x5691a0
0x00554647: test     eax, eax
0x00554649: je       0x554655
0x0055464B: mov      dword ptr [eax + 0x180], 1
0x00554655: lea      ecx, [esp + 0x10]
0x00554659: call     0x509ba0
0x0055465E: test     eax, eax
0x00554660: jne      0x5545e0
0x00554666: lea      ecx, [esp + 0x20]
0x0055466A: mov      dword ptr [esp + 0x38], 0xffffffff
0x00554672: call     0x509910
0x00554677: mov      ecx, dword ptr [esp + 0x30]
0x0055467B: mov      dword ptr fs:[0], ecx
0x00554682: pop      ecx
0x00554683: pop      edi
0x00554684: pop      esi
0x00554685: pop      ebx
0x00554686: add      esp, 0x2c
0x00554689: ret      
0x0055468A: cmp      dword ptr [esi + 0x1d0], 1
0x00554691: jle      0x5546a5
0x00554693: mov      eax, dword ptr [edi]
0x00554695: mov      edx, dword ptr [eax + 0xc]
0x00554698: mov      ecx, edi
0x0055469A: call     edx
0x0055469C: mov      eax, dword ptr [edi]
0x0055469E: mov      edx, dword ptr [eax + 8]
0x005546A1: mov      ecx, edi
0x005546A3: call     edx
0x005546A5: mov      ecx, dword ptr [esp + 0x30]
0x005546A9: mov      dword ptr fs:[0], ecx
0x005546B0: pop      ecx
0x005546B1: pop      edi
0x005546B2: pop      esi
0x005546B3: pop      ebx
0x005546B4: add      esp, 0x2c
0x005546B7: ret      
0x005546B8: int3     
0x005546B9: int3     
0x005546BA: int3     
0x005546BB: int3     
0x005546BC: int3     
0x005546BD: int3     
0x005546BE: int3     
0x005546BF: int3     
0x005546C0: push     -1
0x005546C2: push     0x946d0d
0x005546C7: mov      eax, dword ptr fs:[0]
0x005546CD: push     eax
0x005546CE: sub      esp, 0x20
0x005546D1: push     ebx
0x005546D2: push     esi
0x005546D3: mov      eax, dword ptr [0xb089c8]
0x005546D8: xor      eax, esp
0x005546DA: push     eax
0x005546DB: lea      eax, [esp + 0x2c]
0x005546DF: mov      dword ptr fs:[0], eax
0x005546E5: mov      esi, dword ptr [esp + 0x48]
0x005546E9: fldz     
0x005546EB: mov      eax, dword ptr [esi + 8]
0x005546EE: movzx    ecx, byte ptr [eax + 1]
0x005546F2: mov      edx, dword ptr [eax + 4]
0x005546F5: mov      eax, dword ptr [edx + 0x28]
0x005546F8: mov      eax, dword ptr [eax + ecx*4]
0x005546FB: mov      eax, dword ptr [eax + 0x114]
0x00554701: push     eax
0x00554702: fstp     dword ptr [esi + 0x240]
0x00554708: mov      ecx, dword ptr [0x95fc20] ; [f32=2.65225e+06, u32=0x4A21E16E]
0x0055470E: push     ecx
0x0055470F: lea      ecx, [esp + 0x14]
0x00554713: call     0x509b10
0x00554718: lea      ecx, [esp + 0xc]
0x0055471C: mov      dword ptr [esp + 0x34], 0
0x00554724: call     0x509ba0
0x00554729: test     eax, eax
0x0055472B: je       0x5547bd
0x00554731: mov      ebx, 0x1c
0x00554736: movzx    ecx, byte ptr [eax + 1]
0x0055473A: mov      eax, dword ptr [eax + 4]
0x0055473D: mov      edx, dword ptr [eax + 8]
0x00554740: test     dword ptr [edx + ecx*4], 0x40000
0x00554747: je       0x55478b
0x00554749: mov      edx, dword ptr [eax + 0x14]
0x0055474C: lea      ecx, [ecx + ecx*8]
0x0055474F: cmp      byte ptr [edx + ecx*4 + 0x14], bl
0x00554753: lea      eax, [edx + ecx*4]
0x00554756: jne      0x55475d
0x00554758: mov      eax, dword ptr [eax + 4]
0x0055475B: jmp      0x55478d
0x0055475D: cmp      byte ptr [eax + 0x15], bl
0x00554760: jne      0x554767
0x00554762: mov      eax, dword ptr [eax + 8]
0x00554765: jmp      0x55478d
0x00554767: cmp      byte ptr [eax + 0x16], bl
0x0055476A: jne      0x554771
0x0055476C: mov      eax, dword ptr [eax + 0xc]
0x0055476F: jmp      0x55478d
0x00554771: cmp      byte ptr [eax + 0x17], bl
0x00554774: jne      0x55477b
0x00554776: mov      eax, dword ptr [eax + 0x10]
0x00554779: jmp      0x55478d
0x0055477B: mov      eax, dword ptr [eax]
0x0055477D: test     eax, eax
0x0055477F: je       0x55478b
0x00554781: push     ebx
0x00554782: mov      ecx, eax
0x00554784: call     0x461400
0x00554789: jmp      0x55478d
0x0055478B: xor      eax, eax
0x0055478D: mov      ecx, dword ptr [eax + 0x1dc]
0x00554793: movsx    ecx, byte ptr [ecx]
0x00554796: mov      dword ptr [esi + ecx*4 + 0x228], eax
0x0055479D: cmp      dword ptr [eax + 0x1ec], 0
0x005547A4: je       0x5547ac
0x005547A6: inc      dword ptr [esi + 0x1d0]
0x005547AC: lea      ecx, [esp + 0xc]
0x005547B0: call     0x509ba0
0x005547B5: test     eax, eax
0x005547B7: jne      0x554736
0x005547BD: mov      ecx, dword ptr [esi + 8]
0x005547C0: push     1
0x005547C2: push     1
0x005547C4: push     1
0x005547C6: push     1
0x005547C8: call     0x7f8950
0x005547CD: lea      ecx, [esp + 0x1c]
0x005547D1: mov      dword ptr [esp + 0x34], 0xffffffff
0x005547D9: call     0x509910
0x005547DE: mov      ecx, dword ptr [esp + 0x2c]
0x005547E2: mov      dword ptr fs:[0], ecx
0x005547E9: pop      ecx
0x005547EA: pop      esi
0x005547EB: pop      ebx
0x005547EC: add      esp, 0x2c
0x005547EF: ret      

--- CModeMultiCollecte::vfunc_9 @ 0x005547F0 ---
0x005547F0: push     ebx
0x005547F1: push     esi
0x005547F2: push     edi
0x005547F3: mov      edi, ecx
0x005547F5: mov      ecx, dword ptr [edi + 8]
0x005547F8: lea      eax, [edi + 0x60]
0x005547FB: push     eax
0x005547FC: push     ecx
0x005547FD: call     0x5687c0
0x00554802: mov      ecx, dword ptr [edi + 0xc]
0x00554805: mov      esi, dword ptr [esp + 0x1c]
0x00554809: add      esp, 8
0x0055480C: test     ecx, ecx
0x0055480E: je       0x554830
0x00554810: mov      eax, dword ptr [edi + 8]
0x00554813: movzx    edx, byte ptr [eax + 1]
0x00554817: mov      ebx, dword ptr [eax + 4]
0x0055481A: mov      ebx, dword ptr [ebx + 0x38]
0x0055481D: cmp      ecx, dword ptr [ebx + edx*4]
0x00554820: je       0x554830
0x00554822: mov      edx, dword ptr [ecx]
0x00554824: mov      edx, dword ptr [edx + 0x24]
0x00554827: push     esi
0x00554828: push     eax
0x00554829: mov      eax, dword ptr [esp + 0x18]
0x0055482D: push     eax
0x0055482E: call     edx
0x00554830: mov      eax, esi
0x00554832: sub      eax, 2
0x00554835: jne      0x554c0b
0x0055483B: mov      ecx, dword ptr [0xb1bab0]
0x00554841: push     ebp
0x00554842: push     edi
0x00554843: push     0x5546c0
0x00554848: lea      eax, [edi + 0x2fc]
0x0055484E: push     eax
0x0055484F: push     ecx
0x00554850: call     0x52d1d0
0x00554855: mov      eax, dword ptr [0xb1baa0]
0x0055485A: push     edi
0x0055485B: push     0x5533b0
0x00554860: lea      edx, [edi + 0x300]
0x00554866: push     edx
0x00554867: push     eax
0x00554868: call     0x52d1d0
0x0055486D: mov      edx, dword ptr [0xb1baac]
0x00554873: push     edi
0x00554874: push     0x554100
0x00554879: lea      ecx, [edi + 0x304]
0x0055487F: push     ecx
0x00554880: push     edx
0x00554881: call     0x52d1d0
0x00554886: mov      ecx, dword ptr [0xb1bac4]
0x0055488C: push     edi
0x0055488D: push     0x554310
0x00554892: lea      eax, [edi + 0x30c]
0x00554898: push     eax
0x00554899: push     ecx
0x0055489A: call     0x52d1d0
0x0055489F: mov      eax, dword ptr [edi + 8]
0x005548A2: movzx    edx, byte ptr [eax + 1]
0x005548A6: mov      eax, dword ptr [eax + 4]
0x005548A9: mov      ecx, dword ptr [eax + 0x38]
0x005548AC: mov      ebx, dword ptr [ecx + edx*4]
0x005548AF: lea      ebp, [ebx + 0x38]
0x005548B2: lea      esi, [ebp + 8]
0x005548B5: add      esp, 0x40
0x005548B8: mov      ecx, esi
0x005548BA: mov      dword ptr [edi + 0x310], ebp
0x005548C0: call     0x7bfe00
0x005548C5: test     eax, eax
0x005548C7: je       0x5548ef
0x005548C9: mov      ecx, esi
0x005548CB: call     0x7bfe00
0x005548D0: test     eax, eax
0x005548D2: je       0x55490c
0x005548D4: movzx    eax, byte ptr [esi]
0x005548D7: lea      edx, [eax + eax*2]
0x005548DA: mov      eax, dword ptr [0xb78a28]
0x005548DF: mov      ecx, dword ptr [eax + edx*4 + 8]
0x005548E3: movzx    edx, byte ptr [esi + 1]
0x005548E7: mov      eax, dword ptr [ecx + 0x78]
0x005548EA: mov      eax, dword ptr [eax + edx*4]
0x005548ED: jmp      0x55490e
0x005548EF: mov      ecx, dword ptr [0xb79350]
0x005548F5: test     ecx, ecx
0x005548F7: je       0x55490c
0x005548F9: mov      edx, dword ptr [ebp + 4]
0x005548FC: mov      eax, dword ptr [ebp]
0x005548FF: push     edx
0x00554900: push     0
0x00554902: push     0
0x00554904: push     eax
0x00554905: call     0x7cd120
0x0055490A: jmp      0x55490e
0x0055490C: xor      eax, eax
0x0055490E: movzx    ecx, byte ptr [eax + 1]
0x00554912: mov      eax, dword ptr [eax + 4]
0x00554915: mov      edx, dword ptr [eax + 8]
0x00554918: test     dword ptr [edx + ecx*4], 0x40000
0x0055491F: je       0x554967
0x00554921: mov      edx, dword ptr [eax + 0x14]
0x00554924: lea      ecx, [ecx + ecx*8]
0x00554927: lea      eax, [edx + ecx*4]
0x0055492A: mov      ecx, 0x1c
0x0055492F: cmp      byte ptr [eax + 0x14], cl
0x00554932: jne      0x554939
0x00554934: mov      eax, dword ptr [eax + 4]
0x00554937: jmp      0x554969
0x00554939: cmp      byte ptr [eax + 0x15], cl
0x0055493C: jne      0x554943
0x0055493E: mov      eax, dword ptr [eax + 8]
0x00554941: jmp      0x554969
0x00554943: cmp      byte ptr [eax + 0x16], cl
0x00554946: jne      0x55494d
0x00554948: mov      eax, dword ptr [eax + 0xc]
0x0055494B: jmp      0x554969
0x0055494D: cmp      byte ptr [eax + 0x17], cl
0x00554950: jne      0x554957
0x00554952: mov      eax, dword ptr [eax + 0x10]
0x00554955: jmp      0x554969
0x00554957: mov      eax, dword ptr [eax]
0x00554959: test     eax, eax
0x0055495B: je       0x554967
0x0055495D: push     ecx
0x0055495E: mov      ecx, eax
0x00554960: call     0x461400
0x00554965: jmp      0x554969
0x00554967: xor      eax, eax
0x00554969: lea      esi, [ebp + 0x14]
0x0055496C: add      ebx, 0x54
0x0055496F: mov      ecx, esi
0x00554971: mov      dword ptr [edi + 0x314], eax
0x00554977: mov      dword ptr [edi + 0x2d4], ebx
0x0055497D: call     0x7bfe00
0x00554982: test     eax, eax
0x00554984: je       0x5549ad
0x00554986: mov      ecx, esi
0x00554988: call     0x7bfe00
0x0055498D: test     eax, eax
0x0055498F: je       0x5549ca
0x00554991: movzx    eax, byte ptr [esi]
0x00554994: mov      ecx, dword ptr [0xb78a28]
0x0055499A: lea      eax, [eax + eax*2]
0x0055499D: mov      edx, dword ptr [ecx + eax*4 + 8]
0x005549A1: movzx    eax, byte ptr [esi + 1]
0x005549A5: mov      ecx, dword ptr [edx + 0x78]
0x005549A8: mov      eax, dword ptr [ecx + eax*4]
0x005549AB: jmp      0x5549cc
0x005549AD: mov      ecx, dword ptr [0xb79350]
0x005549B3: test     ecx, ecx
0x005549B5: je       0x5549ca
0x005549B7: mov      edx, dword ptr [ebp + 0x10]
0x005549BA: mov      eax, dword ptr [ebp + 0xc]
0x005549BD: push     edx
0x005549BE: push     0
0x005549C0: push     0
0x005549C2: push     eax
0x005549C3: call     0x7cd120
0x005549C8: jmp      0x5549cc
0x005549CA: xor      eax, eax
0x005549CC: movzx    ecx, byte ptr [eax + 1]
0x005549D0: mov      edx, dword ptr [eax + 4]
0x005549D3: mov      eax, dword ptr [edx + 0x14]
0x005549D6: lea      ecx, [ecx + ecx*8]
0x005549D9: lea      eax, [eax + ecx*4]
0x005549DC: mov      ebx, 0x17
0x005549E1: cmp      byte ptr [eax + 0x14], bl
0x005549E4: jne      0x5549eb
0x005549E6: mov      eax, dword ptr [eax + 4]
0x005549E9: jmp      0x554a1b
0x005549EB: cmp      byte ptr [eax + 0x15], bl
0x005549EE: jne      0x5549f5
0x005549F0: mov      eax, dword ptr [eax + 8]
0x005549F3: jmp      0x554a1b
0x005549F5: cmp      byte ptr [eax + 0x16], bl
0x005549F8: jne      0x5549ff
0x005549FA: mov      eax, dword ptr [eax + 0xc]
0x005549FD: jmp      0x554a1b
0x005549FF: cmp      byte ptr [eax + 0x17], bl
0x00554A02: jne      0x554a09
0x00554A04: mov      eax, dword ptr [eax + 0x10]
0x00554A07: jmp      0x554a1b
0x00554A09: mov      eax, dword ptr [eax]
0x00554A0B: test     eax, eax
0x00554A0D: je       0x554a19
0x00554A0F: push     ebx
0x00554A10: mov      ecx, eax
0x00554A12: call     0x461400
0x00554A17: jmp      0x554a1b
0x00554A19: xor      eax, eax
0x00554A1B: push     1
0x00554A1D: push     1
0x00554A1F: push     0
0x00554A21: push     0
0x00554A23: mov      ecx, eax
0x00554A25: mov      dword ptr [edi + 0x1c4], eax
0x00554A2B: call     0x7ba3e0
0x00554A30: mov      esi, dword ptr [edi + 0x2d4]
0x00554A36: add      esi, 0x54
0x00554A39: lea      ebp, [esi + 8]
0x00554A3C: mov      ecx, ebp
0x00554A3E: call     0x7bfe00
0x00554A43: test     eax, eax
0x00554A45: je       0x554a6f
0x00554A47: mov      ecx, ebp
0x00554A49: call     0x7bfe00
0x00554A4E: test     eax, eax
0x00554A50: je       0x554a8b
0x00554A52: movzx    eax, byte ptr [ebp]
0x00554A56: mov      edx, dword ptr [0xb78a28]
0x00554A5C: lea      ecx, [eax + eax*2]
0x00554A5F: mov      eax, dword ptr [edx + ecx*4 + 8]
0x00554A63: movzx    ecx, byte ptr [ebp + 1]
0x00554A67: mov      edx, dword ptr [eax + 0x78]
0x00554A6A: mov      eax, dword ptr [edx + ecx*4]
0x00554A6D: jmp      0x554a8d
0x00554A6F: mov      ecx, dword ptr [0xb79350]
0x00554A75: test     ecx, ecx
0x00554A77: je       0x554a8b
0x00554A79: mov      eax, dword ptr [esi + 4]
0x00554A7C: mov      edx, dword ptr [esi]
0x00554A7E: push     eax
0x00554A7F: push     0
0x00554A81: push     0
0x00554A83: push     edx
0x00554A84: call     0x7cd120
0x00554A89: jmp      0x554a8d
0x00554A8B: xor      eax, eax
0x00554A8D: movzx    ecx, byte ptr [eax + 1]
0x00554A91: mov      edx, dword ptr [eax + 4]
0x00554A94: mov      eax, dword ptr [edx + 0x14]
0x00554A97: lea      ecx, [ecx + ecx*8]
0x00554A9A: cmp      byte ptr [eax + ecx*4 + 0x14], bl
0x00554A9E: lea      eax, [eax + ecx*4]
0x00554AA1: jne      0x554aa8
0x00554AA3: mov      eax, dword ptr [eax + 4]
0x00554AA6: jmp      0x554ad8
0x00554AA8: cmp      byte ptr [eax + 0x15], bl
0x00554AAB: jne      0x554ab2
0x00554AAD: mov      eax, dword ptr [eax + 8]
0x00554AB0: jmp      0x554ad8
0x00554AB2: cmp      byte ptr [eax + 0x16], bl
0x00554AB5: jne      0x554abc
0x00554AB7: mov      eax, dword ptr [eax + 0xc]
0x00554ABA: jmp      0x554ad8
0x00554ABC: cmp      byte ptr [eax + 0x17], bl
0x00554ABF: jne      0x554ac6
0x00554AC1: mov      eax, dword ptr [eax + 0x10]
0x00554AC4: jmp      0x554ad8
0x00554AC6: mov      eax, dword ptr [eax]
0x00554AC8: test     eax, eax
0x00554ACA: je       0x554ad6
0x00554ACC: push     ebx
0x00554ACD: mov      ecx, eax
0x00554ACF: call     0x461400
0x00554AD4: jmp      0x554ad8
0x00554AD6: xor      eax, eax
0x00554AD8: mov      esi, dword ptr [edi + 0x2d4]
0x00554ADE: add      esi, 0x48
0x00554AE1: lea      ebp, [esi + 8]
0x00554AE4: mov      ecx, ebp
0x00554AE6: mov      dword ptr [edi + 0x1c8], eax
0x00554AEC: call     0x7bfe00
0x00554AF1: test     eax, eax
0x00554AF3: je       0x554b1d
0x00554AF5: mov      ecx, ebp
0x00554AF7: call     0x7bfe00
0x00554AFC: test     eax, eax
0x00554AFE: je       0x554b39
0x00554B00: movzx    eax, byte ptr [ebp]
0x00554B04: mov      edx, dword ptr [0xb78a28]
0x00554B0A: lea      ecx, [eax + eax*2]
0x00554B0D: mov      eax, dword ptr [edx + ecx*4 + 8]
0x00554B11: movzx    ecx, byte ptr [ebp + 1]
0x00554B15: mov      edx, dword ptr [eax + 0x78]
0x00554B18: mov      eax, dword ptr [edx + ecx*4]
0x00554B1B: jmp      0x554b3b
0x00554B1D: mov      ecx, dword ptr [0xb79350]
0x00554B23: test     ecx, ecx
0x00554B25: je       0x554b39
0x00554B27: mov      eax, dword ptr [esi + 4]
0x00554B2A: mov      edx, dword ptr [esi]
0x00554B2C: push     eax
0x00554B2D: push     0
0x00554B2F: push     0
0x00554B31: push     edx
0x00554B32: call     0x7cd120
0x00554B37: jmp      0x554b3b
0x00554B39: xor      eax, eax
0x00554B3B: movzx    ecx, byte ptr [eax + 1]
0x00554B3F: mov      edx, dword ptr [eax + 4]
0x00554B42: mov      eax, dword ptr [edx + 0x14]
0x00554B45: lea      ecx, [ecx + ecx*8]
0x00554B48: lea      eax, [eax + ecx*4]
0x00554B4B: pop      ebp
0x00554B4C: cmp      byte ptr [eax + 0x14], bl
0x00554B4F: jne      0x554b56
0x00554B51: mov      eax, dword ptr [eax + 4]
0x00554B54: jmp      0x554b86
0x00554B56: cmp      byte ptr [eax + 0x15], bl
0x00554B59: jne      0x554b60
0x00554B5B: mov      eax, dword ptr [eax + 8]
0x00554B5E: jmp      0x554b86
0x00554B60: cmp      byte ptr [eax + 0x16], bl
0x00554B63: jne      0x554b6a
0x00554B65: mov      eax, dword ptr [eax + 0xc]
0x00554B68: jmp      0x554b86
0x00554B6A: cmp      byte ptr [eax + 0x17], bl
0x00554B6D: jne      0x554b74
0x00554B6F: mov      eax, dword ptr [eax + 0x10]
0x00554B72: jmp      0x554b86
0x00554B74: mov      eax, dword ptr [eax]
0x00554B76: test     eax, eax
0x00554B78: je       0x554b84
0x00554B7A: push     ebx
0x00554B7B: mov      ecx, eax
0x00554B7D: call     0x461400
0x00554B82: jmp      0x554b86
0x00554B84: xor      eax, eax
0x00554B86: push     0
0x00554B88: push     0
0x00554B8A: push     1
0x00554B8C: push     1
0x00554B8E: mov      ecx, eax
0x00554B90: mov      dword ptr [edi + 0x1cc], eax
0x00554B96: call     0x7ba3e0
0x00554B9B: mov      edx, dword ptr [edi + 0x314]
0x00554BA1: cmp      dword ptr [edx + 0x1a8], 1
0x00554BA8: mov      ecx, 3
0x00554BAD: lea      edx, [ecx - 1]
0x00554BB0: jne      0x554bba
0x00554BB2: mov      dword ptr [edi + 0x1ac], edx
0x00554BB8: jmp      0x554bc0
0x00554BBA: mov      dword ptr [edi + 0x1ac], ecx
0x00554BC0: cmp      dword ptr [0xb49c64], 0
0x00554BC7: jne      0x554c0b
0x00554BC9: mov      dword ptr [0xb49c64], ecx
0x00554BCF: cmp      dword ptr [edi + 0x1ac], edx
0x00554BD5: jne      0x554bf4
0x00554BD7: mov      eax, dword ptr [edi + 0x314]
0x00554BDD: mov      eax, dword ptr [eax + 0x1bc]
0x00554BE3: pop      edi
0x00554BE4: pop      esi
0x00554BE5: mov      dword ptr [0xafce74], ecx
0x00554BEB: mov      dword ptr [0xb49c68], eax
0x00554BF0: pop      ebx
0x00554BF1: ret      8
0x00554BF4: mov      ecx, dword ptr [edi + 0x314]
0x00554BFA: mov      eax, dword ptr [ecx + 0x1bc]
0x00554C00: mov      dword ptr [0xafce74], edx
0x00554C06: mov      dword ptr [0xb49c68], eax
0x00554C0B: pop      edi
0x00554C0C: pop      esi
0x00554C0D: pop      ebx
0x00554C0E: ret      8
0x00554C11: int3     
0x00554C12: int3     
0x00554C13: int3     
0x00554C14: int3     
0x00554C15: int3     
0x00554C16: int3     
0x00554C17: int3     
0x00554C18: int3     
0x00554C19: int3     
0x00554C1A: int3     
0x00554C1B: int3     
0x00554C1C: int3     
0x00554C1D: int3     
0x00554C1E: int3     
0x00554C1F: int3     

--- CModeMultiCollecte::vfunc_0 @ 0x00554C20 ---
0x00554C20: sub      ecx, 0x1a8
0x00554C26: jmp      0x554c30
0x00554C2B: int3     
0x00554C2C: int3     
0x00554C2D: int3     
0x00554C2E: int3     
0x00554C2F: int3     

--- CModeMultiCollecte::vfunc_5 @ 0x00554C30 ---
0x00554C30: push     esi
0x00554C31: mov      esi, ecx
0x00554C33: call     0x553570
0x00554C38: test     byte ptr [esp + 8], 1
0x00554C3D: je       0x554c48
0x00554C3F: push     esi
0x00554C40: call     0x688fb0
0x00554C45: add      esp, 4
0x00554C48: mov      eax, esi
0x00554C4A: pop      esi
0x00554C4B: ret      4
0x00554C4E: int3     
0x00554C4F: int3     