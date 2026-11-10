=== CRotasticPlayer (0x0053FF20 .. 0x00542FE0) ===
0x0053FF20: add      esp, 0x10
0x0053FF23: ret      4
0x0053FF26: int3     
0x0053FF27: int3     
0x0053FF28: int3     
0x0053FF29: int3     
0x0053FF2A: int3     
0x0053FF2B: int3     
0x0053FF2C: int3     
0x0053FF2D: int3     
0x0053FF2E: int3     
0x0053FF2F: int3     

--- CRotasticPlayer::vfunc_3 @ 0x0053FF30 ---
0x0053FF30: jmp      0x793040
0x0053FF35: int3     
0x0053FF36: int3     
0x0053FF37: int3     
0x0053FF38: int3     
0x0053FF39: int3     
0x0053FF3A: int3     
0x0053FF3B: int3     
0x0053FF3C: int3     
0x0053FF3D: int3     
0x0053FF3E: int3     
0x0053FF3F: int3     
0x0053FF40: push     ebx
0x0053FF41: push     esi
0x0053FF42: mov      esi, ecx
0x0053FF44: mov      eax, dword ptr [esi + 0xde8]
0x0053FF4A: mov      edx, dword ptr [eax + 0x88]
0x0053FF50: mov      ecx, dword ptr [esi + 0x34]
0x0053FF53: push     edi
0x0053FF54: cmp      edx, dword ptr [ecx + 0xc]
0x0053FF57: je       0x53ff76
0x0053FF59: mov      eax, dword ptr [ecx + 0x14]
0x0053FF5C: mov      edi, eax
0x0053FF5E: shr      edi, 3
0x0053FF61: shr      eax, 2
0x0053FF64: and      edi, 1
0x0053FF67: push     edi
0x0053FF68: and      eax, 1
0x0053FF6B: push     eax
0x0053FF6C: mov      eax, dword ptr [ecx + 4]
0x0053FF6F: push     eax
0x0053FF70: push     edx
0x0053FF71: call     0x6f6e50
0x0053FF76: mov      edi, dword ptr [esi + 0x34]
0x0053FF79: test     byte ptr [edi + 0xec], 4
0x0053FF80: je       0x53ffff
0x0053FF82: mov      edx, dword ptr [edi]
0x0053FF84: mov      eax, dword ptr [edx + 0x8c]
0x0053FF8A: mov      ecx, edi
0x0053FF8C: call     eax
0x0053FF8E: mov      ecx, dword ptr [esi + 0xde8]
0x0053FF94: mov      ebx, dword ptr [esp + 0x10]
0x0053FF98: mov      edx, dword ptr [ecx + 0x88]
0x0053FF9E: push     1
0x0053FFA0: push     ebx
0x0053FFA1: push     edx
0x0053FFA2: mov      ecx, edi
0x0053FFA4: call     0x6e0e40
0x0053FFA9: mov      eax, dword ptr [edi]
0x0053FFAB: mov      edx, dword ptr [eax + 0x90]
0x0053FFB1: push     1
0x0053FFB3: push     0
0x0053FFB5: push     0
0x0053FFB7: mov      ecx, edi
0x0053FFB9: call     edx
0x0053FFBB: mov      eax, dword ptr [edi]
0x0053FFBD: mov      edx, dword ptr [eax + 0x88]
0x0053FFC3: mov      ecx, edi
0x0053FFC5: call     edx
0x0053FFC7: push     0
0x0053FFC9: push     0
0x0053FFCB: push     ebx
0x0053FFCC: mov      ecx, edi
0x0053FFCE: call     0x6db250
0x0053FFD3: fldz     
0x0053FFD5: mov      eax, dword ptr [esp + 0x14]
0x0053FFD9: push     0
0x0053FFDB: sub      esp, 0xc
0x0053FFDE: fstp     dword ptr [esp + 8]
0x0053FFE2: mov      ecx, edi
0x0053FFE4: fld1     
0x0053FFE6: fstp     dword ptr [esp + 4]
0x0053FFEA: fld      dword ptr [0x982e8c] ; [f32=0.12, u32=0x3DF5C28F]
0x0053FFF0: fstp     dword ptr [esp]
0x0053FFF3: push     0
0x0053FFF5: push     0
0x0053FFF7: push     eax
0x0053FFF8: call     0x6dc670
0x0053FFFD: jmp      0x54000f
0x0053FFFF: mov      ecx, dword ptr [esp + 0x10]
0x00540003: push     0
0x00540005: push     0
0x00540007: push     ecx
0x00540008: mov      ecx, edi
0x0054000A: call     0x6db250
0x0054000F: mov      ecx, dword ptr [esi + 0x34]
0x00540012: mov      edx, dword ptr [ecx]
0x00540014: mov      eax, dword ptr [edx + 0x7c]
0x00540017: push     0
0x00540019: call     eax
0x0054001B: mov      ecx, dword ptr [0xb01b28]
0x00540021: push     0
0x00540023: push     1
0x00540025: push     0
0x00540027: mov      edi, eax
0x00540029: push     1
0x0054002B: inc      edi
0x0054002C: push     0
0x0054002E: push     ecx
0x0054002F: xor      ecx, ecx
0x00540031: mov      eax, edi
0x00540033: mov      edx, 4
0x00540038: mul      edx
0x0054003A: seto     cl
0x0054003D: neg      ecx
0x0054003F: or       ecx, eax
0x00540041: push     ecx
0x00540042: call     0x688fe0
0x00540047: mov      ebx, eax
0x00540049: lea      eax, [edi*4]
0x00540050: push     eax
0x00540051: push     0
0x00540053: push     ebx
0x00540054: call     0x8eb080
0x00540059: mov      ecx, dword ptr [esi + 0x34]
0x0054005C: mov      edx, dword ptr [ecx]
0x0054005E: mov      eax, dword ptr [edx + 0x80]
0x00540064: add      esp, 0x28
0x00540067: push     0
0x00540069: push     edi
0x0054006A: push     ebx
0x0054006B: call     eax
0x0054006D: mov      ecx, dword ptr [esi + 0x34]
0x00540070: mov      edx, dword ptr [ecx + 0x64]
0x00540073: mov      eax, dword ptr [ebx]
0x00540075: push     0
0x00540077: push     edx
0x00540078: push     eax
0x00540079: call     0x64c490
0x0054007E: push     -1
0x00540080: push     0
0x00540082: push     0x98b308
0x00540087: mov      dword ptr [esi + 0xe18], eax
0x0054008D: call     0x691560
0x00540092: mov      ecx, dword ptr [esi + 0xe18]
0x00540098: movzx    edx, byte ptr [ecx + 0xc]
0x0054009C: push     eax
0x0054009D: mov      eax, dword ptr [ecx]
0x0054009F: push     0
0x005400A1: push     edx
0x005400A2: push     eax
0x005400A3: call     0x648070
0x005400A8: push     -1
0x005400AA: push     0
0x005400AC: push     0x98b318
0x005400B1: mov      dword ptr [esi + 0xe1c], eax
0x005400B7: call     0x691560
0x005400BC: mov      ecx, dword ptr [esi + 0xe18]
0x005400C2: movzx    edx, byte ptr [ecx + 0xc]
0x005400C6: push     eax
0x005400C7: mov      eax, dword ptr [ecx]
0x005400C9: push     0
0x005400CB: push     edx
0x005400CC: push     eax
0x005400CD: call     0x648130
0x005400D2: add      esp, 0x44
0x005400D5: fld      dword ptr [0x9ac388] ; [f32=0.5, u32=0x3F000000]
0x005400DB: lea      edi, [esi + 0xe28]
0x005400E1: fst      dword ptr [esi + 0xe30]
0x005400E7: mov      dword ptr [esi + 0xe24], eax
0x005400ED: fst      dword ptr [esi + 0xe2c]
0x005400F3: fst      dword ptr [edi]
0x005400F5: test     eax, eax
0x005400F7: je       0x540114
0x005400F9: mov      ecx, dword ptr [esi + 0xe18]
0x005400FF: fstp     st(0)
0x00540101: push     edi
0x00540102: push     eax
0x00540103: push     0
0x00540105: push     ecx
0x00540106: call     0x64c750
0x0054010B: fld      dword ptr [0x9ac388] ; [f32=0.5, u32=0x3F000000]
0x00540111: add      esp, 0x10
0x00540114: mov      eax, dword ptr [esi + 0xe24]
0x0054011A: fstp     dword ptr [esi + 0xe34]
0x00540120: test     eax, eax
0x00540122: je       0x540137
0x00540124: mov      edx, dword ptr [esi + 0xe18]
0x0054012A: push     edi
0x0054012B: push     eax
0x0054012C: push     0
0x0054012E: push     edx
0x0054012F: call     0x64c750
0x00540134: add      esp, 0x10
0x00540137: mov      ecx, dword ptr [esi + 8]
0x0054013A: push     0
0x0054013C: push     1
0x0054013E: call     0x7f8390
0x00540143: push     ebx
0x00540144: call     0x688fb0
0x00540149: add      esp, 4
0x0054014C: pop      edi
0x0054014D: pop      esi
0x0054014E: pop      ebx
0x0054014F: ret      8
0x00540152: int3     
0x00540153: int3     
0x00540154: int3     
0x00540155: int3     
0x00540156: int3     
0x00540157: int3     
0x00540158: int3     
0x00540159: int3     
0x0054015A: int3     
0x0054015B: int3     
0x0054015C: int3     
0x0054015D: int3     
0x0054015E: int3     
0x0054015F: int3     
0x00540160: sub      esp, 0x14
0x00540163: push     esi
0x00540164: mov      esi, ecx
0x00540166: mov      ecx, dword ptr [esi + 0xe18]
0x0054016C: test     ecx, ecx
0x0054016E: je       0x5401dd
0x00540170: mov      eax, dword ptr [esi + 0xe1c]
0x00540176: test     eax, eax
0x00540178: je       0x5401dd
0x0054017A: cmp      dword ptr [esp + 0x20], 1
0x0054017F: fld1     
0x00540181: fld      dword ptr [0x96d5e4] ; [f32=-1, u32=0xBF800000]
0x00540187: jne      0x54018f
0x00540189: fst      dword ptr [esp + 4]
0x0054018D: jmp      0x540197
0x0054018F: fxch     st(1)
0x00540191: fst      dword ptr [esp + 4]
0x00540195: fxch     st(1)
0x00540197: push     edi
0x00540198: mov      edi, dword ptr [esp + 0x20]
0x0054019C: cmp      edi, 1
0x0054019F: jne      0x5401a5
0x005401A1: fstp     st(1)
0x005401A3: jmp      0x5401a7
0x005401A5: fstp     st(0)
0x005401A7: fstp     dword ptr [esp + 0x24]
0x005401AB: lea      edx, [esp + 0xc]
0x005401AF: fld      dword ptr [esp + 0x24]
0x005401B3: push     edx
0x005401B4: fstp     dword ptr [esp + 0x10]
0x005401B8: push     eax
0x005401B9: fld      dword ptr [esp + 0x10]
0x005401BD: push     0
0x005401BF: fstp     dword ptr [esp + 0x1c]
0x005401C3: push     ecx
0x005401C4: fldz     
0x005401C6: fst      dword ptr [esp + 0x24]
0x005401CA: fstp     dword ptr [esp + 0x28]
0x005401CE: call     0x64c750
0x005401D3: add      esp, 0x10
0x005401D6: mov      dword ptr [esi + 0xe20], edi
0x005401DC: pop      edi
0x005401DD: pop      esi
0x005401DE: add      esp, 0x14
0x005401E1: ret      8
0x005401E4: int3     
0x005401E5: int3     
0x005401E6: int3     
0x005401E7: int3     
0x005401E8: int3     
0x005401E9: int3     
0x005401EA: int3     
0x005401EB: int3     
0x005401EC: int3     
0x005401ED: int3     
0x005401EE: int3     
0x005401EF: int3     
0x005401F0: mov      eax, dword ptr [esp + 4]
0x005401F4: sub      esp, 0x80
0x005401FA: push     esi
0x005401FB: mov      esi, ecx
0x005401FD: push     eax
0x005401FE: lea      ecx, [esp + 0x18]
0x00540202: push     ecx
0x00540203: call     0x6b2160
0x00540208: fstp     st(0)
0x0054020A: fld      dword ptr [esp + 0x20]
0x0054020E: add      esp, 8
0x00540211: fcom     qword ptr [0x98afd0] ; [f32=2, f64=0.9999, u32=0x40000000]
0x00540217: fnstsw   ax
0x00540219: test     ah, 0x41
0x0054021C: jne      0x54023c
0x0054021E: fstp     st(0)
0x00540220: push     ecx
0x00540221: fld      dword ptr [0x9837e4] ; [f32=-1.5708, f64=-1.44959e-06, u32=0xBFC90FDB]
0x00540227: lea      edx, [esp + 0x38]
0x0054022B: fstp     dword ptr [esp]
0x0054022E: push     edx
0x0054022F: call     0x6b0390
0x00540234: add      esp, 8
0x00540237: jmp      0x5402ea
0x0054023C: fcomp    qword ptr [0x98afc8] ; [f32=2, f64=-0.9999, u32=0x40000000]
0x00540242: fnstsw   ax
0x00540244: test     ah, 5
0x00540247: jp       0x540265
0x00540249: fld      dword ptr [0x9837e0] ; [f32=1.5708, f64=-0.195796, u32=0x3FC90FDB]
0x0054024F: push     ecx
0x00540250: lea      eax, [esp + 0x38]
0x00540254: fstp     dword ptr [esp]
0x00540257: push     eax
0x00540258: call     0x6b0390
0x0054025D: add      esp, 8
0x00540260: jmp      0x5402ea
0x00540265: fldz     
0x00540267: lea      ecx, [esp + 4]
0x0054026B: fst      dword ptr [esp + 4]
0x0054026F: push     ecx
0x00540270: fld1     
0x00540272: lea      edx, [esp + 0x18]
0x00540276: fst      dword ptr [esp + 0xc]
0x0054027A: push     edx
0x0054027B: fstp     dword ptr [esp + 0x18]
0x0054027F: lea      eax, [esp + 0x2c]
0x00540283: push     eax
0x00540284: fstp     dword ptr [esp + 0x18]
0x00540288: call     0x4bc640
0x0054028D: lea      ecx, [esp + 0x30]
0x00540291: push     ecx
0x00540292: mov      edx, ecx
0x00540294: push     edx
0x00540295: call     0x6b2160
0x0054029A: fstp     st(0)
0x0054029C: lea      eax, [esp + 0x28]
0x005402A0: push     eax
0x005402A1: lea      ecx, [esp + 0x3c]
0x005402A5: push     ecx
0x005402A6: lea      edx, [esp + 0x20]
0x005402AA: push     edx
0x005402AB: call     0x4bc640
0x005402B0: lea      eax, [esp + 0x24]
0x005402B4: push     eax
0x005402B5: mov      ecx, eax
0x005402B7: push     ecx
0x005402B8: call     0x6b2160
0x005402BD: fstp     st(0)
0x005402BF: lea      edx, [esp + 0x3c]
0x005402C3: push     edx
0x005402C4: lea      eax, [esp + 0x30]
0x005402C8: push     eax
0x005402C9: lea      ecx, [esp + 0x54]
0x005402CD: push     ecx
0x005402CE: lea      edx, [esp + 0x78]
0x005402D2: push     edx
0x005402D3: call     0x53e9b0
0x005402D8: lea      eax, [esp + 0x7c]
0x005402DC: push     eax
0x005402DD: lea      ecx, [esp + 0x70]
0x005402E1: push     ecx
0x005402E2: call     0x6afb00
0x005402E7: add      esp, 0x40
0x005402EA: mov      ecx, dword ptr [esi + 8]
0x005402ED: movzx    eax, byte ptr [ecx + 1]
0x005402F1: mov      ecx, dword ptr [ecx + 4]
0x005402F4: mov      edx, dword ptr [ecx + 0x1c]
0x005402F7: add      eax, eax
0x005402F9: add      eax, eax
0x005402FB: mov      edx, dword ptr [eax + edx]
0x005402FE: test     edx, edx
0x00540300: je       0x540324
0x00540302: push     edi
0x00540303: mov      edi, dword ptr [ecx + 0xc]
0x00540306: test     dword ptr [eax + edi], 0x200
0x0054030D: pop      edi
0x0054030E: je       0x540324
0x00540310: test     byte ptr [edx + 8], 8
0x00540314: je       0x540324
0x00540316: mov      ecx, dword ptr [ecx + 0x20]
0x00540319: add      eax, ecx
0x0054031B: cmp      dword ptr [eax], 0
0x0054031E: je       0x540324
0x00540320: mov      eax, dword ptr [eax]
0x00540322: jmp      0x540326
0x00540324: mov      eax, edx
0x00540326: lea      edx, [esp + 0x34]
0x0054032A: push     edx
0x0054032B: mov      ecx, eax
0x0054032D: call     0x509670
0x00540332: mov      eax, dword ptr [esi + 8]
0x00540335: movzx    edx, byte ptr [eax + 1]
0x00540339: mov      eax, dword ptr [eax + 4]
0x0054033C: lea      ecx, [esp + 0x34]
0x00540340: push     ecx
0x00540341: mov      ecx, dword ptr [eax + 0x1c]
0x00540344: mov      ecx, dword ptr [ecx + edx*4]
0x00540347: call     0x509670
0x0054034C: pop      esi
0x0054034D: add      esp, 0x80
0x00540353: ret      4
0x00540356: int3     
0x00540357: int3     
0x00540358: int3     
0x00540359: int3     
0x0054035A: int3     
0x0054035B: int3     
0x0054035C: int3     
0x0054035D: int3     
0x0054035E: int3     
0x0054035F: int3     
0x00540360: sub      esp, 0x10
0x00540363: mov      ecx, dword ptr [ecx + 8]
0x00540366: fldz     
0x00540368: movzx    eax, byte ptr [ecx + 1]
0x0054036C: fst      dword ptr [esp]
0x0054036F: mov      ecx, dword ptr [ecx + 4]
0x00540372: fst      dword ptr [esp + 4]
0x00540376: mov      edx, dword ptr [ecx + 0x1c]
0x00540379: fstp     dword ptr [esp + 8]
0x0054037D: fld1     
0x0054037F: add      eax, eax
0x00540381: add      eax, eax
0x00540383: fstp     dword ptr [esp + 0xc]
0x00540387: mov      edx, dword ptr [eax + edx]
0x0054038A: test     edx, edx
0x0054038C: je       0x5403bd
0x0054038E: push     esi
0x0054038F: mov      esi, dword ptr [ecx + 0xc]
0x00540392: test     dword ptr [eax + esi], 0x200
0x00540399: pop      esi
0x0054039A: je       0x5403bd
0x0054039C: test     byte ptr [edx + 8], 8
0x005403A0: je       0x5403bd
0x005403A2: mov      ecx, dword ptr [ecx + 0x20]
0x005403A5: add      eax, ecx
0x005403A7: cmp      dword ptr [eax], 0
0x005403AA: je       0x5403bd
0x005403AC: mov      eax, dword ptr [eax]
0x005403AE: lea      edx, [esp]
0x005403B1: push     edx
0x005403B2: mov      ecx, eax
0x005403B4: call     0x509670
0x005403B9: add      esp, 0x10
0x005403BC: ret      
0x005403BD: mov      eax, edx
0x005403BF: lea      edx, [esp]
0x005403C2: push     edx
0x005403C3: mov      ecx, eax
0x005403C5: call     0x509670
0x005403CA: add      esp, 0x10
0x005403CD: ret      
0x005403CE: int3     
0x005403CF: int3     
0x005403D0: fld      dword ptr [edx]
0x005403D2: fsub     dword ptr [ecx]
0x005403D4: fstp     dword ptr [eax]
0x005403D6: fld      dword ptr [edx + 4]
0x005403D9: fsub     dword ptr [ecx + 4]
0x005403DC: fstp     dword ptr [eax + 4]
0x005403DF: fld      dword ptr [edx + 8]
0x005403E2: fsub     dword ptr [ecx + 8]
0x005403E5: fstp     dword ptr [eax + 8]
0x005403E8: fld      dword ptr [edx + 0xc]
0x005403EB: fsub     dword ptr [ecx + 0xc]
0x005403EE: fstp     dword ptr [eax + 0xc]
0x005403F1: ret      
0x005403F2: int3     
0x005403F3: int3     
0x005403F4: int3     
0x005403F5: int3     
0x005403F6: int3     
0x005403F7: int3     
0x005403F8: int3     
0x005403F9: int3     
0x005403FA: int3     
0x005403FB: int3     
0x005403FC: int3     
0x005403FD: int3     
0x005403FE: int3     
0x005403FF: int3     
0x00540400: fld      dword ptr [ecx]
0x00540402: fld      dword ptr [esp + 4]
0x00540406: fld      st(0)
0x00540408: fmulp    st(2)
0x0054040A: fxch     st(1)
0x0054040C: fstp     dword ptr [eax]
0x0054040E: fld      dword ptr [ecx + 4]
0x00540411: fmul     st(1)
0x00540413: fstp     dword ptr [eax + 4]
0x00540416: fld      dword ptr [ecx + 8]
0x00540419: fmul     st(1)
0x0054041B: fstp     dword ptr [eax + 8]
0x0054041E: fmul     dword ptr [ecx + 0xc]
0x00540421: fstp     dword ptr [eax + 0xc]
0x00540424: ret      
0x00540425: int3     
0x00540426: int3     
0x00540427: int3     
0x00540428: int3     
0x00540429: int3     
0x0054042A: int3     
0x0054042B: int3     
0x0054042C: int3     
0x0054042D: int3     
0x0054042E: int3     
0x0054042F: int3     

--- CRotasticPlayer::vfunc_13 @ 0x00540430 ---
0x00540430: mov      eax, dword ptr [ecx + 8]
0x00540433: movzx    edx, byte ptr [eax + 1]
0x00540437: mov      eax, dword ptr [eax + 4]
0x0054043A: mov      eax, dword ptr [eax + 0x34]
0x0054043D: cmp      dword ptr [eax + edx*4], 0
0x00540441: je       0x54045f
0x00540443: mov      eax, dword ptr [ecx + 8]
0x00540446: movzx    ecx, byte ptr [eax + 1]
0x0054044A: mov      edx, dword ptr [eax + 4]
0x0054044D: mov      edx, dword ptr [edx + 0x34]
0x00540450: mov      ecx, dword ptr [edx + ecx*4]
0x00540453: mov      edx, dword ptr [ecx + 0x98]
0x00540459: mov      dword ptr [edx + 0x11c], eax
0x0054045F: ret      

--- CRotasticPlayer::vfunc_7 @ 0x00540460 ---
0x00540460: ret      4
0x00540463: int3     
0x00540464: int3     
0x00540465: int3     
0x00540466: int3     
0x00540467: int3     
0x00540468: int3     
0x00540469: int3     
0x0054046A: int3     
0x0054046B: int3     
0x0054046C: int3     
0x0054046D: int3     
0x0054046E: int3     
0x0054046F: int3     
0x00540470: push     -1
0x00540472: push     0x945c48
0x00540477: mov      eax, dword ptr fs:[0]
0x0054047D: push     eax
0x0054047E: sub      esp, 8
0x00540481: push     esi
0x00540482: push     edi
0x00540483: mov      eax, dword ptr [0xb089c8]
0x00540488: xor      eax, esp
0x0054048A: push     eax
0x0054048B: lea      eax, [esp + 0x14]
0x0054048F: mov      dword ptr fs:[0], eax
0x00540495: mov      esi, ecx
0x00540497: cmp      dword ptr [esp + 0x28], 0
0x0054049C: mov      edi, dword ptr [esp + 0x24]
0x005404A0: jne      0x5404ad
0x005404A2: mov      ecx, dword ptr [esi + 8]
0x005404A5: push     0
0x005404A7: push     edi
0x005404A8: call     0x7f8390
0x005404AD: mov      eax, dword ptr [esi + 8]
0x005404B0: movzx    ecx, byte ptr [eax + 1]
0x005404B4: mov      edx, dword ptr [eax + 4]
0x005404B7: mov      eax, dword ptr [edx + 0x34]
0x005404BA: mov      ecx, dword ptr [eax + ecx*4]
0x005404BD: mov      edx, dword ptr [ecx]
0x005404BF: mov      eax, dword ptr [edx + 0x128]
0x005404C5: push     0
0x005404C7: push     0
0x005404C9: push     1
0x005404CB: call     eax
0x005404CD: mov      dword ptr [esi + 0x1ec], edi
0x005404D3: test     edi, edi
0x005404D5: je       0x5404e1
0x005404D7: mov      dword ptr [esi + 0x1f0], 1
0x005404E1: mov      ecx, dword ptr [esi + 0x1b4]
0x005404E7: mov      dword ptr [esp + 0xc], 0x98b328
0x005404EF: mov      dword ptr [esp + 0x10], edi
0x005404F3: mov      edx, dword ptr [ecx]
0x005404F5: mov      edx, dword ptr [edx + 8]
0x005404F8: push     1
0x005404FA: lea      eax, [esp + 0x10]
0x005404FE: push     eax
0x005404FF: mov      dword ptr [esp + 0x24], 0
0x00540507: call     edx
0x00540509: mov      ecx, dword ptr [esp + 0x14]
0x0054050D: mov      dword ptr fs:[0], ecx
0x00540514: pop      ecx
0x00540515: pop      edi
0x00540516: pop      esi
0x00540517: add      esp, 0x14
0x0054051A: ret      8
0x0054051D: int3     
0x0054051E: int3     
0x0054051F: int3     
0x00540520: push     -1
0x00540522: push     0x945c73
0x00540527: mov      eax, dword ptr fs:[0]
0x0054052D: push     eax
0x0054052E: sub      esp, 8
0x00540531: push     esi
0x00540532: mov      eax, dword ptr [0xb089c8]
0x00540537: xor      eax, esp
0x00540539: push     eax
0x0054053A: lea      eax, [esp + 0x10]
0x0054053E: mov      dword ptr fs:[0], eax
0x00540544: mov      esi, ecx
0x00540546: mov      ecx, dword ptr [esi + 0x1b4]
0x0054054C: mov      dword ptr [esi + 0xd58], 1
0x00540556: mov      dword ptr [esp + 8], 0x98b3a0
0x0054055E: mov      eax, dword ptr [ecx]
0x00540560: mov      eax, dword ptr [eax + 8]
0x00540563: push     1
0x00540565: lea      edx, [esp + 0xc]
0x00540569: push     edx
0x0054056A: mov      dword ptr [esp + 0x20], 0
0x00540572: call     eax
0x00540574: push     0x6cc6b9bb
0x00540579: lea      ecx, [esi + 0x1a8]
0x0054057F: mov      dword ptr [esp + 0x1c], 0xffffffff
0x00540587: call     0x5691a0
0x0054058C: mov      ecx, eax
0x0054058E: call     0x56b390
0x00540593: mov      ecx, dword ptr [esi + 0x1b4]
0x00540599: mov      dword ptr [esp + 0xc], 0x98b3c8
0x005405A1: mov      edx, dword ptr [ecx]
0x005405A3: mov      edx, dword ptr [edx + 8]
0x005405A6: push     1
0x005405A8: lea      eax, [esp + 0x10]
0x005405AC: push     eax
0x005405AD: mov      dword ptr [esp + 0x20], 1
0x005405B5: call     edx
0x005405B7: mov      ecx, dword ptr [esp + 0x10]
0x005405BB: mov      dword ptr fs:[0], ecx
0x005405C2: pop      ecx
0x005405C3: pop      esi
0x005405C4: add      esp, 0x14
0x005405C7: ret      
0x005405C8: int3     
0x005405C9: int3     
0x005405CA: int3     
0x005405CB: int3     
0x005405CC: int3     
0x005405CD: int3     
0x005405CE: int3     
0x005405CF: int3     
0x005405D0: push     -1
0x005405D2: push     0x945c9e
0x005405D7: mov      eax, dword ptr fs:[0]
0x005405DD: push     eax
0x005405DE: sub      esp, 0xc
0x005405E1: push     esi
0x005405E2: push     edi
0x005405E3: mov      eax, dword ptr [0xb089c8]
0x005405E8: xor      eax, esp
0x005405EA: push     eax
0x005405EB: lea      eax, [esp + 0x18]
0x005405EF: mov      dword ptr fs:[0], eax
0x005405F5: mov      esi, ecx
0x005405F7: mov      eax, dword ptr [esi + 8]
0x005405FA: fldz     
0x005405FC: movzx    ecx, byte ptr [eax + 1]
0x00540600: mov      edx, dword ptr [eax + 4]
0x00540603: mov      eax, dword ptr [edx + 0x40]
0x00540606: mov      eax, dword ptr [eax + ecx*4]
0x00540609: xor      edi, edi
0x0054060B: cmp      eax, edi
0x0054060D: je       0x5406ca
0x00540613: cmp      dword ptr [eax + 0x14], edi
0x00540616: je       0x5406ca
0x0054061C: fld      dword ptr [esi + 0x230]
0x00540622: fstp     dword ptr [esp + 0xc]
0x00540626: fld      dword ptr [esi + 0x220]
0x0054062C: fld      dword ptr [esp + 0xc]
0x00540630: fld      st(0)
0x00540632: fmulp    st(2)
0x00540634: fxch     st(1)
0x00540636: fstp     dword ptr [esi + 0x28c]
0x0054063C: fld      dword ptr [esi + 0x224]
0x00540642: fmul     st(1)
0x00540644: fstp     dword ptr [esi + 0x290]
0x0054064A: fmul     dword ptr [esi + 0x228]
0x00540650: fstp     dword ptr [esi + 0x294]
0x00540656: mov      ecx, dword ptr [esi + 8]
0x00540659: fst      dword ptr [esi + 0x294]
0x0054065F: fst      dword ptr [esi + 0x298]
0x00540665: fstp     dword ptr [esi + 0x230]
0x0054066B: call     0x7f9590
0x00540670: mov      eax, dword ptr [esp + 0x28]
0x00540674: sub      eax, 1
0x00540677: je       0x5406a4
0x00540679: sub      eax, 1
0x0054067C: jne      0x5406c8
0x0054067E: mov      ecx, dword ptr [esi + 0x1b4]
0x00540684: mov      dword ptr [esp + 0x28], 0x98b404
0x0054068C: mov      edx, dword ptr [ecx]
0x0054068E: mov      edx, dword ptr [edx + 8]
0x00540691: push     1
0x00540693: lea      eax, [esp + 0x2c]
0x00540697: push     eax
0x00540698: mov      dword ptr [esp + 0x28], 1
0x005406A0: call     edx
0x005406A2: jmp      0x5406c8
0x005406A4: mov      ecx, dword ptr [esi + 0x1b4]
0x005406AA: mov      dword ptr [esp + 0x10], 0x98b3f0
0x005406B2: mov      dword ptr [esp + 0x14], edi
0x005406B6: mov      eax, dword ptr [ecx]
0x005406B8: mov      eax, dword ptr [eax + 8]
0x005406BB: push     1
0x005406BD: lea      edx, [esp + 0x14]
0x005406C1: push     edx
0x005406C2: mov      dword ptr [esp + 0x28], edi
0x005406C6: call     eax
0x005406C8: fldz     
0x005406CA: fst      dword ptr [esi + 0x220]
0x005406D0: fst      dword ptr [esi + 0x224]
0x005406D6: fstp     dword ptr [esi + 0x228]
0x005406DC: fld1     
0x005406DE: fstp     dword ptr [esi + 0x22c]
0x005406E4: mov      dword ptr [esi + 0x204], edi
0x005406EA: mov      dword ptr [esi + 0x208], edi
0x005406F0: mov      ecx, dword ptr [esp + 0x18]
0x005406F4: mov      dword ptr fs:[0], ecx
0x005406FB: pop      ecx
0x005406FC: pop      edi
0x005406FD: pop      esi
0x005406FE: add      esp, 0x18
0x00540701: ret      4
0x00540704: int3     
0x00540705: int3     
0x00540706: int3     
0x00540707: int3     
0x00540708: int3     
0x00540709: int3     
0x0054070A: int3     
0x0054070B: int3     
0x0054070C: int3     
0x0054070D: int3     
0x0054070E: int3     
0x0054070F: int3     
0x00540710: mov      edx, dword ptr [esp + 0xc]
0x00540714: push     esi
0x00540715: mov      esi, dword ptr [esp + 0x14]
0x00540719: mov      eax, dword ptr [esi + 0x1dc]
0x0054071F: movsx    ecx, byte ptr [eax]
0x00540722: mov      eax, dword ptr [esi + 0xd6c]
0x00540728: shl      ecx, 4
0x0054072B: push     edi
0x0054072C: lea      edi, [ecx + edx + 4]
0x00540730: push     0x51b1e251
0x00540735: lea      ecx, [esi + 0x1a8]
0x0054073B: mov      dword ptr [edi], eax
0x0054073D: call     0x5691a0
0x00540742: test     eax, eax
0x00540744: je       0x540758
0x00540746: mov      ecx, dword ptr [eax + 0x68]
0x00540749: mov      dword ptr [edi + 4], ecx
0x0054074C: mov      edx, dword ptr [eax + 0x48]
0x0054074F: mov      dword ptr [edi + 8], edx
0x00540752: mov      eax, dword ptr [eax + 0x44]
0x00540755: mov      dword ptr [edi + 0xc], eax
0x00540758: push     0
0x0054075A: push     0
0x0054075C: mov      ecx, esi
0x0054075E: call     0x540470
0x00540763: pop      edi
0x00540764: pop      esi
0x00540765: ret      
0x00540766: int3     
0x00540767: int3     
0x00540768: int3     
0x00540769: int3     
0x0054076A: int3     
0x0054076B: int3     
0x0054076C: int3     
0x0054076D: int3     
0x0054076E: int3     
0x0054076F: int3     
0x00540770: mov      ecx, dword ptr [esp + 0x10]
0x00540774: push     0
0x00540776: push     0
0x00540778: call     0x540470
0x0054077D: ret      
0x0054077E: int3     
0x0054077F: int3     
0x00540780: sub      esp, 0x30
0x00540783: push     esi
0x00540784: mov      esi, dword ptr [esp + 0x38]
0x00540788: push     edi
0x00540789: mov      edi, ecx
0x0054078B: mov      eax, dword ptr [edi + 0x1e4]
0x00540791: fld      dword ptr [eax]
0x00540793: mov      ecx, dword ptr [edi + 0xe38]
0x00540799: fstp     dword ptr [esi]
0x0054079B: fld      dword ptr [eax + 4]
0x0054079E: fstp     dword ptr [esi + 4]
0x005407A1: fld      dword ptr [eax + 8]
0x005407A4: fstp     dword ptr [esi + 8]
0x005407A7: fld      dword ptr [eax + 0xc]
0x005407AA: fstp     dword ptr [esi + 0xc]
0x005407AD: test     ecx, ecx
0x005407AF: je       0x54096d
0x005407B5: cmp      byte ptr [ecx + 0x1a8], 0
0x005407BC: je       0x54096d
0x005407C2: mov      eax, dword ptr [edi + 8]
0x005407C5: movzx    edx, byte ptr [eax + 1]
0x005407C9: mov      eax, dword ptr [eax + 4]
0x005407CC: mov      eax, dword ptr [eax + 0x1c]
0x005407CF: mov      eax, dword ptr [eax + edx*4]
0x005407D2: add      eax, 0xc
0x005407D5: lea      edx, [esp + 0x28]
0x005407D9: push     edx
0x005407DA: fld      dword ptr [eax]
0x005407DC: fstp     dword ptr [esp + 0x1c]
0x005407E0: fld      dword ptr [eax + 4]
0x005407E3: fstp     dword ptr [esp + 0x20]
0x005407E7: fld      dword ptr [eax + 8]
0x005407EA: fstp     dword ptr [esp + 0x24]
0x005407EE: fld      dword ptr [eax + 0xc]
0x005407F1: fstp     dword ptr [esp + 0x28]
0x005407F5: call     0x506920
0x005407FA: fldz     
0x005407FC: fst      dword ptr [esp + 8]
0x00540800: fst      dword ptr [esp + 0xc]
0x00540804: fstp     dword ptr [esp + 0x10]
0x00540808: fld1     
0x0054080A: fstp     dword ptr [esp + 0x14]
0x0054080E: fld      dword ptr [eax]
0x00540810: fsub     dword ptr [esp + 0x18]
0x00540814: fstp     dword ptr [esp + 8]
0x00540818: fld      dword ptr [eax + 4]
0x0054081B: fsub     dword ptr [esp + 0x1c]
0x0054081F: fstp     dword ptr [esp + 0xc]
0x00540823: fld      dword ptr [eax + 8]
0x00540826: fsub     dword ptr [esp + 0x20]
0x0054082A: fstp     dword ptr [esp + 0x10]
0x0054082E: fld      dword ptr [eax + 0xc]
0x00540831: lea      eax, [esp + 8]
0x00540835: fsub     dword ptr [esp + 0x24]
0x00540839: push     eax
0x0054083A: mov      ecx, eax
0x0054083C: push     ecx
0x0054083D: fstp     dword ptr [esp + 0x1c]
0x00540841: call     0x6b2160
0x00540846: mov      ecx, dword ptr [edi + 0xe38]
0x0054084C: fstp     st(0)
0x0054084E: add      esp, 8
0x00540851: call     0x5068e0
0x00540856: fstp     dword ptr [esp + 0x3c]
0x0054085A: cmp      dword ptr [edi + 0x23c], 0
0x00540861: fld      dword ptr [esp + 8]
0x00540865: fld      dword ptr [esp + 0x3c]
0x00540869: fld      st(0)
0x0054086B: fmulp    st(2)
0x0054086D: fxch     st(1)
0x0054086F: fstp     dword ptr [esp + 0x18]
0x00540873: fld      dword ptr [esp + 0xc]
0x00540877: fmul     st(1)
0x00540879: fstp     dword ptr [esp + 0x1c]
0x0054087D: fld      dword ptr [esp + 0x10]
0x00540881: fmul     st(1)
0x00540883: fstp     dword ptr [esp + 0x20]
0x00540887: fmul     dword ptr [esp + 0x14]
0x0054088B: fstp     dword ptr [esp + 0x24]
0x0054088F: fld      dword ptr [esp + 0x18]
0x00540893: fstp     dword ptr [esi]
0x00540895: fld      dword ptr [esp + 0x1c]
0x00540899: fstp     dword ptr [esi + 4]
0x0054089C: fld      dword ptr [esp + 0x20]
0x005408A0: fstp     dword ptr [esi + 8]
0x005408A3: fld      dword ptr [esp + 0x24]
0x005408A7: fstp     dword ptr [esi + 0xc]
0x005408AA: jne      0x54096d
0x005408B0: fld      dword ptr [edi + 0x28c]
0x005408B6: lea      edx, [esp + 0x18]
0x005408BA: fstp     dword ptr [esp + 0x18]
0x005408BE: push     edx
0x005408BF: fld      dword ptr [edi + 0x290]
0x005408C5: mov      eax, edx
0x005408C7: fstp     dword ptr [esp + 0x20]
0x005408CB: push     eax
0x005408CC: fld      dword ptr [edi + 0x294]
0x005408D2: fstp     dword ptr [esp + 0x28]
0x005408D6: fld      dword ptr [edi + 0x298]
0x005408DC: fstp     dword ptr [esp + 0x2c]
0x005408E0: call     0x6b2160
0x005408E5: mov      ecx, dword ptr [edi + 0xe38]
0x005408EB: fstp     st(0)
0x005408ED: add      esp, 8
0x005408F0: call     0x506900
0x005408F5: fstp     dword ptr [esp + 0x3c]
0x005408F9: fld      dword ptr [esp + 0x18]
0x005408FD: fld      dword ptr [esp + 0x3c]
0x00540901: fld      st(0)
0x00540903: fmulp    st(2)
0x00540905: fxch     st(1)
0x00540907: fstp     dword ptr [esp + 8]
0x0054090B: fld      dword ptr [esp + 0x1c]
0x0054090F: fmul     st(1)
0x00540911: fstp     dword ptr [esp + 0xc]
0x00540915: fld      dword ptr [esp + 0x20]
0x00540919: fmul     st(1)
0x0054091B: fstp     dword ptr [esp + 0x10]
0x0054091F: fmul     dword ptr [esp + 0x24]
0x00540923: fstp     dword ptr [esp + 0x14]
0x00540927: fld      dword ptr [esi]
0x00540929: fsub     dword ptr [esp + 8]
0x0054092D: fstp     dword ptr [esp + 0x18]
0x00540931: fld      dword ptr [esi + 4]
0x00540934: fsub     dword ptr [esp + 0xc]
0x00540938: fstp     dword ptr [esp + 0x1c]
0x0054093C: fld      dword ptr [esi + 8]
0x0054093F: fsub     dword ptr [esp + 0x10]
0x00540943: fstp     dword ptr [esp + 0x20]
0x00540947: fld      dword ptr [esi + 0xc]
0x0054094A: fsub     dword ptr [esp + 0x14]
0x0054094E: fstp     dword ptr [esp + 0x24]
0x00540952: fld      dword ptr [esp + 0x18]
0x00540956: fstp     dword ptr [esi]
0x00540958: fld      dword ptr [esp + 0x1c]
0x0054095C: fstp     dword ptr [esi + 4]
0x0054095F: fld      dword ptr [esp + 0x20]
0x00540963: fstp     dword ptr [esi + 8]
0x00540966: fld      dword ptr [esp + 0x24]
0x0054096A: fstp     dword ptr [esi + 0xc]
0x0054096D: pop      edi
0x0054096E: mov      eax, esi
0x00540970: pop      esi
0x00540971: add      esp, 0x30
0x00540974: ret      4
0x00540977: int3     
0x00540978: int3     
0x00540979: int3     
0x0054097A: int3     
0x0054097B: int3     
0x0054097C: int3     
0x0054097D: int3     
0x0054097E: int3     
0x0054097F: int3     
0x00540980: push     -1
0x00540982: push     0x945cc1
0x00540987: mov      eax, dword ptr fs:[0]
0x0054098D: push     eax
0x0054098E: sub      esp, 8
0x00540991: mov      eax, dword ptr [0xb089c8]
0x00540996: xor      eax, esp
0x00540998: push     eax
0x00540999: lea      eax, [esp + 0xc]
0x0054099D: mov      dword ptr fs:[0], eax
0x005409A3: mov      eax, dword ptr [esp + 0x1c]
0x005409A7: mov      ecx, dword ptr [ecx + 0x1b4]
0x005409AD: mov      dword ptr [esp + 4], 0x98b350
0x005409B5: mov      dword ptr [esp + 8], eax
0x005409B9: mov      edx, dword ptr [ecx]
0x005409BB: mov      edx, dword ptr [edx + 8]
0x005409BE: push     1
0x005409C0: lea      eax, [esp + 8]
0x005409C4: push     eax
0x005409C5: mov      dword ptr [esp + 0x1c], 0
0x005409CD: call     edx
0x005409CF: mov      ecx, dword ptr [esp + 0xc]
0x005409D3: mov      dword ptr fs:[0], ecx
0x005409DA: pop      ecx
0x005409DB: add      esp, 0x14
0x005409DE: ret      4
0x005409E1: int3     
0x005409E2: int3     
0x005409E3: int3     
0x005409E4: int3     
0x005409E5: int3     
0x005409E6: int3     
0x005409E7: int3     
0x005409E8: int3     
0x005409E9: int3     
0x005409EA: int3     
0x005409EB: int3     
0x005409EC: int3     
0x005409ED: int3     
0x005409EE: int3     
0x005409EF: int3     
0x005409F0: push     -1
0x005409F2: push     0x945cec
0x005409F7: mov      eax, dword ptr fs:[0]
0x005409FD: push     eax
0x005409FE: sub      esp, 0x30
0x00540A01: push     ebx
0x00540A02: push     ebp
0x00540A03: push     esi
0x00540A04: push     edi
0x00540A05: mov      eax, dword ptr [0xb089c8]
0x00540A0A: xor      eax, esp
0x00540A0C: push     eax
0x00540A0D: lea      eax, [esp + 0x44]
0x00540A11: mov      dword ptr fs:[0], eax
0x00540A17: mov      esi, ecx
0x00540A19: mov      eax, dword ptr [esi + 0x1e4]
0x00540A1F: lea      ecx, [esp + 0x34]
0x00540A23: mov      dword ptr [esi + 0xd74], 1
0x00540A2D: fld      dword ptr [eax + 0x60]
0x00540A30: push     ecx
0x00540A31: fstp     dword ptr [esi + 0xd78]
0x00540A37: mov      ecx, esi
0x00540A39: call     0x540780
0x00540A3E: push     eax
0x00540A3F: lea      edx, [esp + 0x28]
0x00540A43: push     edx
0x00540A44: call     0x6b2160
0x00540A49: fstp     st(0)
0x00540A4B: mov      eax, dword ptr [esi + 0x1e4]
0x00540A51: fld      dword ptr [eax + 0x68]
0x00540A54: xor      edi, edi
0x00540A56: fstp     dword ptr [esp + 0x1c]
0x00540A5A: add      esp, 8
0x00540A5D: fld      dword ptr [esp + 0x24]
0x00540A61: fld      dword ptr [esp + 0x14]
0x00540A65: fld      st(0)
0x00540A67: fmulp    st(2)
0x00540A69: fxch     st(1)
0x00540A6B: fstp     dword ptr [esp + 0x24]
0x00540A6F: fld      dword ptr [esp + 0x28]
0x00540A73: fmul     st(1)
0x00540A75: fstp     dword ptr [esp + 0x28]
0x00540A79: fmul     dword ptr [esp + 0x2c]
0x00540A7D: fstp     dword ptr [esp + 0x2c]
0x00540A81: fld      dword ptr [esp + 0x24]
0x00540A85: fst      dword ptr [esi + 0x28c]
0x00540A8B: fld      dword ptr [esp + 0x28]
0x00540A8F: fst      dword ptr [esi + 0x290]
0x00540A95: fld      dword ptr [esp + 0x2c]
0x00540A99: fst      dword ptr [esi + 0x294]
0x00540A9F: fld      dword ptr [esp + 0x30]
0x00540AA3: fst      dword ptr [esi + 0x298]
0x00540AA9: fstp     dword ptr [esi + 0xc30]
0x00540AAF: fxch     st(2)
0x00540AB1: fstp     dword ptr [esi + 0xc24]
0x00540AB7: fstp     dword ptr [esi + 0xc28]
0x00540ABD: fstp     dword ptr [esi + 0xc2c]
0x00540AC3: mov      ecx, dword ptr [esi + 8]
0x00540AC6: mov      dword ptr [esi + 0x204], edi
0x00540ACC: mov      dword ptr [esi + 0x208], edi
0x00540AD2: call     0x7f9590
0x00540AD7: fldz     
0x00540AD9: mov      edx, dword ptr [esi + 8]
0x00540ADC: fstp     dword ptr [esi + 0xd50]
0x00540AE2: xor      ecx, ecx
0x00540AE4: cmp      dword ptr [esi + 0xdfc], edi
0x00540AEA: lea      eax, [esp + 0x18]
0x00540AEE: sete     cl
0x00540AF1: push     eax
0x00540AF2: mov      dword ptr [esi + 0xd58], edi
0x00540AF8: push     edi
0x00540AF9: mov      dword ptr [esp + 0x20], edx
0x00540AFD: mov      dword ptr [esi + 0xdf8], ecx
0x00540B03: mov      ecx, dword ptr [0xb1bac4]
0x00540B09: push     ecx
0x00540B0A: call     0x52d190
0x00540B0F: mov      eax, dword ptr [esi + 0xdfc]
0x00540B15: mov      ecx, dword ptr [esi + 0x1b4]
0x00540B1B: add      esp, 0xc
0x00540B1E: mov      dword ptr [esp + 0x1c], 0x98b378
0x00540B26: mov      dword ptr [esp + 0x20], eax
0x00540B2A: mov      edx, dword ptr [ecx]
0x00540B2C: mov      edx, dword ptr [edx + 8]
0x00540B2F: push     1
0x00540B31: lea      eax, [esp + 0x20]
0x00540B35: push     eax
0x00540B36: mov      dword ptr [esp + 0x54], edi
0x00540B3A: call     edx
0x00540B3C: mov      eax, dword ptr [esi + 0xd70]
0x00540B42: xor      ecx, ecx
0x00540B44: mov      edx, ecx
0x00540B46: dec      eax
0x00540B47: mov      dword ptr [esp + 0x4c], 0xffffffff
0x00540B4F: sar      edx, 0x1f
0x00540B52: mov      ebx, ecx
0x00540B54: sar      ebx, 0x1f
0x00540B57: and      ebx, ecx
0x00540B59: and      edx, eax
0x00540B5B: sub      eax, edx
0x00540B5D: sbb      ecx, ebx
0x00540B5F: xor      edx, edx
0x00540B61: or       edi, 0xffffffff
0x00540B64: sub      edi, eax
0x00540B66: mov      ecx, edx
0x00540B68: sbb      ecx, edx
0x00540B6A: mov      ebx, ecx
0x00540B6C: sar      ebx, 0x1f
0x00540B6F: mov      ebp, ecx
0x00540B71: sar      ebp, 0x1f
0x00540B74: and      ebx, edi
0x00540B76: and      ebp, ecx
0x00540B78: add      eax, ebx
0x00540B7A: adc      edx, ebp
0x00540B7C: mov      dword ptr [esi + 0xd70], eax
0x00540B82: mov      eax, dword ptr [esi + 0xdfc]
0x00540B88: xor      edi, edi
0x00540B8A: cmp      eax, edi
0x00540B8C: je       0x540bc8
0x00540B8E: mov      eax, dword ptr [eax + 0x1b4]
0x00540B94: mov      dword ptr [esp + 0x1c], 0x98b364
0x00540B9C: mov      dword ptr [esp + 0x20], esi
0x00540BA0: mov      edx, dword ptr [eax]
0x00540BA2: mov      edx, dword ptr [edx + 8]
0x00540BA5: push     1
0x00540BA7: lea      ecx, [esp + 0x20]
0x00540BAB: push     ecx
0x00540BAC: mov      ecx, eax
0x00540BAE: mov      dword ptr [esp + 0x54], 1
0x00540BB6: call     edx
0x00540BB8: mov      dword ptr [esp + 0x4c], 0xffffffff
0x00540BC0: mov      dword ptr [esp + 0x1c], 0x979378
0x00540BC8: mov      ecx, dword ptr [esi + 0x23c]
0x00540BCE: mov      dword ptr [esi + 0x1f8], edi
0x00540BD4: cmp      ecx, edi
0x00540BD6: je       0x540c3b
0x00540BD8: movzx    eax, byte ptr [ecx + 1]
0x00540BDC: mov      ecx, dword ptr [ecx + 4]
0x00540BDF: mov      edx, dword ptr [ecx + 8]
0x00540BE2: test     dword ptr [edx + eax*4], 0x40000
0x00540BE9: je       0x540c31
0x00540BEB: mov      ecx, dword ptr [ecx + 0x14]
0x00540BEE: lea      eax, [eax + eax*8]
0x00540BF1: lea      eax, [ecx + eax*4]
0x00540BF4: mov      ecx, 0x1c
0x00540BF9: cmp      byte ptr [eax + 0x14], cl
0x00540BFC: jne      0x540c03
0x00540BFE: mov      eax, dword ptr [eax + 4]
0x00540C01: jmp      0x540c33
0x00540C03: cmp      byte ptr [eax + 0x15], cl
0x00540C06: jne      0x540c0d
0x00540C08: mov      eax, dword ptr [eax + 8]
0x00540C0B: jmp      0x540c33
0x00540C0D: cmp      byte ptr [eax + 0x16], cl
0x00540C10: jne      0x540c17
0x00540C12: mov      eax, dword ptr [eax + 0xc]
0x00540C15: jmp      0x540c33
0x00540C17: cmp      byte ptr [eax + 0x17], cl
0x00540C1A: jne      0x540c21
0x00540C1C: mov      eax, dword ptr [eax + 0x10]
0x00540C1F: jmp      0x540c33
0x00540C21: mov      eax, dword ptr [eax]
0x00540C23: cmp      eax, edi
0x00540C25: je       0x540c31
0x00540C27: push     ecx
0x00540C28: mov      ecx, eax
0x00540C2A: call     0x461400
0x00540C2F: jmp      0x540c33
0x00540C31: xor      eax, eax
0x00540C33: push     esi
0x00540C34: mov      ecx, eax
0x00540C36: call     0x520a40
0x00540C3B: mov      dword ptr [esi + 0xdfc], edi
0x00540C41: mov      edx, dword ptr [0xb1bad4]
0x00540C47: add      esi, 0xd84
0x00540C4D: push     esi
0x00540C4E: push     edi
0x00540C4F: push     edx
0x00540C50: call     0x52d190
0x00540C55: add      esp, 0xc
0x00540C58: mov      ecx, dword ptr [esp + 0x44]
0x00540C5C: mov      dword ptr fs:[0], ecx
0x00540C63: pop      ecx
0x00540C64: pop      edi
0x00540C65: pop      esi
0x00540C66: pop      ebp
0x00540C67: pop      ebx
0x00540C68: add      esp, 0x3c
0x00540C6B: ret      
0x00540C6C: int3     
0x00540C6D: int3     
0x00540C6E: int3     
0x00540C6F: int3     
0x00540C70: push     -1
0x00540C72: push     0x945d0f
0x00540C77: mov      eax, dword ptr fs:[0]
0x00540C7D: push     eax
0x00540C7E: push     ecx
0x00540C7F: push     ebx
0x00540C80: push     esi
0x00540C81: mov      eax, dword ptr [0xb089c8]
0x00540C86: xor      eax, esp
0x00540C88: push     eax
0x00540C89: lea      eax, [esp + 0x10]
0x00540C8D: mov      dword ptr fs:[0], eax
0x00540C93: mov      esi, ecx
0x00540C95: xor      ebx, ebx
0x00540C97: lea      ecx, [esi + 0x270]
0x00540C9D: mov      dword ptr [esi + 0xe10], ebx
0x00540CA3: mov      dword ptr [esi + 0x26c], ebx
0x00540CA9: mov      dword ptr [esi + 0x238], ebx
0x00540CAF: mov      dword ptr [esi + 0xd68], 1
0x00540CB9: call     0x542740
0x00540CBE: fldz     
0x00540CC0: fst      dword ptr [esi + 0xc38]
0x00540CC6: mov      dword ptr [esi + 0xc48], ebx
0x00540CCC: fst      dword ptr [esi + 0xc3c]
0x00540CD2: mov      byte ptr [esi + 0xd40], bl
0x00540CD8: fst      dword ptr [esi + 0xc40]
0x00540CDE: mov      byte ptr [esi + 0xd41], bl
0x00540CE4: fst      dword ptr [esi + 0xc4c]
0x00540CEA: fld1     
0x00540CEC: fst      dword ptr [esi + 0xc54]
0x00540CF2: fxch     st(1)
0x00540CF4: fst      dword ptr [esi + 0xc70]
0x00540CFA: fst      dword ptr [esi + 0xc74]
0x00540D00: fst      dword ptr [esi + 0xc78]
0x00540D06: fxch     st(1)
0x00540D08: fstp     dword ptr [esi + 0xc7c]
0x00540D0E: mov      ecx, dword ptr [esi + 8]
0x00540D11: mov      dword ptr [esi + 0xd74], ebx
0x00540D17: fstp     dword ptr [esi + 0xd78]
0x00540D1D: mov      dword ptr [esi + 0x204], ebx
0x00540D23: mov      dword ptr [esi + 0x208], ebx
0x00540D29: call     0x7f9590
0x00540D2E: fld1     
0x00540D30: fstp     dword ptr [esi + 0xd48]
0x00540D36: push     0x51b1e251
0x00540D3B: fldz     
0x00540D3D: lea      ecx, [esi + 0x1a8]
0x00540D43: fst      dword ptr [esi + 0xd4c]
0x00540D49: mov      dword ptr [esi + 0xdfc], ebx
0x00540D4F: fst      dword ptr [esi + 0xd50]
0x00540D55: mov      dword ptr [esi + 0xd58], ebx
0x00540D5B: fstp     dword ptr [esi + 0xd54]
0x00540D61: mov      dword ptr [esi + 0xd64], ebx
0x00540D67: mov      dword ptr [esi + 0xd5c], ebx
0x00540D6D: mov      dword ptr [esi + 0xd60], ebx
0x00540D73: call     0x5691a0
0x00540D78: cmp      eax, ebx
0x00540D7A: je       0x540da5
0x00540D7C: cmp      dword ptr [eax + 0xe4], 5
0x00540D83: jl       0x540d99
0x00540D85: mov      dword ptr [esi + 0xd5c], 1
0x00540D8F: mov      dword ptr [esi + 0xd60], 1
0x00540D99: mov      dword ptr [eax + 0x114], ebx
0x00540D9F: mov      dword ptr [eax + 0x110], ebx
0x00540DA5: mov      ecx, dword ptr [esi + 0x1b4]
0x00540DAB: mov      dword ptr [esp + 0xc], 0x98b33c
0x00540DB3: mov      eax, dword ptr [ecx]
0x00540DB5: mov      eax, dword ptr [eax + 8]
0x00540DB8: push     1
0x00540DBA: lea      edx, [esp + 0x10]
0x00540DBE: push     edx
0x00540DBF: mov      dword ptr [esp + 0x20], ebx
0x00540DC3: call     eax
0x00540DC5: mov      ecx, dword ptr [esp + 0x10]
0x00540DC9: mov      dword ptr fs:[0], ecx
0x00540DD0: pop      ecx
0x00540DD1: pop      esi
0x00540DD2: pop      ebx
0x00540DD3: add      esp, 0x10
0x00540DD6: ret      
0x00540DD7: int3     
0x00540DD8: int3     
0x00540DD9: int3     
0x00540DDA: int3     
0x00540DDB: int3     
0x00540DDC: int3     
0x00540DDD: int3     
0x00540DDE: int3     
0x00540DDF: int3     
0x00540DE0: push     -1
0x00540DE2: push     0x945d42
0x00540DE7: mov      eax, dword ptr fs:[0]
0x00540DED: push     eax
0x00540DEE: sub      esp, 8
0x00540DF1: push     esi
0x00540DF2: mov      eax, dword ptr [0xb089c8]
0x00540DF7: xor      eax, esp
0x00540DF9: push     eax
0x00540DFA: lea      eax, [esp + 0x10]
0x00540DFE: mov      dword ptr fs:[0], eax
0x00540E04: mov      esi, ecx
0x00540E06: call     0x540c70
0x00540E0B: mov      ecx, dword ptr [esi + 8]
0x00540E0E: push     0
0x00540E10: push     1
0x00540E12: call     0x7f8390
0x00540E17: mov      eax, dword ptr [esi + 8]
0x00540E1A: movzx    ecx, byte ptr [eax + 1]
0x00540E1E: mov      edx, dword ptr [eax + 4]
0x00540E21: mov      eax, dword ptr [edx + 0x34]
0x00540E24: mov      ecx, dword ptr [eax + ecx*4]
0x00540E27: mov      edx, dword ptr [ecx]
0x00540E29: mov      eax, dword ptr [edx + 0x128]
0x00540E2F: push     0
0x00540E31: push     0
0x00540E33: push     0
0x00540E35: call     eax
0x00540E37: mov      ecx, dword ptr [esi + 8]
0x00540E3A: lea      edx, [esp + 8]
0x00540E3E: push     edx
0x00540E3F: mov      dword ptr [esi + 0x1f4], 0
0x00540E49: mov      dword ptr [esi + 0x1fc], 1
0x00540E53: mov      dword ptr [esi + 0x200], 1
0x00540E5D: mov      eax, dword ptr [0xb1bad8]
0x00540E62: push     0
0x00540E64: push     eax
0x00540E65: mov      dword ptr [esp + 0x14], ecx
0x00540E69: call     0x52d190
0x00540E6E: mov      ecx, dword ptr [esi + 0x1b4]
0x00540E74: add      esp, 0xc
0x00540E77: mov      dword ptr [esp + 0xc], 0x98b38c
0x00540E7F: mov      edx, dword ptr [ecx]
0x00540E81: mov      edx, dword ptr [edx + 8]
0x00540E84: push     1
0x00540E86: lea      eax, [esp + 0x10]
0x00540E8A: push     eax
0x00540E8B: mov      dword ptr [esp + 0x20], 0
0x00540E93: call     edx
0x00540E95: mov      ecx, dword ptr [esi + 0x1b4]
0x00540E9B: mov      dword ptr [esp + 0xc], 0x98b3b4
0x00540EA3: mov      eax, dword ptr [ecx]
0x00540EA5: mov      eax, dword ptr [eax + 8]
0x00540EA8: push     1
0x00540EAA: lea      edx, [esp + 0x10]
0x00540EAE: push     edx
0x00540EAF: mov      dword ptr [esp + 0x20], 1
0x00540EB7: call     eax
0x00540EB9: mov      ecx, dword ptr [esi + 0x1b4]
0x00540EBF: mov      dword ptr [esp + 0xc], 0x98b3dc
0x00540EC7: mov      edx, dword ptr [ecx]
0x00540EC9: mov      edx, dword ptr [edx + 8]
0x00540ECC: push     1
0x00540ECE: lea      eax, [esp + 0x10]
0x00540ED2: push     eax
0x00540ED3: mov      dword ptr [esp + 0x20], 2
0x00540EDB: call     edx
0x00540EDD: mov      ecx, dword ptr [esp + 0x10]
0x00540EE1: mov      dword ptr fs:[0], ecx
0x00540EE8: pop      ecx
0x00540EE9: pop      esi
0x00540EEA: add      esp, 0x14
0x00540EED: ret      
0x00540EEE: int3     
0x00540EEF: int3     
0x00540EF0: sub      esp, 0xc
0x00540EF3: mov      dword ptr [ecx + 0x1f4], 1
0x00540EFD: mov      eax, dword ptr [0xb1bae4]
0x00540F02: mov      dword ptr [esp], eax
0x00540F05: lea      edx, [ecx + 0xdb4]
0x00540F0B: lea      eax, [esp]
0x00540F0E: push     eax
0x00540F0F: add      ecx, 0xdb8
0x00540F15: mov      dword ptr [esp + 8], 0
0x00540F1D: mov      dword ptr [esp + 0xc], edx
0x00540F21: call     0x542780
0x00540F26: add      esp, 0xc
0x00540F29: ret      
0x00540F2A: int3     
0x00540F2B: int3     
0x00540F2C: int3     
0x00540F2D: int3     
0x00540F2E: int3     
0x00540F2F: int3     
0x00540F30: push     -1
0x00540F32: push     0x945d65
0x00540F37: mov      eax, dword ptr fs:[0]
0x00540F3D: push     eax
0x00540F3E: sub      esp, 0xc
0x00540F41: push     esi
0x00540F42: mov      eax, dword ptr [0xb089c8]
0x00540F47: xor      eax, esp
0x00540F49: push     eax
0x00540F4A: lea      eax, [esp + 0x14]
0x00540F4E: mov      dword ptr fs:[0], eax
0x00540F54: mov      esi, ecx
0x00540F56: call     0x4fd9f0
0x00540F5B: mov      cx, word ptr [eax]
0x00540F5E: mov      edx, dword ptr [eax + 4]
0x00540F61: mov      eax, dword ptr [eax + 8]
0x00540F64: mov      word ptr [esp + 8], cx
0x00540F69: mov      dword ptr [esp + 0xc], edx
0x00540F6D: mov      dword ptr [esp + 0x10], eax
0x00540F71: mov      dword ptr [esp + 0x1c], 0
0x00540F79: test     cl, 2
0x00540F7C: je       0x540f96
0x00540F7E: mov      ecx, dword ptr [esi + 0x1dc]
0x00540F84: movsx    edx, byte ptr [ecx]
0x00540F87: mov      eax, dword ptr [esp + 0x24]
0x00540F8B: cmp      edx, dword ptr [eax + 4]
0x00540F8E: jge      0x540fe6
0x00540F90: push     0
0x00540F92: push     1
0x00540F94: jmp      0x540fd8
0x00540F96: mov      ecx, 1
0x00540F9B: cmp      dword ptr [0xb49c64], ecx
0x00540FA1: jne      0x540fb7
0x00540FA3: mov      edx, dword ptr [esi + 0x1dc]
0x00540FA9: movsx    eax, byte ptr [edx]
0x00540FAC: mov      edx, dword ptr [esp + 0x24]
0x00540FB0: cmp      eax, dword ptr [edx + 4]
0x00540FB3: jge      0x540fe6
0x00540FB5: jmp      0x540fd5
0x00540FB7: mov      eax, dword ptr [esi + 0x1dc]
0x00540FBD: movsx    eax, byte ptr [eax]
0x00540FC0: add      eax, eax
0x00540FC2: add      eax, eax
0x00540FC4: cmp      dword ptr [eax + 0xafce44], -1
0x00540FCB: jne      0x540fd5
0x00540FCD: cmp      dword ptr [eax + 0xafce54], ecx
0x00540FD3: jne      0x540fe6
0x00540FD5: push     0
0x00540FD7: push     ecx
0x00540FD8: mov      ecx, esi
0x00540FDA: call     0x540470
0x00540FDF: mov      ecx, esi
0x00540FE1: call     0x540ef0
0x00540FE6: mov      ecx, dword ptr [esp + 0x14]
0x00540FEA: mov      dword ptr fs:[0], ecx
0x00540FF1: pop      ecx
0x00540FF2: pop      esi
0x00540FF3: add      esp, 0x18
0x00540FF6: ret      4
0x00540FF9: int3     
0x00540FFA: int3     
0x00540FFB: int3     
0x00540FFC: int3     
0x00540FFD: int3     
0x00540FFE: int3     
0x00540FFF: int3     
0x00541000: mov      ecx, dword ptr [esp + 0x10]
0x00541004: mov      eax, dword ptr [ecx + 0x1dc]
0x0054100A: movsx    edx, byte ptr [eax]
0x0054100D: mov      eax, dword ptr [esp + 0xc]
0x00541011: mov      edx, dword ptr [eax + edx*4 + 0xc]
0x00541015: push     eax
0x00541016: mov      dword ptr [ecx + 0xd44], edx
0x0054101C: call     0x540f30
0x00541021: ret      
0x00541022: int3     
0x00541023: int3     
0x00541024: int3     
0x00541025: int3     
0x00541026: int3     
0x00541027: int3     
0x00541028: int3     
0x00541029: int3     
0x0054102A: int3     
0x0054102B: int3     
0x0054102C: int3     
0x0054102D: int3     
0x0054102E: int3     
0x0054102F: int3     
0x00541030: push     esi
0x00541031: mov      esi, dword ptr [esp + 0x14]
0x00541035: mov      ecx, esi
0x00541037: call     0x540c70
0x0054103C: push     0
0x0054103E: push     1
0x00541040: mov      ecx, esi
0x00541042: call     0x540470
0x00541047: pop      esi
0x00541048: ret      
0x00541049: int3     
0x0054104A: int3     
0x0054104B: int3     
0x0054104C: int3     
0x0054104D: int3     
0x0054104E: int3     
0x0054104F: int3     

--- CRotasticPlayer::vfunc_4 @ 0x00541050 ---
0x00541050: push     -1
0x00541052: push     0x945eb0
0x00541057: mov      eax, dword ptr fs:[0]
0x0054105D: push     eax
0x0054105E: sub      esp, 0x74
0x00541061: push     ebx
0x00541062: push     ebp
0x00541063: push     esi
0x00541064: push     edi
0x00541065: mov      eax, dword ptr [0xb089c8]
0x0054106A: xor      eax, esp
0x0054106C: push     eax
0x0054106D: lea      eax, [esp + 0x88]
0x00541074: mov      dword ptr fs:[0], eax
0x0054107A: mov      esi, ecx
0x0054107C: mov      eax, dword ptr [esi + 8]
0x0054107F: lea      ecx, [esi + 0x60]
0x00541082: push     ecx
0x00541083: push     eax
0x00541084: call     0x5687c0
0x00541089: mov      ecx, dword ptr [esi + 0xc]
0x0054108C: mov      edi, dword ptr [esp + 0xa4]
0x00541093: mov      ebx, dword ptr [esp + 0xa0]
0x0054109A: xor      ebp, ebp
0x0054109C: add      esp, 8
0x0054109F: cmp      ecx, ebp
0x005410A1: je       0x5410c2
0x005410A3: mov      eax, dword ptr [esi + 8]
0x005410A6: movzx    edx, byte ptr [eax + 1]
0x005410AA: mov      ebp, dword ptr [eax + 4]
0x005410AD: mov      ebp, dword ptr [ebp + 0x38]
0x005410B0: cmp      ecx, dword ptr [ebp + edx*4]
0x005410B4: je       0x5410c0
0x005410B6: mov      edx, dword ptr [ecx]
0x005410B8: push     edi
0x005410B9: push     eax
0x005410BA: mov      eax, dword ptr [edx + 0x24]
0x005410BD: push     ebx
0x005410BE: call     eax
0x005410C0: xor      ebp, ebp
0x005410C2: mov      eax, edi
0x005410C4: sub      eax, 2
0x005410C7: je       0x541283
0x005410CD: sub      eax, 2
0x005410D0: je       0x54123f
0x005410D6: sub      eax, 5
0x005410D9: jne      0x541b13
0x005410DF: mov      eax, dword ptr [esi + 8]
0x005410E2: movzx    ecx, byte ptr [eax + 1]
0x005410E6: mov      edx, dword ptr [eax + 4]
0x005410E9: mov      eax, dword ptr [edx + 0x1c]
0x005410EC: mov      eax, dword ptr [eax + ecx*4]
0x005410EF: add      eax, 0xc
0x005410F2: lea      ecx, [esi + 0xd84]
0x005410F8: push     ecx
0x005410F9: fld      dword ptr [eax]
0x005410FB: push     ebp
0x005410FC: fstp     dword ptr [esp + 0x80]
0x00541103: fld      dword ptr [eax + 4]
0x00541106: fstp     dword ptr [esp + 0x84]
0x0054110D: fld      dword ptr [eax + 8]
0x00541110: fstp     dword ptr [esp + 0x88]
0x00541117: fld      dword ptr [eax + 0xc]
0x0054111A: fstp     dword ptr [esp + 0x8c]
0x00541121: fld      dword ptr [esp + 0x80]
0x00541128: fstp     dword ptr [esi + 0x24c]
0x0054112E: fld      dword ptr [esp + 0x84]
0x00541135: fstp     dword ptr [esi + 0x250]
0x0054113B: fld      dword ptr [esp + 0x88]
0x00541142: fstp     dword ptr [esi + 0x254]
0x00541148: fld      dword ptr [esp + 0x8c]
0x0054114F: fstp     dword ptr [esi + 0x258]
0x00541155: mov      edx, dword ptr [0xb1bad4]
0x0054115B: push     edx
0x0054115C: call     0x52d190
0x00541161: mov      ecx, dword ptr [0xb1bacc]
0x00541167: lea      eax, [esi + 0xd9c]
0x0054116D: push     eax
0x0054116E: push     ebp
0x0054116F: push     ecx
0x00541170: call     0x52d190
0x00541175: mov      eax, dword ptr [0xb1bae0]
0x0054117A: lea      edx, [esi + 0xd88]
0x00541180: push     edx
0x00541181: push     ebp
0x00541182: push     eax
0x00541183: call     0x52d190
0x00541188: add      esp, 0x24
0x0054118B: push     ebp
0x0054118C: push     ebp
0x0054118D: mov      ecx, esi
0x0054118F: call     0x540470
0x00541194: mov      ecx, dword ptr [0x95f310] ; [u32=0xD70608CB]
0x0054119A: push     ebp
0x0054119B: push     ebp
0x0054119C: push     ecx
0x0054119D: mov      ecx, ebx
0x0054119F: call     0x7cd3c0
0x005411A4: cmp      eax, ebp
0x005411A6: je       0x541b13
0x005411AC: movzx    ecx, byte ptr [eax + 1]
0x005411B0: mov      eax, dword ptr [eax + 4]
0x005411B3: mov      edx, dword ptr [eax + 8]
0x005411B6: test     dword ptr [edx + ecx*4], 0x40000
0x005411BD: je       0x541232
0x005411BF: mov      edx, dword ptr [eax + 0x14]
0x005411C2: lea      ecx, [ecx + ecx*8]
0x005411C5: lea      eax, [edx + ecx*4]
0x005411C8: mov      ecx, 0x1c
0x005411CD: cmp      byte ptr [eax + 0x14], cl
0x005411D0: jne      0x5411e0
0x005411D2: mov      eax, dword ptr [eax + 4]
0x005411D5: mov      dword ptr [esi + 0xe38], eax
0x005411DB: jmp      0x541b13
0x005411E0: cmp      byte ptr [eax + 0x15], cl
0x005411E3: jne      0x5411f3
0x005411E5: mov      eax, dword ptr [eax + 8]
0x005411E8: mov      dword ptr [esi + 0xe38], eax
0x005411EE: jmp      0x541b13
0x005411F3: cmp      byte ptr [eax + 0x16], cl
0x005411F6: jne      0x541206
0x005411F8: mov      eax, dword ptr [eax + 0xc]
0x005411FB: mov      dword ptr [esi + 0xe38], eax
0x00541201: jmp      0x541b13
0x00541206: cmp      byte ptr [eax + 0x17], cl
0x00541209: jne      0x541219
0x0054120B: mov      eax, dword ptr [eax + 0x10]
0x0054120E: mov      dword ptr [esi + 0xe38], eax
0x00541214: jmp      0x541b13
0x00541219: mov      eax, dword ptr [eax]
0x0054121B: cmp      eax, ebp
0x0054121D: je       0x541232
0x0054121F: push     ecx
0x00541220: mov      ecx, eax
0x00541222: call     0x461400
0x00541227: mov      dword ptr [esi + 0xe38], eax
0x0054122D: jmp      0x541b13
0x00541232: xor      eax, eax
0x00541234: mov      dword ptr [esi + 0xe38], eax
0x0054123A: jmp      0x541b13
0x0054123F: push     esi
0x00541240: call     0x57b060
0x00541245: mov      dword ptr [esi + 0xe0c], eax
0x0054124B: mov      eax, dword ptr [esi + 0x1dc]
0x00541251: movsx    ecx, byte ptr [eax]
0x00541254: add      esp, 4
0x00541257: cmp      dword ptr [ecx*4 + 0xafce54], 1
0x0054125F: jne      0x541265
0x00541261: mov      byte ptr [eax + 2], 1
0x00541265: mov      edx, dword ptr [esi + 0x1dc]
0x0054126B: cmp      byte ptr [edx + 2], 0
0x0054126F: je       0x541b13
0x00541275: push     esi
0x00541276: call     0x57af90
0x0054127B: add      esp, 4
0x0054127E: jmp      0x541b13
0x00541283: mov      eax, dword ptr [esi + 8]
0x00541286: movzx    ecx, byte ptr [eax + 1]
0x0054128A: mov      edx, dword ptr [eax + 4]
0x0054128D: mov      eax, dword ptr [edx + 0x38]
0x00541290: mov      eax, dword ptr [eax + ecx*4]
0x00541293: add      eax, 0x38
0x00541296: mov      dword ptr [esi + 0x1dc], eax
0x0054129C: call     0x4fd9f0
0x005412A1: mov      cx, word ptr [eax]
0x005412A4: mov      edx, dword ptr [eax + 4]
0x005412A7: mov      eax, dword ptr [eax + 8]
0x005412AA: mov      word ptr [esp + 0x78], cx
0x005412AF: mov      dword ptr [esp + 0x7c], edx
0x005412B3: mov      dword ptr [esp + 0x80], eax
0x005412BA: mov      ecx, dword ptr [esp + 0x78]
0x005412BE: shr      ecx, 1
0x005412C0: and      ecx, 1
0x005412C3: mov      dword ptr [esp + 0x90], ebp
0x005412CA: jne      0x54131b
0x005412CC: mov      ecx, dword ptr [esi + 0x1dc]
0x005412D2: mov      al, byte ptr [ecx]
0x005412D4: mov      edx, dword ptr [0xb49c64]
0x005412DA: test     al, al
0x005412DC: je       0x54130f
0x005412DE: cmp      edx, 1
0x005412E1: jne      0x54130f
0x005412E3: mov      ebx, dword ptr [ecx + 4]
0x005412E6: test     al, al
0x005412E8: je       0x5413a2
0x005412EE: cmp      edx, 1
0x005412F1: jne      0x5413a2
0x005412F7: movsx    edi, al
0x005412FA: add      edi, dword ptr [0xafce98]
0x00541300: and      edi, 0x80000003
0x00541306: jns      0x541327
0x00541308: dec      edi
0x00541309: or       edi, 0xfffffffc
0x0054130C: inc      edi
0x0054130D: jmp      0x541327
0x0054130F: movsx    ecx, al
0x00541312: mov      ebx, dword ptr [ecx*4 + 0xafce88]
0x00541319: jmp      0x5412e6
0x0054131B: mov      eax, dword ptr [esi + 0x1dc]
0x00541321: mov      ebx, dword ptr [eax + 4]
0x00541324: movsx    edi, byte ptr [eax]
0x00541327: mov      ecx, dword ptr [0xb76118]
0x0054132D: push     ebp
0x0054132E: push     ebp
0x0054132F: push     0x98b300
0x00541334: call     0x6eeaa0
0x00541339: cmp      eax, ebp
0x0054133B: je       0x54137d
0x0054133D: mov      eax, dword ptr [eax + 0xc4]
0x00541343: cmp      eax, ebp
0x00541345: je       0x54137d
0x00541347: mov      ecx, dword ptr [eax + 0x114]
0x0054134D: cmp      ecx, ebp
0x0054134F: je       0x54137d
0x00541351: mov      eax, dword ptr [0x95f61c] ; [u32=0x0EBFF366]
0x00541356: push     ebp
0x00541357: push     ebp
0x00541358: push     eax
0x00541359: call     0x7cd3c0
0x0054135E: mov      dword ptr [esi + 0xdec], eax
0x00541364: movzx    ecx, byte ptr [eax + 1]
0x00541368: mov      edx, dword ptr [eax + 4]
0x0054136B: mov      eax, dword ptr [edx + 0x28]
0x0054136E: mov      eax, dword ptr [eax + ecx*4]
0x00541371: mov      ecx, dword ptr [eax + 0xd0]
0x00541377: mov      dword ptr [esi + 0xde8], ecx
0x0054137D: mov      eax, dword ptr [esi + 0xdec]
0x00541383: movzx    edx, byte ptr [eax + 1]
0x00541387: mov      eax, dword ptr [eax + 4]
0x0054138A: mov      ecx, dword ptr [eax + 0x38]
0x0054138D: mov      ecx, dword ptr [ecx + edx*4]
0x00541390: xor      eax, eax
0x00541392: cmp      ebx, 3
0x00541395: ja       0x541458
0x0054139B: jmp      dword ptr [ebx*4 + 0x541b30]
0x005413A2: movsx    edx, al
0x005413A5: mov      edi, dword ptr [edx*4 + 0xafce98]
0x005413AC: jmp      0x541327
0x005413B1: cmp      edi, 3
0x005413B4: ja       0x54146e
0x005413BA: jmp      dword ptr [edi*4 + 0x541b40]
0x005413C1: add      ecx, 0x44
0x005413C4: jmp      0x54145b
0x005413C9: add      ecx, 0x50
0x005413CC: jmp      0x54145b
0x005413D1: add      ecx, 0x5c
0x005413D4: jmp      0x54145b
0x005413D9: cmp      edi, 3
0x005413DC: ja       0x54146e
0x005413E2: jmp      dword ptr [edi*4 + 0x541b50]
0x005413E9: add      ecx, 0xc8
0x005413EF: jmp      0x54145b
0x005413F1: add      ecx, 0xd4
0x005413F7: jmp      0x54145b
0x005413F9: add      ecx, 0xe0
0x005413FF: jmp      0x54145b
0x00541401: add      ecx, 0xec
0x00541407: jmp      0x54145b
0x00541409: cmp      edi, 3
0x0054140C: ja       0x54146e
0x0054140E: jmp      dword ptr [edi*4 + 0x541b60]
0x00541415: add      ecx, 0x68
0x00541418: jmp      0x54145b
0x0054141A: add      ecx, 0x74
0x0054141D: jmp      0x54145b
0x0054141F: sub      ecx, -0x80
0x00541422: jmp      0x54145b
0x00541424: add      ecx, 0x8c
0x0054142A: jmp      0x54145b
0x0054142C: cmp      edi, 3
0x0054142F: ja       0x54146e
0x00541431: jmp      dword ptr [edi*4 + 0x541b70]
0x00541438: add      ecx, 0x98
0x0054143E: jmp      0x54145b
0x00541440: add      ecx, 0xa4
0x00541446: jmp      0x54145b
0x00541448: add      ecx, 0xb0
0x0054144E: jmp      0x54145b
0x00541450: add      ecx, 0xbc
0x00541456: jmp      0x54145b
0x00541458: add      ecx, 0x38
0x0054145B: push     ebp
0x0054145C: call     0x499af0
0x00541461: movzx    edx, byte ptr [eax + 1]
0x00541465: mov      eax, dword ptr [eax + 4]
0x00541468: mov      ecx, dword ptr [eax + 0x38]
0x0054146B: mov      eax, dword ptr [ecx + edx*4]
0x0054146E: push     ebp
0x0054146F: push     1
0x00541471: push     ebp
0x00541472: add      eax, 0x38
0x00541475: push     1
0x00541477: mov      dword ptr [esi + 0xdf0], eax
0x0054147D: mov      edx, dword ptr [0xb01b28]
0x00541483: push     ebp
0x00541484: push     edx
0x00541485: push     0x6c
0x00541487: call     0x688fe0
0x0054148C: add      esp, 0x1c
0x0054148F: mov      dword ptr [esp + 0x14], eax
0x00541493: mov      byte ptr [esp + 0x90], 1
0x0054149B: cmp      eax, ebp
0x0054149D: je       0x5414aa
0x0054149F: mov      ecx, eax
0x005414A1: call     0x542a50
0x005414A6: mov      ebx, eax
0x005414A8: jmp      0x5414ac
0x005414AA: xor      ebx, ebx
0x005414AC: lea      edi, [esi + 0x1a8]
0x005414B2: push     ebx
0x005414B3: mov      ecx, edi
0x005414B5: mov      byte ptr [esp + 0x94], 0
0x005414BD: call     0x5696a0
0x005414C2: mov      eax, dword ptr [ebx]
0x005414C4: mov      edx, dword ptr [eax + 8]
0x005414C7: push     esi
0x005414C8: mov      ecx, ebx
0x005414CA: call     edx
0x005414CC: mov      eax, dword ptr [ebx]
0x005414CE: mov      edx, dword ptr [eax + 0x10]
0x005414D1: mov      ecx, ebx
0x005414D3: call     edx
0x005414D5: mov      eax, dword ptr [0xb01b28]
0x005414DA: push     ebp
0x005414DB: push     1
0x005414DD: push     ebp
0x005414DE: push     1
0x005414E0: push     ebp
0x005414E1: push     eax
0x005414E2: push     0x44
0x005414E4: call     0x688fe0
0x005414E9: add      esp, 0x1c
0x005414EC: mov      dword ptr [esp + 0x14], eax
0x005414F0: mov      byte ptr [esp + 0x90], 2
0x005414F8: cmp      eax, ebp
0x005414FA: je       0x541507
0x005414FC: mov      ecx, eax
0x005414FE: call     0x56d2d0
0x00541503: mov      ebx, eax
0x00541505: jmp      0x541509
0x00541507: xor      ebx, ebx
0x00541509: push     ebx
0x0054150A: mov      ecx, edi
0x0054150C: mov      byte ptr [esp + 0x94], 0
0x00541514: call     0x5696a0
0x00541519: mov      edx, dword ptr [ebx]
0x0054151B: mov      eax, dword ptr [edx + 8]
0x0054151E: push     esi
0x0054151F: mov      ecx, ebx
0x00541521: call     eax
0x00541523: mov      edx, dword ptr [ebx]
0x00541525: mov      eax, dword ptr [edx + 0x10]
0x00541528: mov      ecx, ebx
0x0054152A: call     eax
0x0054152C: mov      ecx, dword ptr [0xb01b28]
0x00541532: push     ebp
0x00541533: push     1
0x00541535: push     ebp
0x00541536: push     1
0x00541538: push     ebp
0x00541539: push     ecx
0x0054153A: push     0x58
0x0054153C: call     0x688fe0
0x00541541: add      esp, 0x1c
0x00541544: mov      dword ptr [esp + 0x14], eax
0x00541548: mov      byte ptr [esp + 0x90], 3
0x00541550: cmp      eax, ebp
0x00541552: je       0x54155f
0x00541554: mov      ecx, eax
0x00541556: call     0x57a660
0x0054155B: mov      ebx, eax
0x0054155D: jmp      0x541561
0x0054155F: xor      ebx, ebx
0x00541561: push     ebx
0x00541562: mov      ecx, edi
0x00541564: mov      byte ptr [esp + 0x94], 0
0x0054156C: call     0x5696a0
0x00541571: mov      edx, dword ptr [ebx]
0x00541573: mov      eax, dword ptr [edx + 8]
0x00541576: push     esi
0x00541577: mov      ecx, ebx
0x00541579: call     eax
0x0054157B: mov      edx, dword ptr [ebx]
0x0054157D: mov      eax, dword ptr [edx + 0x10]
0x00541580: mov      ecx, ebx
0x00541582: call     eax
0x00541584: mov      ecx, dword ptr [0xb01b28]
0x0054158A: push     ebp
0x0054158B: push     1
0x0054158D: push     ebp
0x0054158E: push     1
0x00541590: push     ebp
0x00541591: push     ecx
0x00541592: push     0x68
0x00541594: call     0x688fe0
0x00541599: add      esp, 0x1c
0x0054159C: mov      dword ptr [esp + 0x14], eax
0x005415A0: mov      byte ptr [esp + 0x90], 4
0x005415A8: cmp      eax, ebp
0x005415AA: je       0x5415b7
0x005415AC: mov      ecx, eax
0x005415AE: call     0x575a80
0x005415B3: mov      ebx, eax
0x005415B5: jmp      0x5415b9
0x005415B7: xor      ebx, ebx
0x005415B9: push     ebx
0x005415BA: mov      ecx, edi
0x005415BC: mov      byte ptr [esp + 0x94], 0
0x005415C4: call     0x5696a0
0x005415C9: mov      edx, dword ptr [ebx]
0x005415CB: mov      eax, dword ptr [edx + 8]
0x005415CE: push     esi
0x005415CF: mov      ecx, ebx
0x005415D1: call     eax
0x005415D3: mov      edx, dword ptr [ebx]
0x005415D5: mov      eax, dword ptr [edx + 0x10]
0x005415D8: mov      ecx, ebx
0x005415DA: call     eax
0x005415DC: mov      ecx, dword ptr [0xb01b28]
0x005415E2: push     ebp
0x005415E3: push     1
0x005415E5: push     ebp
0x005415E6: push     1
0x005415E8: push     ebp
0x005415E9: push     ecx
0x005415EA: push     0x184
0x005415EF: call     0x688fe0
0x005415F4: add      esp, 0x1c
0x005415F7: mov      dword ptr [esp + 0x14], eax
0x005415FB: mov      byte ptr [esp + 0x90], 5
0x00541603: cmp      eax, ebp
0x00541605: je       0x541612
0x00541607: mov      ecx, eax
0x00541609: call     0x5730c0
0x0054160E: mov      ebx, eax
0x00541610: jmp      0x541614
0x00541612: xor      ebx, ebx
0x00541614: push     ebx
0x00541615: mov      ecx, edi
0x00541617: mov      byte ptr [esp + 0x94], 0
0x0054161F: call     0x5696a0
0x00541624: mov      edx, dword ptr [ebx]
0x00541626: mov      eax, dword ptr [edx + 8]
0x00541629: push     esi
0x0054162A: mov      ecx, ebx
0x0054162C: call     eax
0x0054162E: mov      edx, dword ptr [ebx]
0x00541630: mov      eax, dword ptr [edx + 0x10]
0x00541633: mov      ecx, ebx
0x00541635: call     eax
0x00541637: mov      ecx, dword ptr [0xb01b28]
0x0054163D: push     ebp
0x0054163E: push     1
0x00541640: push     ebp
0x00541641: push     1
0x00541643: push     ebp
0x00541644: push     ecx
0x00541645: push     0x158
0x0054164A: call     0x688fe0
0x0054164F: add      esp, 0x1c
0x00541652: mov      dword ptr [esp + 0x14], eax
0x00541656: mov      byte ptr [esp + 0x90], 6
0x0054165E: cmp      eax, ebp
0x00541660: je       0x54166d
0x00541662: mov      ecx, eax
0x00541664: call     0x574d60
0x00541669: mov      ebx, eax
0x0054166B: jmp      0x54166f
0x0054166D: xor      ebx, ebx
0x0054166F: push     ebx
0x00541670: mov      ecx, edi
0x00541672: mov      byte ptr [esp + 0x94], 0
0x0054167A: call     0x5696a0
0x0054167F: mov      edx, dword ptr [ebx]
0x00541681: mov      eax, dword ptr [edx + 8]
0x00541684: push     esi
0x00541685: mov      ecx, ebx
0x00541687: call     eax
0x00541689: mov      edx, dword ptr [ebx]
0x0054168B: mov      eax, dword ptr [edx + 0x10]
0x0054168E: mov      ecx, ebx
0x00541690: call     eax
0x00541692: mov      ecx, dword ptr [0xb01b28]
0x00541698: push     ebp
0x00541699: push     1
0x0054169B: push     ebp
0x0054169C: push     1
0x0054169E: push     ebp
0x0054169F: push     ecx
0x005416A0: push     0x58
0x005416A2: call     0x688fe0
0x005416A7: add      esp, 0x1c
0x005416AA: mov      dword ptr [esp + 0x14], eax
0x005416AE: mov      byte ptr [esp + 0x90], 7
0x005416B6: cmp      eax, ebp
0x005416B8: je       0x5416c5
0x005416BA: mov      ecx, eax
0x005416BC: call     0x5717f0
0x005416C1: mov      ebx, eax
0x005416C3: jmp      0x5416c7
0x005416C5: xor      ebx, ebx
0x005416C7: push     ebx
0x005416C8: mov      ecx, edi
0x005416CA: mov      byte ptr [esp + 0x94], 0
0x005416D2: call     0x5696a0
0x005416D7: mov      edx, dword ptr [ebx]
0x005416D9: mov      eax, dword ptr [edx + 8]
0x005416DC: push     esi
0x005416DD: mov      ecx, ebx
0x005416DF: call     eax
0x005416E1: mov      edx, dword ptr [ebx]
0x005416E3: mov      eax, dword ptr [edx + 0x10]
0x005416E6: mov      ecx, ebx
0x005416E8: call     eax
0x005416EA: push     0x51b1e251
0x005416EF: mov      ecx, edi
0x005416F1: call     0x5691a0
0x005416F6: cmp      eax, ebp
0x005416F8: je       0x541701
0x005416FA: mov      ecx, eax
0x005416FC: call     0x572470
0x00541701: mov      ecx, dword ptr [0xb01b28]
0x00541707: push     ebp
0x00541708: push     1
0x0054170A: push     ebp
0x0054170B: push     1
0x0054170D: push     ebp
0x0054170E: push     ecx
0x0054170F: push     0x5cc
0x00541714: call     0x688fe0
0x00541719: add      esp, 0x1c
0x0054171C: mov      dword ptr [esp + 0x14], eax
0x00541720: mov      byte ptr [esp + 0x90], 8
0x00541728: cmp      eax, ebp
0x0054172A: je       0x541736
0x0054172C: push     esi
0x0054172D: mov      ecx, eax
0x0054172F: call     0x573d80
0x00541734: jmp      0x541738
0x00541736: xor      eax, eax
0x00541738: mov      ecx, dword ptr [esi + 8]
0x0054173B: mov      dword ptr [esi + 0x1e0], eax
0x00541741: movzx    edx, byte ptr [ecx + 1]
0x00541745: mov      ecx, dword ptr [ecx + 4]
0x00541748: mov      ecx, dword ptr [ecx + 0x34]
0x0054174B: mov      ecx, dword ptr [ecx + edx*4]
0x0054174E: mov      edx, dword ptr [ecx]
0x00541750: push     eax
0x00541751: mov      eax, dword ptr [edx + 0x100]
0x00541757: mov      byte ptr [esp + 0x94], 0
0x0054175F: call     eax
0x00541761: mov      eax, dword ptr [esi + 8]
0x00541764: movzx    ecx, byte ptr [eax + 1]
0x00541768: mov      edx, dword ptr [eax + 4]
0x0054176B: mov      edx, dword ptr [edx + 0x34]
0x0054176E: mov      ecx, dword ptr [edx + ecx*4]
0x00541771: mov      ecx, dword ptr [ecx + 0x98]
0x00541777: mov      dword ptr [ecx + 0x11c], eax
0x0054177D: mov      ecx, dword ptr [esi + 8]
0x00541780: push     1
0x00541782: call     0x7f6c90
0x00541787: mov      eax, dword ptr [eax + 8]
0x0054178A: movzx    edx, byte ptr [eax + 1]
0x0054178E: mov      eax, dword ptr [eax + 4]
0x00541791: mov      ecx, dword ptr [eax + 0x38]
0x00541794: mov      eax, dword ptr [ecx + edx*4]
0x00541797: add      eax, 0x38
0x0054179A: mov      dword ptr [esi + 0x1e4], eax
0x005417A0: push     esi
0x005417A1: fld      dword ptr [eax + 0x18]
0x005417A4: fdiv     dword ptr [eax + 0x1c]
0x005417A7: fstp     dword ptr [esi + 0xc44]
0x005417AD: call     0x573d00
0x005417B2: add      esp, 4
0x005417B5: mov      dword ptr [esi + 0xe40], eax
0x005417BB: mov      dword ptr [esi + 0x1c0], ebp
0x005417C1: cmp      eax, ebp
0x005417C3: je       0x541806
0x005417C5: lea      edi, [esi + 0x1b8]
0x005417CB: push     edi
0x005417CC: push     esi
0x005417CD: mov      dword ptr [esi + 0x1bc], ebp
0x005417D3: mov      dword ptr [edi], ebp
0x005417D5: call     0x573ca0
0x005417DA: add      esp, 8
0x005417DD: test     eax, eax
0x005417DF: je       0x541aad
0x005417E5: mov      edx, dword ptr [edi]
0x005417E7: mov      ecx, dword ptr [0xb1ab18]
0x005417ED: mov      edi, dword ptr [edx + 0x24]
0x005417F0: call     0x491da0
0x005417F5: mov      eax, dword ptr [eax + 0x18]
0x005417F8: mov      ecx, dword ptr [eax + edi*4]
0x005417FB: mov      dword ptr [esi + 0x1c0], ecx
0x00541801: jmp      0x541aad
0x00541806: call     0x5184f0
0x0054180B: call     0x542180
0x00541810: cmp      eax, 1
0x00541813: je       0x541961
0x00541819: mov      edx, dword ptr [esi + 0x1dc]
0x0054181F: movsx    edi, byte ptr [edx]
0x00541822: mov      ecx, dword ptr [0xb1ab18]
0x00541828: mov      ebx, dword ptr [edi*4 + 0xafce44]
0x0054182F: call     0x491d80
0x00541834: mov      eax, dword ptr [eax + 0x18]
0x00541837: mov      ebp, 0x97a37c
0x0054183C: cmp      ebx, -1
0x0054183F: je       0x5418ca
0x00541845: mov      eax, dword ptr [eax + ebx*4]
0x00541848: mov      ecx, eax
0x0054184A: mov      dword ptr [esi + 0x1bc], eax
0x00541850: mov      dword ptr [esi + 0x1b8], eax
0x00541856: mov      eax, dword ptr [ecx + 0x2c]
0x00541859: mov      eax, dword ptr [eax + 0x14]
0x0054185C: mov      ecx, dword ptr [0xb1aad0]
0x00541862: mov      dword ptr [esp + 0x18], ebp
0x00541866: mov      dword ptr [esp + 0x1c], eax
0x0054186A: mov      dword ptr [esp + 0x20], ebx
0x0054186E: mov      edx, dword ptr [ecx]
0x00541870: mov      edx, dword ptr [edx + 8]
0x00541873: push     1
0x00541875: lea      eax, [esp + 0x1c]
0x00541879: push     eax
0x0054187A: mov      byte ptr [esp + 0x98], 9
0x00541882: call     edx
0x00541884: mov      eax, dword ptr [esi + 0x1bc]
0x0054188A: mov      ecx, dword ptr [0xb1aad0]
0x00541890: mov      edi, 0x979378
0x00541895: mov      dword ptr [esp + 0x18], edi
0x00541899: mov      eax, dword ptr [eax + 0x28]
0x0054189C: mov      eax, dword ptr [eax + 0x14]
0x0054189F: mov      dword ptr [esp + 0x24], ebp
0x005418A3: mov      dword ptr [esp + 0x28], eax
0x005418A7: mov      dword ptr [esp + 0x2c], ebx
0x005418AB: mov      edx, dword ptr [ecx]
0x005418AD: mov      edx, dword ptr [edx + 8]
0x005418B0: push     1
0x005418B2: lea      eax, [esp + 0x28]
0x005418B6: push     eax
0x005418B7: mov      byte ptr [esp + 0x98], 0xa
0x005418BF: call     edx
0x005418C1: mov      dword ptr [esp + 0x24], edi
0x005418C5: jmp      0x541aa5
0x005418CA: mov      eax, dword ptr [eax + edi*4]
0x005418CD: mov      edx, dword ptr [esi + 0x1dc]
0x005418D3: mov      dword ptr [esi + 0x1bc], eax
0x005418D9: mov      dword ptr [esi + 0x1b8], eax
0x005418DF: movsx    edx, byte ptr [edx]
0x005418E2: mov      ecx, eax
0x005418E4: mov      eax, dword ptr [ecx + 0x2c]
0x005418E7: mov      eax, dword ptr [eax + 0x14]
0x005418EA: mov      ecx, dword ptr [0xb1aad0]
0x005418F0: mov      dword ptr [esp + 0x30], ebp
0x005418F4: mov      dword ptr [esp + 0x34], eax
0x005418F8: mov      dword ptr [esp + 0x38], edx
0x005418FC: mov      eax, dword ptr [ecx]
0x005418FE: mov      eax, dword ptr [eax + 8]
0x00541901: push     1
0x00541903: lea      edx, [esp + 0x34]
0x00541907: push     edx
0x00541908: mov      byte ptr [esp + 0x98], 0xb
0x00541910: call     eax
0x00541912: mov      ecx, dword ptr [esi + 0x1bc]
0x00541918: mov      edx, dword ptr [esi + 0x1dc]
0x0054191E: mov      edi, 0x979378
0x00541923: mov      dword ptr [esp + 0x30], edi
0x00541927: mov      eax, dword ptr [ecx + 0x28]
0x0054192A: movsx    edx, byte ptr [edx]
0x0054192D: mov      eax, dword ptr [eax + 0x14]
0x00541930: mov      ecx, dword ptr [0xb1aad0]
0x00541936: mov      dword ptr [esp + 0x3c], ebp
0x0054193A: mov      dword ptr [esp + 0x40], eax
0x0054193E: mov      dword ptr [esp + 0x44], edx
0x00541942: mov      eax, dword ptr [ecx]
0x00541944: mov      eax, dword ptr [eax + 8]
0x00541947: push     1
0x00541949: lea      edx, [esp + 0x40]
0x0054194D: push     edx
0x0054194E: mov      byte ptr [esp + 0x98], 0xc
0x00541956: call     eax
0x00541958: mov      dword ptr [esp + 0x3c], edi
0x0054195C: jmp      0x541aa5
0x00541961: mov      ecx, dword ptr [esi + 0x1dc]
0x00541967: movsx    edi, byte ptr [ecx]
0x0054196A: mov      ecx, dword ptr [0xb1ab18]
0x00541970: mov      ebx, dword ptr [edi*4 + 0xafce64]
0x00541977: call     0x491d80
0x0054197C: mov      ebp, 0x97a37c
0x00541981: cmp      ebx, -1
0x00541984: je       0x541a10
0x0054198A: mov      edx, dword ptr [eax + 0x18]
0x0054198D: mov      eax, dword ptr [edx + ebx*4]
0x00541990: mov      dword ptr [esi + 0x1bc], eax
0x00541996: mov      dword ptr [esi + 0x1b8], eax
0x0054199C: mov      eax, dword ptr [eax + 0x2c]
0x0054199F: mov      eax, dword ptr [eax + 0x14]
0x005419A2: mov      ecx, dword ptr [0xb1aad0]
0x005419A8: mov      dword ptr [esp + 0x48], ebp
0x005419AC: mov      dword ptr [esp + 0x4c], eax
0x005419B0: mov      dword ptr [esp + 0x50], ebx
0x005419B4: mov      edx, dword ptr [ecx]
0x005419B6: mov      edx, dword ptr [edx + 8]
0x005419B9: push     1
0x005419BB: lea      eax, [esp + 0x4c]
0x005419BF: push     eax
0x005419C0: mov      byte ptr [esp + 0x98], 0xd
0x005419C8: call     edx
0x005419CA: mov      eax, dword ptr [esi + 0x1bc]
0x005419D0: mov      ecx, dword ptr [0xb1aad0]
0x005419D6: mov      edi, 0x979378
0x005419DB: mov      dword ptr [esp + 0x48], edi
0x005419DF: mov      eax, dword ptr [eax + 0x28]
0x005419E2: mov      eax, dword ptr [eax + 0x14]
0x005419E5: mov      dword ptr [esp + 0x54], ebp
0x005419E9: mov      dword ptr [esp + 0x58], eax
0x005419ED: mov      dword ptr [esp + 0x5c], ebx
0x005419F1: mov      edx, dword ptr [ecx]
0x005419F3: mov      edx, dword ptr [edx + 8]
0x005419F6: push     1
0x005419F8: lea      eax, [esp + 0x58]
0x005419FC: push     eax
0x005419FD: mov      byte ptr [esp + 0x98], 0xe
0x00541A05: call     edx
0x00541A07: mov      dword ptr [esp + 0x54], edi
0x00541A0B: jmp      0x541aa5
0x00541A10: mov      eax, dword ptr [eax + 0x18]
0x00541A13: mov      eax, dword ptr [eax + edi*4]
0x00541A16: mov      edx, dword ptr [esi + 0x1dc]
0x00541A1C: mov      dword ptr [esi + 0x1bc], eax
0x00541A22: mov      dword ptr [esi + 0x1b8], eax
0x00541A28: movsx    edx, byte ptr [edx]
0x00541A2B: mov      ecx, eax
0x00541A2D: mov      eax, dword ptr [ecx + 0x2c]
0x00541A30: mov      eax, dword ptr [eax + 0x14]
0x00541A33: mov      ecx, dword ptr [0xb1aad0]
0x00541A39: mov      dword ptr [esp + 0x60], ebp
0x00541A3D: mov      dword ptr [esp + 0x64], eax
0x00541A41: mov      dword ptr [esp + 0x68], edx
0x00541A45: mov      eax, dword ptr [ecx]
0x00541A47: mov      eax, dword ptr [eax + 8]
0x00541A4A: push     1
0x00541A4C: lea      edx, [esp + 0x64]
0x00541A50: push     edx
0x00541A51: mov      byte ptr [esp + 0x98], 0xf
0x00541A59: call     eax
0x00541A5B: mov      ecx, dword ptr [esi + 0x1bc]
0x00541A61: mov      edx, dword ptr [esi + 0x1dc]
0x00541A67: mov      edi, 0x979378
0x00541A6C: mov      dword ptr [esp + 0x60], edi
0x00541A70: mov      eax, dword ptr [ecx + 0x28]
0x00541A73: movsx    edx, byte ptr [edx]
0x00541A76: mov      eax, dword ptr [eax + 0x14]
0x00541A79: mov      ecx, dword ptr [0xb1aad0]
0x00541A7F: mov      dword ptr [esp + 0x6c], ebp
0x00541A83: mov      dword ptr [esp + 0x70], eax
0x00541A87: mov      dword ptr [esp + 0x74], edx
0x00541A8B: mov      eax, dword ptr [ecx]
0x00541A8D: mov      eax, dword ptr [eax + 8]
0x00541A90: push     1
0x00541A92: lea      edx, [esp + 0x70]
0x00541A96: push     edx
0x00541A97: mov      byte ptr [esp + 0x98], 0x10
0x00541A9F: call     eax
0x00541AA1: mov      dword ptr [esp + 0x6c], edi
0x00541AA5: mov      byte ptr [esp + 0x90], 0
0x00541AAD: mov      edx, dword ptr [0xb1baa0]
0x00541AB3: push     esi
0x00541AB4: push     0x540710
0x00541AB9: lea      ecx, [esi + 0xdcc]
0x00541ABF: push     ecx
0x00541AC0: push     edx
0x00541AC1: call     0x52d1d0
0x00541AC6: mov      ecx, dword ptr [0xb1bab0]
0x00541ACC: push     esi
0x00541ACD: push     0x541000
0x00541AD2: lea      eax, [esi + 0xdc8]
0x00541AD8: push     eax
0x00541AD9: push     ecx
0x00541ADA: call     0x52d1d0
0x00541ADF: mov      eax, dword ptr [0xb1baa4]
0x00541AE4: push     esi
0x00541AE5: push     0x540770
0x00541AEA: lea      edx, [esi + 0xdd0]
0x00541AF0: push     edx
0x00541AF1: push     eax
0x00541AF2: call     0x52d1d0
0x00541AF7: mov      ecx, dword ptr [0xb1baa8]
0x00541AFD: push     esi
0x00541AFE: push     0x541030
0x00541B03: add      esi, 0xdd4
0x00541B09: push     esi
0x00541B0A: push     ecx
0x00541B0B: call     0x52d1d0
0x00541B10: add      esp, 0x40
0x00541B13: mov      ecx, dword ptr [esp + 0x88]
0x00541B1A: mov      dword ptr fs:[0], ecx
0x00541B21: pop      ecx
0x00541B22: pop      edi
0x00541B23: pop      esi
0x00541B24: pop      ebp
0x00541B25: pop      ebx
0x00541B26: add      esp, 0x80
0x00541B2C: ret      8
0x00541B2F: nop      
0x00541B30: or       dword ptr [esp + edx*2], edx
0x00541B33: add      byte ptr [ecx - 0x26ffabed], dh
0x00541B39: adc      edx, dword ptr [eax + eax + 0x2c]
0x00541B3D: adc      al, 0x54
0x00541B3F: add      byte ptr [eax + 0x14], bl
0x00541B42: push     esp
0x00541B43: add      cl, al
0x00541B45: adc      edx, dword ptr [eax + eax - 0x37]
0x00541B49: adc      edx, dword ptr [eax + eax - 0x2f]
0x00541B4D: adc      edx, dword ptr [eax + eax - 0x17]
0x00541B51: adc      edx, dword ptr [eax + eax - 0xf]
0x00541B55: adc      edx, dword ptr [eax + eax - 7]
0x00541B59: adc      edx, dword ptr [eax + eax + 1]
0x00541B5D: adc      al, 0x54
0x00541B5F: add      byte ptr [0x1a005414], dl
0x00541B65: adc      al, 0x54
0x00541B67: add      byte ptr [edi], bl
0x00541B69: adc      al, 0x54
0x00541B6B: add      byte ptr [esp + edx], ah
0x00541B6E: push     esp
0x00541B6F: add      byte ptr [eax], bh
0x00541B71: adc      al, 0x54
0x00541B73: add      byte ptr [eax + 0x14], al
0x00541B76: push     esp
0x00541B77: add      byte ptr [eax + 0x14], cl
0x00541B7A: push     esp
0x00541B7B: add      byte ptr [eax + 0x14], dl
0x00541B7E: push     esp
0x00541B7F: add      byte ptr [edx - 1], ch
0x00541B82: push     0x945f3b
0x00541B87: mov      eax, dword ptr fs:[0]
0x00541B8D: push     eax
0x00541B8E: push     ecx
0x00541B8F: push     ebx
0x00541B90: push     esi
0x00541B91: mov      eax, dword ptr [0xb089c8]
0x00541B96: xor      eax, esp
0x00541B98: push     eax
0x00541B99: lea      eax, [esp + 0x10]
0x00541B9D: mov      dword ptr fs:[0], eax
0x00541BA3: mov      esi, ecx
0x00541BA5: mov      dword ptr [esp + 0xc], esi
0x00541BA9: mov      dword ptr [esi], 0x98b550
0x00541BAF: xor      ebx, ebx
0x00541BB1: push     ebx
0x00541BB2: lea      ecx, [esi + 0xddc]
0x00541BB8: push     ebx
0x00541BB9: mov      dword ptr [esp + 0x20], 7
0x00541BC1: mov      dword ptr [esi + 0xe0c], ebx
0x00541BC7: call     0x542980
0x00541BCC: mov      eax, dword ptr [esi + 0xdd8]
0x00541BD2: push     eax
0x00541BD3: mov      byte ptr [esp + 0x1c], 6
0x00541BD8: call     0x52d1b0
0x00541BDD: mov      dword ptr [esi + 0xdd8], ebx
0x00541BE3: mov      ecx, dword ptr [esi + 0xdd4]
0x00541BE9: push     ecx
0x00541BEA: mov      byte ptr [esp + 0x20], 5
0x00541BEF: call     0x52d1b0
0x00541BF4: mov      dword ptr [esi + 0xdd4], ebx
0x00541BFA: mov      edx, dword ptr [esi + 0xdd0]
0x00541C00: push     edx
0x00541C01: mov      byte ptr [esp + 0x24], 4
0x00541C06: call     0x52d1b0
0x00541C0B: mov      dword ptr [esi + 0xdd0], ebx
0x00541C11: mov      eax, dword ptr [esi + 0xdcc]
0x00541C17: push     eax
0x00541C18: mov      byte ptr [esp + 0x28], 3
0x00541C1D: call     0x52d1b0
0x00541C22: mov      dword ptr [esi + 0xdcc], ebx
0x00541C28: mov      ecx, dword ptr [esi + 0xdc8]
0x00541C2E: push     ecx
0x00541C2F: mov      byte ptr [esp + 0x2c], 2
0x00541C34: call     0x52d1b0
0x00541C39: lea      ecx, [esi + 0xdb8]
0x00541C3F: mov      dword ptr [esi + 0xdc8], ebx
0x00541C45: mov      eax, dword ptr [ecx + 4]
0x00541C48: add      esp, 0x14
0x00541C4B: mov      byte ptr [esp + 0x18], 1
0x00541C50: cmp      dword ptr [ecx + 0xc], ebx
0x00541C53: je       0x541c58
0x00541C55: mov      dword ptr [ecx + 8], eax
0x00541C58: push     ebx
0x00541C59: call     0x5423e0
0x00541C5E: lea      ecx, [esi + 0x270]
0x00541C64: mov      byte ptr [esp + 0x18], bl
0x00541C68: call     0x542740
0x00541C6D: mov      ecx, esi
0x00541C6F: mov      dword ptr [esp + 0x18], 0xffffffff
0x00541C77: call     0x542b10
0x00541C7C: mov      ecx, dword ptr [esp + 0x10]
0x00541C80: mov      dword ptr fs:[0], ecx
0x00541C87: pop      ecx
0x00541C88: pop      esi
0x00541C89: pop      ebx
0x00541C8A: add      esp, 0x10
0x00541C8D: ret      
0x00541C8E: int3     
0x00541C8F: int3     

--- CRotasticPlayer::ctor @ 0x00541C90 ---
0x00541C90: push     -1
0x00541C92: push     0x945fce
0x00541C97: mov      eax, dword ptr fs:[0]
0x00541C9D: push     eax
0x00541C9E: push     ecx
0x00541C9F: push     ebx
0x00541CA0: push     esi
0x00541CA1: push     edi
0x00541CA2: mov      eax, dword ptr [0xb089c8]
0x00541CA7: xor      eax, esp
0x00541CA9: push     eax
0x00541CAA: lea      eax, [esp + 0x14]
0x00541CAE: mov      dword ptr fs:[0], eax
0x00541CB4: mov      esi, ecx
0x00541CB6: mov      dword ptr [esp + 0x10], esi
0x00541CBA: mov      eax, dword ptr [esp + 0x24]
0x00541CBE: push     eax
0x00541CBF: call     0x542c70
0x00541CC4: xor      ebx, ebx
0x00541CC6: lea      eax, [esi + 0x1c4]
0x00541CCC: mov      dword ptr [esp + 0x1c], ebx
0x00541CD0: mov      dword ptr [esi], 0x98b550
0x00541CD6: test     al, 0x7f
0x00541CD8: je       0x541ce7
0x00541CDA: push     0x18
0x00541CDC: push     eax
0x00541CDD: call     0x6a9700
0x00541CE2: add      esp, 8
0x00541CE5: jmp      0x541cfa
0x00541CE7: xor      ecx, ecx
0x00541CE9: mov      dword ptr [eax], ecx
0x00541CEB: mov      dword ptr [eax + 4], ecx
0x00541CEE: mov      dword ptr [eax + 8], ecx
0x00541CF1: mov      dword ptr [eax + 0xc], ecx
0x00541CF4: mov      dword ptr [eax + 0x10], ecx
0x00541CF7: mov      dword ptr [eax + 0x14], ecx
0x00541CFA: fldz     
0x00541CFC: lea      edi, [esi + 0x270]
0x00541D02: fst      dword ptr [esi + 0x210]
0x00541D08: lea      eax, [edi + 4]
0x00541D0B: fst      dword ptr [esi + 0x214]
0x00541D11: fst      dword ptr [esi + 0x218]
0x00541D17: fld1     
0x00541D19: fst      dword ptr [esi + 0x21c]
0x00541D1F: fst      dword ptr [esi + 0x22c]
0x00541D25: fxch     st(1)
0x00541D27: fst      dword ptr [esi + 0x220]
0x00541D2D: fst      dword ptr [esi + 0x224]
0x00541D33: fst      dword ptr [esi + 0x228]
0x00541D39: fst      dword ptr [esi + 0x24c]
0x00541D3F: fst      dword ptr [esi + 0x250]
0x00541D45: fst      dword ptr [esi + 0x254]
0x00541D4B: fxch     st(1)
0x00541D4D: fst      dword ptr [esi + 0x258]
0x00541D53: fst      dword ptr [esi + 0x268]
0x00541D59: fxch     st(1)
0x00541D5B: fst      dword ptr [esi + 0x25c]
0x00541D61: fst      dword ptr [esi + 0x260]
0x00541D67: fst      dword ptr [esi + 0x264]
0x00541D6D: fst      dword ptr [eax]
0x00541D6F: fst      dword ptr [eax + 4]
0x00541D72: mov      dword ptr [eax + 0x14], ebx
0x00541D75: fst      dword ptr [eax + 8]
0x00541D78: mov      dword ptr [eax + 0x10], ebx
0x00541D7B: fxch     st(1)
0x00541D7D: fst      dword ptr [eax + 0xc]
0x00541D80: mov      dword ptr [edi + 0x18], eax
0x00541D83: mov      dword ptr [edi + 0x14], eax
0x00541D86: fxch     st(1)
0x00541D88: fst      dword ptr [esi + 0x28c]
0x00541D8E: lea      eax, [esi + 0xd88]
0x00541D94: fst      dword ptr [esi + 0x290]
0x00541D9A: mov      byte ptr [esp + 0x1c], 1
0x00541D9F: fst      dword ptr [esi + 0x294]
0x00541DA5: fxch     st(1)
0x00541DA7: fst      dword ptr [esi + 0x298]
0x00541DAD: fxch     st(1)
0x00541DAF: fst      dword ptr [esi + 0xc24]
0x00541DB5: fst      dword ptr [esi + 0xc28]
0x00541DBB: fst      dword ptr [esi + 0xc2c]
0x00541DC1: fxch     st(1)
0x00541DC3: fst      dword ptr [esi + 0xc30]
0x00541DC9: fxch     st(1)
0x00541DCB: fst      dword ptr [esi + 0xc5c]
0x00541DD1: fst      dword ptr [esi + 0xc60]
0x00541DD7: fst      dword ptr [esi + 0xc64]
0x00541DDD: fxch     st(1)
0x00541DDF: fst      dword ptr [esi + 0xc68]
0x00541DE5: fxch     st(1)
0x00541DE7: fst      dword ptr [esi + 0xc70]
0x00541DED: fst      dword ptr [esi + 0xc74]
0x00541DF3: fst      dword ptr [esi + 0xc78]
0x00541DF9: fxch     st(1)
0x00541DFB: fstp     dword ptr [esi + 0xc7c]
0x00541E01: test     al, 0x7f
0x00541E03: je       0x541e16
0x00541E05: push     0x14
0x00541E07: fstp     st(0)
0x00541E09: push     eax
0x00541E0A: call     0x6a9700
0x00541E0F: fldz     
0x00541E11: add      esp, 8
0x00541E14: jmp      0x541e24
0x00541E16: mov      dword ptr [eax], ebx
0x00541E18: mov      dword ptr [eax + 4], ebx
0x00541E1B: mov      dword ptr [eax + 8], ebx
0x00541E1E: mov      dword ptr [eax + 0xc], ebx
0x00541E21: mov      dword ptr [eax + 0x10], ebx
0x00541E24: mov      dword ptr [esi + 0xdbc], ebx
0x00541E2A: mov      dword ptr [esi + 0xdc4], ebx
0x00541E30: mov      dword ptr [esi + 0xdc0], ebx
0x00541E36: mov      dword ptr [esi + 0xdc8], ebx
0x00541E3C: mov      dword ptr [esi + 0xdcc], ebx
0x00541E42: mov      dword ptr [esi + 0xdd0], ebx
0x00541E48: mov      dword ptr [esi + 0xdd4], ebx
0x00541E4E: mov      dword ptr [esi + 0xdd8], ebx
0x00541E54: mov      dword ptr [esi + 0xde0], ebx
0x00541E5A: mov      dword ptr [esi + 0xde4], ebx
0x00541E60: fstp     dword ptr [esi + 0xd54]
0x00541E66: mov      ecx, edi
0x00541E68: mov      byte ptr [esp + 0x1c], 8
0x00541E6D: mov      dword ptr [esi + 0x1e8], 1
0x00541E77: mov      dword ptr [esi + 0x1ec], ebx
0x00541E7D: mov      dword ptr [esi + 0x1f0], ebx
0x00541E83: mov      dword ptr [esi + 0x1f4], ebx
0x00541E89: mov      dword ptr [esi + 0x1f8], ebx
0x00541E8F: mov      dword ptr [esi + 0x1fc], ebx
0x00541E95: mov      dword ptr [esi + 0x200], ebx
0x00541E9B: mov      dword ptr [esi + 0xd64], ebx
0x00541EA1: mov      dword ptr [esi + 0x26c], ebx
0x00541EA7: mov      dword ptr [esi + 0x23c], ebx
0x00541EAD: mov      dword ptr [esi + 0x240], ebx
0x00541EB3: mov      dword ptr [esi + 0x244], ebx
0x00541EB9: call     0x542740
0x00541EBE: fldz     
0x00541EC0: fst      dword ptr [esi + 0x28c]
0x00541EC6: fst      dword ptr [esi + 0x290]
0x00541ECC: fst      dword ptr [esi + 0x294]
0x00541ED2: fld1     
0x00541ED4: fst      dword ptr [esi + 0x298]
0x00541EDA: fst      dword ptr [esi + 0xc30]
0x00541EE0: fxch     st(1)
0x00541EE2: fst      dword ptr [esi + 0xc24]
0x00541EE8: fst      dword ptr [esi + 0xc28]
0x00541EEE: fst      dword ptr [esi + 0xc2c]
0x00541EF4: fst      dword ptr [esi + 0xc34]
0x00541EFA: fst      dword ptr [esi + 0xc38]
0x00541F00: mov      dword ptr [esi + 0xc48], ebx
0x00541F06: fst      dword ptr [esi + 0xc3c]
0x00541F0C: mov      byte ptr [esi + 0xd40], bl
0x00541F12: fst      dword ptr [esi + 0xc40]
0x00541F18: mov      byte ptr [esi + 0xd41], bl
0x00541F1E: fst      dword ptr [esi + 0xc44]
0x00541F24: fst      dword ptr [esi + 0xc4c]
0x00541F2A: fst      dword ptr [esi + 0xc70]
0x00541F30: fst      dword ptr [esi + 0xc74]
0x00541F36: fst      dword ptr [esi + 0xc78]
0x00541F3C: fxch     st(1)
0x00541F3E: fst      dword ptr [esi + 0xc7c]
0x00541F44: fxch     st(1)
0x00541F46: fst      dword ptr [esi + 0xc50]
0x00541F4C: mov      dword ptr [esi + 0xd58], ebx
0x00541F52: fst      dword ptr [esi + 0xc58]
0x00541F58: mov      dword ptr [esi + 0xd6c], ebx
0x00541F5E: fst      dword ptr [esi + 0xd4c]
0x00541F64: mov      dword ptr [esi + 0xe3c], ebx
0x00541F6A: fst      dword ptr [esi + 0xd50]
0x00541F70: mov      dword ptr [esi + 0xd74], ebx
0x00541F76: fxch     st(1)
0x00541F78: mov      dword ptr [esi + 0x1bc], ebx
0x00541F7E: fst      dword ptr [esi + 0xd48]
0x00541F84: mov      dword ptr [esi + 0x1e0], ebx
0x00541F8A: fstp     dword ptr [esi + 0xc54]
0x00541F90: mov      dword ptr [esi + 0x1dc], ebx
0x00541F96: mov      dword ptr [esi + 0x1e4], ebx
0x00541F9C: mov      dword ptr [esi + 0xd70], 5
0x00541FA6: mov      dword ptr [esi + 0xd7c], ebx
0x00541FAC: fst      dword ptr [esi + 0xd78]
0x00541FB2: mov      dword ptr [esi + 0xdf8], ebx
0x00541FB8: fst      dword ptr [esi + 0xdf4]
0x00541FBE: mov      dword ptr [esi + 0xdfc], ebx
0x00541FC4: mov      dword ptr [esi + 0xe04], ebx
0x00541FCA: mov      eax, dword ptr [esi + 8]
0x00541FCD: fstp     dword ptr [esi + 0x20c]
0x00541FD3: fld      dword ptr [0x966e84] ; [f32=10, u32=0x41200000]
0x00541FD9: mov      dword ptr [esi + 0xd84], eax
0x00541FDF: fstp     dword ptr [esi + 0x230]
0x00541FE5: mov      dword ptr [esi + 0xd88], eax
0x00541FEB: fld      dword ptr [0x9ac388] ; [f32=0.5, u32=0x3F000000]
0x00541FF1: mov      dword ptr [esi + 0xd9c], eax
0x00541FF7: fst      dword ptr [esi + 0xe30]
0x00541FFD: mov      dword ptr [esi + 0xda4], eax
0x00542003: fst      dword ptr [esi + 0xe2c]
0x00542009: mov      dword ptr [esi + 0xda8], eax
0x0054200F: fst      dword ptr [esi + 0xe28]
0x00542015: mov      dword ptr [esi + 0xdb0], eax
0x0054201B: mov      dword ptr [esi + 0xdb4], eax
0x00542021: fstp     dword ptr [esi + 0xe34]
0x00542027: mov      dword ptr [esi + 0xe08], ebx
0x0054202D: mov      dword ptr [esi + 0x204], ebx
0x00542033: mov      dword ptr [esi + 0x208], ebx
0x00542039: mov      dword ptr [esi + 0x234], ebx
0x0054203F: mov      dword ptr [esi + 0xd80], ebx
0x00542045: mov      dword ptr [esi + 0x248], ebx
0x0054204B: mov      dword ptr [esi + 0xd68], 1
0x00542055: mov      dword ptr [esi + 0xe18], ebx
0x0054205B: mov      dword ptr [esi + 0xe1c], ebx
0x00542061: mov      dword ptr [esi + 0xe20], ebx
0x00542067: mov      dword ptr [esi + 0xe24], ebx
0x0054206D: mov      dword ptr [esi + 0xe38], ebx
0x00542073: mov      dword ptr [esi + 0xe0c], ebx
0x00542079: mov      dword ptr [esi + 0xe48], ebx
0x0054207F: mov      dword ptr [esi + 0xde8], ebx
0x00542085: mov      dword ptr [esi + 0xdec], ebx
0x0054208B: mov      dword ptr [esi + 0xdf0], ebx
0x00542091: mov      dword ptr [esi + 0xe14], ebx
0x00542097: mov      eax, esi
0x00542099: mov      ecx, dword ptr [esp + 0x14]
0x0054209D: mov      dword ptr fs:[0], ecx
0x005420A4: pop      ecx
0x005420A5: pop      edi
0x005420A6: pop      esi
0x005420A7: pop      ebx
0x005420A8: add      esp, 0x10
0x005420AB: ret      4
0x005420AE: int3     
0x005420AF: int3     
0x005420B0: push     ebx
0x005420B1: mov      ebx, dword ptr [esp + 8]
0x005420B5: push     esi
0x005420B6: mov      esi, dword ptr [ecx + 8]
0x005420B9: lea      eax, [esi - 1]
0x005420BC: cmp      ebx, eax
0x005420BE: jne      0x5420c4
0x005420C0: xor      eax, eax
0x005420C2: jmp      0x5420e2
0x005420C4: lea      eax, [ebx + 1]
0x005420C7: push     edi
0x005420C8: cmp      eax, esi
0x005420CA: jae      0x5420df
0x005420CC: mov      edi, dword ptr [ecx + 4]
0x005420CF: lea      edx, [edi + eax*4]
0x005420D2: cmp      dword ptr [edx], 0
0x005420D5: jne      0x5420fe
0x005420D7: inc      eax
0x005420D8: add      edx, 4
0x005420DB: cmp      eax, esi
0x005420DD: jb       0x5420d2
0x005420DF: xor      eax, eax
0x005420E1: pop      edi
0x005420E2: mov      ecx, dword ptr [ecx + 4]
0x005420E5: mov      ecx, dword ptr [ecx + ebx*4]
0x005420E8: pop      esi
0x005420E9: pop      ebx
0x005420EA: lea      ebx, [ebx]
0x005420F0: mov      edx, ecx
0x005420F2: mov      ecx, dword ptr [ecx + 8]
0x005420F5: cmp      ecx, eax
0x005420F7: jne      0x5420f0
0x005420F9: mov      eax, edx
0x005420FB: ret      4
0x005420FE: mov      eax, dword ptr [edi + eax*4]
0x00542101: jmp      0x5420e1
0x00542103: int3     
0x00542104: int3     
0x00542105: int3     
0x00542106: int3     
0x00542107: int3     
0x00542108: int3     
0x00542109: int3     
0x0054210A: int3     
0x0054210B: int3     
0x0054210C: int3     
0x0054210D: int3     
0x0054210E: int3     
0x0054210F: int3     
0x00542110: mov      eax, dword ptr [esp + 0xc]
0x00542114: push     esi
0x00542115: mov      esi, dword ptr [esp + 8]
0x00542119: test     eax, eax
0x0054211B: jne      0x542123
0x0054211D: test     byte ptr [ecx + 0x14], 8
0x00542121: jne      0x542137
0x00542123: cmp      esi, dword ptr [ecx + 0xc]
0x00542126: je       0x54216d
0x00542128: test     eax, eax
0x0054212A: je       0x542137
0x0054212C: mov      edx, dword ptr [ecx + 0x14]
0x0054212F: shr      edx, 3
0x00542132: and      edx, 1
0x00542135: jmp      0x542139
0x00542137: xor      edx, edx
0x00542139: cmp      dword ptr [esp + 0xc], 0
0x0054213E: je       0x542159
0x00542140: mov      eax, dword ptr [ecx + 0x14]
0x00542143: shr      eax, 2
0x00542146: push     edx
0x00542147: and      eax, 1
0x0054214A: push     eax
0x0054214B: mov      eax, dword ptr [ecx + 4]
0x0054214E: push     eax
0x0054214F: push     esi
0x00542150: call     0x6f6e50
0x00542155: pop      esi
0x00542156: ret      0xc
0x00542159: xor      eax, eax
0x0054215B: cmp      esi, -1
0x0054215E: sete     al
0x00542161: push     edx
0x00542162: push     eax
0x00542163: mov      eax, dword ptr [ecx + 4]
0x00542166: push     eax
0x00542167: push     esi
0x00542168: call     0x6f6e50
0x0054216D: pop      esi
0x0054216E: ret      0xc
0x00542171: int3     
0x00542172: int3     
0x00542173: int3     
0x00542174: int3     
0x00542175: int3     
0x00542176: int3     
0x00542177: int3     
0x00542178: int3     
0x00542179: int3     
0x0054217A: int3     
0x0054217B: int3     
0x0054217C: int3     
0x0054217D: int3     
0x0054217E: int3     
0x0054217F: int3     
0x00542180: or       ecx, 0xffffffff
0x00542183: xor      eax, eax
0x00542185: cmp      dword ptr [0xafce44], ecx
0x0054218B: je       0x542190
0x0054218D: lea      eax, [ecx + 2]
0x00542190: cmp      dword ptr [0xafce54], ecx
0x00542196: je       0x542199
0x00542198: inc      eax
0x00542199: cmp      dword ptr [0xafce48], ecx
0x0054219F: je       0x5421a2
0x005421A1: inc      eax
0x005421A2: cmp      dword ptr [0xafce58], ecx
0x005421A8: je       0x5421ab
0x005421AA: inc      eax
0x005421AB: cmp      dword ptr [0xafce4c], ecx
0x005421B1: je       0x5421b4
0x005421B3: inc      eax
0x005421B4: cmp      dword ptr [0xafce5c], ecx
0x005421BA: je       0x5421bd
0x005421BC: inc      eax
0x005421BD: cmp      dword ptr [0xafce50], ecx
0x005421C3: je       0x5421c6
0x005421C5: inc      eax
0x005421C6: cmp      dword ptr [0xafce60], ecx
0x005421CC: je       0x5421cf
0x005421CE: inc      eax
0x005421CF: ret      
0x005421D0: sub      esp, 8
0x005421D3: push     ebx
0x005421D4: mov      ebx, dword ptr [esp + 0x10]
0x005421D8: push     ebp
0x005421D9: xor      eax, eax
0x005421DB: push     esi
0x005421DC: mov      esi, ecx
0x005421DE: mov      ebp, 1
0x005421E3: cmp      ebx, eax
0x005421E5: je       0x542233
0x005421E7: push     edi
0x005421E8: lea      edi, [ebx*4]
0x005421EF: push     edi
0x005421F0: lea      eax, [esp + 0x14]
0x005421F4: push     eax
0x005421F5: call     0x499400
0x005421FA: mov      eax, dword ptr [esp + 0x10]
0x005421FE: xor      ecx, ecx
0x00542200: cmp      eax, ecx
0x00542202: jne      0x542216
0x00542204: pop      edi
0x00542205: mov      dword ptr [esi + 4], ecx
0x00542208: mov      dword ptr [esi + 8], ecx
0x0054220B: pop      esi
0x0054220C: pop      ebp
0x0054220D: xor      eax, eax
0x0054220F: pop      ebx
0x00542210: add      esp, 8
0x00542213: ret      4
0x00542216: push     edi
0x00542217: push     ecx
0x00542218: push     eax
0x00542219: mov      dword ptr [esi + 4], eax
0x0054221C: call     0x8eb080
0x00542221: add      esp, 0xc
0x00542224: pop      edi
0x00542225: mov      dword ptr [esi + 8], ebx
0x00542228: pop      esi
0x00542229: mov      eax, ebp
0x0054222B: pop      ebp
0x0054222C: pop      ebx
0x0054222D: add      esp, 8
0x00542230: ret      4
0x00542233: mov      dword ptr [esi + 4], eax
0x00542236: mov      dword ptr [esi + 8], eax
0x00542239: pop      esi
0x0054223A: mov      eax, ebp
0x0054223C: pop      ebp
0x0054223D: pop      ebx
0x0054223E: add      esp, 8
0x00542241: ret      4
0x00542244: int3     
0x00542245: int3     
0x00542246: int3     
0x00542247: int3     
0x00542248: int3     
0x00542249: int3     
0x0054224A: int3     
0x0054224B: int3     
0x0054224C: int3     
0x0054224D: int3     
0x0054224E: int3     
0x0054224F: int3     
0x00542250: xor      eax, eax
0x00542252: cmp      dword ptr [esp + 4], 0xb1bbf8
0x0054225A: sete     al
0x0054225D: ret      4
0x00542260: mov      eax, 0xb1bbf8
0x00542265: ret      
0x00542266: int3     
0x00542267: int3     
0x00542268: int3     
0x00542269: int3     
0x0054226A: int3     
0x0054226B: int3     
0x0054226C: int3     
0x0054226D: int3     
0x0054226E: int3     
0x0054226F: int3     
0x00542270: xor      eax, eax
0x00542272: cmp      dword ptr [esp + 4], 0xb1bc48
0x0054227A: sete     al
0x0054227D: ret      4
0x00542280: mov      eax, 0xb1bc48
0x00542285: ret      
0x00542286: int3     
0x00542287: int3     
0x00542288: int3     
0x00542289: int3     
0x0054228A: int3     
0x0054228B: int3     
0x0054228C: int3     
0x0054228D: int3     
0x0054228E: int3     
0x0054228F: int3     
0x00542290: xor      eax, eax
0x00542292: cmp      dword ptr [esp + 4], 0xb1bc14
0x0054229A: sete     al
0x0054229D: ret      4
0x005422A0: mov      eax, 0xb1bc14
0x005422A5: ret      
0x005422A6: int3     
0x005422A7: int3     
0x005422A8: int3     
0x005422A9: int3     
0x005422AA: int3     
0x005422AB: int3     
0x005422AC: int3     
0x005422AD: int3     
0x005422AE: int3     
0x005422AF: int3     
0x005422B0: xor      eax, eax
0x005422B2: cmp      dword ptr [esp + 4], 0xb1bc4c
0x005422BA: sete     al
0x005422BD: ret      4
0x005422C0: mov      eax, 0xb1bc4c
0x005422C5: ret      
0x005422C6: int3     
0x005422C7: int3     
0x005422C8: int3     
0x005422C9: int3     
0x005422CA: int3     
0x005422CB: int3     
0x005422CC: int3     
0x005422CD: int3     
0x005422CE: int3     
0x005422CF: int3     
0x005422D0: xor      eax, eax
0x005422D2: cmp      dword ptr [esp + 4], 0xb1bc00
0x005422DA: sete     al
0x005422DD: ret      4
0x005422E0: mov      eax, 0xb1bc00
0x005422E5: ret      
0x005422E6: int3     
0x005422E7: int3     
0x005422E8: int3     
0x005422E9: int3     
0x005422EA: int3     
0x005422EB: int3     
0x005422EC: int3     
0x005422ED: int3     
0x005422EE: int3     
0x005422EF: int3     
0x005422F0: xor      eax, eax
0x005422F2: cmp      dword ptr [esp + 4], 0xb1bc04
0x005422FA: sete     al
0x005422FD: ret      4
0x00542300: mov      eax, 0xb1bc04
0x00542305: ret      
0x00542306: int3     
0x00542307: int3     
0x00542308: int3     
0x00542309: int3     
0x0054230A: int3     
0x0054230B: int3     
0x0054230C: int3     
0x0054230D: int3     
0x0054230E: int3     
0x0054230F: int3     
0x00542310: xor      eax, eax
0x00542312: cmp      dword ptr [esp + 4], 0xb1bc50
0x0054231A: sete     al
0x0054231D: ret      4
0x00542320: mov      eax, 0xb1bc50
0x00542325: ret      
0x00542326: int3     
0x00542327: int3     
0x00542328: int3     
0x00542329: int3     
0x0054232A: int3     
0x0054232B: int3     
0x0054232C: int3     
0x0054232D: int3     
0x0054232E: int3     
0x0054232F: int3     
0x00542330: xor      eax, eax
0x00542332: cmp      dword ptr [esp + 4], 0xb1bc54
0x0054233A: sete     al
0x0054233D: ret      4
0x00542340: mov      eax, 0xb1bc54
0x00542345: ret      
0x00542346: int3     
0x00542347: int3     
0x00542348: int3     
0x00542349: int3     
0x0054234A: int3     
0x0054234B: int3     
0x0054234C: int3     
0x0054234D: int3     
0x0054234E: int3     
0x0054234F: int3     
0x00542350: mov      eax, 4
0x00542355: ret      
0x00542356: int3     
0x00542357: int3     
0x00542358: int3     
0x00542359: int3     
0x0054235A: int3     
0x0054235B: int3     
0x0054235C: int3     
0x0054235D: int3     
0x0054235E: int3     
0x0054235F: int3     
0x00542360: xor      eax, eax
0x00542362: cmp      dword ptr [esp + 4], 0xb1bc58
0x0054236A: sete     al
0x0054236D: ret      4
0x00542370: mov      eax, 0xb1bc58
0x00542375: ret      
0x00542376: int3     
0x00542377: int3     
0x00542378: int3     
0x00542379: int3     
0x0054237A: int3     
0x0054237B: int3     
0x0054237C: int3     
0x0054237D: int3     
0x0054237E: int3     
0x0054237F: int3     
0x00542380: xor      eax, eax
0x00542382: cmp      dword ptr [esp + 4], 0xb1bc5c
0x0054238A: sete     al
0x0054238D: ret      4
0x00542390: mov      eax, 0xb1bc5c
0x00542395: ret      
0x00542396: int3     
0x00542397: int3     
0x00542398: int3     
0x00542399: int3     
0x0054239A: int3     
0x0054239B: int3     
0x0054239C: int3     
0x0054239D: int3     
0x0054239E: int3     
0x0054239F: int3     
0x005423A0: xor      eax, eax
0x005423A2: cmp      dword ptr [esp + 4], 0xb1bc60
0x005423AA: sete     al
0x005423AD: ret      4
0x005423B0: mov      eax, 0xb1bc60
0x005423B5: ret      
0x005423B6: int3     
0x005423B7: int3     
0x005423B8: int3     
0x005423B9: int3     
0x005423BA: int3     
0x005423BB: int3     
0x005423BC: int3     
0x005423BD: int3     
0x005423BE: int3     
0x005423BF: int3     
0x005423C0: xor      eax, eax
0x005423C2: cmp      dword ptr [esp + 4], 0xb1bc64
0x005423CA: sete     al
0x005423CD: ret      4
0x005423D0: mov      eax, 0xb1bc64
0x005423D5: ret      
0x005423D6: int3     
0x005423D7: int3     
0x005423D8: int3     
0x005423D9: int3     
0x005423DA: int3     
0x005423DB: int3     
0x005423DC: int3     
0x005423DD: int3     
0x005423DE: int3     
0x005423DF: int3     
0x005423E0: sub      esp, 0xc
0x005423E3: push     ebx
0x005423E4: mov      ebx, dword ptr [esp + 0x14]
0x005423E8: push     edi
0x005423E9: mov      edi, ecx
0x005423EB: cmp      ebx, dword ptr [edi + 0xc]
0x005423EE: je       0x5424ed
0x005423F4: mov      ecx, dword ptr [edi + 8]
0x005423F7: push     ebp
0x005423F8: mov      ebp, dword ptr [edi + 4]
0x005423FB: sub      ecx, ebp
0x005423FD: mov      eax, 0x2aaaaaab
0x00542402: imul     ecx
0x00542404: sar      edx, 1
0x00542406: push     esi
0x00542407: lea      eax, [ebx + ebx*2]
0x0054240A: mov      esi, edx
0x0054240C: add      eax, eax
0x0054240E: shr      esi, 0x1f
0x00542411: mov      dword ptr [esp + 0x20], ebx
0x00542415: add      eax, eax
0x00542417: xor      ebx, ebx
0x00542419: add      esi, edx
0x0054241B: cmp      eax, ebx
0x0054241D: je       0x542449
0x0054241F: push     eax
0x00542420: lea      eax, [esp + 0x18]
0x00542424: push     eax
0x00542425: mov      ecx, edi
0x00542427: call     0x499400
0x0054242C: mov      eax, dword ptr [esp + 0x14]
0x00542430: cmp      eax, ebx
0x00542432: je       0x542450
0x00542434: mov      dword ptr [edi + 4], eax
0x00542437: mov      eax, 0xaaaaaaab
0x0054243C: mul      dword ptr [esp + 0x18]
0x00542440: shr      edx, 3
0x00542443: mov      dword ptr [esp + 0x20], edx
0x00542447: jmp      0x542450
0x00542449: mov      dword ptr [edi + 4], ebx
0x0054244C: mov      dword ptr [esp + 0x20], ebx
0x00542450: cmp      dword ptr [edi + 4], ebp
0x00542453: je       0x5424eb
0x00542459: mov      eax, dword ptr [esp + 0x20]
0x0054245D: mov      dword ptr [esp + 0x10], esi
0x00542461: cmp      esi, eax
0x00542463: jb       0x542469
0x00542465: mov      dword ptr [esp + 0x10], eax
0x00542469: mov      eax, dword ptr [esp + 0x10]
0x0054246D: cmp      eax, ebx
0x0054246F: jbe      0x5424bb
0x00542471: mov      esi, ebp
0x00542473: mov      dword ptr [esp + 0x14], eax
0x00542477: mov      eax, dword ptr [edi + 4]
0x0054247A: mov      ecx, esi
0x0054247C: add      eax, ebx
0x0054247E: and      ecx, 0x7f
0x00542481: jne      0x542487
0x00542483: test     al, 0x7f
0x00542485: je       0x54249e
0x00542487: mov      edx, eax
0x00542489: and      edx, 0x7f
0x0054248C: cmp      ecx, edx
0x0054248E: jne      0x54249e
0x00542490: push     0xc
0x00542492: push     esi
0x00542493: push     eax
0x00542494: call     0x6a98f0
0x00542499: add      esp, 0xc
0x0054249C: jmp      0x5424ae
0x0054249E: mov      ecx, dword ptr [esi]
0x005424A0: mov      dword ptr [eax], ecx
0x005424A2: mov      edx, dword ptr [esi + 4]
0x005424A5: mov      dword ptr [eax + 4], edx
0x005424A8: mov      ecx, dword ptr [esi + 8]
0x005424AB: mov      dword ptr [eax + 8], ecx
0x005424AE: add      ebx, 0xc
0x005424B1: add      esi, 0xc
0x005424B4: sub      dword ptr [esp + 0x14], 1
0x005424B9: jne      0x542477
0x005424BB: test     ebp, ebp
0x005424BD: je       0x5424d4
0x005424BF: push     0
0x005424C1: push     1
0x005424C3: push     0
0x005424C5: push     0
0x005424C7: push     0
0x005424C9: push     0
0x005424CB: push     ebp
0x005424CC: call     0x680690
0x005424D1: add      esp, 0x1c
0x005424D4: mov      edx, dword ptr [esp + 0x20]
0x005424D8: mov      eax, dword ptr [esp + 0x10]
0x005424DC: mov      ecx, dword ptr [edi + 4]
0x005424DF: lea      eax, [eax + eax*2]
0x005424E2: mov      dword ptr [edi + 0xc], edx
0x005424E5: lea      edx, [ecx + eax*4]
0x005424E8: mov      dword ptr [edi + 8], edx
0x005424EB: pop      esi
0x005424EC: pop      ebp
0x005424ED: pop      edi
0x005424EE: pop      ebx
0x005424EF: add      esp, 0xc
0x005424F2: ret      4
0x005424F5: int3     
0x005424F6: int3     
0x005424F7: int3     
0x005424F8: int3     
0x005424F9: int3     
0x005424FA: int3     
0x005424FB: int3     
0x005424FC: int3     
0x005424FD: int3     
0x005424FE: int3     
0x005424FF: int3     
0x00542500: mov      eax, dword ptr [esp + 4]
0x00542504: push     esi
0x00542505: push     0
0x00542507: push     eax
0x00542508: push     8
0x0054250A: mov      esi, ecx
0x0054250C: call     0x689060
0x00542511: add      esp, 0xc
0x00542514: test     eax, eax
0x00542516: je       0x542528
0x00542518: mov      dword ptr [eax], 0x98b328
0x0054251E: mov      ecx, dword ptr [esi + 4]
0x00542521: mov      dword ptr [eax + 4], ecx
0x00542524: pop      esi
0x00542525: ret      4
0x00542528: xor      eax, eax
0x0054252A: pop      esi
0x0054252B: ret      4
0x0054252E: int3     
0x0054252F: int3     
0x00542530: mov      eax, dword ptr [esp + 4]
0x00542534: push     0
0x00542536: push     eax
0x00542537: push     4
0x00542539: call     0x689060
0x0054253E: add      esp, 0xc
0x00542541: test     eax, eax
0x00542543: je       0x54254e
0x00542545: mov      dword ptr [eax], 0x98b33c
0x0054254B: ret      4
0x0054254E: xor      eax, eax
0x00542550: ret      4
0x00542553: int3     
0x00542554: int3     
0x00542555: int3     
0x00542556: int3     
0x00542557: int3     
0x00542558: int3     
0x00542559: int3     
0x0054255A: int3     
0x0054255B: int3     
0x0054255C: int3     
0x0054255D: int3     
0x0054255E: int3     
0x0054255F: int3     
0x00542560: mov      eax, dword ptr [esp + 4]
0x00542564: push     esi
0x00542565: push     0
0x00542567: push     eax
0x00542568: push     8
0x0054256A: mov      esi, ecx
0x0054256C: call     0x689060
0x00542571: add      esp, 0xc
0x00542574: test     eax, eax
0x00542576: je       0x542588
0x00542578: mov      dword ptr [eax], 0x98b350
0x0054257E: mov      ecx, dword ptr [esi + 4]
0x00542581: mov      dword ptr [eax + 4], ecx
0x00542584: pop      esi
0x00542585: ret      4
0x00542588: xor      eax, eax
0x0054258A: pop      esi
0x0054258B: ret      4
0x0054258E: int3     
0x0054258F: int3     
0x00542590: mov      eax, dword ptr [esp + 4]
0x00542594: push     esi
0x00542595: push     0
0x00542597: push     eax
0x00542598: push     8
0x0054259A: mov      esi, ecx
0x0054259C: call     0x689060
0x005425A1: add      esp, 0xc
0x005425A4: test     eax, eax
0x005425A6: je       0x5425b8
0x005425A8: mov      dword ptr [eax], 0x98b364
0x005425AE: mov      ecx, dword ptr [esi + 4]
0x005425B1: mov      dword ptr [eax + 4], ecx
0x005425B4: pop      esi
0x005425B5: ret      4
0x005425B8: xor      eax, eax
0x005425BA: pop      esi
0x005425BB: ret      4
0x005425BE: int3     
0x005425BF: int3     
0x005425C0: mov      eax, dword ptr [esp + 4]
0x005425C4: push     esi
0x005425C5: push     0
0x005425C7: push     eax
0x005425C8: push     8
0x005425CA: mov      esi, ecx
0x005425CC: call     0x689060
0x005425D1: add      esp, 0xc
0x005425D4: test     eax, eax
0x005425D6: je       0x5425e8
0x005425D8: mov      dword ptr [eax], 0x98b378
0x005425DE: mov      ecx, dword ptr [esi + 4]
0x005425E1: mov      dword ptr [eax + 4], ecx
0x005425E4: pop      esi
0x005425E5: ret      4
0x005425E8: xor      eax, eax
0x005425EA: pop      esi
0x005425EB: ret      4
0x005425EE: int3     
0x005425EF: int3     
0x005425F0: mov      eax, dword ptr [esp + 4]
0x005425F4: push     0
0x005425F6: push     eax
0x005425F7: push     4
0x005425F9: call     0x689060
0x005425FE: add      esp, 0xc
0x00542601: test     eax, eax
0x00542603: je       0x54260e
0x00542605: mov      dword ptr [eax], 0x98b38c
0x0054260B: ret      4
0x0054260E: xor      eax, eax
0x00542610: ret      4
0x00542613: int3     
0x00542614: int3     
0x00542615: int3     
0x00542616: int3     
0x00542617: int3     
0x00542618: int3     
0x00542619: int3     
0x0054261A: int3     
0x0054261B: int3     
0x0054261C: int3     
0x0054261D: int3     
0x0054261E: int3     
0x0054261F: int3     
0x00542620: mov      eax, dword ptr [esp + 4]
0x00542624: push     0
0x00542626: push     eax
0x00542627: push     4
0x00542629: call     0x689060
0x0054262E: add      esp, 0xc
0x00542631: test     eax, eax
0x00542633: je       0x54263e
0x00542635: mov      dword ptr [eax], 0x98b3a0
0x0054263B: ret      4
0x0054263E: xor      eax, eax
0x00542640: ret      4
0x00542643: int3     
0x00542644: int3     
0x00542645: int3     
0x00542646: int3     
0x00542647: int3     
0x00542648: int3     
0x00542649: int3     
0x0054264A: int3     
0x0054264B: int3     
0x0054264C: int3     
0x0054264D: int3     
0x0054264E: int3     
0x0054264F: int3     
0x00542650: mov      eax, dword ptr [esp + 4]
0x00542654: push     0
0x00542656: push     eax
0x00542657: push     4
0x00542659: call     0x689060
0x0054265E: add      esp, 0xc
0x00542661: test     eax, eax
0x00542663: je       0x54266e
0x00542665: mov      dword ptr [eax], 0x98b3b4
0x0054266B: ret      4
0x0054266E: xor      eax, eax
0x00542670: ret      4
0x00542673: int3     
0x00542674: int3     
0x00542675: int3     
0x00542676: int3     
0x00542677: int3     
0x00542678: int3     
0x00542679: int3     
0x0054267A: int3     
0x0054267B: int3     
0x0054267C: int3     
0x0054267D: int3     
0x0054267E: int3     
0x0054267F: int3     
0x00542680: mov      eax, dword ptr [esp + 4]
0x00542684: push     0
0x00542686: push     eax
0x00542687: push     4
0x00542689: call     0x689060
0x0054268E: add      esp, 0xc
0x00542691: test     eax, eax
0x00542693: je       0x54269e
0x00542695: mov      dword ptr [eax], 0x98b3c8
0x0054269B: ret      4
0x0054269E: xor      eax, eax
0x005426A0: ret      4
0x005426A3: int3     
0x005426A4: int3     
0x005426A5: int3     
0x005426A6: int3     
0x005426A7: int3     
0x005426A8: int3     
0x005426A9: int3     
0x005426AA: int3     
0x005426AB: int3     
0x005426AC: int3     
0x005426AD: int3     
0x005426AE: int3     
0x005426AF: int3     
0x005426B0: mov      eax, dword ptr [esp + 4]
0x005426B4: push     0
0x005426B6: push     eax
0x005426B7: push     4
0x005426B9: call     0x689060
0x005426BE: add      esp, 0xc
0x005426C1: test     eax, eax
0x005426C3: je       0x5426ce
0x005426C5: mov      dword ptr [eax], 0x98b3dc
0x005426CB: ret      4
0x005426CE: xor      eax, eax
0x005426D0: ret      4
0x005426D3: int3     
0x005426D4: int3     
0x005426D5: int3     
0x005426D6: int3     
0x005426D7: int3     
0x005426D8: int3     
0x005426D9: int3     
0x005426DA: int3     
0x005426DB: int3     
0x005426DC: int3     
0x005426DD: int3     
0x005426DE: int3     
0x005426DF: int3     
0x005426E0: mov      eax, dword ptr [esp + 4]
0x005426E4: push     esi
0x005426E5: push     0
0x005426E7: push     eax
0x005426E8: push     8
0x005426EA: mov      esi, ecx
0x005426EC: call     0x689060
0x005426F1: add      esp, 0xc
0x005426F4: test     eax, eax
0x005426F6: je       0x542708
0x005426F8: mov      dword ptr [eax], 0x98b3f0
0x005426FE: mov      ecx, dword ptr [esi + 4]
0x00542701: mov      dword ptr [eax + 4], ecx
0x00542704: pop      esi
0x00542705: ret      4
0x00542708: xor      eax, eax
0x0054270A: pop      esi
0x0054270B: ret      4
0x0054270E: int3     
0x0054270F: int3     
0x00542710: mov      eax, dword ptr [esp + 4]
0x00542714: push     0
0x00542716: push     eax
0x00542717: push     4
0x00542719: call     0x689060
0x0054271E: add      esp, 0xc
0x00542721: test     eax, eax
0x00542723: je       0x54272e
0x00542725: mov      dword ptr [eax], 0x98b404
0x0054272B: ret      4
0x0054272E: xor      eax, eax
0x00542730: ret      4
0x00542733: int3     
0x00542734: int3     
0x00542735: int3     
0x00542736: int3     
0x00542737: int3     
0x00542738: int3     
0x00542739: int3     
0x0054273A: int3     
0x0054273B: int3     
0x0054273C: int3     
0x0054273D: int3     
0x0054273E: int3     
0x0054273F: int3     
0x00542740: push     edi
0x00542741: mov      edi, ecx
0x00542743: mov      eax, dword ptr [edi + 0x14]
0x00542746: test     eax, eax
0x00542748: je       0x542774
0x0054274A: push     ebx
0x0054274B: lea      ebx, [edi + 4]
0x0054274E: push     esi
0x0054274F: nop      
0x00542750: cmp      eax, ebx
0x00542752: je       0x542772
0x00542754: mov      esi, dword ptr [eax + 0x10]
0x00542757: push     0
0x00542759: push     1
0x0054275B: push     0
0x0054275D: push     0
0x0054275F: push     0
0x00542761: push     0
0x00542763: push     eax
0x00542764: call     0x680690
0x00542769: add      esp, 0x1c
0x0054276C: mov      eax, esi
0x0054276E: test     esi, esi
0x00542770: jne      0x542750
0x00542772: pop      esi
0x00542773: pop      ebx
0x00542774: lea      eax, [edi + 4]
0x00542777: mov      dword ptr [edi + 0x18], eax
0x0054277A: mov      dword ptr [edi + 0x14], eax
0x0054277D: pop      edi
0x0054277E: ret      
0x0054277F: int3     
0x00542780: push     ebx
0x00542781: push     esi
0x00542782: mov      esi, ecx
0x00542784: mov      ecx, dword ptr [esi + 8]
0x00542787: sub      ecx, dword ptr [esi + 4]
0x0054278A: mov      eax, 0x2aaaaaab
0x0054278F: imul     ecx
0x00542791: mov      eax, dword ptr [esi + 0xc]
0x00542794: sar      edx, 1
0x00542796: push     edi
0x00542797: mov      edi, edx
0x00542799: shr      edi, 0x1f
0x0054279C: add      edi, edx
0x0054279E: mov      ecx, eax
0x005427A0: sub      ecx, edi
0x005427A2: jne      0x5427bc
0x005427A4: test     eax, eax
0x005427A6: jne      0x5427ad
0x005427A8: lea      ecx, [eax + 1]
0x005427AB: jmp      0x5427b4
0x005427AD: lea      ecx, [eax + 1]
0x005427B0: shr      ecx, 1
0x005427B2: add      ecx, eax
0x005427B4: push     ecx
0x005427B5: mov      ecx, esi
0x005427B7: call     0x5423e0
0x005427BC: mov      ebx, dword ptr [esi + 4]
0x005427BF: mov      ecx, dword ptr [esi + 8]
0x005427C2: sub      ecx, ebx
0x005427C4: mov      eax, 0x2aaaaaab
0x005427C9: imul     ecx
0x005427CB: mov      ecx, dword ptr [esi + 0xc]
0x005427CE: sar      edx, 1
0x005427D0: mov      eax, edx
0x005427D2: shr      eax, 0x1f
0x005427D5: add      eax, edx
0x005427D7: sub      ecx, eax
0x005427D9: je       0x542814
0x005427DB: lea      edi, [edi + edi*2]
0x005427DE: add      edi, edi
0x005427E0: add      edi, edi
0x005427E2: lea      eax, [edi + ebx]
0x005427E5: push     0
0x005427E7: push     eax
0x005427E8: push     0xc
0x005427EA: call     0x689060
0x005427EF: add      esp, 0xc
0x005427F2: test     eax, eax
0x005427F4: je       0x54280a
0x005427F6: mov      ecx, dword ptr [esp + 0x10]
0x005427FA: mov      edx, dword ptr [ecx]
0x005427FC: mov      dword ptr [eax], edx
0x005427FE: mov      edx, dword ptr [ecx + 4]
0x00542801: mov      dword ptr [eax + 4], edx
0x00542804: mov      ecx, dword ptr [ecx + 8]
0x00542807: mov      dword ptr [eax + 8], ecx
0x0054280A: mov      edx, dword ptr [esi + 4]
0x0054280D: lea      eax, [edx + edi + 0xc]
0x00542811: mov      dword ptr [esi + 8], eax
0x00542814: pop      edi
0x00542815: pop      esi
0x00542816: pop      ebx
0x00542817: ret      4
0x0054281A: int3     
0x0054281B: int3     
0x0054281C: int3     
0x0054281D: int3     
0x0054281E: int3     
0x0054281F: int3     
0x00542820: push     edi
0x00542821: mov      edi, ecx
0x00542823: mov      eax, dword ptr [edi + 0xc]
0x00542826: test     eax, eax
0x00542828: je       0x542854
0x0054282A: push     ebx
0x0054282B: lea      ebx, [edi + 4]
0x0054282E: push     esi
0x0054282F: nop      
0x00542830: cmp      eax, ebx
0x00542832: je       0x542852
0x00542834: mov      esi, dword ptr [eax + 8]
0x00542837: push     0
0x00542839: push     1
0x0054283B: push     0
0x0054283D: push     0
0x0054283F: push     0
0x00542841: push     0
0x00542843: push     eax
0x00542844: call     0x680690
0x00542849: add      esp, 0x1c
0x0054284C: mov      eax, esi
0x0054284E: test     esi, esi
0x00542850: jne      0x542830
0x00542852: pop      esi
0x00542853: pop      ebx
0x00542854: lea      eax, [edi + 4]
0x00542857: mov      dword ptr [edi + 0x10], eax
0x0054285A: mov      dword ptr [edi + 0xc], eax
0x0054285D: pop      edi
0x0054285E: ret      
0x0054285F: int3     
0x00542860: push     ebx
0x00542861: mov      ebx, ecx
0x00542863: mov      ecx, dword ptr [ebx + 8]
0x00542866: push     ebp
0x00542867: mov      ebp, dword ptr [esp + 0xc]
0x0054286B: lea      eax, [ecx - 1]
0x0054286E: push     esi
0x0054286F: push     edi
0x00542870: cmp      ebp, eax
0x00542872: je       0x54288e
0x00542874: lea      eax, [ebp + 1]
0x00542877: cmp      eax, ecx
0x00542879: jae      0x54288e
0x0054287B: mov      esi, dword ptr [ebx + 4]
0x0054287E: lea      edx, [esi + eax*4]
0x00542881: cmp      dword ptr [edx], 0
0x00542884: jne      0x5428b0
0x00542886: inc      eax
0x00542887: add      edx, 4
0x0054288A: cmp      eax, ecx
0x0054288C: jb       0x542881
0x0054288E: xor      edi, edi
0x00542890: test     ebp, ebp
0x00542892: je       0x5428c6
0x00542894: lea      eax, [ebp - 1]
0x00542897: test     eax, eax
0x00542899: jl       0x5428c6
0x0054289B: mov      edx, dword ptr [ebx + 4]
0x0054289E: lea      ecx, [edx + eax*4]
0x005428A1: cmp      dword ptr [ecx], 0
0x005428A4: jne      0x5428b5
0x005428A6: dec      eax
0x005428A7: sub      ecx, 4
0x005428AA: test     eax, eax
0x005428AC: jge      0x5428a1
0x005428AE: jmp      0x5428c6
0x005428B0: mov      edi, dword ptr [esi + eax*4]
0x005428B3: jmp      0x542890
0x005428B5: cmp      dword ptr [edx + eax*4], 0
0x005428B9: je       0x5428c6
0x005428BB: push     eax
0x005428BC: mov      ecx, ebx
0x005428BE: call     0x5420b0
0x005428C3: mov      dword ptr [eax + 8], edi
0x005428C6: mov      ecx, dword ptr [ebx + 4]
0x005428C9: mov      esi, dword ptr [ecx + ebp*4]
0x005428CC: lea      esp, [esp]
0x005428D0: push     0
0x005428D2: push     1
0x005428D4: push     0
0x005428D6: push     0
0x005428D8: push     0
0x005428DA: mov      eax, esi
0x005428DC: mov      esi, dword ptr [esi + 8]
0x005428DF: push     0
0x005428E1: push     eax
0x005428E2: call     0x680690
0x005428E7: add      esp, 0x1c
0x005428EA: cmp      esi, edi
0x005428EC: jne      0x5428d0
0x005428EE: mov      edx, dword ptr [ebx + 4]
0x005428F1: pop      edi
0x005428F2: pop      esi
0x005428F3: mov      dword ptr [edx + ebp*4], 0
0x005428FA: pop      ebp
0x005428FB: pop      ebx
0x005428FC: ret      4
0x005428FF: int3     
0x00542900: push     ebx
0x00542901: push     edi
0x00542902: mov      edi, ecx
0x00542904: mov      eax, dword ptr [edi + 4]
0x00542907: xor      ebx, ebx
0x00542909: cmp      eax, ebx
0x0054290B: je       0x54292a
0x0054290D: push     esi
0x0054290E: mov      edi, edi
0x00542910: mov      esi, dword ptr [eax + 4]
0x00542913: push     ebx
0x00542914: push     1
0x00542916: push     ebx
0x00542917: push     ebx
0x00542918: push     ebx
0x00542919: push     ebx
0x0054291A: push     eax
0x0054291B: call     0x680690
0x00542920: add      esp, 0x1c
0x00542923: mov      eax, esi
0x00542925: cmp      esi, ebx
0x00542927: jne      0x542910
0x00542929: pop      esi
0x0054292A: mov      dword ptr [edi + 4], ebx
0x0054292D: mov      dword ptr [edi + 8], ebx
0x00542930: pop      edi
0x00542931: pop      ebx
0x00542932: ret      
0x00542933: int3     
0x00542934: int3     
0x00542935: int3     
0x00542936: int3     
0x00542937: int3     
0x00542938: int3     
0x00542939: int3     
0x0054293A: int3     
0x0054293B: int3     
0x0054293C: int3     
0x0054293D: int3     
0x0054293E: int3     
0x0054293F: int3     
0x00542940: jmp      0x542740
0x00542945: int3     
0x00542946: int3     
0x00542947: int3     
0x00542948: int3     
0x00542949: int3     
0x0054294A: int3     
0x0054294B: int3     
0x0054294C: int3     
0x0054294D: int3     
0x0054294E: int3     
0x0054294F: int3     
0x00542950: cmp      dword ptr [ecx + 0xc], 0
0x00542954: mov      eax, dword ptr [ecx + 4]
0x00542957: je       0x54295c
0x00542959: mov      dword ptr [ecx + 8], eax
0x0054295C: push     0
0x0054295E: call     0x5423e0
0x00542963: ret      
0x00542964: int3     
0x00542965: int3     
0x00542966: int3     
0x00542967: int3     
0x00542968: int3     
0x00542969: int3     
0x0054296A: int3     
0x0054296B: int3     
0x0054296C: int3     
0x0054296D: int3     
0x0054296E: int3     
0x0054296F: int3     
0x00542970: jmp      0x542820
0x00542975: int3     
0x00542976: int3     
0x00542977: int3     
0x00542978: int3     
0x00542979: int3     
0x0054297A: int3     
0x0054297B: int3     
0x0054297C: int3     
0x0054297D: int3     
0x0054297E: int3     
0x0054297F: int3     
0x00542980: cmp      dword ptr [esp + 8], 1
0x00542985: push     ebx
0x00542986: mov      ebx, dword ptr [esp + 8]
0x0054298A: push     ebp
0x0054298B: push     esi
0x0054298C: push     edi
0x0054298D: mov      esi, ecx
0x0054298F: mov      edi, ebx
0x00542991: jne      0x5429b8
0x00542993: xor      eax, eax
0x00542995: xor      edi, edi
0x00542997: cmp      dword ptr [esi + 8], eax
0x0054299A: jbe      0x5429b1
0x0054299C: mov      edx, dword ptr [esi + 8]
0x0054299F: mov      ecx, dword ptr [esi + 4]
0x005429A2: cmp      dword ptr [ecx], 0
0x005429A5: je       0x5429a9
0x005429A7: mov      edi, eax
0x005429A9: inc      eax
0x005429AA: add      ecx, 4
0x005429AD: cmp      eax, edx
0x005429AF: jb       0x5429a2
0x005429B1: inc      edi
0x005429B2: cmp      edi, ebx
0x005429B4: ja       0x5429b8
0x005429B6: mov      edi, ebx
0x005429B8: mov      ebx, dword ptr [esi + 4]
0x005429BB: mov      ebp, dword ptr [esi + 8]
0x005429BE: push     edi
0x005429BF: mov      ecx, esi
0x005429C1: call     0x5421d0
0x005429C6: cmp      eax, 1
0x005429C9: jne      0x542a41
0x005429CB: cmp      edi, ebp
0x005429CD: jae      0x542a04
0x005429CF: mov      eax, dword ptr [esi + 4]
0x005429D2: mov      ecx, dword ptr [esi + 8]
0x005429D5: mov      dword ptr [esp + 0x14], eax
0x005429D9: mov      dword ptr [esp + 0x18], ecx
0x005429DD: mov      dword ptr [esi + 4], ebx
0x005429E0: mov      dword ptr [esi + 8], ebp
0x005429E3: cmp      dword ptr [ebx + edi*4], 0
0x005429E7: je       0x5429f1
0x005429E9: push     edi
0x005429EA: mov      ecx, esi
0x005429EC: call     0x542860
0x005429F1: inc      edi
0x005429F2: cmp      edi, ebp
0x005429F4: jb       0x5429e3
0x005429F6: mov      edx, dword ptr [esp + 0x14]
0x005429FA: mov      eax, dword ptr [esp + 0x18]
0x005429FE: mov      dword ptr [esi + 4], edx
0x00542A01: mov      dword ptr [esi + 8], eax
0x00542A04: mov      eax, dword ptr [esi + 8]
0x00542A07: cmp      eax, ebp
0x00542A09: jae      0x542a0d
0x00542A0B: mov      ebp, eax
0x00542A0D: xor      eax, eax
0x00542A0F: test     ebp, ebp
0x00542A11: jbe      0x542a21
0x00542A13: mov      edx, dword ptr [ebx + eax*4]
0x00542A16: mov      ecx, dword ptr [esi + 4]
0x00542A19: mov      dword ptr [ecx + eax*4], edx
0x00542A1C: inc      eax
0x00542A1D: cmp      eax, ebp
0x00542A1F: jb       0x542a13
0x00542A21: test     ebx, ebx
0x00542A23: je       0x542a47
0x00542A25: push     0
0x00542A27: push     1
0x00542A29: push     0
0x00542A2B: push     0
0x00542A2D: push     0
0x00542A2F: push     0
0x00542A31: push     ebx
0x00542A32: call     0x680690
0x00542A37: add      esp, 0x1c
0x00542A3A: pop      edi
0x00542A3B: pop      esi
0x00542A3C: pop      ebp
0x00542A3D: pop      ebx
0x00542A3E: ret      8
0x00542A41: mov      dword ptr [esi + 8], ebp
0x00542A44: mov      dword ptr [esi + 4], ebx
0x00542A47: pop      edi
0x00542A48: pop      esi
0x00542A49: pop      ebp
0x00542A4A: pop      ebx
0x00542A4B: ret      8
0x00542A4E: int3     
0x00542A4F: int3     
0x00542A50: push     esi
0x00542A51: mov      esi, ecx
0x00542A53: call     0x573540
0x00542A58: lea      eax, [esi + 0x58]
0x00542A5B: mov      dword ptr [esi], 0x98b418
0x00542A61: xor      ecx, ecx
0x00542A63: mov      dword ptr [eax], ecx
0x00542A65: mov      dword ptr [eax + 4], ecx
0x00542A68: mov      dword ptr [eax + 0xc], ecx
0x00542A6B: mov      dword ptr [eax + 8], ecx
0x00542A6E: mov      dword ptr [esi + 0x64], eax
0x00542A71: mov      dword ptr [esi + 0x60], eax
0x00542A74: mov      eax, esi
0x00542A76: pop      esi
0x00542A77: ret      
0x00542A78: int3     
0x00542A79: int3     
0x00542A7A: int3     
0x00542A7B: int3     
0x00542A7C: int3     
0x00542A7D: int3     
0x00542A7E: int3     
0x00542A7F: int3     
0x00542A80: mov      eax, 0xb49ea0
0x00542A85: ret      
0x00542A86: int3     
0x00542A87: int3     
0x00542A88: int3     
0x00542A89: int3     
0x00542A8A: int3     
0x00542A8B: int3     
0x00542A8C: int3     
0x00542A8D: int3     
0x00542A8E: int3     
0x00542A8F: int3     
0x00542A90: push     esi
0x00542A91: mov      esi, ecx
0x00542A93: call     0x5739f0
0x00542A98: test     byte ptr [esp + 8], 1
0x00542A9D: je       0x542aa8
0x00542A9F: push     esi
0x00542AA0: call     0x688fb0
0x00542AA5: add      esp, 4
0x00542AA8: mov      eax, esi
0x00542AAA: pop      esi
0x00542AAB: ret      4
0x00542AAE: int3     
0x00542AAF: int3     
0x00542AB0: push     esi
0x00542AB1: mov      esi, ecx
0x00542AB3: mov      eax, dword ptr [esi]
0x00542AB5: mov      edx, dword ptr [eax + 0x2c]
0x00542AB8: call     edx
0x00542ABA: xor      eax, eax
0x00542ABC: mov      dword ptr [esi + 4], eax
0x00542ABF: mov      dword ptr [esi + 8], eax
0x00542AC2: pop      esi
0x00542AC3: ret      
0x00542AC4: int3     
0x00542AC5: int3     
0x00542AC6: int3     
0x00542AC7: int3     
0x00542AC8: int3     
0x00542AC9: int3     
0x00542ACA: int3     
0x00542ACB: int3     
0x00542ACC: int3     
0x00542ACD: int3     
0x00542ACE: int3     
0x00542ACF: int3     
0x00542AD0: mov      eax, dword ptr [esp + 4]
0x00542AD4: mov      dword ptr [ecx + 4], eax
0x00542AD7: mov      edx, dword ptr [eax + 8]
0x00542ADA: mov      dword ptr [ecx + 8], edx
0x00542ADD: mov      edx, dword ptr [ecx]
0x00542ADF: mov      dword ptr [esp + 4], eax
0x00542AE3: mov      eax, dword ptr [edx + 0x28]
0x00542AE6: jmp      eax
0x00542AE8: int3     
0x00542AE9: int3     
0x00542AEA: int3     
0x00542AEB: int3     
0x00542AEC: int3     
0x00542AED: int3     
0x00542AEE: int3     
0x00542AEF: int3     
0x00542AF0: jmp      0x542900
0x00542AF5: int3     
0x00542AF6: int3     
0x00542AF7: int3     
0x00542AF8: int3     
0x00542AF9: int3     
0x00542AFA: int3     
0x00542AFB: int3     
0x00542AFC: int3     
0x00542AFD: int3     
0x00542AFE: int3     
0x00542AFF: int3     
0x00542B00: push     0
0x00542B02: push     0
0x00542B04: call     0x542980
0x00542B09: ret      
0x00542B0A: int3     
0x00542B0B: int3     
0x00542B0C: int3     
0x00542B0D: int3     
0x00542B0E: int3     
0x00542B0F: int3     
0x00542B10: push     -1
0x00542B12: push     0x946006
0x00542B17: mov      eax, dword ptr fs:[0]
0x00542B1D: push     eax
0x00542B1E: push     ecx
0x00542B1F: push     esi
0x00542B20: push     edi
0x00542B21: mov      eax, dword ptr [0xb089c8]
0x00542B26: xor      eax, esp
0x00542B28: push     eax
0x00542B29: lea      eax, [esp + 0x10]
0x00542B2D: mov      dword ptr fs:[0], eax
0x00542B33: mov      esi, ecx
0x00542B35: mov      dword ptr [esp + 0xc], esi
0x00542B39: mov      dword ptr [esi], 0x98b448
0x00542B3F: lea      edi, [esi + 0x1a8]
0x00542B45: push     1
0x00542B47: mov      ecx, edi
0x00542B49: mov      dword ptr [esp + 0x1c], 1
0x00542B51: call     0x5695b0
0x00542B56: mov      ecx, dword ptr [esi + 0x1b4]
0x00542B5C: test     ecx, ecx
0x00542B5E: je       0x542b68
0x00542B60: mov      eax, dword ptr [ecx]
0x00542B62: mov      edx, dword ptr [eax]
0x00542B64: push     1
0x00542B66: call     edx
0x00542B68: mov      ecx, edi
0x00542B6A: mov      dword ptr [esi + 0x1b4], 0
0x00542B74: mov      byte ptr [esp + 0x18], 0
0x00542B79: call     0x542900
0x00542B7E: mov      ecx, esi
0x00542B80: mov      dword ptr [esp + 0x18], 0xffffffff
0x00542B88: call     0x506b40
0x00542B8D: mov      ecx, dword ptr [esp + 0x10]
0x00542B91: mov      dword ptr fs:[0], ecx
0x00542B98: pop      ecx
0x00542B99: pop      edi
0x00542B9A: pop      esi
0x00542B9B: add      esp, 0x10
0x00542B9E: ret      
0x00542B9F: int3     

--- CRotasticPlayer::vfunc_43 @ 0x00542BA0 ---
0x00542BA0: push     esi
0x00542BA1: mov      esi, ecx
0x00542BA3: mov      ecx, dword ptr [esi + 0x1b4]
0x00542BA9: mov      eax, dword ptr [ecx]
0x00542BAB: mov      edx, dword ptr [eax + 4]
0x00542BAE: call     edx
0x00542BB0: lea      ecx, [esi + 0x1a8]
0x00542BB6: call     0x569310
0x00542BBB: mov      ecx, esi
0x00542BBD: pop      esi
0x00542BBE: jmp      0x795870
0x00542BC3: int3     
0x00542BC4: int3     
0x00542BC5: int3     
0x00542BC6: int3     
0x00542BC7: int3     
0x00542BC8: int3     
0x00542BC9: int3     
0x00542BCA: int3     
0x00542BCB: int3     
0x00542BCC: int3     
0x00542BCD: int3     
0x00542BCE: int3     
0x00542BCF: int3     

--- CRotasticPlayer::vfunc_45 @ 0x00542BD0 ---
0x00542BD0: push     esi
0x00542BD1: mov      esi, ecx
0x00542BD3: mov      ecx, dword ptr [esi + 0x1b4]
0x00542BD9: mov      eax, dword ptr [ecx]
0x00542BDB: mov      edx, dword ptr [eax + 4]
0x00542BDE: call     edx
0x00542BE0: lea      ecx, [esi + 0x1a8]
0x00542BE6: call     0x5694f0
0x00542BEB: mov      ecx, esi
0x00542BED: pop      esi
0x00542BEE: jmp      0x796be0
0x00542BF3: int3     
0x00542BF4: int3     
0x00542BF5: int3     
0x00542BF6: int3     
0x00542BF7: int3     
0x00542BF8: int3     
0x00542BF9: int3     
0x00542BFA: int3     
0x00542BFB: int3     
0x00542BFC: int3     
0x00542BFD: int3     
0x00542BFE: int3     
0x00542BFF: int3     

--- CRotasticPlayer::vfunc_44 @ 0x00542C00 ---
0x00542C00: push     esi
0x00542C01: mov      esi, ecx
0x00542C03: mov      ecx, dword ptr [esi + 0x1b4]
0x00542C09: mov      eax, dword ptr [ecx]
0x00542C0B: mov      edx, dword ptr [eax + 4]
0x00542C0E: call     edx
0x00542C10: add      esi, 0x1a8
0x00542C16: mov      ecx, esi
0x00542C18: call     0x5693b0
0x00542C1D: mov      ecx, esi
0x00542C1F: pop      esi
0x00542C20: jmp      0x569450
0x00542C25: int3     
0x00542C26: int3     
0x00542C27: int3     
0x00542C28: int3     
0x00542C29: int3     
0x00542C2A: int3     
0x00542C2B: int3     
0x00542C2C: int3     
0x00542C2D: int3     
0x00542C2E: int3     
0x00542C2F: int3     
0x00542C30: push     esi
0x00542C31: mov      esi, ecx
0x00542C33: call     0x542b10
0x00542C38: test     byte ptr [esp + 8], 1
0x00542C3D: je       0x542c48
0x00542C3F: push     esi
0x00542C40: call     0x688fb0
0x00542C45: add      esp, 4
0x00542C48: mov      eax, esi
0x00542C4A: pop      esi
0x00542C4B: ret      4
0x00542C4E: int3     
0x00542C4F: int3     

--- CRotasticPlayer::vfunc_0 @ 0x00542C50 ---
0x00542C50: push     esi
0x00542C51: mov      esi, ecx
0x00542C53: call     0x541b80
0x00542C58: test     byte ptr [esp + 8], 1
0x00542C5D: je       0x542c68
0x00542C5F: push     esi
0x00542C60: call     0x688fb0
0x00542C65: add      esp, 4
0x00542C68: mov      eax, esi
0x00542C6A: pop      esi
0x00542C6B: ret      4
0x00542C6E: int3     
0x00542C6F: int3     
0x00542C70: push     -1
0x00542C72: push     0x946063
0x00542C77: mov      eax, dword ptr fs:[0]
0x00542C7D: push     eax
0x00542C7E: push     ecx
0x00542C7F: push     esi
0x00542C80: mov      eax, dword ptr [0xb089c8]
0x00542C85: xor      eax, esp
0x00542C87: push     eax
0x00542C88: lea      eax, [esp + 0xc]
0x00542C8C: mov      dword ptr fs:[0], eax
0x00542C92: mov      esi, ecx
0x00542C94: mov      dword ptr [esp + 8], esi
0x00542C98: mov      eax, dword ptr [esp + 0x1c]
0x00542C9C: push     eax
0x00542C9D: call     0x506ab0
0x00542CA2: mov      dword ptr [esi], 0x98b448
0x00542CA8: mov      dword ptr [esp + 0x14], 0
0x00542CB0: mov      dword ptr [esi + 0x1b0], 0
0x00542CBA: mov      dword ptr [esi + 0x1ac], 0
0x00542CC4: mov      ecx, dword ptr [0xb01b28]
0x00542CCA: push     0
0x00542CCC: push     1
0x00542CCE: push     0
0x00542CD0: push     1
0x00542CD2: push     0
0x00542CD4: push     ecx
0x00542CD5: push     0x28
0x00542CD7: mov      byte ptr [esp + 0x30], 1
0x00542CDC: call     0x688fe0
0x00542CE1: add      esp, 0x1c
0x00542CE4: mov      dword ptr [esp + 0x1c], eax
0x00542CE8: mov      byte ptr [esp + 0x14], 2
0x00542CED: test     eax, eax
0x00542CEF: je       0x542cfa
0x00542CF1: mov      ecx, eax
0x00542CF3: call     0x509c70
0x00542CF8: jmp      0x542cfc
0x00542CFA: xor      eax, eax
0x00542CFC: mov      dword ptr [esi + 0x1b4], eax
0x00542D02: mov      eax, esi
0x00542D04: mov      ecx, dword ptr [esp + 0xc]
0x00542D08: mov      dword ptr fs:[0], ecx
0x00542D0F: pop      ecx
0x00542D10: pop      esi
0x00542D11: add      esp, 0x10
0x00542D14: ret      4
0x00542D17: int3     
0x00542D18: int3     
0x00542D19: int3     
0x00542D1A: int3     
0x00542D1B: int3     
0x00542D1C: int3     
0x00542D1D: int3     
0x00542D1E: int3     
0x00542D1F: int3     
0x00542D20: push     -1
0x00542D22: push     0x946093
0x00542D27: mov      eax, dword ptr fs:[0]
0x00542D2D: push     eax
0x00542D2E: push     ecx
0x00542D2F: push     esi
0x00542D30: mov      eax, dword ptr [0xb089c8]
0x00542D35: xor      eax, esp
0x00542D37: push     eax
0x00542D38: lea      eax, [esp + 0xc]
0x00542D3C: mov      dword ptr fs:[0], eax
0x00542D42: mov      esi, ecx
0x00542D44: mov      dword ptr [esp + 8], esi
0x00542D48: mov      eax, dword ptr [esp + 0x1c]
0x00542D4C: push     eax
0x00542D4D: call     0x7b8f10
0x00542D52: lea      ecx, [esi + 0x28]
0x00542D55: mov      dword ptr [esp + 0x14], 0
0x00542D5D: mov      dword ptr [esi], 0x98b658
0x00542D63: call     0x568790
0x00542D68: push     1
0x00542D6A: push     0
0x00542D6C: push     1
0x00542D6E: push     3
0x00542D70: push     3
0x00542D72: mov      ecx, esi
0x00542D74: mov      byte ptr [esp + 0x28], 1
0x00542D79: call     0x7ba420
0x00542D7E: push     1
0x00542D80: push     0
0x00542D82: push     1
0x00542D84: push     0x3c
0x00542D86: push     0x3c
0x00542D88: mov      ecx, esi
0x00542D8A: call     0x7ba420
0x00542D8F: mov      eax, esi
0x00542D91: mov      ecx, dword ptr [esp + 0xc]
0x00542D95: mov      dword ptr fs:[0], ecx
0x00542D9C: pop      ecx
0x00542D9D: pop      esi
0x00542D9E: add      esp, 0x10
0x00542DA1: ret      4
0x00542DA4: int3     
0x00542DA5: int3     
0x00542DA6: int3     
0x00542DA7: int3     
0x00542DA8: int3     
0x00542DA9: int3     
0x00542DAA: int3     
0x00542DAB: int3     
0x00542DAC: int3     
0x00542DAD: int3     
0x00542DAE: int3     
0x00542DAF: int3     
0x00542DB0: push     -1
0x00542DB2: push     0x9460b8
0x00542DB7: mov      eax, dword ptr fs:[0]
0x00542DBD: push     eax
0x00542DBE: push     ecx
0x00542DBF: push     esi
0x00542DC0: mov      eax, dword ptr [0xb089c8]
0x00542DC5: xor      eax, esp
0x00542DC7: push     eax
0x00542DC8: lea      eax, [esp + 0xc]
0x00542DCC: mov      dword ptr fs:[0], eax
0x00542DD2: mov      esi, ecx
0x00542DD4: mov      dword ptr [esp + 8], esi
0x00542DD8: mov      dword ptr [esi], 0x98b658
0x00542DDE: lea      ecx, [esi + 0x28]
0x00542DE1: mov      dword ptr [esp + 0x14], 0
0x00542DE9: call     0x5687b0
0x00542DEE: mov      ecx, esi
0x00542DF0: mov      dword ptr [esp + 0x14], 0xffffffff
0x00542DF8: call     0x7b8f90
0x00542DFD: mov      ecx, dword ptr [esp + 0xc]
0x00542E01: mov      dword ptr fs:[0], ecx
0x00542E08: pop      ecx
0x00542E09: pop      esi
0x00542E0A: add      esp, 0x10
0x00542E0D: ret      
0x00542E0E: int3     
0x00542E0F: int3     

--- CRotasticPlayerDeathTrigger::vfunc_3 @ 0x00542E10 ---
0x00542E10: jmp      0x7b8fe0
0x00542E15: int3     
0x00542E16: int3     
0x00542E17: int3     
0x00542E18: int3     
0x00542E19: int3     
0x00542E1A: int3     
0x00542E1B: int3     
0x00542E1C: int3     
0x00542E1D: int3     
0x00542E1E: int3     
0x00542E1F: int3     

--- CRotasticPlayerDeathTrigger::vfunc_54 @ 0x00542E20 ---
0x00542E20: mov      eax, dword ptr [esp + 4]
0x00542E24: push     0
0x00542E26: push     eax
0x00542E27: call     0x7b9400
0x00542E2C: fcomp    dword ptr [0x96665c] ; [f32=0, u32=0x00000000]
0x00542E32: fnstsw   ax
0x00542E34: test     ah, 0x41
0x00542E37: jp       0x542e41
0x00542E39: mov      eax, 1
0x00542E3E: ret      4
0x00542E41: xor      eax, eax
0x00542E43: ret      4
0x00542E46: int3     
0x00542E47: int3     
0x00542E48: int3     
0x00542E49: int3     
0x00542E4A: int3     
0x00542E4B: int3     
0x00542E4C: int3     
0x00542E4D: int3     
0x00542E4E: int3     
0x00542E4F: int3     

--- CRotasticPlayerDeathTrigger::ctor @ 0x00542E50 ---
0x00542E50: mov      eax, dword ptr [esp + 4]
0x00542E54: push     esi
0x00542E55: push     eax
0x00542E56: mov      esi, ecx
0x00542E58: call     0x542d20
0x00542E5D: mov      dword ptr [esi], 0x98b658
0x00542E63: mov      eax, esi
0x00542E65: pop      esi
0x00542E66: ret      4
0x00542E69: int3     
0x00542E6A: int3     
0x00542E6B: int3     
0x00542E6C: int3     
0x00542E6D: int3     
0x00542E6E: int3     
0x00542E6F: int3     

--- CRotasticPlayerDeathTrigger::vfunc_4 @ 0x00542E70 ---
0x00542E70: push     esi
0x00542E71: mov      esi, ecx
0x00542E73: mov      ecx, dword ptr [esi + 8]
0x00542E76: lea      eax, [esi + 0x28]
0x00542E79: push     eax
0x00542E7A: push     ecx
0x00542E7B: call     0x5687c0
0x00542E80: mov      ecx, dword ptr [esi + 0xc]
0x00542E83: add      esp, 8
0x00542E86: test     ecx, ecx
0x00542E88: je       0x542eb0
0x00542E8A: mov      eax, dword ptr [esi + 8]
0x00542E8D: movzx    edx, byte ptr [eax + 1]
0x00542E91: push     edi
0x00542E92: mov      edi, dword ptr [eax + 4]
0x00542E95: mov      edi, dword ptr [edi + 0x38]
0x00542E98: cmp      ecx, dword ptr [edi + edx*4]
0x00542E9B: pop      edi
0x00542E9C: je       0x542eb0
0x00542E9E: mov      esi, dword ptr [esp + 0xc]
0x00542EA2: mov      edx, dword ptr [ecx]
0x00542EA4: mov      edx, dword ptr [edx + 0x24]
0x00542EA7: push     esi
0x00542EA8: push     eax
0x00542EA9: mov      eax, dword ptr [esp + 0x10]
0x00542EAD: push     eax
0x00542EAE: call     edx
0x00542EB0: pop      esi
0x00542EB1: ret      8
0x00542EB4: int3     
0x00542EB5: int3     
0x00542EB6: int3     
0x00542EB7: int3     
0x00542EB8: int3     
0x00542EB9: int3     
0x00542EBA: int3     
0x00542EBB: int3     
0x00542EBC: int3     
0x00542EBD: int3     
0x00542EBE: int3     
0x00542EBF: int3     

--- CRotasticPlayerDeathTrigger::vfunc_0 @ 0x00542EC0 ---
0x00542EC0: push     esi
0x00542EC1: mov      esi, ecx
0x00542EC3: call     0x542db0
0x00542EC8: test     byte ptr [esp + 8], 1
0x00542ECD: je       0x542ed8
0x00542ECF: push     esi
0x00542ED0: call     0x688fb0
0x00542ED5: add      esp, 4
0x00542ED8: mov      eax, esi
0x00542EDA: pop      esi
0x00542EDB: ret      4
0x00542EDE: int3     
0x00542EDF: int3     
0x00542EE0: push     -1
0x00542EE2: push     0x9460ee
0x00542EE7: mov      eax, dword ptr fs:[0]
0x00542EED: push     eax
0x00542EEE: mov      eax, dword ptr [0xb089c8]
0x00542EF3: xor      eax, esp
0x00542EF5: push     eax
0x00542EF6: lea      eax, [esp + 4]
0x00542EFA: mov      dword ptr fs:[0], eax
0x00542F00: mov      eax, 1
0x00542F05: test     byte ptr [0xb1bc6c], al
0x00542F0B: jne      0x542f41
0x00542F0D: or       dword ptr [0xb1bc6c], eax
0x00542F13: push     -1
0x00542F15: push     0
0x00542F17: push     0x978964
0x00542F1C: mov      dword ptr [esp + 0x18], 0
0x00542F24: call     0x691560
0x00542F29: add      esp, 0xc
0x00542F2C: mov      dword ptr [0xb1bc68], eax
0x00542F31: mov      ecx, dword ptr [esp + 4]
0x00542F35: mov      dword ptr fs:[0], ecx
0x00542F3C: pop      ecx
0x00542F3D: add      esp, 0xc
0x00542F40: ret      
0x00542F41: mov      eax, dword ptr [0xb1bc68]
0x00542F46: mov      ecx, dword ptr [esp + 4]
0x00542F4A: mov      dword ptr fs:[0], ecx
0x00542F51: pop      ecx
0x00542F52: add      esp, 0xc
0x00542F55: ret      
0x00542F56: int3     
0x00542F57: int3     
0x00542F58: int3     
0x00542F59: int3     
0x00542F5A: int3     
0x00542F5B: int3     
0x00542F5C: int3     
0x00542F5D: int3     
0x00542F5E: int3     
0x00542F5F: int3     

--- CRotasticPlayerDeathTrigger::vfunc_2 @ 0x00542F60 ---
0x00542F60: push     esi
0x00542F61: call     0x542ee0
0x00542F66: mov      esi, dword ptr [esp + 8]
0x00542F6A: cmp      eax, esi
0x00542F6C: je       0x542f86
0x00542F6E: call     0x5216a0
0x00542F73: cmp      eax, esi
0x00542F75: je       0x542f86
0x00542F77: call     0x433c20
0x00542F7C: cmp      eax, esi
0x00542F7E: je       0x542f86
0x00542F80: xor      eax, eax
0x00542F82: pop      esi
0x00542F83: ret      4
0x00542F86: mov      eax, 1
0x00542F8B: pop      esi
0x00542F8C: ret      4
0x00542F8F: int3     
0x00542F90: lea      eax, [ecx + 0x4c]
0x00542F93: lea      edx, [ecx + 0x8c]
0x00542F99: mov      dword ptr [ecx + 0xd0], eax
0x00542F9F: mov      dword ptr [ecx + 0xd4], edx
0x00542FA5: ret      
0x00542FA6: int3     
0x00542FA7: int3     
0x00542FA8: int3     
0x00542FA9: int3     
0x00542FAA: int3     
0x00542FAB: int3     
0x00542FAC: int3     
0x00542FAD: int3     
0x00542FAE: int3     
0x00542FAF: int3     
0x00542FB0: fld      dword ptr [0xafce38]
0x00542FB6: mov      eax, dword ptr [esp + 8]
0x00542FBA: fstp     dword ptr [eax + 0x1bc]
0x00542FC0: ret      
0x00542FC1: int3     
0x00542FC2: int3     
0x00542FC3: int3     
0x00542FC4: int3     
0x00542FC5: int3     
0x00542FC6: int3     
0x00542FC7: int3     
0x00542FC8: int3     
0x00542FC9: int3     
0x00542FCA: int3     
0x00542FCB: int3     
0x00542FCC: int3     
0x00542FCD: int3     
0x00542FCE: int3     
0x00542FCF: int3     
0x00542FD0: push     esi
0x00542FD1: mov      esi, ecx
0x00542FD3: call     0x56d800
0x00542FD8: mov      eax, dword ptr [esp + 8]