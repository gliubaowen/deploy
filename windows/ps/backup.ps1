<#
# Filename:    backup.ps1 
# Version:     0.0.1
# Date:        2019-10-16
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 备份数据
# Notes:    
#>

# 声明采用UTF-8编码
chcp 65001

#开启单步调试功能
Set-PSDebug -Step

Write-Host $(Get-Date) 备份文件开始

#关闭调试功能
Set-PSDebug -Off

Write-Host $(Get-Date) 备份文件完成

pause
