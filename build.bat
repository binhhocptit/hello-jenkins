echo ===== JENKINS PIPELINE START =====

echo Installing dependencies...
call npm install

echo Running tests...
call npm test
if %errorlevel% neq 0 exit /b %errorlevel%

echo Killing old server...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :3000') do taskkill /F /PID %%a

echo Starting server...
start /B npm start

echo ===== DEPLOY DONE =====
