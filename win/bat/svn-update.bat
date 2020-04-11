@echo off
REM 声明采用UTF-8编码
chcp 65001

setlocal

echo 更新 利群 svn 开始

cd D:\01.Resources\06.Project\liqun\doc
svn update

echo 更新 利群 svn 完成

pause
