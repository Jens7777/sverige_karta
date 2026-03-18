@echo off
setlocal
cd /d "%~dp0"

set "PORT=8000"
set "PAGE=index.html"

start "Sverige-karta server" cmd /k py -m http.server %PORT%
timeout /t 1 /nobreak >nul
start "" "http://localhost:%PORT%/%PAGE%"
