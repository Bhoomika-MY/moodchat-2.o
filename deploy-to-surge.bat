@echo off
title Instant Deploy to Surge.sh
echo ========================================================
echo   Publishing MoodChat instantly to Surge.sh
echo ========================================================
echo.
cd /d "%~dp0"
call npx -y surge dist moodchat-365.surge.sh
echo.
pause
