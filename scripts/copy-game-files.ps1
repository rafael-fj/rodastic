param(
    [string]$SteamGameDir = "C:\Program Files (x86)\Steam\steamapps\common\Rotastic",
    [string]$DestDir = "$PSScriptRoot\..\reference\game-files"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $SteamGameDir)) {
    throw "Diretorio do Rotastic nao encontrado em: $SteamGameDir"
}

$DestDir = [System.IO.Path]::GetFullPath($DestDir)
$DestPkgDir = Join-Path $DestDir "packages"
$DestUkDir = Join-Path $DestPkgDir "uk"

New-Item -ItemType Directory -Path $DestDir -Force | Out-Null
New-Item -ItemType Directory -Path $DestPkgDir -Force | Out-Null
New-Item -ItemType Directory -Path $DestUkDir -Force | Out-Null

Write-Host "1. Copiando executavel e DLL da Steam..." -ForegroundColor Cyan
Copy-Item "$SteamGameDir\Rotastic.exe" -Destination $DestDir -Force
Copy-Item "$SteamGameDir\steam_api.dll" -Destination $DestDir -Force

Write-Host "2. Copiando manifestos e arquivos de configuracao de packages/..." -ForegroundColor Cyan
Copy-Item "$SteamGameDir\packages\envvars.PC" -Destination $DestPkgDir -Force
Copy-Item "$SteamGameDir\packages\fet_PC.txt" -Destination $DestPkgDir -Force

Write-Host "3. Copiando localizacao em Ingles (packages/uk/w_loca.pc)..." -ForegroundColor Cyan
Copy-Item "$SteamGameDir\packages\uk\w_loca.pc" -Destination $DestUkDir -Force

Write-Host "4. Copiando pacotes Core, Menus, Online e Mapas Multiplayer (excluindo w_solo* e w_global.pc >300MB)..." -ForegroundColor Cyan
$pkgFiles = Get-ChildItem -Path "$SteamGameDir\packages" -File | Where-Object {
    $_.Extension -eq ".pc" -and
    $_.Name -notmatch '^w_solo' -and
    $_.Name -ne "w_global.pc"
}

foreach ($f in $pkgFiles) {
    Copy-Item $f.FullName -Destination $DestPkgDir -Force
}

$copied = Get-ChildItem -Path $DestDir -Recurse -File
$totalMB = [math]::Round(($copied | Measure-Object -Property Length -Sum).Sum / 1MB, 2)
Write-Host ("Concluido! {0} arquivos copiados para reference/game-files/ ({1} MB total)." -f $copied.Count, $totalMB) -ForegroundColor Green
