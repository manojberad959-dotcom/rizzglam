@echo off
echo Checking for Git...
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed or not in your PATH.
    echo Please install Git from: https://git-scm.com/download/win
    echo After installing, restart your terminal and run this script again.
    pause
    exit /b
)
echo Initializing Git Repository for Rizzglam...
git init
git add .
git commit -m "Initial commit"
git branch -M main
echo.
echo ------------------------------------------------------------------
echo Please create a new Empty Repository on GitHub (without README/gitignore).
echo Paste the URL below (e.g., https://github.com/YourUser/rizzglam.git)
echo ------------------------------------------------------------------
set /p repo_url="https://github.com/manojberad959-dotcom/rizzglam.git"
git remote add origin %repo_url%
echo Pushing code to GitHub...
git push -u origin main
echo.
echo Done! You can now open GitHub Codespaces for this repo.
pause
