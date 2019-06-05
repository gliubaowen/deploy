# 声明采用UTF-8编码

Write-Host $(Get-Date) 设置脚本运行级别
set-executionpolicy remotesigned

Write-Host $(Get-Date) 设置编码
$OutputEncoding = New-Object -typename System.Text.UTF8Encoding

$OutputEncoding