@echo off
title AnonNet - Anonymous Reddit & Real-time Chat
echo ========================================================
echo       Starting AnonNet Server + Global Live Tunnel
echo ========================================================
cd /d "%~dp0"

echo [1/2] Starting Local Server on http://localhost:4000...
start /b node server/server.js

timeout /t 2 /nobreak >nul

echo [2/2] Opening Localhost in your browser...
start http://localhost:4000

echo ========================================================
echo   Connecting to Global Internet via Cloudflare Tunnel...
echo ========================================================
.\cloudflared.exe tunnel --url http://localhost:4000
pause
