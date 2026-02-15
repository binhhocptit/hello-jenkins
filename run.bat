@echo off
echo ===== RUN APP =====

echo Stop old app...
pm2 delete jenkins-app >nul 2>&1

echo Start new app...
pm2 start app.js --name jenkins-app

pm2 save

echo App deployed!
exit /b 0
