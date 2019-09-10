# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) 修改路由表开始

pause

route print

pause

# 删除默认路由
route delete 0.0.0.0

# 添加特定网络路由
route add 20.0.0.0 mask 255.0.0.0 20.2.134.254 -p 
# 添加默认网络路由
route add 0.0.0.0 mask 0.0.0.0 192.168.43.129 -p 

# 删除特定网络默认 一般不需要 
#route delete 0.0.0.0 128.192.218.254

route print

Write-Host $(Get-Date) 修改路由表完成

pause
