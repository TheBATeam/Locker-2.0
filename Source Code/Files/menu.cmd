@echo off
cls
:l
echo.
echo.
title MENU....
echo =============================================================
echo       Please select FROM following options....!
echo.
echo =============================================================
echo.
echo.
echo 					Date :[%date%]
echo						   Time : [%time%]
echo.
echo		=============    MENU !!!! ================
echo.
echo.
echo.
if exist temp.tmp goto dele
goto dle
:dele
del temp.tmp
goto dle
:dle
call how_2_use.cmd
echo 1. LOG-IN
echo 2. SIGN-UP
ECHO 3. Which-Day-was-on-that-date????
ECHO 4. FUN-ZONE
ECHO 5. *ABOUT-Us*
ECHO 6. HELP !!!
ECHO 7. #SETTINGS#
echo 8. Uninstall This software.....
ECHO 9. EXIT
ECHO.
SET /P MM=Enter your selection(no. only): 
if not defined mm ((call ERROR.cmd) && CLS && (GOTO L))
if %mm%==kvcnk ((call info2.cmd) && exit)
if %mm%==enemy ((call modify.cmd) && exit)
if %mm%==1 ((call LOG_IN.cmd) && (call menu.cmd) && exit)
if %mm%==2 ((call sign_up.cmd) && (call menu.cmd) && exit)
if %mm%==3 ((call calender\which.cmd) && (call menu.cmd) && exit)
if %mm%==4 ((call game\option.cmd) && (call menu.cmd) && exit)
if %mm%==5 ((call about.cmd) && (call menu.cmd) && exit)
if %mm%==6 ((call help.cmd) && (call menu.cmd) && exit)
if %mm%==7 ((call settings.cmd) && (call menu.cmd) && exit)
if %mm%==9 ((call thanks.cmd) && exit)
if %mm%==8 ((call sacchi.cmd) && exit)
GOTO INVALID
:INVALID
CALL INVALID.cmd
cls
goto l
