# PowerShell Runner for Palmistry & Tarot Intelligence Platform
Write-Host "=========================================================================" -ForegroundColor Cyan
Write-Host "      PALMISTRY & TAROT INTELLIGENCE PLATFORM (SPIRITUAL INSIGHTS)       " -ForegroundColor Yellow
Write-Host "=========================================================================" -ForegroundColor Cyan
Write-Host ""

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $ScriptDir

# 1. Start Backend in background process
Write-Host "[1/2] Starting FastAPI Backend on http://127.0.0.1:8000..." -ForegroundColor Magenta
$backendProcess = Start-Process python -ArgumentList "-m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload" -WorkingDirectory "$ScriptDir\backend" -PassThru

# 2. Start Frontend
Write-Host "[2/2] Starting React + Vite Frontend on http://localhost:5173..." -ForegroundColor Green
Start-Sleep -Seconds 2
Start-Process "http://localhost:5173"

Set-Location "$ScriptDir\frontend"
npm run dev
