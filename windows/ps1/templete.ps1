# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) ""

#查询已删除的文件log
git log -- README.md

Write-Host $(Get-Date) ""

pause
