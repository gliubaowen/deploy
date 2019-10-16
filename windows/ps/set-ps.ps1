<#
# Filename:    set-ps.ps1 
# Version:     0.0.1
# Date:        2019-10-16
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 设置Powershell
# Notes:    
#>

# 声明采用UTF-8编码

Write-Host $(Get-Date) 当前脚本运行级别
Get-ExecutionPolicy

Write-Host $(Get-Date) 按任意键开始设置脚本运行级别

cmd /c "pause>nul"

Write-Host $(Get-Date) 设置脚本运行级别
set-executionpolicy remotesigned

Write-Host $(Get-Date) 设置成功
