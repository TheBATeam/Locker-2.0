:c
@echo on
@echo off
echo.
echo.
echo.
echo.
ECHO.
set /p d= < temp\ne.kvc
cd users\%d%\
set /p s= < pass.kvc
cd..
cd..
echo hP1X500P[PZBBBfh#b##fXf-V@`$fPf]f3/f1/5++u5>hide.com
echo Note :	Your input will be Hidden..........
echo.
echo.
set /p password=Enter your password (of folder): <nul
for /f "tokens=*" %%i in ('hide.com') do set password=%%i
cls
if %password%==%s% goto ee
if not %password%==%s% (call not_matched.cmd && goto c)
:ee

