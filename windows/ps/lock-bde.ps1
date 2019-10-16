<#
# Filename:    lock-bde.ps1 
# Version:     0.0.1
# Date:        2019-10-16
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 关闭BitLocker分区
# Notes:    
#>

# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date)  关闭BitLocker分区开始 

$driver=$args+":"

manage-bde -lock $driver

Write-Host $(Get-Date)  关闭BitLocker分区完成

pause
