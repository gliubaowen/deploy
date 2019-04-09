@echo off
REM 声明采用UTF-8编码
chcp 65001

echo test
echo 中文测试
echo pdm start
set var="D:\01.我的资料\06.Project\liqun\doc\liqun-doc\04 系统设计\31 数据库设计\10 中台\商品\product.pdm"
start "C:\Program Files (x86)\Sybase\PowerDesigner 16\PdShell16.exe" %var%

pause