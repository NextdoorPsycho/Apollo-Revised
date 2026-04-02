@echo off
setlocal
call "%~dp0configure-ucrt64.cmd" || exit /b 1
call "%~dp0common.cmd" || exit /b 1

pushd "%REPO_ROOT%" || exit /b 1

echo [apollo] Building native target and web UI
"%CMAKE_EXE%" --build build --target sunshine web-ui --parallel
if errorlevel 1 (
  popd
  exit /b 1
)

popd
exit /b 0
