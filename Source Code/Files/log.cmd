@echo off
:m
if exist folder goto a
goto b
:b
md folder
goto m
:l
set /p t= < temp\num.kvc
:o
set /p e= < temp\ne.kvc
echo [%t%.] [%e%] [%date%] [%time%] >> folder\log.kvc
set /a t=%t%+1
echo %t% > temp\num.kvc
goto xxxx
:a
cd folder\
if exist log.kvc goto w
goto p
:w
cd..
if exist temp\num.kvc goto l
goto f
:f
set /a t=1
goto o
:p
echo sr.No.  user      Day and Date       @time...  > log.kvc
cd..
goto a
:xxxx
