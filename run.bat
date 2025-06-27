@echo off
REM This script is the user-friendly way to run the application on Windows.

echo Checking for docker-compose...
docker-compose --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: docker-compose could not be found. Please install it.
    exit /b 1
)

echo Starting application...
REM The user: directive in docker-compose.yml will fall back to root,
REM which is acceptable for Docker Desktop on Windows.
docker-compose up --remove-orphans
