@echo off
echo ===== RUN APP =====

cd /d %~dp0

echo Killing old Node...
taskkill /F /IM node.exe >nul 2>&1

echo Starting server...
start /B node app.js > app.log 2>&1

timeout /t 2 >nul

echo App started!
exit /b 0
