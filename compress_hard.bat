@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo DRAG .mp4 file on this script!!
    pause
    exit /b
)

set "input=%~1"
set "temp_output=%~dpn1_temp_compressed.mp4"

echo Processing: %input%
echo.

ffmpeg -threads 8 -hwaccel cuda -hwaccel_output_format cuda -i "%input%" ^
-c:v hevc_nvenc -preset p4 ^
-rc vbr -b:v 2000k -maxrate 3500k -cq 34 ^
-vf "fps=50" ^
-movflags +faststart ^
-c:a aac -b:a 64k -ac 1 ^
"%temp_output%"

if %errorlevel% neq 0 (
    echo CONVERTATION ERROR! Source file saved.
    del "%temp_output%" 2>nul
    pause
    exit /b
)

del /f "%input%"
ren "%temp_output%" "%~nx1"

echo.
echo ===========================================
echo COMPLETE! Source file was been replaced by it's compressed version:
echo %input%
echo ===========================================
pause
