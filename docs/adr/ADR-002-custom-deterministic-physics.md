# ADR-002: Motor de Física Customizado 1:1 (`RotasticSimulation`) vs. Box2D / Rapier

- **Status:** Aceito
- **Data:** 2026-11-10
- **Contexto:** Evidências da Fase 2 ([`docs/spec/physics.md`](docs/spec/physics.md))

## Contexto e Problema

No plano preliminar antes da engenharia reversa, cogitou-se o uso de `Rapier` (WASM) ou `Planck.js` (Box2D) caso o jogo original utilizasse um motor de corpos rígidos tradicional com juntas de distância (`b2DistanceJoint`).

Porém, a desmontagem completa de [`CRotasticPhysicPlayer.asm`](reference/decompiled/disasm/CRotasticPhysicPlayer.asm) (`0x00690560..0x00693200`) na **Fase 2** provou que **Rotastic não utiliza Box2D, PhysX nem Havok**. A engine **BlitzTech** executa um integrador analítico 2D próprio (`RotasticSimulation`) com características muito específicas que definem a sensação ("game feel") do jogo:

1. **Órbita Pendular Analítica (`StepSwinging`, `0x00690FE0`):**
   - Enquanto preso a um pivô (`CAttachPoint`), o jogador **não** é simulado por restrição de junta iterativa: sua posição é calculada diretamente em coordenadas polares $(r, \theta)$ com conservação de energia mecânica ajustada por um fator de ganho de embalo no topo da órbita (`swingPumpFactor = 0.05` em `0x0095AD54`) e velocidade angular mínima (`omegaMin = 1.0471976 rad/s` = $60^\circ/\text{s}$ em `0x0095AD80`).
2. **Transição Balística (`StepFreeFall`, `0x00690620`):**
   - Ao soltar a corda, o vetor velocidade tangencial recebe impulso instantâneo nos últimos `0.2 s` (`releaseBoost = 1.1x`), com arrasto exponencial por eixo (`0.985^{60 \Delta t}`) e gravidade `9.81 m/s²`.
3. **Corte de Corda Geométrico (`CRotasticRope`, `0x0068E800`):**
   - O corte de corda é um teste de interseção círculo-segmento via produto vetorial 2D condicionado a uma velocidade mínima de corte (`vCutMin`) e janela de graça pós-engate (`graceTime`).
4. **Colisão Jogador-Jogador e Paredes (`0x006910F0` / `CWall`):**
   - Impulso elástico customizado com razão de energias cinéticas ao quadrado e tipos específicos de parede (`Bouncy`, `Deadly`, `Breakable`, `Slow`).

## Opções Consideradas

1. **Opção A (Escolhida): Implementar `RotasticSimulation` diretamente em TypeScript puro (`@rotastic/physics`)** reproduzindo linha a linha as equações e constantes IEEE-754 extraídas de `0x0095AD24..0x0095ADAC`.
2. **Opção B: Aproximar a mecânica usando Rapier (WASM) ou Planck.js (Box2D).**

## Decisão

Escolhemos a **Opção A (`@rotastic/physics` customizado 1:1)**.

## Justificativa e Consequências

- **Fidelidade 100% ao Original:** Motores Box2D/Rapier não possuem o bombeamento angularassimétrico (`0.05` no semicírculo superior) nem o limite inferior de velocidade angular (`60°/s`) que impedem o jogador de "estolar" no topo do giro no Rotastic. Reimplementar as fórmulas exatas do assembly garante a mesma sensação de controle.
- **Determinismo e Rollback/Reconciliação Trivial:** O estado completo de uma partida (4 jogadores, cordas, joias e armadilhas) ocupa menos de `1 KB` e pode ser copiado/restaurado instantaneamente para predição client-side e reconciliação em menos de `0.05 ms` por passo, sem depender de snapshots pesados de memória WASM.
- **Portabilidade Total:** Roda nativamente em qualquer versão do Node.js, navegador ou Web Worker sem carregamento assíncrono de binários WASM.
