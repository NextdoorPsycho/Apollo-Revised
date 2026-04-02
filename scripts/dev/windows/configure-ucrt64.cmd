@echo off
setlocal
call "%~dp0check-toolchain.cmd" || exit /b 1
call "%~dp0common.cmd" || exit /b 1

pushd "%REPO_ROOT%" || exit /b 1

if not exist "build" mkdir build

echo [apollo] Configuring CMake in "%REPO_ROOT%\build"
"%CMAKE_EXE%" -S . -B build -G Ninja ^
  -DCMAKE_BUILD_TYPE=Debug ^
  -DCMAKE_C_COMPILER="%GCC%" ^
  -DCMAKE_CXX_COMPILER="%GXX%" ^
  -DCMAKE_MAKE_PROGRAM="%NINJA%"
if errorlevel 1 (
  popd
  exit /b 1
)

popd
exit /b 0
