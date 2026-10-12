@echo off
title AI-Powered Palmistry and Tarot Intelligence Platform
color 0B

echo =========================================================================
echo       PALMISTRY ^& TAROT INTELLIGENCE PLATFORM (SPIRITUAL INSIGHTS)
echo =========================================================================
echo.

cd /d "%~dp0"

echo [1/3] Checking Python backend dependencies...
python -c "import fastapi, uvicorn, sqlalchemy, reportlab" >nul 2>&1
if %errorlevel% neq 0 (
    echo [*] Installing backend Python packages...
    pip install -r backend/requirements.txt
)

echo [2/3] Checking Frontend node modules...
if not exist "frontend\node_modules" (
    echo [*] Installing frontend npm packages...
    cd frontend
    call npm install
    cd ..
)

echo.
echo [3/3] Launching Backend ^& Frontend Servers...
echo.
echo  - Backend API:    http://127.0.0.1:8000 (Swagger docs at /docs)
echo  - Frontend Portal: http://localhost:5173
echo.
echo -------------------------------------------------------------------------
echo Press Ctrl+C in terminal windows to stop servers.
echo =========================================================================
echo.

:: Start Backend in separate window
start "Spiritual Platform Backend (FastAPI)" cmd /k "cd /d "%~dp0backend" && python -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload"

:: Start Frontend in separate window
start "Spiritual Platform Frontend (Vite)" cmd /k "cd /d "%~dp0frontend" && npm run dev"

:: Wait 3 seconds and open browser
timeout /t 3 /nobreak >nul
start http://localhost:5173

echo Servers are running. You can close this window.
