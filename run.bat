@echo off
echo ===== RUN APP =====

cd /d C:\ProgramData\Jenkins\.jenkins\workspace\demo-github

echo Stop old app...
C:\Users\Admin\AppData\Roaming\npm\pm2.cmd delete jenkins-app >nul 2>&1

echo Start new app...
start "" /b C:\Users\Admin\AppData\Roaming\npm\pm2.cmd start app.js --name jenkins-app

timeout /t 2 >nul

echo Save process...
C:\Users\Admin\AppData\Roaming\npm\pm2.cmd save >nul 2>&1

echo ===== DEPLOY SUCCESS =====
exit /b 0
