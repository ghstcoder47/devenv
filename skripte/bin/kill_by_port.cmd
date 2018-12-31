@ECHO OFF
REM klappt nur aus der console herraus.. zeile kopieren und in cmd ausführen
for /f "tokens=5" %a in ('netstat -aon ^| findstr 8005') do taskkill /F /PID %~nxa

