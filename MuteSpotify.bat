@echo off
:while
for /F "tokens=1,2" %%i in ('tasklist /FI "WINDOWTITLE eq Advertisement" /fo table /nh') do set pid=%%j
nircmd muteappvolume /%pid% 1
If "%pid%"=="No" (nircmd muteappvolume spotify.exe 0)
timeout 2 /nobreak >nul
tasklist | find /i "spotify.exe" || exit /B
goto :while