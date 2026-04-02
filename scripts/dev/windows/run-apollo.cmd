@echo off
setlocal
call "%~dp0build-ucrt64.cmd" || exit /b 1
call "%~dp0common.cmd" || exit /b 1

set "BUILD_DIR=%REPO_ROOT%\build"

pushd "%BUILD_DIR%" || exit /b 1

if not exist "sunshine.exe" (
  echo [apollo] build\sunshine.exe was not produced.
  popd
  exit /b 1
)

echo [apollo] Launching build\sunshine.exe
"%BUILD_DIR%\sunshine.exe" %*
set "APP_EXIT=%ERRORLEVEL%"

popd
exit /b %APP_EXIT%
