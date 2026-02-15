@echo off
echo ===== JENKINS PIPELINE START =====

echo Installing dependencies...
call npm install

echo Running tests...
call npm test
if %errorlevel% neq 0 exit /b 1

echo Stopping old app...
pm2 describe app >nul 2>&1
if %errorlevel%==0 (
    pm2 stop app
    pm2 delete app
) else (
    echo No existing app found.
)

echo Starting app with PM2...
pm2 start app.js --name app

echo ===== DEPLOY DONE =====
exit /b 0
