<#
.SYNOPSIS
    Inicia a captura dinâmica de pacotes P2P/BlitzTech do Rotastic.exe via Frida e grava em reference/captures/.
.DESCRIPTION
    Anexa o script tools/netcapture/hook-steam-net.js ao processo Rotastic.exe (ou inicia o executável se solicitado)
    e grava todos os pacotes TX/RX e transições da máquina de estados em formato JSONL.
#>
param(
    [string]$ProcessName = "Rotastic.exe",
    [string]$OutputPrefix = "rotastic-netcapture"
)

$ErrorActionPreference = "Stop"
$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$CapturesDir = Join-Path $RepoRoot "reference\captures"
$HookScript = Join-Path $PSScriptRoot "hook-steam-net.js"

if (-not (Test-Path $CapturesDir)) {
    New-Item -ItemType Directory -Path $CapturesDir -Force | Out-Null
}

$Timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$OutFile = Join-Path $CapturesDir "$OutputPrefix-$Timestamp.jsonl"

Write-Host "[netcapture] Verificando disponibilidade do Frida CLI..." -ForegroundColor Cyan
$fridaCmd = Get-Command frida -ErrorAction SilentlyContinue
if (-not $fridaCmd) {
    Write-Warning "O comando 'frida' não foi encontrado no PATH. Instale com: pip install frida-tools"
    exit 1
}

Write-Host "[netcapture] Anexando ao processo '$ProcessName'..." -ForegroundColor Cyan
Write-Host "[netcapture] Saída JSONL: $OutFile" -ForegroundColor Green

& frida -n $ProcessName -l $HookScript --logfile $OutFile
