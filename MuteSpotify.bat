@echo off
:while
for /F "tokens=1,2" %%i in ('tasklist /FI "WINDOWTITLE eq Advertisement" /fo table /nh') do set pid1=%%j
if not "%pid1%"=="No" (nircmd.exe muteappvolume spotify.exe 1) else (for /F "tokens=1,2" %%i in ('tasklist /FI "WINDOWTITLE eq Spotify" /fo table /nh') do set pid2=%%j
if not "%pid2%"=="No" (nircmd.exe muteappvolume spotify.exe 1) else (nircmd.exe muteappvolume spotify.exe 0))
timeout 2 /nobreak >nul
tasklist | find /i "spotify.exe" >nul || exit /B
goto :while
