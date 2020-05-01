:p
@echo off
cls
echo.
echo.
echo 		Do You wanna play New game  ??
echo.
echo.
call options.cmd
set /p s=Your choice(1 or 2): 
if %s%==1 goto yes
if %s%==2 goto no
goto invaLID
:invalid
call invalid.cmd
goto p
:yes
set /p q= < level.temp
CD RESUME
DEL /Q *.*
CD..
RD RESUME
timeout -t -3 -nobreak
call %q%.cmd
cd..
call menu.cmd
exit
:NOset
cd..
menu.cmd
exit