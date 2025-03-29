@echo off
setlocal
set BUILD_DIR=build
if exist "%BUILD_DIR%" rmdir /s /q "%BUILD_DIR%"
mkdir "%BUILD_DIR%"
cd "%BUILD_DIR%"
cmake .. -G "Visual Studio 17 2022" -A x86
cmake --build . --config Release
echo Build process completed.
endlocal
