# Fase 1 — Catálogo de Pacotes e Assets Extraídos (`01-assets-catalog.md`)

> Gerado automaticamente por [`tools/extract/extract-packages.mjs`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/tools/extract/extract-packages.mjs).
> Catálogo JSON completo em [`reference/decompiled/packages-catalog.json`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/reference/decompiled/packages-catalog.json).

## 1. Formato Binário dos Pacotes BlitzTech (`.pc`, `_fetm.pc`, `_refm.pc`)

A engenharia reversa dos cabeçalhos confirmou a especificação exata dos contêineres da BlitzTech:

- **Header do Pacote (`0x000..0x18F`, 400 bytes):**
  - `0x00` (`uint32`): Hash/CRC do pacote.
  - `0x04` (`uint32`): Alinhamento de setor (`0x10` = 16 bytes).
  - `0x0C` (`uint32`): `entryCount` (total de recursos empacotados).
  - `0x18` (`uint32`): `dataStartSector` (início da área de dados em múltiplos de 16 bytes).
  - `0x1C` (`uint32`): `stringTableSize` (tamanho da tabela de nomes em bytes).
  - `0x20` (`uint32`): `payloadSize` (tamanho total útil após o header de `0x190` bytes).
  - `0x30` (`uint32`): `directorySize` (`entryCount * 32` bytes).
- **Tabela de Diretório (`0x190 .. 0x190 + entryCount * 32`):** Cada entrada possui 32 bytes:
  - `+0x00` (`uint32`): `sectorOffset` (offset absoluto no arquivo = `sectorOffset * 16`).
  - `+0x04` (`uint32`): `assetHash` (hash de 32 bits do recurso).
  - `+0x08` (`uint32`): `sizeBytes` (tamanho exato do chunk em bytes).
  - `+0x0C` (`uint32`): `nameOffset` (offset relativo ao início da String Table em `0x190 + entryCount * 32`).
  - `+0x10` (`char[4]`): `fourCC` (`TEXR`, `SAMP`, `MTRL`, `VTXD`, `VSHR`, `PSHR`, `ACTR`, `REFD`, `STAB`, `SBNK`, `FONT`, `ASTR`, `STRD`, ou `00 00 00 00` para streams `FETM`).
  - `+0x14` (`uint32`): `typeOrContentHash`.
- **Header Comum de Recurso (`0x00..0x2F`, 48 bytes no início de cada chunk):**
  - `+0x06` (`uint16`): Tipo numérico do recurso (`0x01` = `TEXR`, `0x02` = `SAMP`, `0x04` = `STAB`, `0x0A` = `REFD`, `0x0B` = `SBNK`).
  - `+0x08` (`uint32`): `assetHash`.
  - `+0x0C` (`uint32`): `sizeBytes`.
  - `+0x30`: Início dos metadados específicos do formato (`SAMP`: `sampleRate` em `+0x30`, `numSamples` em `+0x34`, `channels` em `+0x3C`, `bitsPerSample` em `+0x40`, PCM em `+0x50`; `TEXR`: `fmt` em `+0x3C`, `width` em `+0x3E`, `height` em `+0x40`, `mips` em `+0x4D`, `frames` em `+0x4E`, pixels em `+0x84 + (frames-1)*8`).

---

## 2. Resumo das Extrações Realizadas

- **Arquivos `_refm.pc` decodificados para JSON (`reference/decompiled/refm/`):** `21`
- **Arquivos `_fetm.pc` decodificados para JSON (`reference/decompiled/fetm/`):** `21`
- **Efeitos Sonoros Multiplayer/Core extraídos em WAV (`assets-original/audio/sfx/`):** `172` arquivos
- **Texturas Globais de Personagens/Cordas/Joias/HUD em DDS (`assets-original/textures/global/`):** `271` arquivos
- **Texturas dos 19 Mapas Multiplayer em DDS (`assets-original/textures/multiplayer/`):** `360` arquivos

---

## 3. Catálogo dos 19 Mapas Multiplayer (`w_multi_*` e `w_ps3_*`)

| Pacote Base | Modo | Tamanho (`.pc`) | Recursos (`.pc`) | Entidades (`_fetm.pc`) | Reflexão (`_refm.pc`) |
| :--- | :--- | :---: | :--- | :---: | :---: |
| `w_multi_dm_lvl01` | Deathmatch (Batalha) | 857.8 KB | MTRL:5, VSHR:7, TEXR:30, VTXD:2, ACTR:7, PSHR:5 | 228.7 KB | 87 REFD |
| `w_multi_dm_lvl02` | Deathmatch (Batalha) | 881.8 KB | TEXR:42, MTRL:4, VSHR:5, VTXD:2, PSHR:4, ACTR:9 | 218.6 KB | 87 REFD |
| `w_multi_dm_lvl04` | Deathmatch (Batalha) | 990.6 KB | TEXR:54, MTRL:4, VSHR:5, ACTR:10, VTXD:2, PSHR:4 | 240.6 KB | 93 REFD |
| `w_multi_dm_lvl07` | Deathmatch (Batalha) | 531.3 KB | TEXR:26, MTRL:4, VSHR:5, VTXD:2, ACTR:4, PSHR:4 | 222.1 KB | 86 REFD |
| `w_multi_dm_lvl09` | Deathmatch (Batalha) | 573.7 KB | MTRL:5, VSHR:7, TEXR:30, VTXD:2, ACTR:7, PSHR:5 | 223.8 KB | 89 REFD |
| `w_multi_dm_lvl10` | Deathmatch (Batalha) | 370.2 KB | TEXR:26, MTRL:4, VSHR:5, VTXD:2, PSHR:4, ACTR:3 | 215.2 KB | 86 REFD |
| `w_multi_dm_lvl11` | Deathmatch (Batalha) | 358.3 KB | ACTR:5, TEXR:28, MTRL:4, VSHR:5, VTXD:2, PSHR:4 | 223.5 KB | 87 REFD |
| `w_multi_dm_lvl13` | Deathmatch (Batalha) | 370.2 KB | TEXR:26, MTRL:4, VSHR:5, VTXD:2, PSHR:4, ACTR:3 | 229.3 KB | 87 REFD |
| `w_ps3_deathmatch_2` | Deathmatch (Batalha) | 2850.4 KB | TEXR:32, MTRL:4, VSHR:5, VTXD:2, PSHR:4, ACTR:4 | 232.4 KB | 94 REFD |
| `w_ps3_deathmatch_3` | Deathmatch (Batalha) | 1824.4 KB | MTRL:4, VSHR:5, TEXR:31, VTXD:2, PSHR:4, ACTR:4 | 245.2 KB | 94 REFD |
| `w_ps3_deathmatch_4` | Deathmatch (Batalha) | 3915.2 KB | ACTR:5, TEXR:35, MTRL:4, VSHR:5, VTXD:2, PSHR:4 | 240.7 KB | 94 REFD |

---

## 4. Pacotes Core, Online e Menus

| Pacote | Tamanho | Total de Entradas | Distribuição por FourCC |
| :--- | :---: | :---: | :--- |
| `w_global.pc (hydrated)` | 320305.2 KB | 2148 | SAMP:788, SPAT:492, TEXR:509, ACTR:275, FETM:1, VSHR:9, STAB:40, VTXD:3, MTRL:5, ASTR:11, STRD:11, FONT:1, SBNK:1, PSHR:2 |
| `frameworkhostassets.pc` | 43.4 KB | 13 | PSHR:8, TEXR:2, MTRL:1, VSHR:1, VTXD:1 |
| `frameworkhostassets_refm.pc` | 0.4 KB | 0 | - |
| `uk/w_loca.pc` | 13834.8 KB | 14 | TEXR:7, VTXD:2, FONT:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_bootload_bs_01_videofocus.pc` | 3.7 KB | 5 | VTXD:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_bootload_bs_02_ddlogo.pc` | 1300.0 KB | 16 | STAB:8, FONT:1, VTXD:2, TEXR:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_bootload_bs_03_blitztech.pc` | 1040.2 KB | 14 | TEXR:1, STAB:8, VTXD:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_bootload_bs_04_soundlogo.pc` | 0.4 KB | 0 | - |
| `w_bootload_bs_05_rotaintro.pc` | 3.7 KB | 5 | VTXD:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_bootload_fetm.pc` | 25.8 KB | 1 | FETM:1 |
| `w_bootload_legalsplash_01.pc` | 1427.9 KB | 16 | STAB:8, TEXR:2, FONT:1, VTXD:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_bootload_refm.pc` | 19.7 KB | 21 | REFD:21 |
| `w_bootload_world.pc` | 517.3 KB | 6 | VTXD:2, MTRL:1, PSHR:1, FONT:1, VSHR:1 |
| `w_debug.pc` | 3.7 KB | 5 | VTXD:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_debug_fetm.pc` | 18.3 KB | 1 | FETM:1 |
| `w_debug_refm.pc` | 16.1 KB | 13 | REFD:13 |
| `w_frontendrota_fetm.pc` | 25.6 KB | 1 | FETM:1 |
| `w_frontendrota_frontend_menupages.pc` | 2564.1 KB | 7 | VTXD:2, TEXR:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_frontendrota_refm.pc` | 43.7 KB | 24 | REFD:24 |
| `w_frontendrota_world.pc` | 1231.8 KB | 10 | TEXR:4, ACTR:1, PSHR:1, MTRL:1, VSHR:2, VTXD:1 |
| `w_gamecommonrotastic_fetm.pc` | 84.4 KB | 1 | FETM:1 |
| `w_gamecommonrotastic_game_menupages.pc` | 28874.3 KB | 112 | TEXR:95, VTXD:2, MTRL:2, PSHR:2, ACTR:8, VSHR:3 |
| `w_gamecommonrotastic_refm.pc` | 60.6 KB | 30 | REFD:30 |
| `w_gamecommonrotastic_world.pc` | 0.4 KB | 0 | - |
| `w_gamelevel_fetm.pc` | 2.2 KB | 1 | FETM:1 |
| `w_gamelevel_refm.pc` | 14.2 KB | 10 | REFD:10 |
| `w_gamelevel_world.pc` | 3.7 KB | 5 | VTXD:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_global_fetm.pc` | 281.0 KB | 1 | FETM:1 |
| `w_global_refm.pc` | 62.2 KB | 66 | REFD:66 |
| `w_loca_fetm.pc` | 4.9 KB | 1 | FETM:1 |
| `w_loca_refm.pc` | 15.5 KB | 11 | REFD:11 |
| `w_menurotastic_common_menupages.pc` | 63104.6 KB | 224 | TEXR:214, VTXD:2, ACTR:1, MTRL:2, PSHR:2, VSHR:3 |
| `w_menurotastic_fetm.pc` | 497.9 KB | 1 | FETM:1 |
| `w_menurotastic_refm.pc` | 116.6 KB | 55 | REFD:55 |
| `w_menurotastic_world.pc` | 67.9 KB | 6 | VTXD:2, TEXR:1, MTRL:1, PSHR:1, VSHR:1 |
| `w_online.pc` | 3.7 KB | 5 | VTXD:2, MTRL:1, PSHR:1, VSHR:1 |
| `w_online_fetm.pc` | 20.2 KB | 1 | FETM:1 |
| `w_online_refm.pc` | 17.8 KB | 14 | REFD:14 |
| `w_transition_fetm.pc` | 29.1 KB | 1 | FETM:1 |
| `w_transition_refm.pc` | 47.0 KB | 32 | REFD:32 |
| `w_transition_transitionpages.pc` | 2116.9 KB | 17 | VTXD:2, TEXR:7, MTRL:2, PSHR:2, VSHR:3, ACTR:1 |
| `w_transition_world.pc` | 0.4 KB | 0 | - |
