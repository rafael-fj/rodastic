# ADR-003: Servidor Autoritativo (`peerId = 0`) e Protocolo Binário sobre WebSocket

- **Status:** Aceito
- **Data:** 2026-11-10
- **Contexto:** Evidências da Fase 3 ([`docs/spec/protocol.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/protocol.md) e [`docs/spec/state-machine.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/state-machine.md))

## Contexto e Problema

No jogo original, a sessão multiplayer opera em topologia **Estrela Client-Host**:
- O jogador que cria a sala assume `peerId = 0` (Host autoritativo) e os demais jogadores assumem `peerId = 1..3`.
- Os pacotes trafegam via `CSteamP2PSocket` (`0x006BD5C0`) tunelados sobre `ISteamNetworking` P2P.
- Se o jogador Host (`peerId = 0`) fechar o jogo ou perder a conexão, a sessão inteira cai (`SESSION_CLOSED = 0x26` / timeout para estado `0xDA`), pois não há migração de Host.

Na versão Web, queremos preservar a máquina de estados e o protocolo de partida do jogo original, mas eliminar a dependência do Steamworks, os problemas de NAT P2P e a queda da sala quando o criador desconecta.

## Decisão

1. **Topologia Autoritativa Dedicada (`Servidor Node.js == peerId 0`):**
   - O servidor Node.js (`@rotastic/server`, utilizando a biblioteca `ws`) atua permanentemente como o **`peerId = 0` (Host autoritativo da sessão)**.
   - Os jogadores nos navegadores conectam-se via WebSocket binário (`binaryType = "arraybuffer"`) e recebem `peerId = 1..4` (mapeados para os slots de jogador `0..3`).
   - O primeiro jogador humano na sala recebe permissão de *Room Leader* para escolher mapa/modo no lobby (`msgSubType = 0x07`), e se ele sair, a liderança de menu passa automaticamente para o próximo jogador ativo sem derrubar a partida.
2. **Protocolo Binário Compartilhado (`@rotastic/protocol`):**
   - Mantém o **Cabeçalho BlitzTech de 8 bytes** (`packetType`, `flags`, `totalSize`, `seqNum`, `senderPeerId`, `destPeerId`).
   - Preserva os opcodes do protocolo original:
     - `0x03` / `0x04` / `0x06`: Handshake de conexão e atribuição de `peerId`.
     - `0x0B`: `PING_CLOCK_SYNC` com cálculo de `RTT`, `clockOffset` e tabela de RTTs comprimidos de todos os jogadores da sala.
     - `0x25`: Mensagens de aplicação e lobby (`subTypes` `0x00`, `0x01`, `0x02`, `0x05`, `0x06`, `0x07`, `0x0D`, `0x0E`, `0x13`, `0x14`) e as **3 barreiras bitmask** (`readyMask1..3`: Lobby Ready, Map Loaded, Post-Match Ack).
     - `0xC1`: Snapshot binário compacto de simulação (`tick`, estado dos 4 jogadores, cordas, itens coletáveis, armadilhas e placar) + `0xC2` (comando de input do cliente com `inputSeq` e `buttonsMask`).
3. **Modelo de Sincronização (Tick Autoritativo `60 Hz` + Predição/Interpolação):**
   - **Servidor:** Roda o loop de física `RotasticSimulation` a exatos **`60 Hz` (`16.666 ms`)** e transmite snapshots de mundo a `30 Hz` (configurável até `60 Hz` em LAN/local).
   - **Cliente Local:** Aplica seus inputs (`gancho/soltar` e `direção`) imediatamente na sua instância local de `@rotastic/physics` (predição com latência zero de resposta visual) e executa reconciliação suave ao receber o snapshot autoritativo do servidor.
   - **Entidades Remotas:** Interpoladas no cliente com buffer de `~50 ms` (2–3 snapshots) usando interpolação angular contínua para giros em pivôs e linear/Hermite em queda livre.

## Consequências

- **Positivas:**
  - Arquitetura fiel às mensagens e estados reais do `Rotastic.exe`, mas imune a trapaças client-side, problemas de firewall/NAT e quedas de Host.
  - Baixíssimo consumo de banda (`~120 bytes` por snapshot de 4 jogadores -> `< 4 KB/s` por cliente a 30 Hz).
