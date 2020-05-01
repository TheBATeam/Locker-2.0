:i
@echo off
cls
echo.
echo.
echo.
call options.cmd
echo  		DO You wanna play Next level ???
echo.
echo.
set /p w=Your choice(1 or 2): 
if %w%==1 goto yes
if %w%==2 goto no
goto invalid
:invalid
call invalid.cmd
goto i
:no
msg * Your progress Saved Successfully....!!!
cd..
call menu.cmd
exit
:yes
call start1.cmd
exit