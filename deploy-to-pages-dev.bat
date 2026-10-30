@echo off
title Publish Smile Thoughts to Cloudflare Pages (.pages.dev)
color 0b
echo ======================================================================
echo    PUBLISHING SMILE THOUGHTS 365 TO CLOUDFLARE (.pages.dev)
echo ======================================================================
echo.
cd /d "%~dp0"

echo [1/3] Connecting to Cloudflare...
echo       (If a browser window opens, click "Allow / Authorize")
echo.
call npx -y wrangler login

echo.
echo [2/3] Registering project "smile-thoughts-365"...
call npx -y wrangler pages project create smile-thoughts-365 --production-branch main

echo.
echo [3/3] Uploading and publishing distribution bundle...
call npx -y wrangler pages deploy dist --project-name smile-thoughts-365

echo.
echo ======================================================================
echo    SUCCESS! Your site is published and active worldwide:
echo    https://smile-thoughts-365.pages.dev
echo ======================================================================
echo.
pause
