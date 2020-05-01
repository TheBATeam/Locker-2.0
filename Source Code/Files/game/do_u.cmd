:p
@echo off
cls
echo.
echo.
echo.
echo 			Do You want to resume Your Game ??
echo.
echo.
echo.
call options.cmd
echo.
set /p s=Your choice(1 or 2): 
if %s%==1 goto yes
if %s%==2 goto no
goto invaLID
:yes
echo Player want resume !! > yes.km
cd resume
timoout -t -3 -nobreak
set /p a= < level.temp
cd..
call %a%.cmd
exit
:invalid
call invalid.cmd
goto p
:no
call no.cmd
exit
