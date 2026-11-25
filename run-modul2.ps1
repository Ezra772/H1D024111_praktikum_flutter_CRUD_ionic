$ErrorActionPreference = 'Stop'
$env:PATH = (Join-Path $PSScriptRoot 'tools\node20') + ';' + $env:PATH
Set-Location (Join-Path $PSScriptRoot 'cobalogin')

Write-Host 'Modul 2 (Auth Guard) -> http://localhost:8101' -ForegroundColor Green
Write-Host 'Login: admin / admin123' -ForegroundColor Cyan
npm start -- --port 8101
