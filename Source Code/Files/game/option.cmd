@echo off
cls
echo.
:k
echo.
echo.
echo ============ select YOUR OPTION: ====================
echo.
echo.
echo.
echo.
echo 1. PLAY GAME (Educational)
echo 2. Watch star-Wars....(only for Window xp and below)
ECHO 3. MORE.....
ECHO 4. ~back~
ECHO.
SET /P S=Enter your selection: 
if %s%==1 ((call game\optionss.cmd) && exit)
if %s%==2 ((call star.cmd) && exit)
if %s%==3 ((call update.cmd) && (call menu.cmd))
if %s%==4 ((call menu.cmd) && exit)
if not defined s (call error.cmd)
goto u
:u
call error.cmd && cls && goto k