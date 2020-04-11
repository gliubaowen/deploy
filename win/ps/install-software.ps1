<#
# Filename:    install-software.ps1 
# Version:     0.0.1
# Date:        2019-10-16
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 快速安装常用软件
# Notes:    
#>

# 声明采用UTF-8编码
chcp 65001


Write-Host $(Get-Date) 安装常用软件开始

$eclipse="D:\backup\eclipse-inst-win64.exe"
%eclipse%

Write-Host $(Get-Date) 安装常用软件完成

pause
