# ADR-001: Monorepo TypeScript com `pnpm workspaces`

- **Status:** Aceito
- **Data:** 2026-11-10
- **Contexto:** Fases 2, 3 e 4

## Contexto e Problema

A reprodução fiel do multiplayer de **Rotastic** para navegador exige que o **cliente web** (predição client-side e reconciliação) e o **servidor autoritativo de partida** executem exatamente o mesmo código de simulação física (`RotasticSimulation` a `60 Hz`) e compartilhem o mesmo codificador/decodificador de pacotes binários e máquina de estados de sessão.

## Decisão

Adotar um **monorepo em TypeScript (`strict: true`) gerenciado por `pnpm workspaces`**, dividido em quatro pacotes claramente isolados em `packages/`:

1. **`@rotastic/physics` (`packages/physics`):**
   - Zero dependências externas de runtime (isomórfico para Browser e Node.js).
   - Contém a simulação determinística de passo fixo (`dt = 1/60 s`), entidades (`CRotasticPhysicPlayer`, `CRotasticRope`, `CAttachPoint`, `CGravityVortex`, `CWall`, `CPickUp`), modos (`DeathMatch`, `Collect`) e carregador dos 19 mapas multiplayer.
2. **`@rotastic/protocol` (`packages/protocol`):**
   - Zero dependências externas de runtime (usa `DataView` / `Uint8Array` padrão).
   - Implementa a serialização e desserialização binária do cabeçalho de 8 bytes, sincronização de relógio (`0x0B`), mensagens de controle e lobby (`0x25`, subtipos `0x00..0x14`), barreiras `readyMask1..3` e snapshots compactos de partida.
3. **`@rotastic/server` (`packages/server`):**
   - Servidor Node.js autoritativo de salas e partidas usando `ws`, rodando ticks determinísticos de física a `60 Hz` e difundindo estados aos clientes conectados.
4. **`@rotastic/client` (`packages/client`):**
   - Aplicação web empacotada com **Vite**, renderizando o jogo em **PixiJS v8**, gerenciando áudio via **Web Audio API**, predição local e interpolação de jogadores remotos.

## Consequências

- **Positivas:**
  - Elimina divergência entre a física predita pelo cliente e a física autoritativa do servidor.
  - Mudanças no protocolo binário são validadas em tempo de compilação (`pnpm typecheck`) simultaneamente no cliente e no servidor.
  - Instalação rápida e determinística via `pnpm-lock.yaml`.
- **Negativas / Mitigação:**
  - Requer ordem correta de build (`physics` e `protocol` antes de `server` e `client`), resolvida com `pnpm -r build` e aliases TypeScript (`tsconfig.base.json`) durante o desenvolvimento.
