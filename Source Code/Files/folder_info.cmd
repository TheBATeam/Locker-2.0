CLS
@echo off
call x.cmd
:i
echo.
echo.
echo.
cls
cls
set /p e=Name of personal folder: 
if not defined e ((call error.cmd) && cls && (goto i))
set /p kk= < "temp\ne.kvc"
cd users\%kk%\
set /p as= < drive.kvc
IF EXIST "%as%:\%e%" goto y
if not exist "%as%:\%e%" goto w
:y
cd..
cd..
call change_name.cmd
timeout -t "5"
cls
goto i

:w
echo %e% > folder_name.kvc
echo SIGN-up is completed....  confirmed by--kvc+nk > complete.nk
cd..
cd..
call sucess.cmd
call welcome.cmd 
md "%as%:\%e%"
CALL LOCK.CMD