# Fase 1 — Mapa de Código e Arquitetura de Classes (`02-code-map.md`)

> Gerado automaticamente por [`tools/extract/extract-code-map.mjs`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/tools/extract/extract-code-map.mjs) a partir de `reference/game-files/Rotastic.exe`.
> Dump completo em JSON disponível em [`reference/decompiled/rotastic-code-map.json`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/reference/decompiled/rotastic-code-map.json).

## 1. Visão Geral dos Símbolos Extraídos

- **Binário:** `Rotastic.exe` (`ImageBase = 0x00400000`, compilado em `2012-10-09T08:18:09.000Z`)
- **Classes C++ Registradas Mapeadas:** `110` classes (com `sizeof`, `ConstructorVA`, `FactoryVA` e `VTableVA`)
- **Flow Actions (`fa*`) e Flow Functions (`ff*`) Mapeadas:** `510` rotinas de lógica de estado/eventos
- **DLLs Importadas:** `16` (`steam_api.dll` com 17 imports, `WS2_32.dll` com 27 imports)

---

## 2. Mapa de Chamadas de Rede e Steamworks (`steam_api.dll` & `WS2_32.dll`)

| Função (`steam_api.dll`) | Slot IAT | Total Call Sites | Endereços VA em `.text` |
| :--- | :--- | :---: | :--- |
| `SteamAPI_RegisterCallback` | `0x0095B35C` | 9 | `0x006C415D` (call), `0x006C41CD` (call), `0x006C423D` (call), `0x006C42AD` (call), `0x006C431D` (call), `0x006C438D` (call), `0x006C43FD` (call), `0x006C446D` (call), `0x006C44DD` (call) |
| `SteamAPI_RunCallbacks` | `0x0095B360` | 1 | `0x006C36D0` (call) |
| `SteamAPI_Init` | `0x0095B364` | 1 | `0x006C2825` (call) |
| `SteamUser` | `0x0095B368` | 1 | `0x006C2862` (call) |
| `SteamFriends` | `0x0095B36C` | 1 | `0x006C286D` (call) |
| `SteamMatchmaking` | `0x0095B370` | 1 | `0x006C2883` (call) |
| `SteamUserStats` | `0x0095B374` | 1 | `0x006C288E` (call) |
| `SteamApps` | `0x0095B378` | 1 | `0x006C2899` (call) |
| `SteamMatchmakingServers` | `0x0095B37C` | 1 | `0x006C28AF` (call) |
| `SteamRemoteStorage` | `0x0095B380` | 1 | `0x006C28BA` (call) |
| `SteamAPI_Shutdown` | `0x0095B384` | 2 | `0x006C299B` (call), `0x006C3869` (call) |
| `SteamAPI_IsSteamRunning` | `0x0095B388` | 4 | `0x006C016F` (call), `0x006C2F04` (call), `0x006C3CBD` (call), `0x006C3D93` (call) |
| `SteamAPI_RegisterCallResult` | `0x0095B38C` | 8 | `0x006BE14B` (call), `0x006BE2CE` (call), `0x006BEE9B` (call), `0x006BFA05` (call), `0x006BFC36` (call), `0x006C1617` (call), `0x006C17E7` (call), `0x006C1C2C` (call) |
| `SteamAPI_UnregisterCallResult` | `0x0095B390` | 17 | `0x006BDB95` (call), `0x006BDBE7` (call), `0x006BE10C` (call), `0x006BE28F` (call), `0x006BEC65` (call), `0x006BEE5C` (call), `0x006BF6EB` (call), `0x006BF73D` (call), `0x006BF78C` (call), `0x006BF9C6` (call), `0x006BFBF7` (call), `0x006C0FBA` (call), `0x006C100C` (call), `0x006C105B` (call), `0x006C15D8` (call), `0x006C17A8` (call), `0x006C1BED` (call) |
| `SteamNetworking` | `0x0095B394` | 8 | `0x006BD6C9` (call), `0x006BD719` (call), `0x006BD749` (call), `0x006BD769` (call), `0x006BD7DD` (call), `0x006BD81C` (call), `0x006BD8AC` (call), `0x006C28A4` (call) |
| `SteamAPI_UnregisterCallback` | `0x0095B398` | 18 | `0x006B5BA4` (call), `0x006B5BCF` (call), `0x006B5BFA` (call), `0x006BDB55` (call), `0x006BEC25` (call), `0x006C264B` (call), `0x006C266D` (call), `0x006C2D0B` (call), `0x006C2D2D` (call), `0x006C4125` (call), `0x006C4195` (call), `0x006C4205` (call), `0x006C4275` (call), `0x006C42E5` (call), `0x006C4355` (call), `0x006C43C5` (call), `0x006C4435` (call), `0x006C44A5` (call) |
| `SteamUtils` | `0x0095B39C` | 3 | `0x006B594E` (call), `0x006C2878` (call), `0x006C28C5` (call) |

### Call Sites de Winsock2 (`WS2_32.dll`)

| Ordinal / Função | Slot IAT | Call Sites em `.text` |
| :--- | :--- | :--- |
| `Ordinal#151` | `0x0095B2B0` | `0x00916100` |
| `Ordinal#52` | `0x0095B2B4` | `0x00594097` |
| `Ordinal#11` | `0x0095B2B8` | `0x00594417` |
| `Ordinal#12` | `0x0095B2BC` | `0x00594407` |
| `Ordinal#15` | `0x0095B2C0` | `0x005943F8` |
| `Ordinal#14` | `0x0095B2C4` | `0x005943E7` |
| `Ordinal#9` | `0x0095B2C8` | `0x005943D8` |
| `Ordinal#8` | `0x0095B2CC` | `0x005943C7` |
| `Ordinal#6` | `0x0095B2D0` | `0x005943AF` |
| `Ordinal#3` | `0x0095B2D4` | `0x00594397` |
| `Ordinal#22` | `0x0095B2D8` | `0x0059437B` |
| `Ordinal#20` | `0x0095B2DC` | `0x0059435B` |
| `Ordinal#19` | `0x0095B2E0` | `0x00594333` |
| `Ordinal#17` | `0x0095B2E4` | `0x0059430B` |
| `Ordinal#18` | `0x0095B2E8` | `0x005942E6` |
| `Ordinal#1` | `0x0095B2EC` | `0x005942AF` |
| `Ordinal#4` | `0x0095B2F0` | `0x0059428F` |
| `Ordinal#13` | `0x0095B2F4` | `0x0059426B` |
| `Ordinal#2` | `0x0095B2F8` | `0x0059424F` |
| `Ordinal#10` | `0x0095B2FC` | `0x005941E8` |
| `Ordinal#21` | `0x0095B300` | `0x00594227` |
| `Ordinal#7` | `0x0095B304` | `0x005941B3` |
| `Ordinal#23` | `0x0095B308` | `0x0059417F` |
| `Ordinal#115` | `0x0095B30C` | `0x00593EC8` |
| `Ordinal#116` | `0x0095B310` | `0x00593F11`, `0x00593F4B`, `0x0059400C`, `0x00594088`, `0x00594144` |
| `WSAEnumProtocolsA` | `0x0095B314` | `0x00593F29`, `0x00594049` |
| `Ordinal#111` | `0x0095B318` | `0x00593F3E` |

---

## 3. Mapa de Classes C++ por Subsistema

### 3.1. Player & Spawn (23 classes)

| Classe C++ | `sizeof` (bytes) | `ConstructorVA` | `VTableVA` | Métodos Virtuais | `InitReflectionVA` |
| :--- | :---: | :---: | :---: | :---: | :---: |
| `CAIEvalPlayerDeathZoneDistance` | `356` | `0x0054E1D0` | `0x0098D2E8` | 57 | `0x0042D220` |
| `CAIEvalTimeElapsedPlayerInFlyCollision` | `372` | `0x0054FA30` | `0x0098D858` | 57 | `0x0042D9A0` |
| `CAIPlayerController` | `392` | `0x00551650` | `0x0098DDE8` | 54 | `0x0042DFE0` |
| `CPlayerAnimManager` | `448` | `0x00548720` | `0x0098C2F0` | 54 | `0x0042BA60` |
| `CPlayerAnimResource` | `380` | `0x005495C0` | `0x0098C3D0` | 55 | `0x0042BBA0` |
| `CPlayerBeamFeedback` | `520` | `0x00536060` | `0x0098A2D8` | 64 | `0x00428FF0` |
| `CPlayerFXManager` | `360` | `0x005365D0` | `0x0098A3F0` | 54 | `0x00429130` |
| `CPlayerHud` | `548` | `0x0053A0E0` | `0x0098A520` | 54 | `0x00429270` |
| `CPlayerInGameGuiImpact` | `520` | `0x0053B2D0` | `0x0098A708` | 64 | `0x004294F0` |
| `CPlayerInGameGuiOutOfScreen` | `648` | `0x0053C230` | `0x0098A818` | 64 | `0x00429630` |
| `CPlayerInGameGuiTriggered` | `524` | `0x0053CA90` | `0x0098A950` | 64 | `0x00429770` |
| `CPlayerSpawn` | `536` | `0x00511A00` | `0x009836C8` | 64 | `0x004298B0` |
| `CPlayerTrail` | `55952` | `0x0053D080` | `0x0098AA68` | 64 | `0x004299F0` |
| `CPlayerUberBeamFeedback` | `628` | `0x0053DCE0` | `0x0098AC98` | 63 | `0x00429B30` |
| `CPlayerUberBeamFeedback2` | `520` | `0x0053E540` | `0x0098ADB8` | 64 | `0x00429C70` |
| `CRotasticPhysicPlayer` | `112` | `0x0053FC40` | `0x0098B1F8` | 64 | `0x0042A670` |
| `CRotasticPlayer` | `3660` | `0x00541C90` | `0x0098B550` | 64 | `0x0042A7A0` |
| `CRotasticPlayerDeathSphereTrigger` | `360` | `0x0054B790` | `0x0098C800` | 54 | `0x0042BF60` |
| `CRotasticPlayerDeathTrigger` | `368` | `0x00542E50` | `0x0098B658` | 55 | `0x0042A8E0` |
| `CRotasticPlayerIgnoreWallCollisionTrigger` | `388` | `0x005214D0` | `0x009847C8` | 55 | `0x0042C0A0` |
| `CSpawnArea` | `664` | `0x00544BE0` | `0x0098BC08` | 61 | `0x0042AF20` |
| `CSpawnPoint` | `428` | `0x00544FC0` | `0x0098BD00` | 64 | `0x0042B060` |
| `CTrail` | `55900` | `0x00545190` | `0x0098BE20` | 64 | `0x0042B2E0` |

### 3.2. Rope & Swinging Mechanics (17 classes)

| Classe C++ | `sizeof` (bytes) | `ConstructorVA` | `VTableVA` | Métodos Virtuais | `InitReflectionVA` |
| :--- | :---: | :---: | :---: | :---: | :---: |
| `CAIEvalAttachPointDeathZoneDistance` | `356` | `0x0054E040` | `0x0098D200` | 57 | `0x0042D0E0` |
| `CAIEvalAttachPointEnemyProximity` | `356` | `0x0054CDE0` | `0x0098CD78` | 57 | `0x0042CAA0` |
| `CAIEvalAttachPointObjTueurProximity` | `456` | `0x0054C720` | `-` | 0 | `0x0042C820` |
| `CAIEvalAttachPointPickupProximity` | `360` | `0x0054CB60` | `0x0098CC90` | 57 | `0x0042C960` |
| `CAIEvalAttachPointPlayerDropSpeed` | `356` | `0x0054E5C0` | `0x0098D4B8` | 57 | `0x0042D4A0` |
| `CAIEvalAttachPointPlayerRotationSpeed` | `356` | `0x0054E360` | `0x0098D3D0` | 57 | `0x0042D360` |
| `CAIEvalTimeElapsedRopeCut` | `372` | `0x0054FDE0` | `0x0098D940` | 57 | `0x0042DAE0` |
| `CAIEvalTrajectoryAttachPointWithEnemy` | `360` | `0x0054EFE0` | `0x0098D688` | 57 | `0x0042D720` |
| `CAIEvalTrajectoryAttachPointWithPickup` | `360` | `0x0054F350` | `0x0098D770` | 57 | `0x0042D860` |
| `CAttachPoint` | `544` | `0x00521290` | `0x00984678` | 64 | `0x00427BF0` |
| `CAttachPointArkanoidFXManager` | `392` | `0x00530F10` | `0x009897F0` | 54 | `0x00427FB0` |
| `CAttachPointFeedback` | `536` | `0x0052FA30` | `0x00989588` | 64 | `0x00427D30` |
| `CAttachPointFeedbackProximity` | `544` | `0x0052FFE0` | `0x009896A0` | 64 | `0x00427E70` |
| `CPlayerInGameGuiCutRope` | `528` | `0x0053AE40` | `0x0098A600` | 64 | `0x004293B0` |
| `CRotasticRope` | `452` | `0x00542FF0` | `0x0098B788` | 64 | `0x0042AA20` |
| `CRotasticRopeBeam` | `448` | `0x00543C70` | `0x0098B8E0` | 64 | `0x0042AB60` |
| `CRotasticRopeUberBeam` | `448` | `0x00544410` | `0x0098BA08` | 64 | `0x0042ACA0` |

### 3.3. Multiplayer Modes & Match (4 classes)

| Classe C++ | `sizeof` (bytes) | `ConstructorVA` | `VTableVA` | Métodos Virtuais | `InitReflectionVA` |
| :--- | :---: | :---: | :---: | :---: | :---: |
| `C3DPanelGuiMultiTexture` | `516` | `0x00515340` | `0x00983B20` | 64 | `0x00427830` |
| `CModeMultiCollecte` | `832` | `0x005534C0` | `0x0098E37C` | 64 | `0x0042E760` |
| `CModeMultiDeathMatch` | `796` | `0x00534480` | `0x0098A07C` | 64 | `0x00428D70` |
| `CRotasticEndMulti` | `920` | `0x00528780` | `0x00984DD0` | 54 | `0x0042A2B0` |

### 3.4. Physics, Hazards & Arena Objects (25 classes)

| Classe C++ | `sizeof` (bytes) | `ConstructorVA` | `VTableVA` | Métodos Virtuais | `InitReflectionVA` |
| :--- | :---: | :---: | :---: | :---: | :---: |
| `CAIEvalTrajectoryObjTueurProximity` | `460` | `0x0054ED90` | `-` | 0 | `0x0042D5E0` |
| `CArkanoidBrick` | `452` | `0x0052F190` | `0x00989320` | 64 | `0x00427970` |
| `CArkanoidBrickFXOnHit` | `364` | `0x0052F5B0` | `0x009894A8` | 54 | `0x00427AB0` |
| `CBreakableObject` | `468` | `0x0051BB90` | `0x00984198` | 64 | `0x004280F0` |
| `CBreakableObjectFXManager` | `364` | `0x00531090` | `0x009898D0` | 54 | `0x00428230` |
| `CBreakableObjectFXOnHit` | `364` | `0x00531CD0` | `0x009899B0` | 54 | `0x00428370` |
| `CBreakableObjectGaugeDebug` | `528` | `0x00532340` | `0x00989AA0` | 64 | `0x004284B0` |
| `CGameModeSoloActivateBreakableHud` | `376` | `0x00556B60` | `0x0098EED8` | 54 | `0x0042F7A0` |
| `CGameModeSoloActivateSwitchHud` | `376` | `0x00556FA0` | `0x0098EFC0` | 54 | `0x0042F8E0` |
| `CGameModeSoloArkanoidHud` | `376` | `0x005573D0` | `0x0098F0A8` | 54 | `0x0042FA20` |
| `CGravityVortex` | `428` | `0x005068A0` | `0x00982D78` | 64 | `0x00428AF0` |
| `CMecaSwitchObject` | `408` | `0x005114F0` | `0x009835D0` | 54 | `0x0042E3A0` |
| `CMecaSwitchObjectFXOnActivation` | `364` | `0x00552C60` | `0x0098E088` | 54 | `0x0042E4E0` |
| `CProjectile` | `456` | `0x0053F5C0` | `0x0098AEC0` | 64 | `0x00429DB0` |
| `CProjectileFXOnImpact` | `364` | `0x0053F8C0` | `0x0098B038` | 55 | `0x00429EF0` |
| `CRotasticGameModeArkanoid` | `2068` | `0x0053FAF0` | `0x0098B118` | 54 | `0x0042A530` |
| `CRotasticGameModeSoloActivateBreakable` | `376` | `0x00554EC0` | `0x0098E5F8` | 55 | `0x0042EB20` |
| `CRotasticGameModeSoloActivateSwitch` | `376` | `0x00554C50` | `0x0098E4E8` | 55 | `0x0042E9E0` |
| `CRotasticGameModeSoloArkanoid` | `372` | `0x005550E0` | `0x0098E6D8` | 55 | `0x0042EC60` |
| `CRotasticWarpZone` | `448` | `0x0051A4A0` | `0x00984078` | 64 | `0x0042C1E0` |
| `CSwitchObject` | `500` | `0x00514040` | `0x009837F0` | 64 | `0x0042B1A0` |
| `CTueur_LanceProjectile` | `500` | `0x00509360` | `0x00982E90` | 64 | `0x0042B560` |
| `CTueur_LanceProjectileFXOnLaunch` | `364` | `0x005476C0` | `0x0098C088` | 54 | `0x0042B6A0` |
| `CWall` | `424` | `0x00507D50` | `0x0098F5E0` | 64 | `0x0042B7E0` |
| `CWallWithFx` | `436` | `0x00547B10` | `0x0098C168` | 64 | `0x0042B920` |

### 3.5. Pickups & Scoring Items (1 classes)

| Classe C++ | `sizeof` (bytes) | `ConstructorVA` | `VTableVA` | Métodos Virtuais | `InitReflectionVA` |
| :--- | :---: | :---: | :---: | :---: | :---: |
| `CPickUp` | `492` | `0x005354E0` | `0x0098A1A0` | 64 | `0x00428EB0` |

### 3.6. AI & Bots (11 classes)

| Classe C++ | `sizeof` (bytes) | `ConstructorVA` | `VTableVA` | Métodos Virtuais | `InitReflectionVA` |
| :--- | :---: | :---: | :---: | :---: | :---: |
| `CAIEvalPickupCountActive` | `356` | `0x00550110` | `0x0098DA28` | 57 | `0x0042DC20` |
| `CAIEvalTimeElapsedAttach` | `372` | `0x0054D6B0` | `0x0098CF48` | 57 | `0x0042CD20` |
| `CAIEvalTimeElapsedFlying` | `376` | `0x0054D950` | `0x0098D030` | 57 | `0x0042CE60` |
| `CAIEvalTrajectoryDeathZoneDistanceDelta` | `360` | `0x0054D0F0` | `0x0098CE60` | 57 | `0x0042CBE0` |
| `CAIEvalTrajectoryPickupProximity` | `456` | `0x0054DD70` | `-` | 0 | `0x0042CFA0` |
| `CAIFixedInput` | `356` | `0x0054B9C0` | `0x0098CAA8` | 57 | `0x0042C6E0` |
| `CAIFuzzyInput` | `348` | `0x005501D0` | `0x0098DB10` | 57 | `0x0042DD60` |
| `CAIGenericInput` | `348` | `0x0054B930` | `0x0098C9C0` | 57 | `0x0042C5A0` |
| `CAIStartLevelDoor` | `416` | `0x005528A0` | `0x0098DFA8` | 54 | `0x0042E260` |
| `CAIWorldView` | `468` | `0x00551CB0` | `0x0098DEC8` | 54 | `0x0042E120` |
| `CRotasticFuzzyModel` | `484` | `0x00550D50` | `0x0098DBF8` | 57 | `0x0042DEA0` |

### 3.7. UI, HUD & Camera (9 classes)

| Classe C++ | `sizeof` (bytes) | `ConstructorVA` | `VTableVA` | Métodos Virtuais | `InitReflectionVA` |
| :--- | :---: | :---: | :---: | :---: | :---: |
| `C3DPanelGui` | `508` | `0x0052E5F0` | `0x00989208` | 64 | `0x004276F0` |
| `CDebugMenuAccessor` | `348` | `0x00532990` | `0x00989BB0` | 54 | `0x004285F0` |
| `CDebugWorldSelectionMenu` | `1396` | `0x00532EA0` | `0x00989CD0` | 54 | `0x00428730` |
| `CGameModeSoloCollectPickupHud` | `376` | `0x00556720` | `0x0098EDF0` | 54 | `0x0042F660` |
| `CGameModeSoloMakeFragHud` | `376` | `0x005562E0` | `0x0098ED08` | 54 | `0x0042F520` |
| `CGameModeSoloMakeScoreHud` | `376` | `0x00555EA0` | `0x0098EC20` | 54 | `0x0042F3E0` |
| `CGameModeSoloSurvivalHud` | `364` | `0x00557810` | `0x0098F188` | 54 | `0x0042FB60` |
| `CGameModeSoloTricksHud` | `376` | `0x00557B10` | `0x0098F268` | 54 | `0x0042FCA0` |
| `CRotasticCamera` | `400` | `0x00514400` | `0x00983A28` | 60 | `0x0042A030` |

### 3.9. Core Engine & Misc (20 classes)

| Classe C++ | `sizeof` (bytes) | `ConstructorVA` | `VTableVA` | Métodos Virtuais | `InitReflectionVA` |
| :--- | :---: | :---: | :---: | :---: | :---: |
| `CDebugDeathInput` | `440` | `0x00553060` | `0x0098E168` | 64 | `0x0042E620` |
| `CEventManager` | `400` | `0x0051CC80` | `0x00984458` | 55 | `0x00428870` |
| `CFBehaviourProp` | `176` | `-` | `-` | 0 | `0x0086E770` |
| `CGauge` | `1476` | `0x005334D0` | `0x00989DB8` | 64 | `0x004289B0` |
| `CManagedEvent` | `416` | `0x005339D0` | `0x00989EF8` | 55 | `0x00428C30` |
| `CRotasticBeamEffect` | `2276` | `0x00549890` | `0x0098C4C8` | 55 | `0x0042BCE0` |
| `CRotasticEmpty` | `424` | `0x00558640` | `0x0098F6E8` | 64 | `0x00430060` |
| `CRotasticEndSolo` | `372` | `0x0050E820` | `0x00983380` | 54 | `0x0042A3F0` |
| `CRotasticGameModeSoloCollectPickup` | `376` | `0x00555490` | `0x0098E7F0` | 55 | `0x0042EDA0` |
| `CRotasticGameModeSoloGeneric` | `360` | `0x005225D0` | `0x00984910` | 55 | `0x0042E8A0` |
| `CRotasticGameModeSoloMakeFrag` | `372` | `0x00555950` | `0x0098EA00` | 55 | `0x0042F020` |
| `CRotasticGameModeSoloMakeScore` | `372` | `0x00555740` | `0x0098E8F8` | 55 | `0x0042EEE0` |
| `CRotasticGameModeSoloSurvival` | `388` | `0x00555B70` | `0x0098EB38` | 55 | `0x0042F160` |
| `CRotasticGameModeSoloTricks` | `376` | `0x0052A190` | `0x00984ED8` | 55 | `0x0042F2A0` |
| `CRotasticIntroductionGeneric` | `548` | `0x0050D1F0` | `0x00983278` | 62 | `0x0042A170` |
| `CRotasticRefPoint` | `348` | `0x0054B7D0` | `0x0098C800` | 54 | `0x0042C320` |
| `CRotasticRefPointFxHolder` | `360` | `0x0054B860` | `0x0098C8E0` | 55 | `0x0042C460` |
| `CRotasticTestAnim` | `428` | `0x0054B460` | `0x0098C610` | 64 | `0x0042BE20` |
| `CRotasticTimer` | `420` | `0x0050FB60` | `0x00983480` | 54 | `0x0042ADE0` |
| `CTrickEffect` | `6496` | `0x00546A20` | `0x0098BF40` | 55 | `0x0042B420` |

---

## 4. Flow Actions (`fa*`) e Flow Functions (`ff*`) Relevantes ao Gameplay, Física e Rede

| Nome | Tipo | Hash BlitzTech | `ExecuteVA` / `VTableVA` | `FactoryVA` / `GetNameVA` |
| :--- | :--- | :---: | :---: | :---: |
| `faActivateGravityVortex` | FlowAction | `0xB1727313` | `0x00506840` | `0x00416030` |
| `faActivateGravityVortexDeathTrigger` | FlowAction | `0x70D7CB94` | `0x00506890` | `0x004160C0` |
| `faAIAttachPlayer` | FlowAction | `0x773BAE34` | `0x0040AF80` | `0x00415C10` |
| `faAICollectPickup` | FlowAction | `0xBCD12723` | `0x0040B130` | `0x00415DE0` |
| `faAIDropPlayer` | FlowAction | `0xC6A4B0AD` | `0x0040B1C0` | `0x00415E70` |
| `faAttachPointActive` | FlowAction | `0x06D80E37` | `0x00520E40` | `0x004161E0` |
| `faBreakableObjectActive` | FlowAction | `0x60585776` | `0x0051BA80` | `0x00416270` |
| `faChangeWallSpecificities` | FlowAction | `0xF4D26926` | `0x00507D80` | `0x00416320` |
| `faDesactiveAIPlayer` | FlowAction | `0x719F35D5` | `0x00510750` | `0x004163B0` |
| `faFramework_Enrolment_RerollNewPlayer` | FlowAction | `0xD6422C74` | `0x004F46B0` | `0x00440CE0` |
| `faFramework_Enrolment_RerollPlayer` | FlowAction | `0xBA15DBCC` | `0x004F4780` | `0x00440E40` |
| `faFramework_Menu_OnlineButtonErrorAccept` | FlowAction | `0xC8245A39` | `0x004F6FB0` | `0x00444600` |
| `faFramework_Menu_OnlineButtonErrorCancel` | FlowAction | `0xDCBA67D7` | `0x004F6FC0` | `0x004446D0` |
| `faFramework_Menu_OnlineButtonPrimaryCancel` | FlowAction | `0xCA1EE75E` | `0x004F6E00` | `0x004447A0` |
| `faFramework_Menu_OnlineButtonPrimarySelect` | FlowAction | `0x6BADE44F` | `0x004F6D80` | `0x00444870` |
| `faFramework_Menu_OnlineButtonSecondaryCancel` | FlowAction | `0x001E0604` | `0x004F6F30` | `0x00444940` |
| `faFramework_Menu_OnlineButtonSecondarySelect` | FlowAction | `0xA1AD0515` | `0x004F6EB0` | `0x00444A20` |
| `faFramework_Menu_StartOnlineGame` | FlowAction | `0xC8BAC0EF` | `0x004F5EA0` | `0x00445380` |
| `faFramework_Menu_StartOnlineMenus` | FlowAction | `0x918B439C` | `0x004F6D40` | `0x00445450` |
| `faFramework_MenuComponent_LeaderboardDisplay_SetProperties` | FlowAction | `0x7D2D102A` | `0x004F59A0` | `0x00442460` |
| `faFramework_Online_AcceptInvitation` | FlowAction | `0x0912A141` | `0x008ADAE0` | `0x00445CD0` |
| `faFramework_Online_JoinGame_FromIndex` | FlowAction | `0xF5BCF10E` | `0x004F8710` | `0x00445E50` |
| `faFramework_Online_KickUserFromLobby` | FlowAction | `0x05B53020` | `0x004F88E0` | `0x00445FD0` |
| `faFramework_Online_RefreshMatchList` | FlowAction | `0xA143E9CF` | `0x004F8680` | `0x004460A0` |
| `faFramework_Online_ReviewGamer` | FlowAction | `0x7C55E763` | `0x004F8530` | `0x00446200` |
| `faFramework_Online_SendInvitation` | FlowAction | `0x86D9B7A6` | `0x004F8860` | `0x004462D0` |
| `faFramework_Online_SetMatchType` | FlowAction | `0x45DF55C3` | `0x008ADAE0` | `0x00446450` |
| `faFramework_Online_SetPrivateSlots` | FlowAction | `0x37C430A7` | `0x004F85C0` | `0x004465F0` |
| `faFramework_Online_ShowCommunity` | FlowAction | `0xFFB32E18` | `0x004F8240` | `0x004466C0` |
| `faFramework_Online_ShowFriendsList` | FlowAction | `0x7881EC56` | `0x004F81C0` | `0x00446790` |
| `faFramework_Online_ShowGamerCard` | FlowAction | `0xDE65233D` | `0x004F82C0` | `0x00446900` |
| `faFramework_Online_ShowGamerCard_FromIndex` | FlowAction | `0x29C8C98E` | `0x004F83C0` | `0x00446A70` |
| `faGameManagerSetGameEnd` | FlowAction | `0xCEE39BB0` | `0x0050EED0` | `0x00416440` |
| `faGameManagerSetIntroductionEnd` | FlowAction | `0xD6BCB941` | `0x0050D690` | `0x004164D0` |
| `faIgnoreWalllCollisionTriggerActive` | FlowAction | `0x01552F4F` | `0x005214F0` | `0x00416560` |
| `faLanceProjectileActive` | FlowAction | `0x2643C0C6` | `0x00509110` | `0x00416600` |
| `faLanceProjectileActiveAutoAim` | FlowAction | `0xD47BE61D` | `0x00509180` | `0x00416690` |
| `faLanceProjectileSetFeedbackDelay` | FlowAction | `0x868AAD22` | `0x00509320` | `0x00416730` |
| `faLanceProjectileSetTarget` | FlowAction | `0x74121577` | `0x0040B9F0` | `0x004167E0` |
| `faLanceProjectileSetTargetNode` | FlowAction | `0x0C117E38` | `0x00509220` | `0x00416890` |
| `faLanceProjectileSetTargetType` | FlowAction | `0xF2D97A90` | `0x005091C0` | `0x00416930` |
| `faLanceProjectileShoot` | FlowAction | `0xA89A43DB` | `0x005092A0` | `0x004169D0` |
| `faLaunchCanonBall` | FlowAction | `0x863E8E6E` | `0x00518A20` | `0x00416A80` |
| `faMecaSwitchObjectActive` | FlowAction | `0xC3FDD9BE` | `0x00511470` | `0x00416B10` |
| `faMecaSwitchObjectResetState` | FlowAction | `0x9EF67DBC` | `0x00511490` | `0x00416BA0` |
| `faMecaSwitchObjectSetDecreaseObjective` | FlowAction | `0x3877F256` | `0x005114D0` | `0x00416C30` |
| `faMecaSwitchObjectSetState` | FlowAction | `0x09EAF2AA` | `0x005114B0` | `0x00416CC0` |
| `faNotifyPlayerDeath` | FlowAction | `0x70C5B9C4` | `0x005106D0` | `0x00416F10` |
| `faPlayerAllowInputForSpawn` | FlowAction | `0x577C2A96` | `0x005106F0` | `0x00416FA0` |
| `faPlayerDetachFromGlueWall` | FlowAction | `0xC455E44C` | `0x00510730` | `0x00417030` |
| `faReplicateNode` | FlowAction | `0x1D8D9ECB` | `0x00816410` | `0x00845430` |
| `faResetPickUpEnContinue` | FlowAction | `0x1467782B` | `0x0051CA50` | `0x004172F0` |
| `faResetPickups` | FlowAction | `0x731AB766` | `0x00510450` | `0x00417380` |
| `faRotastic_ForceActiveInGame` | FlowAction | `0xB26E2222` | `0x005100A0` | `0x00418F40` |
| `faRotastic_MenuComponent_SetButtonMappings` | FlowAction | `0x2CB88EE8` | `0x00510060` | `0x00419030` |
| `faRotastic_MenuPage_ExitToLobbyOrModeFree` | FlowAction | `0x9D6A9832` | `0x00516980` | `0x004190B0` |
| `faRotastic_MenuPage_ModeFree_ExitToModeFree` | FlowAction | `0x9D04CA7C` | `0x00502C00` | `0x00419170` |
| `faRotastic_MenuPage_ModeFree_RequestNextLevel` | FlowAction | `0xFFDF6F44` | `0x00504290` | `0x00419230` |
| `faRotastic_MenuPage_ModeFree_RetryCurrentLevel` | FlowAction | `0x4C1FA1D1` | `0x00502BE0` | `0x004192F0` |
| `faRotastic_MenuPage_MoveToPage` | FlowAction | `0xB43576AB` | `0x0050E8F0` | `0x004193D0` |
| `faRotastic_MenuPage_ScreenSize_ApplyCustomViewport` | FlowAction | `0x805FE892` | `0x00518F40` | `0x00419450` |
| `faRotastic_MenuPage_ScreenSize_SaveNewSettings` | FlowAction | `0x20A6D9BE` | `0x00518F20` | `0x00419510` |
| `faRotastic_MenuPage_ScreenSize_SetFirstUserConfiguration` | FlowAction | `0x33D3FF3B` | `0x00518F80` | `0x004195D0` |
| `faRotastic_Multi_ResetScores` | FlowAction | `0xF00C5A90` | `0x0050BF40` | `0x00419690` |
| `faRotastic_RessetSession` | FlowAction | `0x09FF0C7A` | `0x0051E4A0` | `0x00419750` |
| `faRotasticAcknowledgeStartVideo` | FlowAction | `0x00D8B4A3` | `0x0050FFE0` | `0x00417400` |
| `faRotasticChangeLoopFlag` | FlowAction | `0x0D76ED4E` | `0x0050FFD0` | `0x004174C0` |
| `faRotasticDisplayBgOnly` | FlowAction | `0x0DE5A31A` | `0x005146A0` | `0x00417580` |
| `faRotasticForceMovementToStop` | FlowAction | `0x10FA00F5` | `0x0050CA30` | `0x00417650` |
| `faRotasticMaterialAlterAlpha` | FlowAction | `0xB70F5D35` | `0x005076D0` | `0x004176F0` |
| `faRotasticMaterialPause` | FlowAction | `0x352CFD8D` | `0x00507970` | `0x00417790` |
| `faRotasticMaterialStop` | FlowAction | `0xF5FEBF3F` | `0x005078F0` | `0x00417820` |
| `faRotasticMaterialTranslateUV` | FlowAction | `0x2F756E9C` | `0x005077A0` | `0x004178D0` |
| `faRotasticMaterialUpdate` | FlowAction | `0x1E370BBB` | `0x00507870` | `0x00417960` |
| `faRotasticMoveToPosition` | FlowAction | `0xD76B4496` | `0x0050C390` | `0x00417A10` |
| `faRotasticMoveToPositionOffset` | FlowAction | `0x7ED1A2C2` | `0x0050C4C0` | `0x00417AC0` |
| `faRotasticPauseAudioStream` | FlowAction | `0xA3727019` | `0x00506F50` | `0x00417B40` |
| `faRotasticPauseMovement` | FlowAction | `0x58E8C23F` | `0x0050CA70` | `0x00417C20` |
| `faRotasticPlayAudioStream` | FlowAction | `0x5B238629` | `0x00506E90` | `0x00417CA0` |
| `faRotasticPlaySoundEffect` | FlowAction | `0x45CC1D02` | `0x0051BF50` | `0x00417D60` |
| `faRotasticPlaySoundEmitter` | FlowAction | `0xB9EA0DF1` | `0x00507060` | `0x00417E30` |
| `faRotasticPlaySoundEmitterPositional` | FlowAction | `0x837DB405` | `0x00507220` | `0x00417EE0` |
| `faRotasticPlaySoundPositional` | FlowAction | `0x07C9378D` | `0x00507140` | `0x00417F80` |
| `faRotasticRotateToAngle` | FlowAction | `0xD4ECD4C1` | `0x0050C630` | `0x00418030` |
| `faRotasticRotateToAngleOffset` | FlowAction | `0x9A862679` | `0x0050C770` | `0x004180E0` |
| `faRotasticSetMaterialConstVector` | FlowAction | `0xEEB6A09B` | `0x00507A00` | `0x00418260` |
| `faRotasticSetMaterialPixelConstFloat` | FlowAction | `0x9CDDBE5A` | `0x00507BB0` | `0x00418310` |
| `faRotasticShake` | FlowAction | `0xC5AEEC8C` | `0x0050C8F0` | `0x004183D0` |
| `faRotasticStartSoundEmitterPositional` | FlowAction | `0xB0DD366B` | `0x005074C0` | `0x004186B0` |
| `faRotasticStartSoundPositional` | FlowAction | `0x15B1F551` | `0x005073B0` | `0x00418760` |
| `faRotasticStartSpeakerSoundEvent` | FlowAction | `0xA6AB7D7F` | `0x00506E30` | `0x004187E0` |
| `faRotasticStopAudioStream` | FlowAction | `0x7BC9BBC9` | `0x00506EF0` | `0x004188A0` |
| `faRotasticStopSound` | FlowAction | `0xF7278B5F` | `0x00506D80` | `0x00418960` |
| `faRotasticStopSoundEmitter` | FlowAction | `0xCBF45B11` | `0x005075F0` | `0x00418A30` |
| `faRotasticStopSoundsById` | FlowAction | `0x893D02DE` | `0x00506FF0` | `0x00418AB0` |
| `faRotasticStopVideoGroup` | FlowAction | `0x4A2ECDE7` | `0x00510070` | `0x00418B70` |
| `faRotasticTimerPause` | FlowAction | `0x9CB14C01` | `0x0050FE40` | `0x00418C40` |
| `faRotasticTimerReset` | FlowAction | `0xCBDAC67E` | `0x0050FE70` | `0x00418CE0` |
| `faRotasticTimerStart` | FlowAction | `0x900B62F0` | `0x0050FEA0` | `0x00418D70` |
| `faRotasticUnpauseAudioStream` | FlowAction | `0xF21D2096` | `0x00506FA0` | `0x00418DF0` |
| `faRotasticUpdateMovements` | FlowAction | `0x2A68F077` | `0x0050C9F0` | `0x00418EC0` |
| `faSetAngularVelocity` | FlowAction | `0x37A9BCDC` | `0x00817DF0` | `0x008463E0` |
| `faSetDefaultSpawnPoint` | FlowAction | `0xC2EE2BF6` | `0x00512B60` | `0x00419820` |
| `faSetGravityMultiplier` | FlowAction | `0x56961288` | `0x00818280` | `0x00846E40` |
| `faSetGravityVortexAttractionForce` | FlowAction | `0x2CA37799` | `0x00506850` | `0x004198C0` |
| `faSetMaterialFriction` | FlowAction | `0x5BB959FC` | `0x008185B0` | `0x00847930` |
| `faSetStandardGravityForce` | FlowAction | `0x2476C213` | `0x00506880` | `0x00419960` |
| `faSetVelocity` | FlowAction | `0xAC3CC07E` | `0x00819730` | `0x00849C20` |
| `faSetWallBouncingCoef` | FlowAction | `0x365D4610` | `0x00507E10` | `0x00419A00` |
| `faSpawnAllPickUpOfColor` | FlowAction | `0x7A7FBD92` | `0x00510520` | `0x00419B60` |
| `faSpawnAllPickups` | FlowAction | `0xC4B22B2F` | `0x00510160` | `0x00419C00` |
| `faSpawnPickUpEnContinue` | FlowAction | `0x138490F2` | `0x0051C710` | `0x00419CB0` |
| `faSpawnPlayer` | FlowAction | `0x4E2E5D41` | `0x00510710` | `0x00419D40` |
| `faSpawnRandomPickups` | FlowAction | `0x9BB0B75D` | `0x005102A0` | `0x00419DE0` |
| `faSwitchObjectActive` | FlowAction | `0x88E3B3B3` | `0x00513FC0` | `0x00419F00` |
| `faSwitchObjectResetState` | FlowAction | `0xBB768133` | `0x00513FE0` | `0x00419F90` |
| `faSwitchObjectSetDecreaseObjective` | FlowAction | `0x1204C6C2` | `0x00514020` | `0x0041A020` |
| `faSwitchObjectSetState` | FlowAction | `0xAA9DF91D` | `0x00514000` | `0x0041A0B0` |
| `faSwitchOffEffect` | FlowAction | `0xC6F62A08` | `0x0081BE10` | `0x0084ABB0` |
| `faSwitchOnEffect` | FlowAction | `0x1D23ADD2` | `0x0081BE60` | `0x0084AD20` |
| `faUpdateCanonAngle` | FlowAction | `0x177CB728` | `0x0051BF70` | `0x0041A280` |
| `faUpdateCanonPower` | FlowAction | `0x16438595` | `0x0051C1B0` | `0x0041A310` |
| `faWarpZoneActive` | FlowAction | `0x77214269` | `0x0051ABC0` | `0x0041A440` |
| `ffAttachPointTestAnyPlayerIsAttach` | FlowFunction | `0x00F38702` | `0x00520E60` | `0x00414C30` |
| `ffAttachPointTestAnyPlayerTurnCount` | FlowFunction | `0xAF15320D` | `0x00520E90` | `0x00414CC0` |
| `ffAttachPointTestPlayerDistance` | FlowFunction | `0x83C83550` | `0x00520F70` | `0x00414D60` |
| `ffAttachPointTestPlayerIsAttach` | FlowFunction | `0x80D8889B` | `0x00521170` | `0x00414E00` |
| `ffAttachPointTestPlayerTurnCount` | FlowFunction | `0xED164BE3` | `0x005211B0` | `0x00414EA0` |
| `ffBreakableObjectTestLifePoint` | FlowFunction | `0x716E68A3` | `0x0051BAA0` | `0x00414F30` |
| `ffCanonFullyCharged` | FlowFunction | `0x84262584` | `0x00521A90` | `0x00414FB0` |
| `ffFramework_HCI_AreEnroledPlayersAvailable` | FlowFunction | `0x0F388FF2` | `0x00467EF0` | `0x004482B0` |
| `ffFramework_HCI_AreIdentifiedPlayersAvailable` | FlowFunction | `0x44C73DFE` | `0x00467EF0` | `0x00448440` |
| `ffFramework_IsOnlineGameQuickMatch` | FlowFunction | `0x30B60349` | `0x004FC0C0` | `0x004494A0` |
| `ffGameManagerIsEndMulti` | FlowFunction | `0x53FBCC5D` | `0x00528460` | `0x00409D90` |
| `ffGameManagerIsGameInIntroduction` | FlowFunction | `0xFDCC8528` | `0x0050D890` | `0x00415030` |
| `ffGameManagerIsGameRunning` | FlowFunction | `0xBFE79E0D` | `0x0050D780` | `0x004150B0` |
| `ffIsPlayerAttached` | FlowFunction | `0xF5EEC5F0` | `0x00521800` | `0x00409F20` |
| `ffIsPlayerFromTeamAttached` | FlowFunction | `0xDF128E30` | `0x00521A20` | `0x00415150` |
| `ffMecaSwitchObjectTestState` | FlowFunction | `0xD188B3BE` | `0x00511450` | `0x004151D0` |
| `ffPickUpPickedUp` | FlowFunction | `0xA924B291` | `0x00521890` | `0x0040A130` |
| `ffPickUpWaveCleared` | FlowFunction | `0x8009C28C` | `0x005219D0` | `0x004152D0` |
| `ffRotastic_IsEndScreenDisplayed` | FlowFunction | `0x4916AFCF` | `0x0050E760` | `0x0040AB10` |
| `ffRotastic_IsFirstUserConfiguration` | FlowFunction | `0xEDE5B053` | `0x00518F60` | `0x0040ABA0` |
| `ffRotastic_IsKeyPressed` | FlowFunction | `0x859CF77A` | `0x00527640` | `0x0040AC30` |
| `ffRotastic_IsSoloScoreDisplayed` | FlowFunction | `0xA09762D6` | `0x00522D70` | `0x0040ACC0` |
| `ffRotasticCollisionTestInCollision` | FlowFunction | `0x44A9941D` | `0x00529F10` | `0x004153D0` |
| `ffRotasticGameModeSoloTricksTestTricksProgression` | FlowFunction | `0x2E1BF894` | `0x0052A3D0` | `0x00415450` |
| `ffRotasticHasVideoEnded` | FlowFunction | `0x79FDBCB4` | `0x00510000` | `0x0040A600` |
| `ffRotasticMovementIsMovingTo` | FlowFunction | `0xDA84D145` | `0x0050CAB0` | `0x004154D0` |
| `ffRotasticMovementIsRotating` | FlowFunction | `0xF6DC042B` | `0x0050CAF0` | `0x00415550` |
| `ffRotasticMovementIsShaking` | FlowFunction | `0x0016FCD7` | `0x0050CB30` | `0x004155D0` |
| `ffRotasticPlayerComparePickup` | FlowFunction | `0xB9E047D8` | `0x005106B0` | `0x00415660` |
| `ffRotasticPlayerCompareScore` | FlowFunction | `0x4936494A` | `0x005106C0` | `0x004156F0` |
| `ffRotasticPlayerFirstSpawnDone` | FlowFunction | `0x4FBF731F` | `0x005107A0` | `0x00415770` |
| `ffRotasticPlayerIsWaitingRespawn` | FlowFunction | `0x944038ED` | `0x005107C0` | `0x004157F0` |
| `ffRotasticTimerCompareElapsedTime` | FlowFunction | `0xECBED2CE` | `0x0050FEC0` | `0x00415880` |
| `ffRotasticTriggerTestInZone` | FlowFunction | `0x7C1FFC72` | `0x00528120` | `0x00415910` |
| `ffSwitchObjectTestState` | FlowFunction | `0x20181B41` | `0x00513FA0` | `0x00415990` |
