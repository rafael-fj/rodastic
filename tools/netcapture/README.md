# Ferramentas de Captura e Auditoria de Rede (`tools/netcapture/`)

Este diretório contém os scripts para interceptação em tempo real e validação dinâmica da pilha de rede de 4 camadas do `Rotastic.exe` documentada em [`docs/spec/protocol.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/protocol.md) e [`docs/spec/state-machine.md`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/docs/spec/state-machine.md).

## Arquivos

- [`hook-steam-net.js`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/tools/netcapture/hook-steam-net.js): Script Frida para `Rotastic.exe` (x86 32-bit) que intercepta:
  - `CSteamP2PSocket::SendPacket` (`0x006BD6C0`) — decodifica o cabeçalho BlitzTech de 8 bytes, extrai o `CSteamID` remoto de `sockaddr_in.sin_zero[0..7]` e identifica os subtipos de lobby/partida (`packetType = 0x25`, subtipos `0x00..0x14`) e snapshots de replicação (`0xC1..0xFC`).
  - `CSteamP2PSocket::ReceivePacket` (`0x006BD7A0`) — registra todos os pacotes recebidos via `ISteamNetworking::ReadP2PPacket`.
  - `OnlineSession_UpdateStateMachine` (`0x006BA4E0`) — registra cada mudança de estado (`0x0B..0xDB`) e as máscaras de barreira (`readyMask1..3` em `+0x1680..+0x1688`).
- [`capture-packets.ps1`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/tools/netcapture/capture-packets.ps1): Wrapper PowerShell que anexa o Frida ao `Rotastic.exe` e salva os logs estruturados em `reference/captures/*.jsonl`.

## Como Executar

1. Instale o `frida-tools` (caso ainda não esteja instalado):
   ```powershell
   pip install frida-tools
   ```
2. Com o `Rotastic.exe` aberto via Steam, execute:
   ```powershell
   .\tools\netcapture\capture-packets.ps1
   ```
3. As capturas geradas em `reference/captures/` são rastreadas via Git LFS (`*.pcap`, `*.pcapng`) ou JSONL compactado.
