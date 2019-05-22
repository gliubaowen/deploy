# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) 链接无线网开始

<#  命令参考
netsh interface show interface
netsh wlan show interfaces
netsh wlan show interfaces ^| findstr "Name.*:"
Netsh WLAN show profiles
Netsh WLAN show profiles interface="WLAN"
Netsh WLAN show profiles interface="WLAN 2"
Netsh WLAN show drivers
Netsh WLAN show wirelesscapabilities
Netsh WLAN show interfaces
Netsh WLAN show interfaces
Netsh WLAN show profile
Netsh WLAN show profile name="OnePlus3" key=clear
Netsh WLAN show profile name="OnePlus3"
Netsh WLAN show profile key=clear
Netsh WLAN export profile key=clear folder="D:"
Netsh WLAN show WLANreport
Netsh WLAN
Netsh WLAN ?
Netsh WLAN connect
Netsh WLAN show profile
Netsh WLAN connect
#>

Netsh WLAN connect name=NeiWang ssid=NeiWang interface="WLAN"
Netsh WLAN connect name=LQ_Office_WiFi ssid=LQ_Office_WiFi interface="WLAN 2"
Netsh WLAN set profileparameter name="NeiWang" connectionmode=auto
Netsh WLAN set profileparameter name="LQ_Office_WiFi" connectionmode=auto

#查看命令结果中的一列
#(history).CommandLine

Write-Host $(Get-Date) 链接无线网完成

pause
