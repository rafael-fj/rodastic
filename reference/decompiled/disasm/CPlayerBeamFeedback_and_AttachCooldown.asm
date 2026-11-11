; Disassembly of CRotasticPlayer Attach Cooldown (+0xD48/+0xD4C/+0xC50),
; CPlayerBeamFeedback (player cooldown crescent), and CAttachPointFeedback / Proximity.
; Extracted verbatim from reference/game-files/Rotastic.exe (ImageBase 0x00400000).
;
; Key Player Fields (esi = subcomponent, eax/ecx = [esi + 0x40] player entity):
;   +0x23C (ptr)   : active attached pivot object
;   +0x240 (ptr)   : previously attached pivot (cleared next frame)
;   +0x244 (ptr)   : nearest in-range candidate pivot
;   +0xC50 (float) : attachLockTimer (decremented by dt @ 0x0056D0C4, blocks attach/swing if != 0)
;   +0xC58 (float) : secondary lock float (must be 0 alongside +0xC50 @ 0x0056C63F)
;   +0xD48 (float) : chargeGauge c1 (0..1 white protection bubble & primary grapple charge)
;   +0xD4C (float) : chargeGauge2 c2 (0..1 orange heavy-mass/combo bar & secondary grapple charge)
;   +0xD50 (float) : dizzyTimer (reduces recharge rate by * 0.55 @ 0x0056CB0C)
;   +0xD54 (float) : invulnTimer (spawn/shield-break invulnerability)
;   +0xD5C (int32) : chargeMultiplier handicap (+1 after 5 deaths)
;   +0xD68 (int32) : grappleTriggerConsumed flag (1 after attach, 0 on fresh press @ 0x0056C689)

=== CRotasticPlayer::CanConsumeAttachCharge (0x0056A5A0 .. 0x0056A61F) ===
; bool CanConsumeAttachCharge(int* outConsumeOrange /* [esp+4]/arg1 -> actually arg2 */, int* outConsumeWhite)
0x0056A5A0: fldz                            ; st0 = 0.0
0x0056A5A2: mov      ecx, dword ptr [ecx + 0x40]
0x0056A5A5: fcom     dword ptr [ecx + 0xd54] ; invulnTimer > 0.0 ?
0x0056A5AB: xor      edx, edx
0x0056A5AD: fnstsw   ax
0x0056A5AF: test     ah, 5
0x0056A5B2: jp       0x56a5c7               ; jump if invulnTimer <= 0.0
0x0056A5B4: fcomp    dword ptr [ecx + 0xd50] ; dizzyTimer <= 0.0 ?
0x0056A5BA: fnstsw   ax
0x0056A5BC: test     ah, 1
0x0056A5BF: jne      0x56a5c9               ; jump if dizzyTimer > 0.0
0x0056A5C1: lea      eax, [edx + 1]         ; free attach during non-dizzy invuln!
0x0056A5C4: ret      8
0x0056A5C7: fstp     st(0)
0x0056A5C9: fld1                            ; st0 = 1.0
0x0056A5CB: fcom     dword ptr [ecx + 0xd48] ; chargeGauge (+0xD48) >= 1.0 ?
0x0056A5D1: fnstsw   ax
0x0056A5D3: test     ah, 0x41
0x0056A5D6: jne      0x56a5f7               ; yes -> *outConsumeWhite = 1, return 1
0x0056A5D8: fcomp    dword ptr [ecx + 0xd4c] ; chargeGauge2 (+0xD4C) >= 1.0 ?
0x0056A5DE: fnstsw   ax
0x0056A5E0: test     ah, 0x44
0x0056A5E3: jp       0x56a60b               ; no -> return 0 (attach denied!)
0x0056A5E5: mov      eax, dword ptr [esp + 8]
0x0056A5E9: mov      dword ptr [eax], 1     ; *outConsumeOrange = 1
0x0056A5EF: mov      eax, 1
0x0056A5F4: ret      8
0x0056A5F7: mov      ecx, dword ptr [esp + 4]
0x0056A5FB: fstp     st(0)
0x0056A5FD: mov      dword ptr [ecx], 1     ; *outConsumeWhite = 1
0x0056A603: mov      eax, 1
0x0056A608: ret      8
0x0056A60B: mov      eax, edx               ; return 0
0x0056A60D: ret      8

=== CRotasticPlayer::Update Cooldown Check, Consumption & Recharge (0x0056C52E .. 0x0056D114) ===
0x0056C52E: fld1
0x0056C530: mov      ecx, dword ptr [esi + 0x40]
0x0056C533: fcom     dword ptr [ecx + 0xd48] ; edi = (c1 >= 1.0 || c2 >= 1.0)
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
...
0x0056C61B: push     edi                    ; canAttach flag -> CAttachPointFeedbackProximity
0x0056C61C: push     ecx                    ; player slot
0x0056C61D: mov      ecx, eax
0x0056C61F: call     0x520cf0
0x0056C624: fldz
0x0056C626: mov      ecx, dword ptr [esi + 0x40]
0x0056C629: fcom     dword ptr [ecx + 0xc50] ; skip grapple input if +0xC50 != 0.0
0x0056C636: test     ah, 0x44
0x0056C639: jp       0x56c86b
0x0056C63F: fcomp    dword ptr [ecx + 0xc58] ; skip grapple input if +0xC58 != 0.0
0x0056C647: test     ah, 0x44
0x0056C64A: jp       0x56c86d
...
0x0056C6E2: call     0x56a5a0               ; check invuln || c1 >= 1 || c2 >= 1
0x0056C6E7: test     eax, eax
0x0056C6E9: je       0x56c7de               ; denied -> feedback buzz (0x520dd0), ebx remains 0
0x0056C6EF: cmp      dword ptr [esp + 0x18], ebx
0x0056C6F3: je       0x56c71e
0x0056C6F5: mov      ecx, dword ptr [esi + 0x40]
0x0056C6F8: fldz
0x0056C6FA: fstp     dword ptr [ecx + 0xd48] ; consume c1 (+0xD48 -> 0.0)
...
0x0056C724: mov      ecx, dword ptr [esi + 0x40]
0x0056C727: fldz
0x0056C729: fstp     dword ptr [ecx + 0xd4c] ; or consume c2 (+0xD4C -> 0.0)
...
0x0056C763: mov      ebx, dword ptr [ecx + 0x244] ; ebx = chosen pivot
0x0056C7D4: call     0x520d60               ; CAttachPointFeedback::TriggerAttach
...
; Charge recharge at 0x0056CB26:
;   c1 += dt * 0.58 * (chargeMultiplier + 1) * max(1.0, speed / 450.0) * (dizzy ? 0.55 : 1.0)
;   clamped to [0.0, 1.0]
0x0056CBC4: test     ebx, ebx               ; attach only executes if ebx != 0
0x0056CC13: call     0x56bf50               ; AttachToPivot(ebx)
0x0056CC1A: call     0x56b3d0               ; StepSwinging

=== CPlayerBeamFeedback (0x00535D30 .. 0x005361E6) ===
; Circular cooldown/shield crescent around player bubble using UVMulXYAddZW + TintColor:
0x00535D82: fld      dword ptr [eax + 0xd48] ; c1 = chargeGauge
0x00535D8E: fcom     dword ptr [esp + 8]     ; if c1 >= 1.0 -> full white shield bubble (0.5, 0.5, 0.5, 0.5)
0x00535DA1: fcom     dword ptr [esi + 0x1f8] ; if denyFlashTimer > 0 -> flash white
; Otherwise uses player slot color RGB ([ecx] / 256.0)
; Material uniforms bound in CPlayerBeamFeedback::Init (0x0053617D..0x005361DB):
;   - UVMulXYAddZW = (1.0, 1.0, 0.0, c1 * 0.5) @ 0x00535ECC -> t_beam2_c.png sweep
;   - TintColor = white when full/flashing, player color while recharging (0 < c1 < 1)
; Trigger flash on deny (@ 0x00536030): sets [eax+0x1f8] = simRef[0xAFCE38] * 0.5

=== CAttachPointFeedback / Proximity (0x0052E720..0x0052E835, 0x0052FB20, 0x0052FD20, 0x005301B0) ===
; Pivot quarter-circle indicator per player slot:
;   - Uses UVMulXYAddZW flip flags (+0x1C flipU, +0x1D flipV) placing each slot in its own 90-deg quadrant:
;     Slot 0 = Top-Left, Slot 1 = Top-Right, Slot 2 = Bottom-Left, Slot 3 = Bottom-Right.
;   - At 0x0052FD43: selects active player-colored slice when canAttach == 1, grey/dim slice when canAttach == 0.
;   - CAttachPointFeedback::Update (0x0052FB20): 0.4s scale pulse (1.0 + 0.4 * sin(pi * (1 - t/0.4))) on attach.
;   - CAttachPointFeedbackProximity::Update (0x005301B0): 0.2s fade/expand (1.0 -> 1.5) when leaving proximity.
