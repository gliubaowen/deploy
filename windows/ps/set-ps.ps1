# 声明采用UTF-8编码

Write-Host $(Get-Date) 当前脚本运行级别
Get-ExecutionPolicy

Write-Host $(Get-Date) 按任意键开始设置脚本运行级别

cmd /c "pause>nul"

Write-Host $(Get-Date) 设置脚本运行级别
set-executionpolicy remotesigned

Write-Host $(Get-Date) 设置成功
