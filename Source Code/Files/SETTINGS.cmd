@echo off
set /a ww=0
:ui
cls
echo.
echo.
echo.
echo.
echo =============== SETTINGS AND MAINTAINANCE !!! ===========
COLOR F1
ECHO.
ECHO.
ECHO.
ECHO.
ECHO 1. CHANGE PASSWORD
ECHO 2. CHANGE USER-NAME
ECHO 3. CHANGE PERSONAL-FOLDER Name
echo 4. view History
echo 5. Deactivate account
echo 6. Clean PC......
echo 7. ~~back~~
echo.
echo.
echo.
if %ww% gtr 0 goto ii
goto aa
:aa
if exist temp.tmp goto po
goto op
:op
set /p fd=Enter your name:  
if not defined fd ((call no_name.cmd) && goto ui)
set /a ww=%ww%+1
echo %fd% > temp\ne.kvc
if not exist users\%fd% ((call not_user.cmd) && exit)
if exist users\%fd% goto ui
:ii
echo %fd% > temp.tmp
echo						Hi %fd% !!!!!
echo.
set /a ww=0
set /p as=Enter your choice: 
if %AS%==1 (cls && (call cnfrm.cmd) && (call changepwd.cmd) && (call changed.cmd) && (call menu.cmd))
if %AS%==2 (cls && (call cnfrm.cmd) && (CALL CH.CMD) && (call menu.cmd))
if %AS%==3 (cls && (call hh.cmd) && (call menu.cmd))
if %AS%==4 (cls && (call history.cmd) && (call settings.cmd) && exit)
if %AS%==5 (cls && (call deactivate.cmd) && exit)
if %AS%==7 (cls && (call menu.cmd) && exit)
if %AS%==6 (cls && (call cleaner.cmd) && (call menu.cmd) && exit)
if not defined AS ((call ERROR.cmd) && CLS && (GOTO ui))
GOTO INVALID
:INVALID
CALL INVALID.cmd
cls
goto ui
:po
set /p fd= < temp.tmp
set ww=%ww%+1
goto ii