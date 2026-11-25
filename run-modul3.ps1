$ErrorActionPreference = 'Stop'
$env:PATH = (Join-Path $PSScriptRoot 'tools\node20') + ';' + $env:PATH
Set-Location (Join-Path $PSScriptRoot 'crud_ionic')

Write-Host 'Modul 3 (CRUD Ionic 7 Angular) -> http://localhost:8102' -ForegroundColor Green
npm start -- --port 8102
