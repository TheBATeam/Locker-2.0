:c
@echo on
@echo off
echo.
echo.
echo.
set /p p=Enter New password (of folder): 
set /p d= < temp\ne.kvc
cls
echo.
ECHO.
set /p k=Verify Password: 
cls
CLS
if %p%==%k% goto ee
if %p% neq %k% (call not_matched.cmd && goto c)
:ee
cd users\%d%\
echo %p% > pass.kvc
cd..
cd..
