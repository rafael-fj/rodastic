# ADR-004: Renderizador Cliente WebGL 2D (PixiJS v8 + Vite) e Web Audio API

- **Status:** Aceito
- **Data:** 2026-11-10
- **Contexto:** Evidências da Fase 1 ([`docs/01-assets-catalog.md`](docs/01-assets-catalog.md)) e Fase 2 ([`docs/spec/gameplay.md`](docs/spec/gameplay.md))

## Contexto e Problema

A engenharia reversa dos pacotes `.pc` na Fase 1 e dos mapas multiplayer na Fase 2 mostrou que:
1. O gameplay do Rotastic ocorre inteiramente no **plano 2D $(X, Y)$** com câmera ortográfica/2.5D enquadrando a arena (`[-20, +20] x [-12, +12]` unidades de mundo).
2. Todos os recursos visuais e sonoros já foram extraídos em `assets-original/`:
   - **934 texturas `.dds`** (264 globais de UI/personagens/itens/cordas + 670 de mapas multiplayer);
   - **172 efeitos sonoros `.wav`** (`PCM` / `MS-ADPCM` em `assets-original/audio/sfx/`).
3. Como já possuímos nosso próprio motor de física determinístico (`@rotastic/physics`, ver [`ADR-002`](docs/adr/ADR-002-custom-deterministic-physics.md)), não precisamos de uma engine pesada que embuta física acoplada.

## Decisão

1. **Renderização 2D com PixiJS v8 + Vite (`@rotastic/client`):**
   - Utilizar **PixiJS v8** (WebGL2 / WebGPU com fallback Canvas) empacotado via **Vite**.
   - A cena de partida é estruturada em camadas (`Container`) ordenadas por profundidade:
     1. `BackgroundLayer` (texturas de fundo temáticas do mundo: `basic`, `ero`, `jem`, `koth`);
     2. `ArenaGridLayer` (paredes `CWall`, zonas mortas, vórtices `CGravityVortex` e armadilhas);
     3. `PickupsLayer` (joias bronzes, pratas, ouros e diamantes com animação de pulso e coleta);
     4. `RopesAndPivotsLayer` (pivôs `CAttachPoint`, linhas de tensão `CRotasticRope` e faíscas de corte de corda);
     5. `PlayersLayer` (capacete/personagem dos 4 jogadores, indicador de cor/time, rastro de velocidade e efeito de tontura/morte);
     6. `HudOverlayLayer` (placar em tempo real, cronômetro da partida, indicador de ping/RTT e avisos de *Sudden Death*).
2. **Áudio com Web Audio API Nativa:**
   - Gerenciador de áudio leve sobre a `AudioContext` padrão do navegador, reproduzindo os efeitos convertidos do jogo original (engate na âncora, giro, corte de corda, coleta de joias, colisão, explosão, contagem regressiva e vitória) com controle de volume e *pitch variation* sutil.
3. **Pipeline de Conversão de Assets (Fase 5):**
   - As texturas `.dds` (`DXT1`/`DXT3`/`DXT5`) e áudios `.wav` de `assets-original/` serão convertidos por um script Node.js reproduzível (`tools/assets/build-web-assets.mjs`) para `.png`/`.webp` + manifesto JSON e `.wav`/`.ogg` prontos para o navegador em `packages/client/public/assets/`.

## Consequências

- **Positivas:**
  - Desempenho de `60/120 FPS` estável em qualquer navegador moderno, com inicialização instantânea no Vite (`< 300 ms`).
  - Desacoplamento total entre a simulação lógica (`@rotastic/physics`) e a camada visual (`PixiJS`), facilitando testes headless e bots automatizados.
