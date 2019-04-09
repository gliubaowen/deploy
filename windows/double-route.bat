@echo off
REM 声明采用UTF-8编码
chcp 65001

echo modify route 测试

pause

route print

route delete 0.0.0.0

添加内外网路由
route add 0.0.0.0 mask 0.0.0.0 10.10.255.254 -p 
route add 10.0.0.0 mask 255.0.0.0 128.192.218.254 -p 
pause
