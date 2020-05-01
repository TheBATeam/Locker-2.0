@ECHO OFF
if exist "temp\PASS.TEM" (del /q "temp\PASS.TEM")
set /a v=5
echo %v% > "folder\chance.kvc"
set /p z= < "temp\ne.kvc"
title %z%
:m
ECHO.
ECHO.
ECHO.
MODE 64,25
ECHo.
ECHO.
ECHO.
set /p c= < "users\%z%\pass.kvc"
cls
color 17
title %z% - You have only [%v%] Chances left....
echo.
if exist "sys.dll" ( ren "sys.dll" "sys.exe")
call "sys.exe"
if not exist "temp\PASS.TEM" ( msg * Error !! Please Specify your Password Again !! && call "sys.exe")
set /p password= < "temp\PASS.TEM"
if not defined password ((call "cant_empty.cmd") && (call "user.cmd") && exit)
if "%password%"=="%c%" ((ren "sys.exe" "sys.dll")&&(call "pwdmatch.cmd") && (call "unlock.cmd"))
if not "%password%"=="%c%" ((call "wrongpwd.cmd") && (set /a v=%v%-1) && (goto n))
:n
if "%v%"=="0" ((call "limit_broken.cmd") && exit)
goto m
