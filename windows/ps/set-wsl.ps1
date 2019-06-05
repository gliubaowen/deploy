# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) "配置WSL开始"

#开启windows 可选功能 wsl
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

#1.设置默认运行的linux系统
#wslconfig /setdefault <DistributionName>

Write-Host $(Get-Date) "配置WSL完成"

#重启电脑
Restart-Computer

pause
