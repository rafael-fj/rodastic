param(
    [string]$SourceGameDir = $env:ROTASTIC_SOURCE_DIR,
    [string]$DestDir = "$PSScriptRoot\..\reference\game-files"
)

$ErrorActionPreference = "Stop"

if (-not $SourceGameDir -or -not (Test-Path $SourceGameDir)) {
    throw "Diretorio do Rotastic nao encontrado. Defina a variavel ROTASTIC_SOURCE_DIR ou passe -SourceGameDir <caminho>"
}

$DestDir = [System.IO.Path]::GetFullPath($DestDir)
$DestPkgDir = Join-Path $DestDir "packages"
$DestUkDir = Join-Path $DestPkgDir "uk"

New-Item -ItemType Directory -Path $DestDir -Force | Out-Null
New-Item -ItemType Directory -Path $DestPkgDir -Force | Out-Null
New-Item -ItemType Directory -Path $DestUkDir -Force | Out-Null

Write-Host "1. Copiando executavel e arquivos de referencia..." -ForegroundColor Cyan
Copy-Item "$SourceGameDir\Rotastic.exe" -Destination $DestDir -Force
if (Test-Path "$SourceGameDir\steam_api.dll") {
    Copy-Item "$SourceGameDir\steam_api.dll" -Destination $DestDir -Force
}

Write-Host "2. Copiando manifestos e arquivos de configuracao de packages/..." -ForegroundColor Cyan
Copy-Item "$SourceGameDir\packages\envvars.PC" -Destination $DestPkgDir -Force
Copy-Item "$SourceGameDir\packages\fet_PC.txt" -Destination $DestPkgDir -Force

Write-Host "3. Copiando localizacao em Ingles (packages/uk/w_loca.pc)..." -ForegroundColor Cyan
Copy-Item "$SourceGameDir\packages\uk\w_loca.pc" -Destination $DestUkDir -Force

Write-Host "4. Copiando pacotes Core, Menus, Online e Mapas Multiplayer (excluindo w_solo* e w_global.pc >300MB)..." -ForegroundColor Cyan
$pkgFiles = Get-ChildItem -Path "$SourceGameDir\packages" -File | Where-Object {
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
