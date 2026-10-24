@echo off
REM 2026 Fall Retreat worship player - starts a tiny local web server so the
REM YouTube embeds are allowed to play (browsers block them from file://).
cd /d "%~dp0"
set PORT=8099

where py >nul 2>nul
if %errorlevel%==0 (
  start "worship-player" /min cmd /c "py -m http.server %PORT%"
  goto opened
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "worship-player" /min cmd /c "python -m http.server %PORT%"
  goto opened
)

echo.
echo   Python was not found on this computer.
echo   Install it from https://www.python.org/downloads/ (tick "Add to PATH"),
echo   or ask Scout to host the page at a normal web address instead.
echo.
pause
exit /b 1

:opened
timeout /t 2 >nul
start "" http://localhost:%PORT%/
echo.
echo   Player opened in your browser. Leave this window open during the service.
echo   Press F in the player for fullscreen, Space to pause.
echo   Close this window when the service is over.
timeout /t 6 >nul
