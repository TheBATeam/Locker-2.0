@echo off
echo.
echo.
echo.
color 3b
echo.
mode 64,28
echo ---------------------------------------------------------------
echo.
echo Please Give Basic info. for Sign-up for your folder!!!
echo.
echo ---------------------------------------------------------------
echo.
echo.
echo.
call enter_name.cmd
SET /P na=Enter your Name: 
if not defined na ((call no_name.cmd) && (call sign_up.cmd) && exit)
if exist users\%na% ((call already_user.cmd) && exit)
if not exist users\%na% ((echo %na% > temp\ne.kvc) && GOTO F)
:f
echo.
set /p e=Your age  = 
if not defined e ((call invalid.cmd) && goto f)
echo.
goto a[1]
:a[1]
set /p t=Your sex (M/F) = 
if not defined t ((call problem.cmd) && (set t=vesan) && goto a[2])
goto a[2]
:a[2]
echo.
echo.
echo.
echo.
set /p dd=Enter DRIVE for your folder( 1 capital Letter only) : 
if exist %dd%:\ goto exist
goto not
:exist
cd users\
md %na%
cd %na%\
echo %dd%> drive.kvc
echo %e%> userAge.kvc
echo %t%> userSex.kvc
cd..
cd..
CALL changepwd.cmd
call folder_info.cmd
call menu.cmd
exit
:not
call not_exist.cmd
cd users\
rd %na%
cd..
call menu.cmd
exit