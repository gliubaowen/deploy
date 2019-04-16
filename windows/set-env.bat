@echo off
REM 声明采用UTF-8编码
chcp 65001

echo 设置系统环境变量开始

set BAT_HOME="D:\01.我的资料\06.Project\liqun\project\deploy\windows"

set JAVA_HOME="C:\Program Files\Java\jdk1.8.0_181"
set classpath=".;"
set GIT_HOME="D:\Workspace\PortableGit"
set MAVEM_HOME="D:\Workspace\apache-maven-3.5.4"
set GRADLE_HOME="D:\Workspace\gradle-4.8.1-all\gradle-4.8.1"
set TOMCAT_HOME="D:\Workspace\apache-tomcat-7.0.92"
set CATALINA_HOME="D:\Workspace\apache-tomcat-7.0.92"
set H2_HOME="D:\Workspace\h2"
set NLS_LANG="SIMPLIFIED CHINESE_CHINA.AL32UTF8"

setx BAT_HOME %BAT_HOME% -m
setx JAVA_HOME %JAVA_HOME% -m
setx classpath %classpath% -m
setx GIT_HOME %GIT_HOME% -m
setx MAVEM_HOME %MAVEM_HOME% -m
setx MAVEM_HOME %MAVEM_HOME% -m
setx TOMCAT_HOME %TOMCAT_HOME% -m
setx CATALINA_HOME %CATALINA_HOME% -m
setx H2_HOME %H2_HOME% -m
setx NLS_LANG %NLS_LANG% -m
setx path "%path%;%%JAVA_HOME%%\bin;%%GIT_HOME%%\bin;%%MAVEM_HOME%%\bin;%%GRADLE_HOME%%\bin;%%TOMCAT_HOME%%\bin;%%H2_HOME%%\bin;C:\Program Files\TortoiseSVN\bin;%%BAT_HOME%%" -m

echo 设置系统环境变量成功

pause
