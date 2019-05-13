chcp 65001

echo 打开product.pdm文件开始

set file="D:\01.Resources\06.Project\liqun\doc\liqun-doc\04 系统设计\31 数据库设计\10 中台\商品\product.pdm"
set exe="C:\Program Files (x86)\Sybase\PowerDesigner 16\PdShell16.exe"
Invoke-Item %exe% %file%

echo 打开product.pdm文件完成

pause
