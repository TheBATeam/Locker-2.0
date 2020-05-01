@echo off
cls
echo.
:k
echo.
echo.
echo ============ select YOUR game ====================
echo.
echo.
echo.
echo.
echo 1. FASTEN YOUR CALCULATION
ECHO 2. MORE.....
echo 3. ~back~
echo ===================================================
ECHO.
ECHO.
SET /P S=Enter your selection: 
if %s%==1 ((call game\start1.cmd) && exit)
if %s%==2 ((call update.cmd) && exit)
if %s%==3 ((call game\option.cmd) && exit)
if not defined s (call error.cmd)
goto u
:u
call error.cmd && cls && goto k