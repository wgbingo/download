@echo off 
@setx Path "%cd%"
md D:\tmp
set /P URL=<%cd%/list.txt
:Start
wget -t 3 -c --limit-rate=6114k -w 3 -T 3 -P D:\tmp/ %URL%
cd /d "D:\tmp" 
del /s /q /f *.*
cls
goto Start
