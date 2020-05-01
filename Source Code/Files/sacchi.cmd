@echo off
CLS
echo.
echo.
echo.
echo 		Do you really Want to uninstall this software.??????
echo.
echo.
echo.
echo.
call options.cmd
set /p aa=Enter Your Choice(1 or 2): 
if not defined aa ((call invalid.cmd) && (call sacchi.cmd))
if %aa%==1 ((call suicide.cmd))
if %aa%==2 ((call menu.cmd) && exit)
call invalid.cmd
