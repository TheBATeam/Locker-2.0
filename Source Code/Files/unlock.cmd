@echo off
set /p xx= < "temp\ne.kvc"
cd users\%xx%\
set /p x= < folder_name.kvc
set /p a= < drive.kvc
cd..
cd..
explorer "%a%:\%x%"
call log.cmd
exit
