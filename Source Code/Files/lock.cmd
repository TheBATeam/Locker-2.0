@echo off
set /p xx= < "temp\ne.kvc"
cd users\%xx%\
set /p x= < folder_name.kvc
set /p xxx= < drive.kvc
CD..
CD..
attrib +r +s +a +h "%xxx%:\%x%"
call locked.cmd