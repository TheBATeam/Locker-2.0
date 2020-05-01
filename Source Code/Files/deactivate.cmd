CALL cnfrm.cmd
@echo off
echo.
echo.
echo.
echo.
set /p a= < temp\ne.kvc
echo				Dear %a% !!!
echo.
echo.
echo 		Do you Really Wanna Deactivate your account ??
call options.cmd
echo.
echo.
echo NOTE: please remove your personal data before This ACT.....
echo.
echo.
set /p b=Enter your selection(1 or 2): 
if %b%==1 goto z
if %b%==2 goto x
goto c
:x
call settings.cmd
exit
:c
call invalid.cmd
call settings.cmd
exit
:z
call deactivated.cmd
call menu.cmd
exit