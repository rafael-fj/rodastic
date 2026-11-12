# Architecture Decision Records (ADRs) — Rotastic Web Multiplayer

Este diretório registra as decisões arquiteturais tomadas na **Fase 4** com base nas evidências empíricas obtidas pela engenharia reversa do executável [`Rotastic.exe`](reference/game-files/Rotastic.exe) e dos pacotes `.pc` nas Fases 0 a 3.

## Índice de ADRs

| ID | Título | Status | Resumo da Decisão |
| :--- | :--- | :--- | :--- |
| [`ADR-001`](docs/adr/ADR-001-monorepo-typescript.md) | Monorepo TypeScript com `pnpm workspaces` | Aceito | Unificar física, protocolo binário, servidor autoritativo, cliente web e pipeline de assets em um único workspace TypeScript estrito (`packages/{physics,protocol,server,client}`). |
| [`ADR-002`](docs/adr/ADR-002-custom-deterministic-physics.md) | Motor de Física Customizado 1:1 (`RotasticSimulation`) vs. Box2D/Rapier | Aceito | Reimplementar diretamente em TypeScript puro as equações analíticas extraídas de `CRotasticPhysicPlayer` (`0x00690560`) a `60 Hz` fixos, descartando motores rígidos genéricos (Box2D/Rapier) que não existem no jogo original. |
| [`ADR-003`](docs/adr/ADR-003-authoritative-server-and-protocol.md) | Servidor Autoritativo (`peerId = 0`) + Protocolo Binário sobre WebSocket | Aceito | Substituir o Host P2P (`CSteamP2PSocket`) por um servidor Node.js + `ws` autoritativo atuando como `peerId = 0`, mantendo o protocolo binário (`0x25` subtipos `0x00..0x14`, 3 barreiras `readyMask1..3`, clock sync `0x0B` e snapshots de 60/30 Hz). |
| [`ADR-004`](docs/adr/ADR-004-client-renderer-and-audio.md) | Renderizador Cliente WebGL 2D (PixiJS v8 + Vite) e Web Audio API | Aceito | Utilizar Vite + PixiJS v8 para renderização 2D acelerada por GPU a partir das texturas convertidas de `assets-original/` e Web Audio API para os 172 efeitos sonoros `.wav`. |
| [`ADR-005`](docs/adr/ADR-005-hybrid-deployment-and-portability.md) | Execução Portátil Sem Docker (`pnpm dev`) e Containerizada (`docker compose`) | Aceito | Garantir que qualquer máquina com Node LTS + Git + Git LFS rode o projeto imediatamente via `pnpm install && pnpm dev`, oferecendo `docker-compose.yml` opcional para hospedagem em VPS. |
