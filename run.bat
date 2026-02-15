@echo off
echo ===== RUN APP =====

cd /d C:\ProgramData\Jenkins\.jenkins\workspace\demo-github

echo Stop old app...
C:\Users\Admin\AppData\Roaming\npm\pm2.cmd delete jenkins-app >nul 2>&1 || echo No old app

echo Start new app...
C:\Users\Admin\AppData\Roaming\npm\pm2.cmd start app.js --name jenkins-app

echo Save process...
C:\Users\Admin\AppData\Roaming\npm\pm2.cmd save

echo ===== DEPLOY SUCCESS =====
exit /b 0
