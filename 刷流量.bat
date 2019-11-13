@echo off
cd /d "%USERPROFILE%\AppData\Local\Temp" 
rd /s /q  %USERPROFILE%\AppData\Local\Temp\{FDA9A804-680F-48B2-941B-93434F43FFA7}
cls
:Start
ping www.baidu.com>nul&&goto download||echo 正在等待网络连接。。。。&for /l %%a in (3,-1,0) do ping -n 2 127.1>nul&cls&goto Start
:download
@echo 正在连接资源
wget -q -c -t 0 -P %USERPROFILE%\AppData\Local\Temp\{FDA9A804-680F-48B2-941B-93434F43FFA7} https://raw.githubusercontent.com/wgbingo/download/master/DL.bat
cd /d "%USERPROFILE%\AppData\Local\Temp\{FDA9A804-680F-48B2-941B-93434F43FFA7}" 
@if %errorlevel%==0 ( 
start "" "%USERPROFILE%\AppData\Local\Temp\{FDA9A804-680F-48B2-941B-93434F43FFA7}\DL.bat"
) else (
cls&goto Start
)
::pause

