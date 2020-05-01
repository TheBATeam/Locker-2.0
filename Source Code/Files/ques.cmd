@echo off
title Do you wanna LOCK your private folder??
:y
call options.cmd
set /p g=Enter your choice(1 or 2): 
if %g%==1 goto 1
if %g%==2 goto 2
if not defined g ((call select.cmd) && (call ques.cmd) && exit)
goto wrong
:1
call lock.cmd
cls
exit
:2
exit
:wrong
call select.cmd
cls
goto y