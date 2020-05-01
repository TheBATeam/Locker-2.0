@echo off
cd folder\
if exist user_list.km goto w
goto p
:w
cd..
dir users\ | kvc.nk
cls
more kvc.nk
pause
del /q kvc.nk
echo.
echo.
cls
goto zz
:p
echo.
echo.
echo   we doNOt have any user yet !!!!!!!
cd..
echo.
echo.
pause
call menu.cmd
:zz
