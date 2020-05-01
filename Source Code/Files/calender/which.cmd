@ECHO OFF
:L
set /a s=7
set /a v=1
:f
::WHICH DAY WAS IT?
title Which day was it???
MODE 72,25
CLS
ECHO ------------------------------------------------------------------------
ECHO ________________________________________________________________________
ECHO.
ECHO        YOU JUST HAVE TO PUT DATE AND U'LL GET THE DAY!!!!!!!!!
ECHO.
ECHO   						ENTER "h" FOR help!!
ECHO _______________________________________________________________________
ECHO ------------------------------------------------------------------------
call notify.cmd
color %v%%s%
set /a s=%v%+1
set /a v=%V%-1
if %S% gtr 9 goto l
goto b
:b
if %V% lss 0 goto l
goto h
:h
SET /P DATE=ENTER DATE:
if %date%==h goto Help
if %date%==t goto exit
if %date% gtr 31 goto error
goto x
:x
SET /P MONTH=ENTER MONTH(NUMERIC):
if %month%==t goto exit
if %month%==h goto Help
if %month% gtr 12 goto error

goto xx
:xx
SET /P YEAR=ENTER YEAR:
if %year%==t goto exit
if %year%==h goto Help
if %year% gtr 9999 goto error
goto calc

:calc
set /a a=(14-%MONTH%)/12
SET /A Y=(%YEAR%-%a%)
SET /A m=%month%+12*%a%-2
set /a g=(%date%+%Y%+(%Y%/4)-(%Y%/100)+(%Y%/400)+31*%m%/12)
set /a e=%g%/7
set /a d=%g%-%e%*7
If %d% lss 8 goto correct
goto error
:correct
if %d%==0 goto 1
if %d%==1 goto 2
if %d%==2 goto 3
if %d%==3 goto 4
if %d%==4 goto 5
if %d%==5 goto 6
if %d%==6 goto 7
goto error
:1
echo.
echo _____________________________________________________________________
echo.
color a1
echo This is sunday......
echo.
echo _____________________________________________________________________
echo.
pause
cls
goto k
:2
echo.
echo _____________________________________________________________________
echo.
color a2
echo This is monday......
echo _____________________________________________________________________
echo.
pause
cls
goto k
:3
echo.
echo _____________________________________________________________________
echo.
color a3
echo This is tuesday......
echo _____________________________________________________________________
echo.
pause
cls
goto k
:4
echo.
echo _____________________________________________________________________
echo.
color a4
echo This is wednesday......
echo _____________________________________________________________________
echo.
pause
cls
goto k
:5
echo.
echo _____________________________________________________________________
echo.
color a5
echo This is thursday......
echo _____________________________________________________________________
echo.
pause
cls
goto k
:6
echo.
echo _____________________________________________________________________
echo.
color a6
echo This is friday......
echo _____________________________________________________________________
echo.
pause
cls
goto k
:7
echo.
echo _____________________________________________________________________
echo.
coSlor fc
echo This is saturday......
echo _____________________________________________________________________
echo.
pause
cls
goto k


:error
CLS
MODE 72,6
color %s%%v%
ECHO.
ECHO ______________________________________________________________________
ECHO.
ECHO 				"INVALID INPUT"
ECHO.
ECHO ______________________________________________________________________
pause
cls
goto f

:help
echo.
cls
echo ________________________________________________________________________
echo.
echo.
echo 		This program is a simple 1,just a test!!!!!!!!!!
echo.
echo 		if u wanna exit(gonna BACK) anytime,type "t",in any column!!!!!
echo	this is simply,education purpose software!!!
echo.
echo after getting day of ur day,u would also get the calender!!!!
echo if u want!!!!!!!!!!!!!!
echo _________________________________________________________________________
pause
cls
goto l
:exit
call menu.cmd
exit 
:osm
echo.
echo.
echo _________________________________________________________________________
echo.
msg * You are not born yet,!!!!!!!!  cuz you put none!!!!!!!!
echo _________________________________________________________________________
timeout -t "5"
goto f
:k
ECHO.
ECHO ______________________________________________________________________
ECHO.
ECHO 		Do u wanna get calendar and confirm??
set /p choice=Enter your choice(y/n):
if %choice%==y goto yes
if %choice%==Y goto yes
if %choice%==n goto no
if %choice%==N goto no
echo.
ECHO ______________________________________________________________________
pause
cls
goto f
:yes
%year% > calender\a.temp
goto color_parts
:resume
call calender\Calendar_edited.bat
exit
:no
call menu.cmd
exit
:color_parts
%s% > calender\s.txt
%v% > calender\v.txt
goto resume