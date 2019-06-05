# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) ""

#开启windows 可选功能
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
#解压文件命令 需要加参数
Expand-Archive

Write-Host $(Get-Date) ""

pause
