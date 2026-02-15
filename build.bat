@echo off
echo ===== JENKINS BUILD START =====

echo Installing dependencies...
npm install
if %errorlevel% neq 0 exit /b %errorlevel%

echo Running tests...
npm test
if %errorlevel% neq 0 exit /b %errorlevel%

echo ===== BUILD SUCCESS =====
exit /b 0
