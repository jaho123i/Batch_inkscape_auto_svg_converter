setlocal enabledelayedexpansion

where inkscape >nul 2>nul
if %errorlevel% neq 0 (
    echo Error: Inkscape is not found in PATH.
    exit /b
)

for %%f in (*.svg) do (
    for /f "delims=" %%W in ('inkscape --query-width "%%f"') do set "width=%%W"
    for /f "delims=" %%H in ('inkscape --query-height "%%f"') do set "height=%%H"

    for /f %%S in ('powershell -command "[math]::Min(128 / !width!, 128 / !height!)"') do set "scale_factor=%%S"

    inkscape "%%f" --actions="select-all:all;transform-scale:!scale_factor!,!scale_factor!;fit-canvas-to-selection" --export-filename="128p_pictures\%%~nf.png"
)

echo All files processed.
pause
