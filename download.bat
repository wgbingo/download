@echo off 
setlocal enabledelayedexpansion
::�½�����Ŀ¼
md D:\tmp
::�����ⲿ����
:Start
ping www.baidu.com>nul&&goto download||echo ���ڵȴ��������ӡ�������&for /l %%a in (3,-1,0) do ping -n 2 127.1>nul&cls&goto Start
::�����ļ���Ŀ¼
:download
wget -t 3 -c --limit-rate=6114k -w 3 -T 3 -P D:\tmp/ https://hugeota.d.miui.com/9.9.26/miui_CEPHEUS_9.9.26_82167abb35_10.0.zip
::ɾ��Ŀ¼���ļ�
cd /d "D:\tmp" 
del /s /q /f *.*
cls
goto Start
