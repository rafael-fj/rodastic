# ADR-005: Execução Híbrida Portátil Sem Docker (`pnpm dev`) e Containerizada (`docker compose`)

- **Status:** Aceito
- **Data:** 2026-11-10
- **Contexto:** Requisito central de portabilidade (Seção 3 do plano)

## Contexto e Problema

Um requisito inegociável do projeto é que o repositório possa ser clonado em **qualquer máquina** (incluindo computadores de trabalho sem Steam, sem o jogo original instalado e potencialmente com restrições ao uso de Docker Desktop) e executado imediatamente após o clone. Ao mesmo tempo, o projeto deve ser facilmente hospedável em uma VPS Linux via Docker.

## Decisão

Manter **dois caminhos de execução de primeira classe**, ambos testados e documentados:

1. **Caminho 1 — Execução Direta Sem Docker (Padrão para Desenvolvimento e Máquinas Restritas):**
   - **Pré-requisitos únicos:** `Node.js LTS (>= 20)`, `pnpm`, `Git` e `Git LFS`.
   - **Bootstrap automatizado:** [`scripts/bootstrap.ps1`](scripts/bootstrap.ps1) (Windows) e [`scripts/bootstrap.sh`](scripts/bootstrap.sh) (Linux/macOS) executam `git lfs pull`, validam os diretórios de assets e rodam `pnpm install`.
   - **Execução com 1 comando:**
     - `pnpm dev`: Sobe em paralelo o servidor autoritativo (`http://localhost:3001` / `ws://localhost:3001/ws`) e o cliente Vite (`http://localhost:5173`, com proxy automático de `/ws` e `/api` para a porta `3001`).
     - `pnpm start`: Em modo produção sem Docker, o próprio `@rotastic/server` serve os arquivos estáticos compilados de `packages/client/dist` na mesma porta (`http://localhost:3001`), permitindo jogar em múltiplas abas ou na rede local usando um único processo Node.js!
2. **Caminho 2 — Execução Containerizada (`docker compose up --build`):**
   - `Dockerfile` multi-stage que compila `@rotastic/physics`, `@rotastic/protocol`, `@rotastic/client` e `@rotastic/server` em uma imagem enxuta `node:20-alpine`.
   - `docker-compose.yml` com `healthcheck` HTTP (`/api/health`), variáveis configuráveis via `.env` (`.env.example` versionado) e exposição de porta única (`3001`) para deploy atrás de Nginx/Caddy/Cloudflare Tunnel ou em VPS (Fly.io, Railway, Hetzner, DigitalOcean).

## Consequências

- **Positivas:**
  - Zero dependência de Docker para desenvolver ou jogar localmente em máquinas corporativas/restritas.
  - Arquitetura de porta única em produção (`@rotastic/server` servindo estáticos + upgrade WebSocket em `/ws`), eliminando problemas de CORS e simplificando o deploy em VPS.
