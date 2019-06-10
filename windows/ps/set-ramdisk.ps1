# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) "设置内存盘数据开始"

cp -r D:\Workspace\apache-maven-3.5.4 Z:\Workspace\apache-maven-3.5.4
cp -r D:\Workspace\apache-tomcat-7.0.92 Z:\Workspace\apache-tomcat-7.0.92
cp -r D:\Workspace\jdk\jdk1.8.0_181 Z:\Workspace\jdk\jdk1.8.0_181
cp -r D:\Workspace\eclipse Z:\Workspace\eclipse

Write-Host $(Get-Date) "设置内存盘数据完成"

pause
