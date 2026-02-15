@echo off
echo Running tests...

dir abcxyznotexist >nul 2>nul
if %errorlevel% neq 0 (
    echo BUILD FAILED - TEST FAILED
    exit /b 1
)

echo BUILD SUCCESS
