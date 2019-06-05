chcp 65001

Write-Host $(Get-Date)  关闭BitLocker分区开始 

$driver=$args+":"

manage-bde -lock $driver

Write-Host $(Get-Date)  关闭BitLocker分区完成

pause
