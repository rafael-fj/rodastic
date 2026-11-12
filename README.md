# Rodastic — Reimplementação Web Multiplayer de Rotastic via Engenharia Reversa

Reprodução fiel do modo **Multiplayer** (Deathmatch, Collect & King of the Hill para até 4 jogadores) do jogo **Rotastic** (Focus Home Interactive / Dancing Dots, engine C++ x86 **BlitzTech**), reimplementado em stack Web moderna (**TypeScript + PixiJS v8 + Servidor Autoritativo Node.js**) a partir da desmontagem e análise estática/dinâmica dos binários e pacotes `.pc` originais.

---

## 1. Requisitos Mínimos e Portabilidade Total

Este repositório foi projetado para rodar **em qualquer computador, de forma 100% autônoma e portátil**, sem dependência de executáveis externos:

- **Pré-requisitos:**
  - [Node.js LTS (>= 20)](https://nodejs.org/)
  - [pnpm (>= 9)](https://pnpm.io/) (`corepack enable`)
  - [Git](https://git-scm.com/) + [Git LFS](https://git-lfs.com/)

---

## 2. Como Rodar e Jogar

### Instalação Inicial
```powershell
# Windows PowerShell
.\scripts\bootstrap.ps1
pnpm install
pnpm build
```
```bash
# Linux / macOS
./scripts/bootstrap.sh
pnpm install
pnpm build
```

### 🎮 Executando o Jogo Localmente
Inicia o servidor autoritativo na porta `3001` (servindo o jogo completo, assets e WebSocket):
```bash
pnpm start
```
Acesse no navegador: `http://localhost:3001`

---

## 3. 🌐 Jogando Online com Amigos (Cloudflare Tunnel)

O projeto possui integração nativa com o **Cloudflare Quick Tunnel** ([try.cloudflare.com](https://try.cloudflare.com/)), permitindo criar uma URL pública HTTPS/WSS temporária sem abrir portas no roteador nem configurar DNS/SSL:

### Iniciar o Jogo + Túnel Público em 1 Comando
```bash
pnpm start:tunnel
```
*O terminal iniciará o servidor e exibirá imediatamente o link público (ex.: `https://*.trycloudflare.com`) pronto para você copiar e enviar para seus amigos jogarem no mesmo lobby.*

### Conectar o Túnel com o Jogo já em Execução
Se você já estiver com o jogo rodando em um terminal (`pnpm start` ou `pnpm dev`), abra outro terminal e execute:
```bash
pnpm tunnel
```
*Ele detectará automaticamente o servidor ativo (porta 3001 ou 5173) e gerará o link público.*

---

## 4. Scripts e Comandos Úteis

| Comando | Descrição |
| :--- | :--- |
| `pnpm start` | Inicia o servidor autoritativo em produção (`http://localhost:3001`). |
| `pnpm start:tunnel` | Inicia o servidor e abre o Cloudflare Quick Tunnel em um único comando. |
| `pnpm tunnel` | Abre o túnel Cloudflare detectando automaticamente o servidor local ativo. |
| `pnpm dev` | Inicia servidor e cliente em modo desenvolvimento com hot-reload (Vite). |
| `pnpm dev:tunnel` | Modo desenvolvimento com hot-reload + túnel Cloudflare público. |
| `pnpm build` | Compila todos os pacotes (`physics`, `protocol`, `client`, `server`). |
| `pnpm test` | Executa a suíte de testes automatizados (física determinística, regressão e rede). |
| `pnpm typecheck` | Validação estrita de tipos TypeScript em todos os pacotes. |

---

## 5. Estrutura do Repositório

| Caminho | Descrição |
| :--- | :--- |
| [`docs/00-recon.md`](docs/00-recon.md) | Fase 0: Reconhecimento da engine BlitzTech, executável PE32 x86 e bibliotecas de sistema. |
| [`docs/01-assets-catalog.md`](docs/01-assets-catalog.md) | Fase 1: Engenharia reversa do container `.pc` (`16 B header + N×32 B entry table`) e catálogo de texturas e áudios. |
| [`docs/02-code-map.md`](docs/02-code-map.md) | Fase 1: Mapa completo das 110 classes C++ refletidas e 510 FlowActions (`fa*`/`ff*`). |
| [`docs/spec/physics.md`](docs/spec/physics.md) | Fase 2: Equações matemáticas exatas e constantes IEEE-754 de `CRotasticPhysicPlayer`, `CRotasticRope`, `CAttachPoint`, `CGravityVortex` e `CWall`. |
| [`docs/spec/gameplay.md`](docs/spec/gameplay.md) | Fase 2: Regras de Deathmatch e Collect, Sudden Death, pontuação e catálogo dos 19 mapas multiplayer. |
| [`docs/spec/protocol.md`](docs/spec/protocol.md) | Fase 3: Protocolo binário em 4 camadas (transporte, cabeçalho BlitzTech de 8 bytes, replicação `0xC1..0xFC` e subtipos `0x25:0x00..0x14`). |
| [`docs/spec/state-machine.md`](docs/spec/state-machine.md) | Fase 3: Máquina de estados online (`0x0B..0xDB`) e as 3 barreiras de sincronização (`readyMask1..3`). |
| [`docs/DECOMPILATION_PROGRESS.md`](docs/DECOMPILATION_PROGRESS.md) | Matriz completa de progresso e rastreabilidade de engenharia reversa. |
| [`docs/adr/`](docs/adr/README.md) | Architecture Decision Records (`ADR-001` a `ADR-005`). |
| `packages/physics/` | Simulação 2D determinística a `60 Hz` (`@rotastic/physics`). |
| `packages/protocol/` | Serializador binário de pacotes e máquina de estados (`@rotastic/protocol`). |
| `packages/server/` | Servidor autoritativo Node.js + WebSocket (`@rotastic/server`). |
| `packages/client/` | Cliente navegador Vite + PixiJS v8 + Web Audio API (`@rotastic/client`). |
| `assets-original/` | Texturas `.dds` e efeitos sonoros `.wav` extraídos dos pacotes multiplayer (via Git LFS). |
| `tools/` | Utilitários de túnel, compilação de assets, extração e testes. |
