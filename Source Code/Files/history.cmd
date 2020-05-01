@echo off
cd folder\
if exist log.kvc goto w
goto p
:w
ren log.kvc log.txt
more log.txt
ren log.txt log.kvc
echo.
echo.
pause
cd..
goto z
:p
msg * No History Yet !!!!!!
cd..
goto z
:z
