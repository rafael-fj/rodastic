# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Inicialização do repositório, configuração de `.gitattributes` (Git LFS), `.gitignore`, templates de Issue/PR e workflow de CI (guarda de arquivos > 90 MB).
- `docs/00-recon.md`: Reconhecimento completo da instalação Steam do Rotastic (identificação da engine **BlitzTech** C++ x86 nativa, pacotes `.pc` / `_fetm.pc` / `_refm.pc`, classes refletidas `CRotastic*` / `fa*` / `ff*` e integração `steam_api.dll` + `WS2_32.dll`).
- `tools/README.md`: Guia de ferramentas portáteis de engenharia reversa para binários nativos x86 e pacotes BlitzTech.
