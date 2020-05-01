:i
@echo off
cls
echo.
echo.
echo.
echo.
echo.
echo		Do you wanna Play it again ?????
echo.
echo.
echo  		enter "1" for "yes"
echo 		enter "2' for "no"
echo.
echo.
echo.
echo.
set /p aa=Your choice(1 or 2): 
if %aa%==1 goto 1
if %aa%==2 goto 2
goto 3
:1
set /p q= < level.temp
set /p w= < player.nk
timeout -t -3
cd points\%q%\%w%
del /q complete.km
cd..
cd..
cd..
call %q%.cmd
exit
:2
cd..
call menu.cmd
exit
:3
call invalid.cmd
goto i