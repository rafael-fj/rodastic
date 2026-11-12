# Ferramentas de Captura, Telemetria e Auditoria (`tools/netcapture/`)

Este diretorio contem os scripts Frida e Python para inspecao em tempo real de:
1. **Fisica & gameplay frame-a-frame** ([`hook-physics-telemetry.js`](tools/netcapture/hook-physics-telemetry.js) + [`capture-gameplay.py`](tools/netcapture/capture-gameplay.py))
2. **Pilha de rede BlitzTech / Steamworks P2P** ([`hook-steam-net.js`](tools/netcapture/hook-steam-net.js) + [`capture-packets.ps1`](tools/netcapture/capture-packets.ps1))

## 1. Telemetria de Fisica + Screenshots Sincronizados (Deathmatch)

### O que e capturado por [`hook-physics-telemetry.js`](tools/netcapture/hook-physics-telemetry.js)

Todos os enderecos e offsets sao relativos ao ImageBase `0x00400000` de `Rotastic.exe` (x86 32-bit):

- **Tick frame-a-frame (`UpdatePhysics @ 0x0056C090`, evento `FRAME_SYNC`):**
  - `dt` global (`0x00B76120`) e tabela de constantes ao vivo `simRef` (`[player + 0x1E4]`, evento `SESSION_META`).
  - Posicao mundial `(x, y, z)`, velocidade linear `(vx, vy, vz)` e magnitude `speed` (`+0x28C..+0x294`).
  - Estado de gancho: `attached`, `pivotHandle` (`+0x23C`), `pivotPos`, `angularSpeed` (`+0xC34`), `ropeRadius` (`+0xC38`), `turnBoostCount` (`+0xD64`), `swingBoostTimer` (`+0xC4C`).
  - **Indicador de Respawn / Spawn (`SPAWN_CURSOR_ENTER @ 0x00540EF0`, `SPAWN_DROP @ 0x00540DE0`, `PLAYER_DEATH @ 0x005409F0`):** flags `awaitingInitialSpawn` (`+0x1E8`), `spawnCursorActive` (`+0x1F4`), `allowInputForSpawn` (`+0x1F8`), `respawnWaiting` (`+0xD74`), `respawnTimer` (`+0xD78`), `isDead` (`+0xE10`) + coordenadas exatas do cursor oscilando no topo ate o sinal de queda.
  - **Barra / Circulo Laranja de Protecao (`+0xD48`, `+0xD4C`, `+0xD5C`):** `chargeGauge`, `chargeGauge2`, `shieldReady` (`>= 1.0`), `chargeMultiplier`, `stunTimer` (`+0xD50`), `invulnTimer` (`+0xD54`), `lastAttacker` (`+0xDFC`).
- **Transferencia de velocidade e impacto:**
  - `ATTACH` (`0x0056B3D0`) e `RELEASE` (`0x0056AA70`) com estado `before` e `after`.
  - `WALL_HIT` (`0x005769E0` / `0x00576BE0`) com normal de contato, `isDeadly` (`+0x3A`), `bounciness` (`+0x3C`) e velocidades antes/depois.
  - `PVP_HIT` (`0x00577A20`) e `PVP_BOUNCE_SOLVER` (`0x00576E30`) com velocidades, cargas de escudo e consumo da protecao (`1.0 -> 0.0`) antes/depois do choque.
- **Obstaculos dinamicos por fase (`CWall @ 0x00507D50`, `CAttachPoint @ 0x00521290 / 0x00520AF0`):**
  - Snapshot continuo em cada `FRAME_SYNC` das posicoes e quaternions `(x, y, z, w)` de paredes/serras moveis e pontos de ancoragem que mudam de lugar durante a partida.

### Como gravar uma partida (com screenshots sincronizados)

1. Execute em um terminal (ele aguarda o `Rotastic.exe` abrir, ou use `--spawn` para iniciar direto):
   ```powershell
   python tools/netcapture/capture-gameplay.py
   ```
   Opcoes uteis:
   - `--fps 20`: taxa de screenshots periodicos da janela do jogo (alem de capturas automaticas em eventos como `SPAWN_DROP`, `PVP_HIT`, `WALL_HIT`, `PLAYER_DEATH`).
   - `--no-screenshots`: grava somente `telemetry.jsonl` a 60 Hz.
   - `--net`: anexa tambem `hook-steam-net.js` na mesma sessao.
   - `--spawn`: inicia `Rotastic.exe` diretamente via Frida.
2. Abra uma partida de **Multiplayer Deathmatch** no jogo e jogue normalmente.
3. Pressione `Ctrl+C` no terminal para fechar com seguranca.
4. Os dados serao salvos em `reference/captures/session-YYYYMMDD-HHMMSS/` (ignorado no Git para nao subir PNGs pesados):
   - `telemetry.jsonl`: eventos fisicos e snapshots frame-a-frame.
   - `frames/*.png` + `frames.jsonl`: screenshots da area cliente da janela indexados por `frameId` e `hostTsMs`.

## 2. Captura apenas da Pilha de Rede (`hook-steam-net.js`)

```powershell
.\tools\netcapture\capture-packets.ps1
```
