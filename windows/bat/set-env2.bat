@echo off
REM 声明采用UTF-8编码
chcp 65001

setlocal

echo 设置系统环境变量开始

set BAT1_HOME="D:\01.Resources\06.Project\liqun\project\deploy\windows"

setx BAT1_HOME %path%";%%JAVA_HOME%%\bin;%%GIT_HOME%%\bin;%%MAVEM_HOME%%\bin;%%GRADLE_HOME%%\bin;%%TOMCAT_HOME%%\bin;%%H2_HOME%%\bin;C:\Program Files\TortoiseSVN\bin;%%BAT_HOME%%" -m

echo 设置系统环境变量成功

pause
