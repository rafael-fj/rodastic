# Ferramentas de Engenharia Reversa e Análise (`tools/`)

Como o **Rotastic** utiliza a engine proprietária **BlitzTech** em **C++ nativo 32-bit (x86)** (`Rotastic.exe` + `steam_api.dll` + pacotes `.pc`, `_fetm.pc` e `_refm.pc`), não utilizamos decompiladores .NET/Unity (ILSpy/AssetRipper), e sim ferramentas para **PE x86 nativo**, **parsers próprios de pacotes BlitzTech** e **instrumentação dinâmica**.

Este guia lista as ferramentas portáteis (sem necessidade de instalação com privilégios de administrador quando aplicável) para continuar a análise em qualquer máquina.

---

## 1. Análise Estática e Decompilação C++ (x86)

### Ghidra (Recomendado — Portátil via ZIP)
- **Repositório oficial:** https://github.com/NationalSecurityAgency/ghidra/releases
- **Requisitos:** JDK 21+ (ex.: Eclipse Temurin 21 portátil em `.zip`).
- **Como usar no projeto:**
  1. Baixe o `.zip` do Ghidra e extraia em uma pasta local fora do repo (ou use o servidor MCP `rea` integrado ao Antigravity).
  2. Importe `reference/game-files/Rotastic.exe` (Formato PE x86, Visual Studio C++, `ImageBase = 0x00400000`).
  3. As exportações de decompilação, tabelas de classes `CRotastic*`, ações `fa*`, condições `ff*` e structs ficam salvas em `reference/decompiled/` (versionadas no Git para consulta sem precisar abrir o Ghidra).

### Detect It Easy (DIE) — Inspeção de PE, Seções e Compilador
- **Repositório oficial:** https://github.com/horsicq/Detect-It-Easy/releases
- **Versão recomendada:** `die_win64_portable_*.zip` (CLI `diec.exe` + GUI `die.exe`).

---

## 2. Depuração e Instrumentação Dinâmica (Runtime & Netcode)

### x64dbg (x32dbg) — Debugger Nativo 32-bit Portátil
- **Repositório oficial:** https://github.com/x64dbg/x64dbg/releases
- **Nota:** Como `Rotastic.exe` é **32-bit (`x86`)**, utilize sempre o executável **`x32dbg.exe`**.

### Frida — Hooks Dinâmicos em `Rotastic.exe`, `steam_api.dll` e `WS2_32.dll`
- **Repositório oficial:** https://github.com/frida/frida
- **Instalação rápida (Python/uv):**
  ```powershell
  pip install frida-tools
  ```
- **Uso no projeto:** Os scripts em `tools/netcapture/` interceptam chamadas de `ISteamMatchmaking`, `ISteamNetworking` (`SendP2PPacket`, `ReadP2PPacket`), `WS2_32.dll` (`sendto`, `recvfrom`) e funções internas da BlitzTech (`ReplicatingProp`, `CModeMultiDeathMatch`, `CModeMultiCollecte`, `CRotasticPhysicPlayer`, `CRotasticRope`).

### Wireshark + Npcap — Captura de Pacotes
- **Site oficial:** https://www.wireshark.org/
- **Uso:** Captura de tráfego UDP/Steam P2P na interface de rede e no adaptador `Npcap Loopback Adapter`. Salvar capturas filtradas em `reference/captures/*.pcapng` (via Git LFS).

---

## 3. Extração de Pacotes BlitzTech (`tools/extract/`)

O Rotastic armazena seus dados na pasta `packages/` em trios de arquivos por mundo/nível:
1. `<nome>.pc`: Geometria (`VTXD`), materiais (`MTRL`), shaders (`VSHR`, `PSHR`, `CTAB`), texturas (`DDS`) e bancos de áudio.
2. `<nome>_fetm.pc`: Mapa de entidades do editor BlitzTech (*Front-End / Entity Table Map*, com cabeçalho de autor/data e nós `world`, `sector`, propriedades e posições).
3. `<nome>_refm.pc`: Metadados de reflexão (`REFD` / `refdata_<classe>_0x<hash>`) que descrevem os parâmetros serializados de física, corda, armadilhas, mapas e modos multiplayer.

Os scripts em `tools/extract/` (em Python/Node.js, zero dependências externas pesadas) fazem o parse e a extração desses arquivos para `reference/decompiled/` e `assets-original/`.
