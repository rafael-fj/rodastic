# Checklist de Fidelidade: Original (`Rotastic.exe`) vs. Implementação Web (`@rotastic/*`)

Este documento valida a paridade técnica e comportamental entre o binário nativo x86 **BlitzTech (`Rotastic.exe`)** analisado nas Fases 0 a 3 e a reimplementação Web Multiplayer construída nas Fases 4 a 6.

---

## 1. Constantes Físicas e Temporais (IEEE-754 `.rdata` vs. `@rotastic/physics`)

| Parâmetro | Endereço Nativo (`Rotastic.exe`) | Valor Extraído | Implementação Web ([`constants.ts`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/physics/src/constants.ts)) | Status |
| :--- | :--- | :--- | :--- | :--- |
| Passo de Simulação (`dt`) | `0x0095AD24` | `0.016666668f` (`1/60 s`) | `FIXED_DT = 1 / 60` (`60 Hz`) | ✅ 100% Fiel |
| Gravidade (`g`) | `0x0095AD94` | `9.81f` | `GRAVITY = 9.81` | ✅ 100% Fiel |
| Arrasto Aerodinâmico Base | `0x0095AD6C` | `0.985f` por frame (`60 Hz`) | `AIR_DRAG_BASE = 0.985` ($\text{drag} = 0.985^{60\Delta t}$) | ✅ 100% Fiel |
| Fator de Embalo Pendular (`pump`) | `0x0095AD54` | `0.05f` | `SWING_PUMP_FACTOR = 0.05` | ✅ 100% Fiel |
| Velocidade Angular Mínima ($\omega_{\min}$) | `0x0095AD80` | `1.0471976f` (`60°/s`) | `MIN_OMEGA_RAD_S = 1.0471976` | ✅ 100% Fiel |
| Janela de Boost na Soltura | `0x0095AD58` | `0.2f` (`200 ms`) | `RELEASE_BOOST_WINDOW_SEC = 0.2` | ✅ 100% Fiel |
| Multiplicador de Boost na Soltura | `0x0095AD5C` | `1.1f` (`+10%`) | `RELEASE_BOOST_FACTOR = 1.1` | ✅ 100% Fiel |
| Graça Pós-Engate para Corte de Corda | `0x0095AD38` | `0.25f` (`250 ms`) | `ROPE_CUT_GRACE_SEC = 0.25` | ✅ 100% Fiel |
| Duração de Tontura (`DIZZY`) | `0x0095AD70` | `1.5f` (`1500 ms`) | `DIZZY_DURATION_SEC = 1.5` | ✅ 100% Fiel |
| Tempo de Respawn Pós-Morte | `0x00690560` | `2.0f` (`2000 ms`) | `RESPAWN_DELAY_SEC = 2.0` | ✅ 100% Fiel |

---

## 2. Mecânicas de Gameplay, Colisão e Modos (`0x00688000..0x00699600`)

| Mecânica / Subsistema | Função Nativa (`Rotastic.exe`) | Implementação Web ([`simulation.ts`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/physics/src/simulation.ts)) | Status |
| :--- | :--- | :--- | :--- |
| **Órbita Pendular Analítica** | `CRotasticPhysicPlayer::StepSwinging` (`0x00690FE0`) | `RotasticSimulation.stepSwinging` — coordenadas polares $(r, \theta)$ com $\alpha = -(g/r)\cos\theta$ e limite inferior $\omega_{\min}$. | ✅ Validado (`simulation.test.ts`) |
| **Queda Livre Balística + Vórtices** | `StepFreeFall` (`0x00690620`) + `CGravityVortex` (`0x006970F0`) | `RotasticSimulation.stepFreeFall` — gravidade, arrasto exponencial e atração/repulsão radial de vórtices. | ✅ Validado |
| **Corte de Corda Geométrico 2D** | `CRotasticRope::Update` (`0x0068E800`) | `RotasticSimulation.checkRopeCuts` — interseção segmento-círculo com produto vetorial 2D, `t in [0.12, 0.88]`, graça `0.25 s` e atribuição de kill (`lastAttackerSlot`). | ✅ Validado (`simulation.test.ts`) |
| **Colisão Jogador-Jogador & Slaughter** | `CRotasticPhysicPlayer::CollidePlayer` (`0x006910F0`) | `RotasticSimulation.checkPlayerCollisions` — impulso elástico e razão quadrática de energia cinética $(v_A^2 / v_B^2)^2 \ge 1.8$. | ✅ Validado (`golden-regression.test.ts`) |
| **Paredes e Armadilhas (`CWall`)** | `CWall` (`0x00695C00`) | `RotasticSimulation.checkWallsAndBounds` — tipos `bouncy` ($e=1.12$), `deadly` (morte instantânea), `breakable` (quebra em alta velocidade e regenera em `8 s`) e `slow` ($e=0.55$). | ✅ Validado |
| **Modo Collect (`CModeMultiCollecte`)** | `0x00688AC0` (`sizeof = 0x58`) | Coleta de joias Bronze (`50`), Prata (`150`), Ouro (`300`) e Diamante (`1000`) com avanço automático de ondas (`waveGroup`). | ✅ Validado |
| **Modo Deathmatch (`CModeMultiDeathMatch`)** | `0x00688080` (`sizeof = 0x54`) | Contagem de abates por Slaughter e queda após corte de corda, mais penalidade de suicídio em armadilha. | ✅ Validado |
| **Modo King of the Hill (`KOTH`)** | `w_multikoth00..01` | Pontuação contínua dentro da zona central da coroa (`hillZone`). | ✅ Validado |
| **Morte Súbita (`Sudden Death`)** | `0x00688080` / `0x00688AC0` | Ativada automaticamente quando `timeRemainingSec == 0` e há empate no 1º lugar; o próximo ponto/abate encerra a partida imediatamente. | ✅ Validado (`golden-regression.test.ts`) |

---

## 3. Protocolo de Rede e Máquina de Estados (`0x00583000..0x006C4600`)

| Camada / Mensagem | Especificação Nativa ([`docs/spec/protocol.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/protocol.md)) | Implementação Web ([`@rotastic/protocol`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/protocol/src/index.ts) & [`@rotastic/server`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/server/src/index.ts)) | Status |
| :--- | :--- | :--- | :--- |
| **Cabeçalho BlitzTech de 8 Bytes** | `[pktType:u8][flags:u8][totalSize:u16][seqNum:u16][sender:u8][dest:u8]` | `writeBlitzHeader` / `readBlitzHeader` (`DataView` little-endian de 8 bytes). | ✅ Validado (`protocol.test.ts`) |
| **Handshake de Transporte (`0x03` / `0x04`)** | `CONNECT_REQUEST` (`16 B`) → `CONNECT_ACCEPT` (`16 B`, atribui `peerId`) | `encodeConnectRequest` / `encodeConnectAccept` / `decodeConnectAccept`. | ✅ Validado (`server.test.ts`) |
| **Ping, Clock Offset & Tabela RTT (`0x0B`)** | `PING_CLOCK_SYNC` (`20 B` req / `36 B` resp com `16 B` de RTTs comprimidos) | `encodePingClockSyncReq` / `encodePingClockSyncResp` / `decodePingClockSync`. | ✅ Validado (`protocol.test.ts`) |
| **Handshake & Sync de Lobby (`0x25:0x00..0x07`)** | Subtipos `0x00`, `0x01`, `0x02`, `0x05`, `0x06`, `0x07` | `encodeAppControlMessage` / `RoomSession.handleAppMessage`. | ✅ Validado (`server.test.ts`) |
| **3 Barreiras de Sincronização (`0x25:0x0D`/`0x0E`)** | `readyMask1` (`+0x1680`), `readyMask2` (`+0x1684`), `readyMask3` (`+0x1688`) | `RoomSession.checkBarriers` (`LOBBY_READY`, `MAP_LOADED`, `POST_MATCH_ACK`). | ✅ Validado (`server.test.ts`) |
| **Placar Final / Pódio (`0x25:0x14`)** | `HOST_FINAL_STANDINGS` (`0x14`) | `RoomSession.finishMatchAndBroadcastStandings` + Pódio interativo no cliente. | ✅ Validado |
| **Snapshots de Mundo & Input (`0xC1` / `0xC2`)** | Canal de replicação `0xC1..0xFC` + `0x006B6C90` | `encodeWorldSnapshot` (`0xC1`) e `encodeClientInputCmd` (`0xC2`, 16 bytes binários). | ✅ Validado (`server.test.ts`) |

---

## 4. Assets Visuais, Áudio e Mapas (`packages/client/public/assets/`)

| Categoria de Asset | Origem (`reference/game-files/packages/`) | Conversão Web (`packages/client/public/assets/`) | Status |
| :--- | :--- | :--- | :--- |
| **Texturas de Personagens, UI e Arenas** | 934 arquivos `.dds` (`DXT1`, `DXT3`, `DXT5`, `BGRA8`) | 404 arquivos `.png` desduplicados por SHA-256 (`5.21 MB`) via [`build-web-assets.mjs`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/tools/assets/build-web-assets.mjs). | ✅ 100% Convertido e Versionado (LFS) |
| **Efeitos Sonoros (SFX)** | 172 arquivos `.wav` (`WAVE_FORMAT_PCM` 44.1 kHz) | 172 arquivos `.wav` catalogados em [`manifest.json`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/client/public/assets/manifest.json) e reproduzidos via [`RotasticAudioManager`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/client/src/audio.ts). | ✅ 100% Convertido e Versionado (LFS) |
| **19 Mapas Multiplayer** | 19 pacotes `w_multi*.pc` (`_refm.pc` + `_fetm.pc`) | Catalogados em [`maps.json`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/client/public/assets/maps.json) e jogáveis em [`maps.ts`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/physics/src/maps.ts). | ✅ 100% Disponível no Lobby |
