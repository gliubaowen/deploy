@echo off
REM 声明采用UTF-8编码
chcp 65001

setlocal

echo 关闭BitLocker分区开始 

manage-bde -lock %1:

echo 关闭BitLocker分区完成

pause
