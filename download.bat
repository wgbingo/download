@echo off 
set a=%random% 
set /a mima=%a%*520+1314
set ci=1
echo.
echo ע��: ÿ�δ򿪶�Ҫע�ᣬʧ�ܽ��˳�.
echo.
echo ע��ţ�1%a%9%random% 7%random%
echo.
set /p shuru=������ע����: 
if \"%shuru%\"==\"%mima%\" goto o
cls&echo.&echo ====ûע���뻹�����!!!====û��!!!====&echo.&pause&echo.&exit
:o
cls&echo.
echo ============ ע������ȷ,���� ============
echo.
@setx Path "%cd%"
::�½�����Ŀ¼
md D:\tmp
::�����ⲿ����
set /P URL=<%cd%/list.txt
:Start
::�����ļ���Ŀ¼
wget -t 3 -c --limit-rate=6114k -w 3 -T 3 -P D:\tmp/ %URL%
::ɾ��Ŀ¼���ļ�
cd /d "D:\tmp" 
del /s /q /f *.*
cls
goto Start
