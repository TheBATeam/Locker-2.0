@echo off
if exist hh.file goto i
goto z
:z
set /a hh=0
echo %hh% > hh.file
goto i
:i
set /p q= < level.temp
echo.
echo.
title 				Player's Details.....
echo.
echo.
echo				Create New Profile......
echo.
echo.
set /p w=Player's name = 
if not defined w goto y
goto h
:h
cd points\%q%
if exist %w% goto aa
goto new
:new
echo.
set /p e=Player's age  = 
echo.
set /p t=Player's sex  = 
echo.
echo.
echo.
if exist %w% goto aa
goto bb
:bb
md %w%
goto tt
:tt
cd %w%
echo %w% > PlayerName~temp.kvc
echo %e% > PlayerAge~temp.kvc
echo %t% > playerSex~temp.kvc
cd..
cd..
cd..
echo %w%> player.nk
call %q%.cmd
cd..
call menu.cmd
exit
:y
cd..
call no_name.cmd
cd game
cls
goto i
:aa
Msg * Hello %w% !!!! welcome again !!!! you 've already A profile !!!
goto tt