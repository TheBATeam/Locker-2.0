@echo off
set /a kvc=0
set /p q= < level.temp
set /p kvc[2]= < player.nk
echo.
if exist yes.km goto resume_it
goto simple
:simple
cls
set /a x[1]=1
echo.
cd points\%q%\%kvc[2]%
if exist complete.km goto s[44]
goto s(44)
:s[44]
cd..
cd..
cd..
msg * You had completed this level successfully.....
call do1.cmd
:s(44)
cd..
cd..
cd..
title Please wait !!!!!! Loading files!!!!..............
set /a a[1]=%random%
if %a[1]% gtr 990 goto simple
goto r[1]
:r[1]
cls
set /a a[2]=%random%
if %a[2]% gtr 990 goto r[1]
goto poo[1]
:poo[1]
set /a a=(14-12)/12
SET /a Y=(9-%a%)
SET /a m=9+12*%a%-2
set /a g=(9+%Y%+(%Y%/4)-(%Y%/100)+(%Y%/400)+31*%m%/12)
set /a e=%g%/7
set /a a[2]=%g%-%e%*7
If %a[2]% lss 9 goto poo[2]
goto s(44)
:poo[2]
set /a a=(14-%a[2]%)/12
SET /a Y=(%a[1]%-%a%)
SET /a m=%a[2]%+12*%a%-2
set /a g=(%a[2]%+%Y%+(%Y%/4)-(%Y%/100)+(%Y%/400)+31*%m%/12)
set /a e=%g%/7
set /a a[1]=%g%-%e%*7
If %a[1]% lss 9 goto x[2]
goto s(44)
:a
cls
set /a a[1]=%a[1]%+1
if %a[1]% gtr 9 ((set /a a[1]=0) && goto aa)
goto aa
:aa
set /a a[2]=%a[2]%+3
if %a[2]% gtr 9 ((set /a a[2]=0) && goto x[2])
goto x[2]
:aaa
set sign=+
goto game
:game
if not exist resume goto ss
goto sa
:ss
md resume
goto game
:sa
cd resume
if exist que.km goto md
goto y[1]
:md
set /p x[1]= < que.km
goto y[1]
:y[1]
cd..
cd points\%q%\
if exist points%kvc[2]%.km goto yu
goto uu
:yu
set /p dd= < points%kvc[2]%.km
goto poo
:uu
set /a dd=0
goto uy
:uy
cd..
cd..
echo.
echo.
echo Player: %kvc[2]%			        Points: %dd%
goto qa
:poo
cd..
cd..
echo.
echo.
echo Player : %kvc[2]%			   last Points: %dd%
:qa
echo.
set /a cc=50-%x[1]%
echo 							Ques left: %cc%
echo.
echo Ques No.(%x[1]%) ---^>^> %a[1]% %sign% %a[2]% Equals .....
echo.
set /p a[3]=Your Answer: 
set /a a[4]=%a[1]%%sign%%a[2]%
if %a[4]%==%a[3]% goto correct
goto incorrect
:correct
set /a w=%dd%+5
cd points\%q%
echo %w% > points%kvc[2]%.km
cd..
cd..
goto xx
:xx
cd resume
echo %q% > level.temp
echo %sign% > sign.km
set /a x[1]=%x[1]%+1
echo %x[1]% > Que.km
cd..
goto a
:x[2]
title Fasten your calculation...........		LEVEL: 	EASY !!!!!
if %x[1]% lss 15 goto aaa
if %x[1]% lss 29 goto b
if %x[1]% lss 40 goto c
if %x[1]% lss 50 goto d
if %x[1]%==50 goto e
:e
color 71
type easy_complete.nk
pause
cd points\%q%
ren points%kvc[2]%.km points~temp.km
color 07
call a[1].cmd
exit
:c
set sign=*
cls
goto game
:b
cls
set sign=-
goto qwerty
:qwerty
if %a[2]% gtr %a[1]% goto set
goto noo
:set
set /a aa[1]=%a[1]%
set /a a[1]=%a[2]%
set /a a[2]=%aa[1]%
goto qwerty
:noo
goto game
:d
cls
set sign=/
goto qwerty1
:qwerty1
if %a[2]% gtr %a[1]% goto set
goto complete
:set
set /a aa[1]=%a[1]%
set /a a[1]=%a[2]%
set /a a[2]=%aa[1]%
goto complete
:complete
if %a[2]%==0 goto q[99]
goto p[99]
:q[99]
set /a a[2]=%a[1]%+1
goto complete
:p[99]
set /a u[1]=%a[1]%/%a[2]%
set /a u[2]=%a[2]%*%u[1]%
set /a u[3]=%a[1]%-%u[2]%
if %u[3]%==0 goto game
goto a
:incorrect
msg * " %a[1]%%sign%%a[2]%=%a[4]% " and not " %a[3]% "....
cd points\%q%\
set /a dd=%dd%-%x[1]%*2
echo %dd% > points%kvc[2]%.km
cd..
cd..
cls
cd resume
set /a x[1]=%x[1]%+1
echo %x[1]%> Que.km
cd..
goto x[2]
:q[1]
cd..
call menu.cmd
exit
:resume_it
del /q yes.km
SET /P KVC[1]= < player.nk
if exist resume goto wwe
goto simple
:wwe
cd resume\%kvc[1]%
set /p q= < level.temp
set /p x[1]= < que.km
set /p sign= < sign.km
cd..
goto a