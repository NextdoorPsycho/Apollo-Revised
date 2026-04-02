@echo off

set "REPO_ROOT=%~dp0..\..\.."
for %%I in ("%REPO_ROOT%") do set "REPO_ROOT=%%~fI"

set "MSYS2_ROOT=C:\msys64"
set "UCRT64_BIN=%MSYS2_ROOT%\ucrt64\bin"
set "USR_BIN=%MSYS2_ROOT%\usr\bin"

set "GCC=%UCRT64_BIN%\gcc.exe"
set "GXX=%UCRT64_BIN%\g++.exe"
set "NINJA=%UCRT64_BIN%\ninja.exe"
set "CMAKE_EXE=%UCRT64_BIN%\cmake.exe"
set "NPM_CMD=npm.cmd"

set "REQUIRED_PACMAN_PACKAGES=mingw-w64-ucrt-x86_64-toolchain mingw-w64-ucrt-x86_64-cmake mingw-w64-ucrt-x86_64-ninja mingw-w64-ucrt-x86_64-cppwinrt mingw-w64-ucrt-x86_64-curl-winssl mingw-w64-ucrt-x86_64-MinHook mingw-w64-ucrt-x86_64-miniupnpc mingw-w64-ucrt-x86_64-onevpl mingw-w64-ucrt-x86_64-openssl mingw-w64-ucrt-x86_64-opus mingw-w64-ucrt-x86_64-nlohmann_json mingw-w64-ucrt-x86_64-boost"

set "PATH=%UCRT64_BIN%;%USR_BIN%;%PATH%"

exit /b 0
