@echo off
REM Installation script for InkScape Box Maker Extension
REM Compatible with Inkscape 1.2, 1.3, and 1.4.3

echo ========================================
echo InkScape Box Maker - Installation
echo ========================================
echo.

REM Set the Inkscape extensions directory
set "INKSCAPE_EXT_DIR=%APPDATA%\inkscape\extensions"

REM Check if the extensions directory exists, create if not
if not exist "%INKSCAPE_EXT_DIR%" (
    echo Creating Inkscape extensions directory...
    mkdir "%INKSCAPE_EXT_DIR%"
    echo Directory created: %INKSCAPE_EXT_DIR%
    echo.
)

echo Installing Box Maker extension...
echo.

REM Copy the extension files
echo Copying boxmakerN.py...
copy /Y "%~dp0src\boxmakerN.py" "%INKSCAPE_EXT_DIR%\"
if errorlevel 1 goto error

echo Copying boxmakerNLib.py...
copy /Y "%~dp0src\boxmakerNLib.py" "%INKSCAPE_EXT_DIR%\"
if errorlevel 1 goto error

echo Copying boxmakerN.inx...
copy /Y "%~dp0src\boxmakerN.inx" "%INKSCAPE_EXT_DIR%\"
if errorlevel 1 goto error

echo.
echo ========================================
echo Installation completed successfully!
echo ========================================
echo.
echo Extension files installed to:
echo %INKSCAPE_EXT_DIR%
echo.
echo Please restart Inkscape to use the extension.
echo You'll find it under: Extensions ^> Render ^> Box Maker
echo.
pause
exit /b 0

:error
echo.
echo ========================================
echo ERROR: Installation failed!
echo ========================================
echo.
echo Please check that the source files exist in the 'src' folder.
echo.
pause
exit /b 1
