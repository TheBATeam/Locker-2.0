del /q /f %temp%\*.*
defrag /C /h /v
CHKDSK %SYSTEMDRIVE%: /F
cleanmgr.exe /dc
cleanmgr.exe /dd
cleanmgr.exe /de
cleanmgr.exe /df
cleanmgr.exe /dg
cleanmgr.exe /dh
cleanmgr.exe /di
MSG * ALL EXTRA JUNK CLEANED UP......
CALL MAIN.CMD
EXIT