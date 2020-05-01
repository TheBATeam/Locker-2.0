@ECHO OFF
ECHO.
ECHO.
ECHO.
MODE 64,25
ECHO ---------------------------------------------------------------
ECHO.
ECHO.
ECHO        Please enter required info. for Log In !!!!
echo.
echo.
ECHO ---------------------------------------------------------------
color 71
echo.
echo.
call enter_name.cmd
set /p name=Enter your name: 
if not defined name ((call no_name.cmd) && (call log_in.cmd) && exit)
if exist users\%name% goto g
goto r
:g
echo %name% > temp\ne.kvc
cd users\%name%\
if exist "complete.nk" goto ff
goto ss
:ff
cd..
cd..
call user.cmd
exit
:r
del /q temp\ne.kvc
call not_user.cmd
cls
call menu.cmd
exit
:ss
cd..
cd..
call not_complete.cmd
call deactivated.cmd
call menu.cmd
exit