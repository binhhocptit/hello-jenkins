@echo off
echo ===== RUN APP =====

cd /d %~dp0

echo Killing old Node...
taskkill /F /IM node.exe >nul 2>&1

echo Starting server...
start "" cmd /c node app.js

timeout /t 3 >nul

echo App started! 

