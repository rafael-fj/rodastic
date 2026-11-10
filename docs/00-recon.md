# Fase 0 — Reconhecimento Técnico (`00-recon.md`)

- **Alvo:** Rotastic (Steam PC Release — Focus Home Interactive / Dancing Dots)
- **Diretório original inspecionado:** `C:\Program Files (x86)\Steam\steamapps\common\Rotastic`
- **Data da compilação do executável (`TimeDateStamp`):** `2012-10-09 08:18:09 UTC`
- **Tamanho total da instalação:** `944.66 MB` (`484` arquivos)

---

## 1. Identificação da Engine e Arquitetura Binária

Ao contrário de jogos indie mais recentes em Unity/Mono/IL2CPP, o **Rotastic** foi construído sobre a engine proprietária multiplataforma **BlitzTech** (desenvolvida pela *Blitz Games Studios* e licenciada pela *Dancing Dots*).

| Propriedade | Valor Confirmado | Evidência |
| :--- | :--- | :--- |
| **Engine** | **BlitzTech Engine** (C++ Nativo) | Pacote `w_bootload_bs_03_blitztech.pc`, mutex `BlitzTechAppInstanceMutex`, namespaces `blitztech::engine::*` e `blitztech::framework::*`, cache `$TempDir\BlitzTechSessionCache` em `packages/envvars.PC` |
| **Binário Principal** | `Rotastic.exe` (`7.09 MB` / `7,436,288 bytes`) | PE32 (`x86` 32-bit), `ImageBase = 0x00400000`, 4 seções padrão (`.text`, `.rdata`, `.data`, `.rsrc`) |
| **Packer / Ofuscação** | **Nenhum (Unpacked)** | Seções `.text` (`5.35 MB`) e `.rdata` (`1.59 MB`) limpas, strings e tabelas de reflexão em texto claro |
| **Caminho original do PDB** | `c:\Rotastic\RotasticCode\Game\Binaries\PC\Rotastic.pdb` | String no diretório de debug PE (`.rdata`). Também há referência a `C:\Rotastic\RotasticCode\Game\binaries\PC\Rotastic_D.exe` em `packages/envvars.PC` |
| **Renderização** | Direct3D 9 (`d3d9.dll` + `d3dx9_42.dll`), Shaders HLSL `vs_3_0` / `ps_3_0` | Imports PE e `Microsoft (R) HLSL Shader Compiler 9.29.952.3111` dentro dos `.pc` |
| **Áudio** | FMOD (`fmodmultithreaded`, `fmodnet`) + DirectSound (`DSOUND.dll`) | Strings de subsistema de áudio e imports PE |
| **Vídeo** | Ogg Theora (`videos/*.ogv`, `TheoraWrite`) + Bink (`binkw32.dll` string de fallback) | 15 vídeos `.ogv` em `videos/` |
| **Input** | XInput (`XINPUT1_3.dll`) + DirectInput 8 (`DINPUT8.dll`) | Suporte nativo a 4 controles locais + mapeamento de teclado (`pcpadmapping`) |
| **Scripting / Fluxo** | Sistema de Entidades/Comportamentos/StateMachine BlitzTech + `blitztech::lua::BehaviourLua` | `useCompactScriptFormat="1"`, `useBinaryScriptFormat="1"`, `CFStateMachine`, Flow Actions (`fa*`) e Flow Functions (`ff*`) |

---

## 2. Descoberta Crítica: Sistema de Reflexão e Símbolos Internos da BlitzTech

Embora o PDB (`Rotastic.pdb`) não seja distribuído na Steam e o RTTI do MSVC esteja habilitado para apenas 3 classes base, **a BlitzTech possui seu próprio sistema de reflexão de classes, propriedades (`REFD` / `refdata_*`), ações de estado (`fa*`) e funções de condição (`ff*`) com nomes preservados em ASCII dentro de `Rotastic.exe` e dos arquivos `*_refm.pc` e `*_fetm.pc`**.

Isso facilita enormemente a engenharia reversa nas Fases 1, 2 e 3:

### 2.1. Classes Core de Gameplay e Física (`CRotastic*` / `C*`)
- **Jogador e Física:**
  - `CRotasticPlayer`
  - `CRotasticPhysicPlayer`
  - `CPlayerSpawn`, `CSpawnPoint`, `CSpawnArea`
  - `CRotasticPlayerDeathTrigger`, `CRotasticPlayerDeathSphereTrigger`
  - `CRotasticPlayerIgnoreWallCollisionTrigger`
- **Corda / Gancho / Balanço (Mecânica Central):**
  - `CRotasticRope`
  - `CRotasticRopeBeam`, `CRotasticRopeUberBeam`
  - `CAttachPoint`, `CAttachPointFeedback`, `CAttachPointFeedbackProximity`
  - `CPlayerInGameGuiCutRope` (`RopeCut`)
- **Gravidade, Paredes e Objetos de Mapa:**
  - `CGravityVortex` (`faSetStandardGravityForce`, `faSetGravityVortexAttractionForce`, `faAllowStandardGravitationWithVortex`)
  - `CWall`, `CWallWithFx` (`faSetWallBouncingCoef`, `faPlayerDetachFromGlueWall`, `StickWall`, `StickBounce`)
  - `CBreakableObject`, `CMecaSwitchObject`, `CSwitchObject`, `CArkanoidBrick`
  - `CTueur_LanceProjectile`, `CProjectile`, `CRotasticWarpZone`
- **Itens e Modos de Jogo (Solo & Multiplayer):**
  - `CPickUp` (joias/diamantes, capacetes bronze/prata/ouro/diamante)
  - `CModeMultiCollecte` (Multiplayer Coleta de Joias — `MM_Collecte_Pickup`, `MM_Collecte_Points`)
  - `CModeMultiDeathMatch` (Multiplayer Batalha/Corte de Corda — `MM_DeathMatch_Frag`, `MM_DeathMatch_Time`)
  - `CRotasticGameModeMultiBall`, `CRotasticGameModeMultiCTF` (`_Flag`, `_TakeArea`, `_DropArea`) — *modos adicionais presentes no binário!*
  - `CRotasticEndMulti`, `CRotastic_MenuPage_MultiLobby`, `CRotastic_MenuPage_MultiStats`
- **Inteligência Artificial (Bots):**
  - `CAIPlayerController`, `CAIFuzzyInput`, `CAIFixedInput`, `CRotasticFuzzyModel`
  - Avaliadores (`CAIEval*`): `CAIEvalAttachPointPlayerRotationSpeed`, `CAIEvalAttachPointPlayerDropSpeed`, `CAIEvalTimeElapsedRopeCut`, `CAIEvalTrajectoryAttachPointWithEnemy`, `CAIEvalTrajectoryAttachPointWithPickup`

### 2.2. Thread de Física e Pipeline de Simulação
Em `.rdata`, identificamos que a física roda em thread/pipeline próprio da BlitzTech (`SimulationThread`, sincronizado por `PhysicsSema`, com `cFixedFrameRate`, `cDeltaTSeconds`, `cGravity`, `cAirResistanceFraction`):
1. `Pre-integration` → `Post-integration`
2. `Pre-collision` → `Simulation Collision Detection` (`Simulation Substeps`, `Simulation Swept Volume tests`, `Simulation Moving Coll tests`, `Simulation Static Coll tests`) → `Post-collision`
3. `Pre-constraint` → `Post-constraint` (`CFBehaviourJoint`, `WorldNodeJoint_BallAndSocket`)
4. `Pre deformation limits` → `Post deformation limits`

---

## 3. Camada de Rede e Multiplayer

### 3.1. Bibliotecas e APIs de Rede Importadas
O executável `Rotastic.exe` importa diretamente duas camadas de rede:
1. **`steam_api.dll` (17 imports):**
   - `SteamAPI_Init`, `SteamAPI_Shutdown`, `SteamAPI_RunCallbacks`, `SteamAPI_RegisterCallback`, `SteamAPI_UnregisterCallback`, `SteamAPI_RegisterCallResult`, `SteamAPI_UnregisterCallResult`
   - Interfaces: **`SteamMatchmaking`**, **`SteamNetworking`**, `SteamMatchmakingServers`, `SteamFriends`, `SteamUser`, `SteamUserStats`, `SteamRemoteStorage`, `SteamUtils`, `SteamApps`.
2. **`WS2_32.dll` (Winsock2 — 27 imports por ordinal + `WSAEnumProtocolsA`):**
   - Funções de socket BSD/Winsock2 usadas pela camada de transporte e pelo `Network Clock Thread`.

### 3.2. Arquitetura Online Identificada Preliminarmente
- **Abstração de Plataforma BlitzTech:** `OnlineMenuSectorBase` com especializações por plataforma (`OnlineMenuSectorSteam`, `OnlineMenuSector360`, `OnlineMenuSectorPS3NP`, `OnlineMenuSectorGameSpy`), controlada por `CFMode_Online` e `CFMode_PCOnline`.
- **Fluxo de Lobby e Matchmaking:**
  - `Frontend Online Main Menu` → `Frontend Online Host Query` / `Frontend Online Client Query` / `Frontend Online Match List` (`faFramework_Online_RefreshMatchList`, `faFramework_Menu_StartQuickMatch`, `faFramework_Menu_StartCreateMatch`, `faFramework_Menu_StartCustomMatch`)
  - `Frontend Online Lobby` (`Framework_OnlineLobby_PlayerReady_String`, `Framework_OnlineLobby_WaitForPlayer_String`, `faFramework_Online_SendInvitation`, `faFramework_Online_AcceptInvitation`, `faFramework_Online_KickUserFromLobby`)
  - `Transition Game Load Online` (`faFramework_Menu_StartOnlineGame`)
  - `Frontend Online Post Lobby` / `Rotastic_MenuPage_MultiStats`
- **Sincronização de Partida:**
  - Strings chave no binário: **`Network Clock Thread`**, **`ReplicatingProp`**, **`faReplicateNode`**, `Routing..`, `server full`, `readIndex: %d`, `Connection timed out`, `_NetworkError`, `MenuComponent_LatencyDisplay`.
  - A presença de `ReplicatingProp`, `faReplicateNode` e `Network Clock Thread` aponta para um modelo **Host-Autoritativo / Replicação de Propriedades e Nós com Relógio de Rede Sincronizado** sobre Steamworks P2P / UDP. Confirmaremos o formato exato dos pacotes na Fase 3.

### 3.3. Argumentos de Linha de Comando de Desenvolvedor Descobertos
A análise de `packages/envvars.PC` e `.rdata` revelou flags nativas de debug do `Rotastic.exe`:
- `allowMultipleApps` (ou `multiApp`): desativa a trava do mutex `BlitzTechAppInstanceMutex`, permitindo **abrir 2+ instâncias do jogo na mesma máquina**!
- `nonExclusive` (ou `nex`), `nowinborder` (`nwb`): facilita execução em janela lado a lado.
- `enableDebugConsole` (`dConsole`), `enableDebugLog` (`dLog`), `enableDebugOutput` (`dOut`), `showfps`: habilita logs e telemetria interna.
- `gameLevelPackage="<nome>" SkipBoot SkipFrontEnd SkipPlayerCount=4`: carrega diretamente uma arena com até 4 jogadores pulando aberturas e menus!

---

## 4. Árvore de Arquivos da Instalação e Categorização de Tamanho

```text
C:\Program Files (x86)\Steam\steamapps\common\Rotastic (944.66 MB total)
├── Rotastic.exe                  (  7.09 MB) — Executável nativo x86 (BlitzTech)
├── steam_api.dll                 (  0.12 MB) — Cliente Steamworks SDK x86
├── installscript.vdf             (  0.00 MB) — Script de instalação Steam
├── packages/                     (729.08 MB, 326 arquivos)
│   ├── envvars.PC                (  1.05 KB) — Variáveis de deploy/debug do BlitzTech
│   ├── fet_PC.txt                (  2.76 KB) — Manifesto de IDs dos arquivos .fetm
│   ├── w_global.pc               (312.80 MB) — Pacote global (áudio, shaders, personagens, texturas)
│   ├── w_global_fetm.pc          (  0.27 MB) — Entidades globais
│   ├── w_global_refm.pc          (  0.06 MB) — Metadados de reflexão globais (REFD)
│   ├── w_bootload*.pc            (  4.26 MB) — Boot e splash screens
│   ├── w_frontendrota*.pc        (  3.77 MB) — Menus de frontend
│   ├── w_menurotastic*.pc        ( 62.30 MB) — Páginas e texturas de menu
│   ├── w_gamecommonrotastic*.pc  ( 28.34 MB) — HUD e recursos comuns de partida
│   ├── w_online*.pc              (  0.04 MB) — Fluxo de menu e sessão online Steam
│   ├── w_multi_coll_lvl01..07*   (  6.51 MB) — 5 mapas Multiplayer Coleta (.pc, _fetm.pc, _refm.pc)
│   ├── w_multi_dm_lvl01..13*     (  6.95 MB) — 8 mapas Multiplayer Deathmatch (.pc, _fetm.pc, _refm.pc)
│   ├── w_ps3_collect_2..4*       ( 12.60 MB) — 3 mapas Multiplayer Coleta extras
│   ├── w_ps3_deathmatch_2..4*    (  9.43 MB) — 3 mapas Multiplayer Deathmatch extras
│   ├── w_solo01a..w_solo40*      (145.86 MB) — 72 mapas da campanha Solo
│   └── {ch,d,e,f,it,jp,kr,uk}/   (133.65 MB) — Pacotes de localização por idioma (w_loca.pc)
├── videos/                       (102.46 MB, 15 arquivos .ogv)
└── Support/DX9/                  (105.91 MB, 140 arquivos .cab do instalador DirectX 9)
```

---

## 5. Riscos Identificados e Estratégia para Git LFS (Limite de 100 MB e Cota de 1 GB)

### Risco 1: Limite de 100 MB por arquivo e Cota de 1 GB do GitHub Free LFS
- A instalação completa tem **944.66 MB**, e um único arquivo (`packages/w_global.pc`) possui **312.80 MB**.
- Mesmo usando Git LFS, subir `944 MB` consumiria **94% da cota gratuita de 1 GB de armazenamento** e **100% da banda mensal de 1 GB** em um único `git clone`/`git lfs pull` em outra máquina!

### Mitigação Recomendada para `reference/game-files/`
1. **Excluir lixo/arquivos desnecessários para o projeto multiplayer:**
   - `Support/DX9/` (`105.91 MB`): instaladores legados da Microsoft.
   - `packages/{ch,d,e,f,it,jp,kr}/` (`120.14 MB`): manter apenas `packages/uk/w_loca.pc` (`13.51 MB`, inglês) + `w_loca_fetm.pc` / `w_loca_refm.pc`.
   - `videos/` (`102.46 MB`): vídeos `.ogv` de tutoriais da campanha solo e abertura.
   - `packages/w_solo*.pc` (`145.86 MB` de geometria/texturas das fases solo): **manter todos os pequenos `w_solo*_fetm.pc` e `w_solo*_refm.pc` (`~25 MB` no total)** porque contêm constantes úteis de física/mapas, e omitir apenas os `.pc` pesados de geometria solo (ou compactá-los sob demanda).
2. **Tratar `packages/w_global.pc` (`312.80 MB`):**
   - Na Fase 1, vamos extrair de `w_global.pc` apenas os assets reais necessários (sprites/texturas DDS→PNG/WebP, sons de corda/personagens/itens, tabelas `REFD`) diretamente para `assets-original/` e `reference/decompiled/`.
   - Caso queira versionar o `w_global.pc` bruto no repositório para ter o jogo 100% executável via `reference/game-files/`, podemos compactá-lo com `7z` em volumes de `< 85 MB` (`w_global.pc.7z.001`, `.002`, ...) restaurados automaticamente pelo `scripts/bootstrap.ps1`, **ou** anexá-lo em uma **GitHub Release privada** do próprio repositório `rafael-fj/rodastic` (GitHub Releases privadas aceitam arquivos de até **2 GB por asset** e **não descontam da cota de 1 GB do Git LFS**, sendo baixadas automaticamente pelo `scripts/bootstrap.ps1` via `gh release download` ou API!).
3. **Núcleo essencial para Análise + Multiplayer (`reference/game-files/`):**
   - `Rotastic.exe` (`7.09 MB`) + `steam_api.dll` (`0.12 MB`) + `installscript.vdf`
   - `packages/envvars.PC`, `packages/fet_PC.txt`
   - Todos os `*_fetm.pc` e `*_refm.pc` do jogo inteiro (`~31 MB` total, 212 arquivos)
   - Todos os pacotes `.pc` de Boot, Menus, Online, Jogo Comum e todos os **19 mapas Multiplayer** (`w_multi_*` e `w_ps3_*`) + localização `uk` (`~149 MB` brutos, ou `~45 MB` comprimidos).
   - **Total do núcleo sem `w_global.pc`:** `~187 MB` descomprimido (nenhum arquivo > `62 MB`, 100% dentro do limite de 90 MB do CI!).

### Risco 2: Engine C++ Nativa (`BlitzTech`) vs. Engines Gerenciadas (Unity)
- Não existe "exportar projeto para WebGL" como haveria no Unity Mono.
- **Ponto positivo:** A mecânica do Rotastic é puramente **2D em plano XY** (física de pêndulo/corda + colisão circular entre jogadores, paredes e joias), e os arquivos `*_refm.pc` e `*_fetm.pc` expõem os nomes exatos dos parâmetros e entidades em ASCII (`refdata_*`), enquanto `Rotastic.exe` preserva os nomes de todas as classes `CRotastic*`, ações `fa*` e funções `ff*`.
