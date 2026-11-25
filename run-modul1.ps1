$ErrorActionPreference = 'Stop'
Set-Location (Join-Path $PSScriptRoot 'modul1_aplikasiku')

Write-Host 'Modul 1 (Ionic Angular) -> http://localhost:8100' -ForegroundColor Green
npm start -- --port 8100
