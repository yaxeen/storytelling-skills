# Rebuilds dist/<name>.skill from each folder in skills/.
# Each .skill is a zip whose single entry is "<name>/SKILL.md".
$ErrorActionPreference = "Stop"
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$root    = Split-Path $PSScriptRoot -Parent
$src     = Join-Path $root "skills"
$distDir = Join-Path $root "dist"
New-Item -ItemType Directory -Force -Path $distDir | Out-Null

Get-ChildItem -Path $src -Directory | ForEach-Object {
    $name   = $_.Name
    $skillMd = Join-Path $_.FullName "SKILL.md"
    $out    = Join-Path $distDir "$name.skill"
    if (Test-Path $out) { Remove-Item $out -Force }
    $zip = [System.IO.Compression.ZipFile]::Open($out, [System.IO.Compression.ZipArchiveMode]::Create)
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $skillMd, "$name/SKILL.md") | Out-Null
    $zip.Dispose()
    Write-Host "Packaged $name.skill"
}
