@echo off 
setlocal enabledelayedexpansion
@setx Path "%cd%"
::新建下载目录
md D:\tmp
::定义外部链接
set /P URL=<%cd%/list.txt
:Start
ping www.baidu.com>nul&&goto download||echo 正在等待网络连接。。。。&for /l %%a in (3,-1,0) do ping -n 2 127.1>nul&cls&goto Start
::下载文件到目录
:download
wget -t 3 -c --limit-rate=6114k -w 3 -T 3 -P D:\tmp/ %URL%
::删除目录下文件
cd /d "D:\tmp" 
del /s /q /f *.*
cls
goto Start
