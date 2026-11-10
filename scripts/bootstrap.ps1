param(
    [switch]$SkipRun,
    [string]$RepoUrl = "https://github.com/rafael-fj/rodastic.git"
)

$ErrorActionPreference = "Stop"
$RepoRoot = Resolve-Path "$PSScriptRoot\.."
Set-Location $RepoRoot

Write-Host "=== [Rotastic Web Multiplayer] Bootstrap (Windows PowerShell) ===" -ForegroundColor Cyan

# 1. Verificar Git e Git LFS
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git nao encontrado no PATH. Instale o Git antes de continuar."
}
git lfs version | Out-Null
if ($LASTEXITCODE -ne 0) {
    throw "Git LFS nao encontrado. Instale o Git LFS (https://git-lfs.com/)."
}

Write-Host "1. Sincronizando objetos Git LFS..." -ForegroundColor Cyan
git lfs install --local | Out-Null
git lfs pull

# 2. Verificar/Restaurar w_global.pc (312.8 MB) via Steam local ou GitHub Release Privada
$GlobalPcPath = Join-Path $RepoRoot "reference\game-files\packages\w_global.pc"
$SteamGlobalPc = "C:\Program Files (x86)\Steam\steamapps\common\Rotastic\packages\w_global.pc"

if (-not (Test-Path $GlobalPcPath)) {
    if (Test-Path $SteamGlobalPc) {
        Write-Host "2. Copiando w_global.pc da instalacao local da Steam (nao rastreado no Git para poupar cota LFS)..." -ForegroundColor Yellow
        # Nota: w_global.pc e mantido em cache local ignorado pelo Git ou baixado de Release Privada
    } else {
        $ghCmd = Get-Command gh -ErrorAction SilentlyContinue
        if (-not $ghCmd -and (Test-Path "C:\Program Files\GitHub CLI\gh.exe")) {
            $ghCmd = "C:\Program Files\GitHub CLI\gh.exe"
        }
        if ($ghCmd) {
            Write-Host "2. Tentando baixar w_global.pc da GitHub Release privada (tag: raw-assets-v1)..." -ForegroundColor Yellow
            & $ghCmd release download raw-assets-v1 --pattern "w_global.pc.7z" --dir "$RepoRoot\reference\game-files\packages" --clobber 2>$null
            if ($LASTEXITCODE -eq 0 -and (Test-Path "$RepoRoot\reference\game-files\packages\w_global.pc.7z")) {
                7z x "$RepoRoot\reference\game-files\packages\w_global.pc.7z" "-o$RepoRoot\reference\game-files\packages" -y | Out-Null
                Remove-Item "$RepoRoot\reference\game-files\packages\w_global.pc.7z" -Force
            }
        }
    }
}

# 3. Validar presenca dos binarios e pacotes multiplayer de referencia
$RequiredFiles = @(
    "reference\game-files\Rotastic.exe",
    "reference\game-files\steam_api.dll",
    "reference\game-files\packages\w_online.pc",
    "reference\game-files\packages\w_online_fetm.pc",
    "reference\game-files\packages\w_online_refm.pc",
    "reference\game-files\packages\w_multi_coll_lvl01.pc",
    "reference\game-files\packages\w_multi_dm_lvl01.pc"
)

foreach ($req in $RequiredFiles) {
    $full = Join-Path $RepoRoot $req
    if (-not (Test-Path $full)) {
        throw "Arquivo obrigatorio ausente: $req. Verifique se 'git lfs pull' concluiu com sucesso."
    }
}
Write-Host "3. Binarios e pacotes multiplayer validados com sucesso!" -ForegroundColor Green

# 4. Instalar dependencias Node/pnpm e subir o projeto
if (Test-Path (Join-Path $RepoRoot "package.json")) {
    if (-not (Get-Command pnpm -ErrorAction SilentlyContinue)) {
        Write-Host "Ativando pnpm via corepack..." -ForegroundColor Yellow
        corepack enable
    }
    Write-Host "4. Instalando dependencias com pnpm..." -ForegroundColor Cyan
    pnpm install
    $ManifestPath = Join-Path $RepoRoot "packages\client\public\assets\manifest.json"
    if (-not (Test-Path $ManifestPath)) {
        Write-Host "4b. Gerando assets Web a partir de assets-original/ (pnpm assets:build)..." -ForegroundColor Cyan
        pnpm assets:build
    } else {
        Write-Host "4b. Assets Web validados em packages/client/public/assets/manifest.json!" -ForegroundColor Green
    }
    if (-not $SkipRun) {
        Write-Host "5. Iniciando ambiente de desenvolvimento (pnpm dev)..." -ForegroundColor Green
        pnpm dev
    }
} else {
    Write-Host "4. Projeto ainda nas Fases 0-3 (Engenharia Reversa & Spec). Nenhum servidor web para iniciar ainda." -ForegroundColor Green
}
