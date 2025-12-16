@echo off
cd /d "%~dp0"
echo ==============================================
echo  Rizzglam Auto-Deploy Script
echo  Working Directory: %CD%
echo ==============================================
echo [1/5] Initializing Git...
git init
echo [2/5] Staging files...
git add .
echo [3/5] Committing files...
git commit -m "Initial commit for Rizzglam"
echo [4/5] Setting up Remote (https://github.com/manojberad959-dotcom/rizzglam.git)...
:: Remove origin if it exists to avoid errors on retry
git remote remove origin 2>nul
git remote add origin https://github.com/manojberad959-dotcom/rizzglam.git
git branch -M main
echo [5/5] Pushing to GitHub...
git push -u origin main
echo.
echo ==============================================
if %errorlevel% equ 0 (
    echo  SUCCESS! Your code is live.
    echo  Go to: https://github.com/manojberad959-dotcom/rizzglam
) else (
    echo  PUSH FAILED. 
    echo  Please check if the repository exists and is empty.
)
echo ==============================================
pause
