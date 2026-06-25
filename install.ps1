# Installs every skill in skills/ into your personal Claude Code skills directory.
$ErrorActionPreference = "Stop"

$dest = Join-Path $HOME ".claude\skills"
$src  = Join-Path $PSScriptRoot "skills"

New-Item -ItemType Directory -Force -Path $dest | Out-Null

Get-ChildItem -Path $src -Directory | ForEach-Object {
    $target = Join-Path $dest $_.Name
    if (Test-Path $target) { Remove-Item $target -Recurse -Force }
    Copy-Item $_.FullName $target -Recurse -Force
    Write-Host "Installed $($_.Name)"
}

Write-Host ""
Write-Host "Done. Restart Claude Code to load the skills."
