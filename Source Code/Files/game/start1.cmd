:q[1]
cls
@echo off
cd game
set /p zxc= < player.nk
if exist resume\%zxc% goto exist
goto simple
:exist
call do_u.cmd
EXIt
:simple
echo.
echo.
echo.
echo ===================================================================
echo.
echo 			Select Level.......
echo.
echo ===================================================================
echo.
echo.
cd..
call instructions.cmd
echo 1. Easy
echo 2. Moderate
echo 3. Difficult
echo 4. Master
echo 5. Genius
echo.
echo.
cd game
set /p s=Enter your Selection: 
if not defined s goto a[1]
goto a[2]
:a[1]
cd..
call error.cmd
call option.cmd
exit
:a[2]
if %s%==1 goto b[1]
if %s%==2 goto b[2]
if %s%==3 goto b[3]
if %s%==4 goto b[4]
if %s%==5 goto b[5]
goto c[1]
:b[1]
echo Easy> level.temp
goto z[1]
:b[2]
echo Moderate> level.temp
goto z[1]
:b[3]
echo Difficult> level.temp
goto z[1]
:b[4]
echo Master> level.temp
goto z[1]
:b[5]
echo Genius> level.temp
goto z[1]
:c[1]
cd..
call invalid.cmd
goto q[1]
:z[1]
call start2.cmd
cd..
menu.cmd
exit