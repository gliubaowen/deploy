<#
# Filename:    set-wsl.ps1 
# Version:     0.0.1
# Date:        2019-10-16
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 设置WSL
# Notes:    
#>

# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) "配置WSL开始"

# 开启windows 可选功能 wsl
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -Confirm:$false

# 1.设置默认运行的linux系统
# wslconfig /setdefault <DistributionName>

# 2.卸载linux系统

# wslconfig /unregister <DistributionName>

# 3.查看已安装的linux系统
# wslconfig /list

# 4.设置默认登陆用户
# ubuntu config --default-user root

Write-Host $(Get-Date) "配置WSL完成"

# 重启电脑
Restart-Computer

pause
