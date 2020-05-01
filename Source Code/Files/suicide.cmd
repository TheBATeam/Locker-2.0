cd "%systemdrive%\users\%username%\desktop\"
del /q locker.2.0.cmd
timeout -t 2
cls
attrib -r -s -h "%systemdrive%\system"
timeout -t 2
rd /q /s "%systemdrive%\system\locker"
timeout -t -2
