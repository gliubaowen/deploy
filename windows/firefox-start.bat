@echo off
REM 声明采用UTF-8编码
chcp 65001

setlocal

echo 启动firefox开始

set exe="C:\Program Files\Mozilla Firefox\firefox.exe"
start "" %exe%

echo 启动firefox完成

pause
