<#
# Filename:    set-vmp.ps1 
# Version:     0.0.1
# Date:        2019-10-16
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 设置VirtualMachinePlatform
# Notes:    
#>

# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) "配置VirtualMachinePlatform开始"

#开启windows 可选功能 VirtualMachinePlatform
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -Confirm:$false

Write-Host $(Get-Date) "配置VirtualMachinePlatform完成"

#重启电脑
Restart-Computer

pause
