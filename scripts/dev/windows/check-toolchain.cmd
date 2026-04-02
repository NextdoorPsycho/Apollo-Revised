@echo off
setlocal
call "%~dp0common.cmd" || exit /b 1

if not exist "%GCC%" goto :missing
if not exist "%GXX%" goto :missing
if not exist "%NINJA%" goto :missing

where %NPM_CMD% >nul 2>nul
if errorlevel 1 (
  echo [apollo] npm was not found on PATH.
  echo [apollo] Install Node.js or ensure npm.cmd is available before building the web UI.
  exit /b 1
)

exit /b 0

:missing
echo [apollo] MSYS2 UCRT64 build tools are missing.
echo [apollo] Expected these files:
echo [apollo]   %GCC%
echo [apollo]   %GXX%
echo [apollo]   %NINJA%
echo [apollo] Install them from the "MSYS2 UCRT64" shell with:
echo [apollo]   pacman -S --needed %REQUIRED_PACMAN_PACKAGES%
exit /b 1
