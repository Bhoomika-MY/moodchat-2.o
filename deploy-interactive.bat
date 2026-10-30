@echo off
title Deploy to Cloudflare Pages (Interactive)
echo ========================================================
echo   Cloudflare Pages Interactive Deployment
echo ========================================================
echo.
cd /d "%~dp0"
call npx -y wrangler pages deploy dist
echo.
pause
