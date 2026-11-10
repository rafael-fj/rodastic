#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

echo "=== [Rotastic Web Multiplayer] Bootstrap (Linux/macOS/Git Bash) ==="

if ! command -v git >/dev/null 2>&1; then
  echo "Erro: git nao encontrado no PATH." >&2
  exit 1
fi

if ! git lfs version >/dev/null 2>&1; then
  echo "Erro: git-lfs nao encontrado. Instale o Git LFS (https://git-lfs.com/)." >&2
  exit 1
fi

echo "1. Sincronizando objetos Git LFS..."
git lfs install --local >/dev/null
git lfs pull

REQUIRED_FILES=(
  "reference/game-files/Rotastic.exe"
  "reference/game-files/steam_api.dll"
  "reference/game-files/packages/w_online.pc"
  "reference/game-files/packages/w_online_fetm.pc"
  "reference/game-files/packages/w_online_refm.pc"
  "reference/game-files/packages/w_multi_coll_lvl01.pc"
  "reference/game-files/packages/w_multi_dm_lvl01.pc"
)

for req in "${REQUIRED_FILES[@]}"; do
  if [ ! -f "$req" ]; then
    echo "Erro: Arquivo obrigatorio ausente: $req" >&2
    exit 1
  fi
done
echo "2. Binarios e pacotes multiplayer validados com sucesso!"

if [ -f "package.json" ]; then
  if ! command -v pnpm >/dev/null 2>&1; then
    corepack enable
  fi
  echo "3. Instalando dependencias com pnpm..."
  pnpm install
  if [ "${SKIP_RUN:-0}" != "1" ]; then
    echo "4. Iniciando ambiente de desenvolvimento (pnpm dev)..."
    pnpm dev
  fi
else
  echo "3. Projeto nas Fases 0-3 (Engenharia Reversa & Spec). Pronto para analise!"
fi
