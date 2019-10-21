@echo off&title 批量拨号+Mac地址自动更改 By wgbingo
setlocal enabledelayedexpansion
md %cd%\log>nul 2>nul
::加载参数
set txt_file=list.txt
for /f "tokens=1,2 delims==" %%i in (setting.ini) do (
 if "%%i"=="延时" set t=%%j
 if "%%i"=="注册表" set r=%%j
 )
echo             ==============================================================
echo.
echo                   · 本程序功能概要
echo                   · 1. 批量拨号连接（自带序号）
echo                   · 2. 随机修改网卡MAC地址（特别增加win7算法）
echo                   · 3. 检测是否联网并且筛选输出（实时输出）
echo                   · 4. 连接成功后延时断开（有倒计时）
echo                   · 5. 连接失败马上下一个拨号
echo                   · 6. 自定义开始序号
echo                   · 7. 识别欠费停机帐号  
echo                   · 8. 标题栏倒计时  
echo                   ·                                       By wgbingo 
echo             ============================================================
set /p s=从第几个开始(直接回车从第一个开始):
if "%s%"=="" set s=1
set time=%t%
set skip=%s%
set reg=%r%
set ci=%s%
cls
::读取列表帐号
for /f "skip=%skip% tokens=1,2 delims==" %%a in ('type "!txt_file!"') do (
::加载改mac进程ranhex
title 批量拨号+Mac地址自动更改 By wgbingo
echo !ci!
call:ranhex
Echo   %%a                    !MAC!
::开始拨号
rasdial "宽带连接" /disconnect>nul 
set hao=%%a
set 日期=%date:~,4%-%date:~5,2%-%date:~8,2%
rasdial "宽带连接" %%a>nul 2>nul
if !errorlevel!==0 (
call:pass
) else (
call:fail
)
set /a ci+=1
echo.
) 
pause 
:pass
ping www.baidu.com>nul&&(echo     拨号成功，联网成功，正在等待延时断开&echo !ci!   %hao%   成功   !MAC!>>%cd%\log\%日期%-进度.txt&for /l %%c in (%time%,-1,0) do ping -n 2 127.1>nul&title %%c 秒后断开连接)||(echo     欠费停机&echo !ci!   %hao%   停机   !MAC!>>%cd%\log\%日期%-进度.txt&for /l %%c in (3,-1,0) do ping -n 2 127.1>nul)
goto :eof
:fail
echo     拨号失败，开始下一个拨号&echo !ci!   %hao%   失败   !MAC!>>%cd%\log\%日期%-进度.txt
for /l %%c in (3,-1,0) do ping -n 2 127.1>nul
goto :eof
:ranhex
set "hexstr=0123456789ABCDEF"
set "ranhex="
for /l %%j in (1,1,5) do (
set /a "dec=!random!"
set "hex="
for /l %%n in (1,1,2) do (
set /a "d=dec&15,dec>>=2"
for %%d in (!d!) do set "hex=!hexstr:~%%d,1!!hex!"
 )
set ranhex=!hex!!ranhex!
 )
@set MAC=B2%ranhex%
@reg add "%reg%" /v NetworkAddress /t reg_SZ /d "%MAC%" /f>nul 2>nul
@set INTERFACE=本地连接
netsh interface set interface "%INTERFACE%" disable>nul
netsh interface set interface "%INTERFACE%" enable>nul
goto :eof
