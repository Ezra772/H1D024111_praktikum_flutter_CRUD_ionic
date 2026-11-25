$ErrorActionPreference = 'Stop'

# Cek apakah Apache di port 80 sudah aktif (Laragon)
$port80 = Get-NetTCPConnection -LocalPort 80 -State Listen -ErrorAction SilentlyContinue
if ($port80) {
    Write-Host "Apache Laragon sudah aktif di port 80!" -ForegroundColor Green
    Write-Host "  Modul 2 : http://localhost/backend/" -ForegroundColor Cyan
    Write-Host "  Modul 3 : http://localhost/apiCoba/" -ForegroundColor Cyan
    Write-Host "Backend sudah siap digunakan sesuai modul PDF." -ForegroundColor Yellow
    return
}

$php = 'C:\laragon\bin\php\php-8.3.28-Win32-vs16-x64\php.exe'
if (-not (Test-Path $php)) {
    $php = (Get-Command php.exe -ErrorAction Stop).Source
}

Write-Host "Menjalankan PHP Server di http://localhost/ ..." -ForegroundColor Green
Write-Host "  Modul 2 : http://localhost/backend/" -ForegroundColor Cyan
Write-Host "  Modul 3 : http://localhost/apiCoba/" -ForegroundColor Cyan
Write-Host "Tekan Ctrl+C untuk menghentikan." -ForegroundColor Yellow

try {
    & $php -S localhost:80 -t (Join-Path $PSScriptRoot 'server')
} catch {
    Write-Host "Port 80 tidak dapat dibuka, beralih ke port 8000..." -ForegroundColor Yellow
    & $php -S localhost:8000 -t (Join-Path $PSScriptRoot 'server')
}
