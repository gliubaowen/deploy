<#
# Filename:    set-sshd.ps1 
# Version:     0.0.1
# Date:        2019-10-16
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 设置ssh服务
# Notes:    
#>

# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) "配置ssh服务开始"

# Authenticating to 127.0.0.1:22 as 'azuread\\baowenliu'

net start sshd

net stop sshd

Write-Host $(Get-Date) "配置ssh服务完成"

pause
