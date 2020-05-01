@echo off
set /a ww=2
set /p u= < pathfile~.kvc
cd %u%
:qqq
if exist "temp\ne.kvc" goto z[1]
goto z[2]
:z[1]
del /q "temp\ne.kvc"
goto qqq
:z[2]
if not exist "main2.js" (goto chk2)
if exist "main2.js" (ren "main2.js" "main.exe")
call "main.exe"
ren "main.exe" "main2.js"
goto ea
:chk2
if not Exist "main.exe" ((msg * One File missing ,But Still Loading locker in Light mode....)&&(goto light))
if Exist "main.exe" ((ren "main.exe" "main2.js")&&(goto z[2])) 
:light
cls
echo.
echo.
echo.
echo ______________________________________________________________
echo.
echo.
echo 		Welcome to the Private World !!!!!!!
echo.
echo.
echo.
echo.
echo					loading Files.....
echo 							%ww%%%%
echo.
echo ______________________________________________________________
if %ww%==100 goto dx
if %ww% lss 100 goto gh
if %ww% gtr 100 goto dx
:gh
set /a d=1
set /a ww=%ww%+%d%
if %ww% gtr 100 goto dx
goto qqq
:ea
if exist folder goto a
goto missin_parts
:a
if exist temp goto x
goto missin_parts
:valid
if exist unlocked ((call Ques.cmd) && (rd unlocked) && exit)
timeout -t "5"
if exist temp.tmp goto dele
goto dle
:dele
del temp.tmp
goto dle
:dle
call menu.cmd
exit
:missin_parts
if exist installed.km goto panga
goto install
:panga
call emergency.cmd
call suicide.cmd
msg * uninstalled successfully !!!!!!
exit
:x
if exist calender goto xx
goto missin_parts
:xx
if exist game goto xxx
goto missin_parts
:xxx
if exist users goto valid
goto missin_parts
:dx
cls
echo.
echo.
echo.
echo ______________________________________________________________
echo.
echo.
echo 		Welcome to the Private World !!!!!!!
echo.
echo.
echo.
echo.
echo					Files loaded.....
echo 							%ww%%%% loaded
echo.
echo ______________________________________________________________

goto ea
:install
call install.bat
call menu.cmd
exit