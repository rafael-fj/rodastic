# Auditoria e Progresso Real de Decompilação (`Rotastic.exe` -> Web)

> **Propósito:** Rastrear com total transparência quanto de cada recurso do jogo original ([`Rotastic.exe`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/reference/game-files/Rotastic.exe)) foi **efetivamente decompilado a partir do código x86 e dos pacotes binários**, separando o que está **100% validado** do que foi **inferido, simplificado ou ainda não desmontado**.
>
> **Regra do Projeto:** Nenhuma Issue aberta é encerrada antes de atingir **100% de fidelidade comprovada** (ASM + telemetria/frames capturados + teste comparativo + validação em jogo).

---

## 1. Métricas Globais Observadas no Repositório

| Métrica | Inventário em `Rotastic.exe` / Pacotes | Estado Atual de Decompilação |
| :--- | :--- | :--- |
| **Classes C++ mapeadas** ([`rotastic-code-map.json`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/reference/decompiled/rotastic-code-map.json)) | `110` classes de gameplay/UI/rede | Apenas ~`10` classes com funções desmontadas em [`reference/decompiled/disasm/`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/reference/decompiled/disasm) (~108.327 linhas ASM focadas em física/rede) |
| **Flow Actions (`fa*` / `ff*`)** | `510` handlers mapeados | Subconjunto usado em triggers de mapas DM/modos portado; maioria não desmontada |
| **Texturas (`TEXR` / `.dds`)** | `703` `.dds` extraídos em `assets-original/textures/` | `483` PNGs convertidos; **`126+` texturas multi-frame (`frames = 2..8`) ainda truncadas no Frame 0** ([#26](https://github.com/rafael-fj/rodastic/issues/26)) |
| **Áudio (`SAMP`, Voices, BGM)** | `172` `.wav` SFX originais + `239` `.wav` (incl. `67` voices) + `8` `.mp3` BGM em `public/assets/audio/` | `0%` de disassembly da engine de áudio nativa; reprodução de `.mp3` BGM quebrada ([#25](https://github.com/rafael-fj/rodastic/issues/25)) |
| **Mapas Multiplayer** | `19` pacotes `w_multi*.pc` (`10` Deathmatch + `9` Collect) | `10` mapas Deathmatch extraídos e jogáveis (Collect arquivado por decisão de escopo) |
| **Sessões de Captura & Telemetria** | 3 sessões em `reference/captures/` (incluindo `session-20261111-170417` com `872` frames e `29.543` eventos) | Base empírica ativa para auditoria frame a frame |

**Estimativa Ponderada Global de Decompilação Fiel (Multiplayer Deathmatch):** **~60%** (física pendular 100% fechada, física base, rede e mapas DM avançados; áudio BGM, animações/sprites de cenário, cooldown/invulnerabilidade, consumo do escudo laranja e condições exatas de corte de corda na fila).

---

## 2. Progresso por Recurso / Subsistema

Legenda:
- ✅ **Fiel / Decompilado** (`>= 90%`): extraído diretamente de ASM ou arquivos binários e validado contra capturas/testes.
- 🟡 **Parcial / Divergente** (`40% – 89%`): parte extraída de ASM/telemetria, porém contém simplificações no código TypeScript ou lacunas visuais/mecânicas.
- 🔴 **Inferido / Quebrado / Não Desmontado** (`< 40%`): implementado por aproximação manual ou com disassembly `0%`.

| Subsistema / Recurso | % Decompilado Real | Status | O que já foi decompilado & validado | O que está inferido, quebrado ou pendente | Issue Relacionada |
| :--- | :---: | :---: | :--- | :--- | :--- |
| **1. Física de Voo Livre & Vórtices** | **85%** | 🟡 Parcial | `StepFreeFall`, gravidade `simRef[0x04] = -686.7 u/s²`, teto/piso (`DEATH_BOTTOM_Y = -300`), velocidade máxima `2000 u/s`. | Air steering (`AIR_STEER_ACCEL = 240`) e arrasto fino em queda ainda não conferidos instrução por instrução em `CRotasticPlayerSubcomponents.asm`. | Backlog de Física |
| **2. Gravidade & Dinâmica Pendular na Corda** | **100%** | ✅ Concluído | `StepSwinging` (`0x0056B3D0..0x0056BC5A`) decompilado e portado 1:1 para [`simulation.ts`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/physics/src/simulation.ts): bomba quadrática `0.0015f`, gravidade tangencial linear, `swingBoostTimer` (`0.4s`/`1300`) ao cruzar `vt = 0` e reset em `wallBounce`. Validado nos `253` segmentos da sessão `170417` (`MAE = 0.83 u/s`) e checkup direto em `@rotastic/physics` (`-406.76 u/s` vs `-405.9 u/s` no Seg. 11). | Concluída após validação prática e checkup final pelo usuário (`commit 3f7a1ab`). | **[#24](https://github.com/rafael-fj/rodastic/issues/24)** (Encerrada) |
| **3. Lançamento da Corda (Filtro Gaussiano 50 ms)** | **55%** | 🟡 Parcial | Rotina `ComputeSmoothedReleaseVelocity` (`0x0056AA70`) e ring buffer de `64` amostras desmontados em [`docs/spec/physics.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/physics.md). | **Não implementado em [`simulation.ts`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/physics/src/simulation.ts)**: `releaseFromPivot` multiplica apenas o vetor instantâneo por `1.2`, sem o buffer de `64` amostras nem janela Gaussiana de `50 ms`. | Backlog de Física |
| **4. Cooldown da Corda & Anel Circular (`+0xD48` / `+0xC50`)** | **45%** | 🔴 Gap Crítico | Taxa base `0.58/s` (`0x0056CB26`), reset em `0x0056BF45` (`c1 -> 0` no `ATTACH`) observados em `20/20` engates da sessão `170417`. | Consumo de `+0xD48` ao engatar, bloqueio real contra spam infinito (`+0xC50`/`+0xC58`) e renderização do **arco circular colorido ao redor do jogador** + fatia no pivô (`CAttachPointFeedback`) ausentes/divergentes. | **[#27](https://github.com/rafael-fj/rodastic/issues/27)** |
| **5. Invulnerabilidade Pós-Spawn & Escudo (`+0xD54`)** | **40%** | 🔴 Gap Crítico | Duração exata pós-drop medida em telemetria (`1.000s` em `f=1623` e `f=5121`) e pós-quebra (`0.500s`); checagens identificadas em `0x0056A5A5`, `0x0056AFF5`, `0x005790F9`. | Faltam bloqueios completos enquanto `invulnTimer > 0` (ex.: corte de corda/empurrão conforme ASM) e efeito visual inequívoco (piscada + bolha branca translúcida distinta sem ser ofuscada por `chargeGauge = 1.0`). | **[#28](https://github.com/rafael-fj/rodastic/issues/28)** |
| **6. Escudo Laranja, Massa PvP & Slaughter** | **75%** | 🟡 Parcial | Massa `1 + 10*c2²`, piso `450 u/s` (`0x005782C6`), restituição `1.0`, consumo de `+0xD4C` ao engatar com `c1 < 1.0` (`0x0056A5A0`/`0x0056C729`) e ao absorver hit (`0x00577AD8..0x00577C43`) mapeados. | Critérios completos de consumo/fim do power-up laranja (`+0xD4C`), curva do Slaughter (`(keA/keB)^1.5 >= 1.8`) e demais acessos (`0x00578426..0x005793E4`) precisam ser portados 100%. | **[#29](https://github.com/rafael-fj/rodastic/issues/29)** |
| **7. Corte de Corda (`CRotasticRope`)** | **65%** | 🔴 Divergente | Interseção 2D swept segmento-círculo implementada e alvos ASM mapeados (`0x00543240`, `0x00542110..0x005421F0`, `0x0057254D..0x005725AA`). | Exige `ROPE_CUT_MIN_SPEED = 160` artificial, não garante corda do cortador menor em todos os casos e não modela a proteção/colisão da bolha cheia (`c1 >= 1.0`, `+0xD48`). | **[#31](https://github.com/rafael-fj/rodastic/issues/31)** |
| **8. Skins, Decodificação `TEXR` Multi-Frame & Animações** | **35%** | 🔴 Quebrado | Decodificação básica de `DXT1/DXT3/DXT5/BGRA8` em [`build-web-assets.mjs`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/tools/assets/build-web-assets.mjs) e mapeamento de poses por frames. | **`TEXR` loader & `CPlayerAnimManager` (`0x00548720`) têm `0%` de disassembly.** `extract-packages.mjs` ignora frames `2..8` de `126+` texturas (em `t_character_b_neo_fly_c.dds`, Frame 0 é pose esmagada e **Frame 1** é o sprite limpo!); `upscaleCharacterSprite2x` gerou artefatos quadriculados. | **[#26](https://github.com/rafael-fj/rodastic/issues/26)** |
| **9. Áudio: SFX, Narrador (`Voices`) & Música (`BGM`)** | **25%** | 🔴 Quebrado | `172` SFX `WAV`, `67` voices e `8` MP3 extraídos; pools SFX e gatilhos básicos do narrador ligados em [`audio.ts`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/client/src/audio.ts). | **`0%` de disassembly de áudio nativo.** Servidor HTTP em [`server/src/index.ts`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/packages/server/src/index.ts) **não mapeia `.mp3` em `MIME_TYPES`** nem suporta HTTP `Range`, quebrando completamente a música de fundo (`BGM`); regras de ducking/loop são inferidas. | **[#25](https://github.com/rafael-fj/rodastic/issues/25)** |
| **10. HUD In-Game & Feedback Visual (`CPlayerHud`, Pivôs, Vfx)** | **20%** | 🔴 Inferido | HUD superior (retratos, placar, timer, pódio) reconstruído no DOM/Pixi e feixe branco progressivo da corda (`0.72s`) calibrado por frames. | **`CPlayerHud` (`0x0053A0E0`), `CPlayerBeamFeedback`, `CPlayerUberBeamFeedback`, `CAttachPointFeedback`** com `0%` de disassembly; sprites dos **pivôs e objetos de cenário** (`t_accroche*`, `t_armes_c`, `t_porteentre*`) com resolução/recorte/animação pendentes. | **[#27](https://github.com/rafael-fj/rodastic/issues/27)**, **[#28](https://github.com/rafael-fj/rodastic/issues/28)**, **[#30](https://github.com/rafael-fj/rodastic/issues/30)** |
| **11. Mapas Deathmatch, Obstáculos & Switches (`*_fetm.pc`)** | **80%** | ✅ Avançado | Todos os `10` mapas `w_multi_dm_*` / `w_ps3_deathmatch_*` extraídos com geometria, waypoints, rotações e `PST_MecaSwitch`. | Alguns comportamentos de `CTueur` / `CMecaSwitchObject` / colisões de paredes móveis ainda não auditados `100%` contra FlowGraphs nativos em partidas longas. | Backlog de Mapas |
| **12. Protocolo de Rede BlitzTech & Servidor WebSocket** | **85%** | ✅ Avançado | Cabeçalho BlitzTech `8 B`, handshakes `0x03/0x04/0x0B/0x25`, 3 barreiras de sincronismo e snapshots `0xC1/0xC2` validados com testes E2E (`server.test.ts`). | Transporte é WebSocket sobre JSON/binário adaptado do UDP/Steamworks nativo; lag compensation e predição client-side do `c1`/cooldown precisam acompanhar ajustes da física. | Manutenção Contínua |

---

## 3. Classes Nativas Ainda Com 0% de Disassembly (Prioridade Alta)

Para sair de inferências e atingir **100% de decompilação real**, estas classes identificadas em [`rotastic-code-map.json`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/reference/decompiled/rotastic-code-map.json) e sistemas do executável ainda precisam ser desmontados para `reference/decompiled/disasm/`:

1. **`CPlayerAnimManager` (`0x00548720`) & `CPlayerAnimResource` (`0x005495C0`)** -> taxas de quadros, seleção de frames multi-frame e prioridades de pose (Issue **#26**).
2. **Parser nativo de `TEXR` / D3D9 Texture Upload em `Rotastic.exe`** -> decodificação exata dos headers multi-frame (`0x4d`, `0x4e`, `0x54..0x88`) e blending/alpha (Issue **#26**).
3. **Subsistema de Áudio / BGM (`bgm_syl_*`, ducking, loop)** -> descoberta de gatilhos reais de música e mistura SFX/Narrador (Issue **#25**).
4. **`CPlayerHud` (`0x0053A0E0`), `CPlayerBeamFeedback` (`0x00536060`), `CPlayerUberBeamFeedback` (`0x0053DCE0`), `CAttachPointFeedback` (`0x0052FA30`)** -> arcos de cooldown, fatia do pivô, bolha de invulnerabilidade e efeitos visuais da corda (Issues **#27** e **#28**).
5. **Reconciliação linha a linha de `CRotasticPlayerSubcomponents.asm`** (`0x0056B3D0..0x0056B860` concluída em #24; `0x0056C500..0x0056CD40` para Issue **#27**, checagens de `+0xD54` para Issue **#28**, `+0xD4C` para Issue **#29**, e corte de corda `0x00543240`/`0x0057254D` para Issue **#31**).

---

## 4. Fila Atual de Issues Abertas (Plano Passo a Passo)

- ✅ **[#24](https://github.com/rafael-fj/rodastic/issues/24)** *(Encerrada em `3f7a1ab`)* — `physics(swing)`: gravidade e dinâmica pendular conectado ao pivô (`0x0056B3D0..0x0056BC5A`)

1. **[#25](https://github.com/rafael-fj/rodastic/issues/25)** — `audio(bgm)`: música de fundo quebrada (MIME `.mp3`, `Range`, `AudioContext` e engine nativa)
2. **[#26](https://github.com/rafael-fj/rodastic/issues/26)** — `assets(texr)`: decodificação 100% de skins/sprites multi-frame (`TEXR`) sem pixelização
3. **[#27](https://github.com/rafael-fj/rodastic/issues/27)** — `gameplay(rope)`: cooldown real de re-engate (`+0xD48`/`+0xC50`) e indicador circular no personagem
4. **[#28](https://github.com/rafael-fj/rodastic/issues/28)** — `gameplay(spawn)`: proteção completa e feedback visual fiel da invulnerabilidade pós-spawn (`+0xD54`)
5. **[#29](https://github.com/rafael-fj/rodastic/issues/29)** — `gameplay(orange)`: critérios exatos de consumo e fim do power-up laranja (`+0xD4C`)
6. **[#30](https://github.com/rafael-fj/rodastic/issues/30)** — `assets(props)`: extração, resolução e animação das sprites de pivôs e objetos dos mapas
7. **[#31](https://github.com/rafael-fj/rodastic/issues/31)** — `physics(ropecut)`: remoção de velocidade mínima e condições exatas de corte (corda menor + proteção da bolha cheia)
