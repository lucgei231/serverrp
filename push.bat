@echo off
setlocal
git remote set-url origin https://github.com/lucgei231/serverrp.git
:: Set your remote repository URL
set "REPO_URL=https://github.com/lucgei231/serverrp.git"

:: Initialize Git repo if not already
if not exist ".git" (
    git init
)

:: Add all files
git add .

:: Commit changes
git commit -m "Automated commit from batch script" || echo No changes to commit.

:: Set remote if not already
git remote | findstr /C:"origin" >nul
if errorlevel 1 (
    git remote add origin %REPO_URL%
)

:: Push to main branch
git push origin main

endlocal