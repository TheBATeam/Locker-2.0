CLS
:i
@echo off
set /p q= < temp\ne.kvc
cd users\%q%\
set /p a= < folder_name.kvc
set /p b= < drive.kvc
set /p c= < pass.kvc
cls
echo.
echo.
echo.
set /p e=Name of YOUR CURRENT folder: 
if not defined e ((call error.cmd) && cls && (goto i))
if %a%==%e% goto valid
goto invalid
:valid
IF EXIST "%b%:\%e%" goto pp
goto XXX
:PP
echo.
set /p d=Enter Password: 
if %d%==%c% goto true
goto false

:true
echo.
echo.
SET /P AQ=ENTER new name of folder: 
attrib -r -s -a -h "%b%:\%e%"
timeout -t "1"
ren "%b%:\%e%" "%aq%"
timeout -t "1"
attrib +r +s +a +h "%b%:\%aq%"
echo %aq% > folder_name.kvc
cd..
cd..
call changed.cmd
call menu.cmd
exit
:xxx
call not_exist.cmd
call settings.cmd
exit
:invalid
call invalid.cmd
call settings.cmd
exit