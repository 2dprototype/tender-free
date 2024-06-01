@echo off
echo Tender Installation:
echo.
echo Platform    Arch
echo ----------------
echo android     arm64
echo darwin      amd64
echo linux       amd64
echo windows     amd64
echo windows     386
echo.

rem Prompt the user for platform, arch, and install location
set /p platform=Platform: 
set /p arch=Arch: 
set /p target_directory=Installation Directory: 

rem Determine the filename based on the platform
if "%platform%"=="windows" (
    set filename=tender.exe
) else (
    set filename=tender
)

set bin_file=bin\%platform%_%arch%\%filename%

rem Create the target directory and its subdirectories
if not exist "%target_directory%\bin" mkdir "%target_directory%\bin"
if not exist "%target_directory%\icon" mkdir "%target_directory%\icon"

rem Copy the binary and other required files
copy "%bin_file%" "%target_directory%\bin\%filename%"
xcopy "pkg" "%target_directory%\pkg" /E /I /Q
xcopy "docs" "%target_directory%\docs" /E /I /Q
copy "README.md" "%target_directory%\README.md"
copy "LICENSE" "%target_directory%\LICENSE"
copy "LICENSE_GOLANG" "%target_directory%\LICENSE_GOLANG"
copy "LICENSE_TENGO" "%target_directory%\LICENSE_TENGO"
copy "LICENSE_GG" "%target_directory%\LICENSE_GG"
copy "LICENSE_WEBSOCKET" "%target_directory%\LICENSE_WEBSOCKET"
copy "misc\icon.ico" "%target_directory%\icon\icon.ico"
pause