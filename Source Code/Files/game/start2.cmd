@echo off
cls
echo.
echo.
echo.
set /p x[1]= < level.temp
echo.
echo							Selected Level: %x[1]%
echo.
echo.
echo.
timeout -t 3 -nobreak
cls
call a[2].cmd
exit