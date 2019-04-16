@echo off
REM 声明采用UTF-8编码
chcp 65001

echo lock bde

manage-bde -lock G:

pause