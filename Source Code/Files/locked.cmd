set /p y= < temp\ne.kvc
@echo off
:w
if exist "folder\user_list.km" goto exist
goto not
:exist
if exist temp\sr.kvc goto true
goto false
:true
set /p t= < temp\sr.kvc
echo %t%. %y% >> folder\user_list.km
set /a t=%t%+1
echo %t% > temp\sr.kvc
goto rrrr
:not
echo sr.no.	user-name > folder\user_list.km
echo. > folder\user_list.km
goto w
:false
set /a t=1
echo %t% > temp\sr.kvc
goto w
:rrrr
