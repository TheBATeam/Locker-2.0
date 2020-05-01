@echo off
cls
set /P ws= < temp\ne.kvc
echo.
echo.
echo.
echo.
echo			HI %ws% !!!!
echo.
echo.
echo.
echo.
set /p sd=Enter your new User-name: 
echo %sd% > temp\ne.kvc
cls
echo.
echo.
echo.
cd users\
REN "%ws%" "%SD%"
msg * Your User-name had been changed FROM "%WS%" TO "%SD%" !!!!
cd..
cd folder
echo. >> user_list.km
echo ********** User changed its Name as [%ws%] --^>^> [%sd%] >> user_list.km
echo. >> user_list.km
cd..
TIMEOUT -T "8"
