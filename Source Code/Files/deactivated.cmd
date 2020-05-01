@echo off
set /p a= < temp\ne.kvc
cd folder
echo. >> user_list.km
echo *******************%a% Deactivated its account...... >> user_list.km
echo. >> user_list.km
cd..
cd users\%a%\
set /p b= < drive.kvc
set /p c= < folder_name.kvc
cd..
rd /q /s %a%
msg * Dear %a% !!! your Account Deactivated SUCCESSFULLY....
timeout -t 3 -nobreak
cd %b%:
attrib -r -s -a -h "%b%:\%c%"
rd /Q /s %c%
