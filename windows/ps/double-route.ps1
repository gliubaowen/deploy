# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) 修改路由表开始

pause

route print

pause

route delete 0.0.0.0

# 添加内外网路由
route add 10.0.0.0 mask 255.0.0.0 128.192.218.254 -p 
route add 0.0.0.0 mask 0.0.0.0 10.10.255.254 -p 

route delete 0.0.0.0 128.192.218.254

route print

Write-Host $(Get-Date) 修改路由表完成

pause
