::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyEY/PxVYQwWGAHy9A6FS7fD+jw==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJF2L40w8JxpQcACRLSWzBbp8
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN65kVZSPVsI2z+VB4dig3GpDaxmHSPbis659/VEICoMjA4=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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