@echo off 
set a=%random% 
set /a mima=%a%*520+1314
set ci=1
echo.
echo 注意: 每次打开都要注册，失败将退出.
echo.
echo 注册号：1%a%9%random% 7%random%
echo.
set /p shuru=请输入注册码: 
if \"%shuru%\"==\"%mima%\" goto o
cls&echo.&echo ====没注册码还想进来!!!====没门!!!====&echo.&pause&echo.&exit
:o
cls&echo.
echo ============ 注册码正确,放行 ============
echo.
@setx Path "%cd%"
::新建下载目录
md D:\tmp
::定义外部链接
set /P URL=<%cd%/list.txt
:Start
::下载文件到目录
wget -t 3 -c --limit-rate=6114k -w 3 -T 3 -P D:\tmp/ %URL%
::删除目录下文件
cd /d "D:\tmp" 
del /s /q /f *.*
cls
goto Start
