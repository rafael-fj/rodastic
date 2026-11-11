; Complete audit of all 28 instruction sites accessing +0xD4C (chargeGauge2)
; in reference/game-files/Rotastic.exe (ImageBase 0x00400000).
;
; Key Player Fields:
;   +0xD48 (float) : chargeGauge c1 (white grapple/shield ring)
;   +0xD4C (float) : chargeGauge2 c2 (0..1 orange heavy-mass / secondary shield bar)
;   +0xD50 (float) : dizzyTimer (1.000s = simRef[0x58])
;   +0xD54 (float) : invulnTimer (1.000s at SPAWN_DROP, 0.500s on shield break)
;   +0xD74 (int32) : isDead flag
;
; IMPORTANT FINDING (Issue #29):
;   Scanning 100% of .text for 0x00000D4C confirms there is NO time-based decay timer
;   for +0xD4C anywhere in Rotastic.exe. Once full (c2 >= 1.0), the orange ring persists
;   until one of the explicit consumption / reset paths below occurs.

=== 1. Initialization & Respawn Reset ===
; Constructor (CRotasticPlayer):
0x00540D43: fst      dword ptr [esi + 0xd4c]      ; c2 = 0.0f
; Reset / SPAWN_DROP (CRotasticPlayer::Reset):
0x00541F5E: fst      dword ptr [esi + 0xd4c]      ; c2 = 0.0f

=== 2. Accumulation (CRotasticPlayerSubcomponents::AddOrangeCharge @ 0x0056AFF0) ===
0x0056AFF0: fldz
0x0056AFF2: mov      ecx, dword ptr [ecx + 0x40]
0x0056AFF5: fcom     dword ptr [ecx + 0xd54]      ; block gain if invulnTimer > 0.0
0x0056AFFB: fnstsw   ax
0x0056AFFD: test     ah, 1
0x0056B000: jne      0x56b062
0x0056B002: fld      dword ptr [ecx + 0xd4c]
0x0056B008: fadd     dword ptr [esp + 4]          ; c2 + delta
0x0056B02B: fstp     dword ptr [ecx + 0xd4c]      ; clamp <= 1.0f
0x0056B059: fstp     dword ptr [ecx + 0xd4c]      ; clamp >= 0.0f
; Direct callers:
;   0x00521D1B : Trick / Combo reward (+delta from trick item)
;   0x00572CF7 : OnKill reward (fld1 -> +1.0f fills c2 to 1.0)

=== 3. Criterion A — Emergency Pivot Attach While White Shield c1 < 1.0 (0x0056A5A0 -> 0x0056C729) ===
; CRotasticPlayerSubcomponents::CanConsumeAttachCharge (0x0056A5A0):
;   invulnTimer > 0 && dizzyTimer <= 0 -> free attach (does not drain c1 or c2)
;   else if c1 >= 1.0 -> *outUseC1 = 1
;   else if c2 >= 1.0 (0x0056A5D8: fcomp dword ptr [ecx + 0xd4c]) -> *outUseC2 = 1
0x0056C6F3: je       0x56c71e
0x0056C6FA: fstp     dword ptr [ecx + 0xd48]      ; consume c1 = 0.0 (fires event 0x992188 -> 0xB1BBFC)
0x0056C71E: cmp      dword ptr [esp + 0x14], ebx
0x0056C722: je       0x56c760
0x0056C727: fldz
0x0056C729: fstp     dword ptr [ecx + 0xd4c]      ; consume c2 = 0.0 (fires event 0x99219C -> 0xB1BC10)
; Event 0xB1BC10 handlers:
;   0x0053E510 (CPlayerUberBeamFeedback2) : fades inner orange beam ([eax+0x1f8])
;   0x0054A380 (Burst Particle Animator)  : plays 0x20-frame c2_attach burst ([esi+0x4c]=2)

=== 4. Criterion B — Deadly Wall / Hazard Shield Absorption (0x00578F30 -> 0x00579243..0x00579488) ===
0x00579243: fld1
0x00579248: fcom     dword ptr [ecx + 0xd48]      ; c1 == 1.0 ?
0x00579259: fcom     dword ptr [ecx + 0xd4c]      ; c2 == 1.0 ?
; If c1 < 1.0 && c2 < 1.0 -> 0x0057937C call 0x5409f0 (KillPlayer)
; Else shield breaks:
0x005793C0: fstp     dword ptr [eax + 0xd48]      ; if c1 >= 1.0: c1 = 0.0 (event 0x9929B0, preserves c2)
0x005793E4: fstp     dword ptr [eax + 0xd4c]      ; else c2 >= 1.0: c2 = 0.0 (event 0x9929C4 -> 0xB1BC0C)
0x00579427: call     0x540520                     ; DetachRope if attached
0x00579435: fld      dword ptr [ecx + 0x58]       ; simRef[0x58] = 1.000s (DIZZY_DURATION_SEC)
0x00579438: fmul     qword ptr [0x97bc30]         ; * 0.5
0x00579446: fstp     dword ptr [eax + 0xd54]      ; invulnTimer = 0.500s
0x00579455: fld      dword ptr [edx + 0x58]
0x00579458: fstp     dword ptr [eax + 0xd50]      ; dizzyTimer = 1.000s (fires stun event 0x992A64!)

=== 5. Criterion C — Projectile / Moving Trap Hit (0x00577A20 -> 0x00577AD1..0x00577D3D) ===
; While attached ([ecx+0x23c] != 0):
;   c1 == 1.0 -> zero c1 (stays attached, no stun)
;   c2 == 1.0 -> zero c2 (0x00577C18, stays attached, no stun)
;   both < 1.0 -> if c1 > 0 zero c1; else zero partial c2 = 0.0 (0x00577B36), detach & stun!
; While unattached ([ecx+0x23c] == 0):
;   c1 == 1.0 -> zero c1
;   c2 == 1.0 -> zero c2 (0x00577CFF)
;   both < 1.0 -> KillPlayer (0x00577C6D -> 0x5409f0)

=== 6. PvP Collision — Weighted Mass Read-Only (0x005780C0 -> 0x00578426..0x00578440) ===
0x00578426: fld      dword ptr [ecx + 0xd4c]      ; mA = 1.0 + 10.0 * c2_A^2
0x00578440: fld      dword ptr [edi + 0xd4c]      ; mB = 1.0 + 10.0 * c2_B^2
; Fires 0x992A50 (heavy impact FX) if m > 1.0; NEVER zeroes attacker's +0xD4C.
; Also read at 0x005772E7 inside knockback impulse helper 0x00577090.

=== 7. Read-Only Observers (HUD / VFX / AI / Trigger Filters) ===
; 0x0056C540 : checks c1 == 1.0 || c2 == 1.0 for shieldReady -> CAttachPointFeedback
; 0x0053D4AD : CPlayerHud bar width/alpha readout
; 0x0053DB6F / 0x0053DBA2 : CPlayerUberBeamFeedback fade state
; 0x0053E311 : CPlayerUberBeamFeedback2 ring aura scale/alpha
; 0x0057CDF2 : AI attach readiness check
; 0x0051AE23 : Flow trigger filter threshold check
; 0x00521F38..0x00521FEF : Player comparator sorting by +0xD4C
