# Rebuilds dist/<name>.skill from each folder in skills/.
# Each .skill is a zip of the whole skill folder ("<name>/SKILL.md", "<name>/patterns.md", ...).
$ErrorActionPreference = "Stop"
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$root    = Split-Path $PSScriptRoot -Parent
$src     = Join-Path $root "skills"
$distDir = Join-Path $root "dist"
New-Item -ItemType Directory -Force -Path $distDir | Out-Null

Get-ChildItem -Path $src -Directory | ForEach-Object {
    $name = $_.Name
    $dir  = $_.FullName
    $out  = Join-Path $distDir "$name.skill"
    if (-not (Test-Path (Join-Path $dir "SKILL.md"))) { return }
    if (Test-Path $out) { Remove-Item $out -Force }
    $zip = [System.IO.Compression.ZipFile]::Open($out, [System.IO.Compression.ZipArchiveMode]::Create)
    Get-ChildItem -Path $dir -File -Recurse | ForEach-Object {
        $rel = $_.FullName.Substring($dir.Length + 1) -replace '\\', '/'
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $_.FullName, "$name/$rel") | Out-Null
    }
    $zip.Dispose()
    Write-Host "Packaged $name.skill"
}
