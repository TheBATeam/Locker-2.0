@Echo off
cls

Title Locker 2.0 - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a
Mode 80,25

:Main
Cls
Echo.
Call Launch.bat
pause
exit