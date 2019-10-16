<#
# Filename:    pdm-start.ps1 
# Version:     0.0.1
# Date:        2019-10-16
# Author:      LiuBaoWen
# Email:       bwliush@cn.ibm.com
# Description: 用程序打开文件
# Notes:    
#>

# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) 打开product.pdm文件开始

$file="D:\01.Resources\06.Project\liqun\doc\liqun-doc\04 系统设计\31 数据库设计\10 中台\商品\product.pdm"
Invoke-Item  $file

Write-Host $(Get-Date) 打开product.pdm文件完成

pause
