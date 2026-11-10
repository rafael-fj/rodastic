# Rodastic — Reimplementação Web Multiplayer de Rotastic via Engenharia Reversa

Reprodução fiel do modo **Multiplayer** (Deathmatch, Collect & King of the Hill para até 4 jogadores) do jogo **Rotastic** (Focus Home Interactive / Dancing Dots, engine C++ x86 **BlitzTech**), reimplementado em stack Web moderna (**TypeScript + PixiJS v8 + Servidor Autoritativo Node.js**) a partir da desmontagem e análise estática/dinâmica dos binários e pacotes `.pc` originais.

---

## 1. Requisitos Mínimos e Portabilidade Total

Este repositório foi projetado para rodar **em qualquer computador, sem necessidade do Steam ou do jogo instalado**:

- **Pré-requisitos:**
  - [Node.js LTS (>= 20)](https://nodejs.org/)
  - [pnpm (>= 9)](https://pnpm.io/) (`corepack enable`)
  - [Git](https://git-scm.com/) + [Git LFS](https://git-lfs.com/)
- **Inicialização Rápida (Sem Docker):**
  ```powershell
  # Windows PowerShell
  .\scripts\bootstrap.ps1
  pnpm install
  pnpm dev
  ```
  ```bash
  # Linux / macOS
  ./scripts/bootstrap.sh
  pnpm install
  pnpm dev
  ```
- **Inicialização com Docker Compose (Opcional / VPS):**
  ```bash
  docker compose up --build -d
  ```

---

## 2. Estrutura do Repositório

| Caminho | Descrição |
| :--- | :--- |
| [`docs/00-recon.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/00-recon.md) | Fase 0: Reconhecimento da engine BlitzTech, executável PE32 x86 e bibliotecas (`steam_api.dll`, `WS2_32.dll`). |
| [`docs/01-assets-catalog.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/01-assets-catalog.md) | Fase 1: Engenharia reversa do container `.pc` (`16 B header + N×32 B entry table`) e catálogo de 934 texturas `.dds` e 172 áudios `.wav`. |
| [`docs/02-code-map.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/02-code-map.md) | Fase 1: Mapa completo das 110 classes C++ refletidas e 510 FlowActions (`fa*`/`ff*`). |
| [`docs/spec/physics.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/physics.md) | Fase 2: Equações matemáticas exatas e constantes IEEE-754 de `CRotasticPhysicPlayer`, `CRotasticRope`, `CAttachPoint`, `CGravityVortex` e `CWall`. |
| [`docs/spec/gameplay.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/gameplay.md) | Fase 2: Regras de Deathmatch e Collect, Sudden Death, pontuação e catálogo dos 19 mapas multiplayer. |
| [`docs/spec/protocol.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/protocol.md) | Fase 3: Protocolo binário em 4 camadas (`CSteamP2PSocket`, cabeçalho BlitzTech de 8 bytes, replicação `0xC1..0xFC` e subtipos `0x25:0x00..0x14`). |
| [`docs/spec/state-machine.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/state-machine.md) | Fase 3: Máquina de estados online (`0x0B..0xDB`) e as 3 barreiras de sincronização (`readyMask1..3`). |
| [`docs/adr/`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/adr/README.md) | Fase 4: Architecture Decision Records (`ADR-001` a `ADR-005`). |
| `packages/physics/` | Simulação 2D determinística a `60 Hz` (`@rotastic/physics`). |
| `packages/protocol/` | Serializador binário de pacotes e máquina de estados (`@rotastic/protocol`). |
| `packages/server/` | Servidor autoritativo Node.js + WebSocket (`@rotastic/server`). |
| `packages/client/` | Cliente navegador Vite + PixiJS v8 + Web Audio API (`@rotastic/client`). |
| `assets-original/` | Texturas `.dds` e efeitos sonoros `.wav` extraídos dos pacotes multiplayer (via Git LFS). |
| `reference/` | Binários originais de referência (`game-files/`), desmontagens x86 (`decompiled/disasm/`) e capturas de rede (`captures/`). |
| `tools/` | Scripts reproduzíveis de extração (`extract/`), captura Frida (`netcapture/`) e conversão de assets (`assets/`). |
