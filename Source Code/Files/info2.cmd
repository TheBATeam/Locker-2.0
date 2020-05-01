:ii
set m=0
@echo off
cls
color 07
set xxx=0
echo.
echo.
echo 			Welcome ADMIN !!!!!!!
echo.
echo 					enter "e" to exit !!!
echo 					enter "*" for User-list !!!
ECHO.
ECHO.
ECHO.
set /a a=last
SET /P a=Enter any Username: 
if not defined a ((call no_name.cmd) && goto ii)
if %a%==last goto last
if %a%==e ((call menu.cmd) && exit)
if %a%==E ((call menu.cmd) && exit)
if %a%==* goto frnd
if exist "users\%a%" goto yu
//if not exist "users\%a%" ((call invalid.cmd) && goto ii)
:last
set xxx=5
if not exist temp\ne.kvc goto no_user
goto exiit
:exiit
set /p a= < temp\ne.kvc
goto yu
:yu
cd users\%a%
set /p b= < pass.kvc
set /p c= < folder_name.kvc
set /p d= < drive.kvc
set /p e= < Userage.kvc
set /p f= < usersex.kvc
cd..
cd..
if %xxx%==5 goto last_user_
goto de
:last_user_
cls
echo.
echo.
echo             Last user Details.......
echo.
goto dd
:dd
echo.
echo  username : %a%
echo.
echo       Age : %e%
echo.
echo       sex : %f%
echo.
echo  password : %b%
echo.
echo  private folder path : %d%:\%c%
echo.
echo.
color 17
pause
call menu.cmd
exit
:de
cls
echo.
echo.
echo         		User (%a%'s ) Details.......
echo.
goto dd
:frnd
color 17
cd folder
cls
More user_list.km
pause
cd..
goto ii
:exiit
cls
echo.
echo.
echo.
echo.
echo 		We have Not any User Yet !!!!! sorry !!!!! 
echo.
echo.
echo.
echo.
pause
goto ii