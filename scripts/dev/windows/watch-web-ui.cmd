@echo off
setlocal
call "%~dp0common.cmd" || exit /b 1

where %NPM_CMD% >nul 2>nul
if errorlevel 1 (
  echo [apollo] npm was not found on PATH.
  exit /b 1
)

pushd "%REPO_ROOT%" || exit /b 1

echo [apollo] Starting Vite watch build for web assets
%NPM_CMD% run dev
set "APP_EXIT=%ERRORLEVEL%"

popd
exit /b %APP_EXIT%
