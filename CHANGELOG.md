# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-11-10

### Added
- Inicialização do repositório, configuração de `.gitattributes` (Git LFS), `.gitignore`, templates de Issue/PR e workflow de CI (guarda de arquivos > 90 MB).
- `docs/00-recon.md`: Reconhecimento completo da instalação Steam do Rotastic (identificação da engine **BlitzTech** C++ x86 nativa, pacotes `.pc` / `_fetm.pc` / `_refm.pc`, classes refletidas `CRotastic*` / `fa*` / `ff*` e integração `steam_api.dll` + `WS2_32.dll`).
- `tools/README.md`: Guia de ferramentas portáteis de engenharia reversa para binários nativos x86 e pacotes BlitzTech.
- `tools/extract/extract-code-map.mjs`, `reference/decompiled/rotastic-code-map.json` e `docs/02-code-map.md`: Extração de 110 classes C++ (`sizeof`, `ConstructorVA`, `FactoryVA`, `VTableVA`), 510 Flow Actions/Functions (`fa*`/`ff*`) e call sites de `steam_api.dll` e `WS2_32.dll`.
- `tools/extract/extract-packages.mjs`, `reference/decompiled/packages-catalog.json` e `docs/01-assets-catalog.md`: Engenharia reversa completa do formato `.pc`, decodificação de 29 `_refm.pc` e 29 `_fetm.pc` para JSON, extração de 172 efeitos sonoros (`.wav`) e 934 texturas (`.dds`) multiplayer em `assets-original/`.
- `tools/extract/disasm-physics-gameplay.py`, `tools/extract/inspect-vtables.mjs` e `reference/decompiled/disasm/*.asm`: Desmontagem comentada x86 de `CRotasticPhysicPlayer`, `CRotasticPlayer`, `CRotasticRope`, `CAttachPoint`, `CGravityVortex`, `CWall`, `CPickUp`, `CModeMultiDeathMatch` e `CModeMultiCollecte`.
- `tools/extract/extract-multiplayer-maps.mjs`, `reference/decompiled/multiplayer-maps-spec.json`, `docs/spec/physics.md` e `docs/spec/gameplay.md`: Especificação matemática e numérica completa da física customizada (`RotasticSimulation`), regras de modos Deathmatch e Collect, e catálogo estruturado dos 19 mapas multiplayer.
- `tools/extract/disasm-netcode.py`, `tools/extract/extract-replication-spec.mjs`, `reference/decompiled/netcode-replication-spec.json` e `reference/decompiled/disasm/Netcode_*.asm`: Desmontagem comentada das 4 camadas da pilha de rede (`CSteamP2PSocket`, transporte confiável/não-confiável BlitzTech, motor de replicação `faReplicateNode` + compressor Deflate/Huffman e protocolo de lobby/partida).
- `docs/spec/protocol.md`, `docs/spec/state-machine.md` e `tools/netcapture/`: Especificação completa do protocolo binário de 8 bytes, subtipos de aplicação (`0x25` -> `0x00..0x14`), máquina de estados de sessão (`0x0B..0xDB`), 3 barreiras de sincronização (`readyMask1..3`) e scripts Frida de captura de tráfego P2P.
- `docs/adr/ADR-001` a `ADR-005`: Registros de decisão arquitetural para o monorepo TypeScript, física determinística customizada (`@rotastic/physics`), servidor autoritativo WebSocket (`@rotastic/server`), renderizador WebGL 2D PixiJS v8 (`@rotastic/client`) e execução híbrida sem/com Docker.
- `package.json`, `pnpm-workspace.yaml`, `tsconfig.base.json`, `Dockerfile`, `docker-compose.yml`, `.env.example` e estrutura inicial de `packages/{physics,protocol,server,client}`.
- `tools/assets/build-web-assets.mjs` (`pnpm assets:build`) e `packages/client/public/assets/`: Pipeline reproduzível em Node.js puro que decodifica e desduplica 934 texturas `.dds` (`DXT1`/`DXT3`/`DXT5`/`BGRA8`) em 404 `.png` (`5.21 MB`), cataloga os 172 áudios `.wav` (`14.3 MB`) e gera `manifest.json` e `maps.json`.
- `packages/physics/src/`: Implementação completa e determinística da `RotasticSimulation` (`60 Hz`), corte de corda 2D, Slaughter por razão quadrática de energia cinética, vórtices, paredes (`bouncy`, `deadly`, `breakable`, `slow`), controlador de Bots IA e as 19 arenas multiplayer (`collect`, `deathmatch`, `koth`).
- `packages/protocol/src/`: Codec binário de pacotes com cabeçalho BlitzTech de 8 bytes, handshake `0x03`/`0x04`, sincronização de relógio `0x0B` com tabela de RTTs comprimidos, protocolo de lobby `0x25` (`subTypes 0x00..0x14`), barreiras `readyMask1..3`, comando de input `0xC2` e snapshot de mundo `0xC1`.
- `packages/server/src/`: Servidor autoritativo Node.js + WebSocket (`ws`) com gerenciamento de múltiplas salas, suporte a Bots IA, máquina de estados online (`0x78 -> 0x7A -> 0x8F -> 0x99 -> 0xB8`), loop de física a `60 Hz`, endpoints `/api/health` e `/api/rooms` e servidor estático integrado.
- `packages/client/src/`: Cliente navegador em PixiJS v8 + Web Audio API renderizando os sprites `.png` e efeitos `.wav` extraídos do jogo original, predição client-side com reconciliação suave, interpolação de entidades remotas, HUD em tempo real, Lobby interativo e Pódio pós-partida.
- `docs/spec/fidelity-checklist.md` e `packages/physics/src/golden-regression.test.ts`: Checklist completo de paridade com `Rotastic.exe` e suíte de regressão determinística cobrindo as 19 arenas, Slaughter e Morte Súbita.
