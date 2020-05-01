cd resume
del /Q *.*
cd..
rd resume
set /p zxc= < player.nk
msg * Level completed Successfully.........!!!!
cd points\%q%\%zxc%
echo level HAd been completed....!!! > complete.km
cd..
if exist points.km goto high_score
goto highest
:high
move /y points~temp.km Points.km
echo %zxc%> by.kvc
goto kvc[1]
:high_score
set /p ax= < points.km
set /p xa= < points~temp.km
if exist by.kvc ((set /p zx= < by.kvc) && goto pppp)
goto ppp
:ppp
set zx=%zxc%
goto pppp
:pppp
if %ax% gtr %xa% goto low
goto high
:low
msg * YOur Score is:[%xa%] and Highest Score is:[%ax%] by %zx%
goto kvc[1]
:kvc[1]
cd..
cd..
call do.cmd
