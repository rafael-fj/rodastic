---
name: "Descoberta de Engenharia Reversa (RE Finding)"
about: "Registrar uma descoberta, hipótese ou estrutura binária/protocolo mapeada do Rotastic original"
title: "re(<escopo>): <resumo da descoberta ou hipótese>"
labels: ["re-research"]
---

## Contexto / Subsistema
- **Subsistema:** (ex.: `BlitzTech Package (.pc)`, `Physics / Rope`, `Steamworks Lobby`, `Netcode Packet`, `GameMode Deathmatch`)
- **Binário / Arquivo alvo:** (ex.: `Rotastic.exe`, `packages/w_online_refm.pc`, `packages/w_multi_dm_lvl01_fetm.pc`)
- **Endereço VA / Offset:** (ex.: `0x004XXXXX` ou offset de arquivo)

## Evidência Observada
Descreva o que foi confirmado estaticamente (Ghidra/REA/strings/hexdump) ou em runtime (Frida/x32dbg/Wireshark):
```text
Cole trechos de pseudocódigo, struct, strings ou bytes aqui
```

## Hipótese / Pendência (se houver)
O que ainda precisa ser confirmado em runtime ou comparado com outra captura?

## Critérios de Aceite
- [ ] Estrutura / constante / comportamento validado
- [ ] Documentado em `docs/spec/` ou `reference/decompiled/`
