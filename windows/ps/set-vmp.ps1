# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) "配置VirtualMachinePlatform开始"

#开启windows 可选功能 VirtualMachinePlatform
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform

Write-Host $(Get-Date) "配置VirtualMachinePlatform完成"

y

#重启电脑
Restart-Computer

pause
