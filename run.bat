@echo off
echo ===== RUN APP =====

cd /d C:\ProgramData\Jenkins\.jenkins\workspace\demo-github

REM đường dẫn pm2 thật
set PM2=C:\Users\Admin\AppData\Roaming\npm\pm2.cmd

echo Stop old app...
%PM2% delete jenkins-app >nul 2>&1

echo Start new app...
%PM2% start app.js --name jenkins-app

echo Save process list...
%PM2% save

echo ===== DEPLOY SUCCESS =====
exit /b 0
