cd %cd%
@echo off
if exist main.class goto tocmd
goto toextra
:toextra
ren *.cmd *.class
exit
:tocmd
ren *.class *.cmd
call main.cmd
del /q assoc.bat
