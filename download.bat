@echo off 
md D:\tmp
:Start
wget -q -c -t 0 -P %USERPROFILE%\AppData\Local\Temp\one https://raw.githubusercontent.com/wgbingo/download/master/download.bat
wget -t 3 -c --limit-rate=6114k -w 3 -T 3 -P D:\tmp/ https://hugeota.d.miui.com/9.9.26/miui_CEPHEUS_9.9.26_82167abb35_10.0.zi
cd /d "D:\tmp" 
del /s /q /f *.*
cls
goto Start
