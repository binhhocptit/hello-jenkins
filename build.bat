echo ===== JENKINS PIPELINE START =====

echo Installing dependencies...
call npm install

echo Running tests...
call npm test
if %errorlevel% neq 0 exit /b %errorlevel%

echo Stopping old app...
pm2 delete jenkins-app >nul 2>&1

echo Starting app with PM2...
pm2 start app.js --name jenkins-app

pm2 save

echo ===== DEPLOY DONE =====
