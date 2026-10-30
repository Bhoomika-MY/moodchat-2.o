@echo off
title Publish with Your Chosen Name (.pages.dev)
color 0a
echo ======================================================================
echo    PUBLISH TO CLOUDFLARE PAGES (.pages.dev)
echo ======================================================================
echo.
cd /d "%~dp0"
set /p PROJ="Enter project name (Press Enter for 'smile-thoughts-darshan'): "
if "%PROJ%"=="" set PROJ=smile-thoughts-darshan

echo.
echo [1/3] Authorizing Cloudflare...
call npx -y wrangler login

echo.
echo [2/3] Creating project "%PROJ%"...
call npx -y wrangler pages project create %PROJ% --production-branch main

echo.
echo [3/3] Uploading distribution bundle...
call npx -y wrangler pages deploy dist --project-name %PROJ%

echo.
echo ======================================================================
echo    PUBLISHED! Your live URL is:
echo    https://%PROJ%.pages.dev
echo ======================================================================
echo.
pause
