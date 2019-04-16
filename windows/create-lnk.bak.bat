@echo off
REM 声明采用UTF-8编码
chcp 65001

echo create lnk
echo 正在创建桌面快捷方式，请勿关闭本窗口.

::设置程序或文件的完整路径（必选）
set Program=D:\Workspace\eclipse\eclipse-jee-2019-03-R-win32-x86_64\eclipse.exe
   
::设置快捷方式名称（必选）
set LnkName="eclipse jee"
 
::设置程序的工作路径，一般为程序主目录，此项若留空，脚本将自行分析路径
set WorkDir=D:\Workspace\eclipse\eclipse-jee-2019-03-R-win32-x86_64\
 
::设置快捷方式显示的说明（可选）
set Desc=eclipse jee
 
if not defined WorkDir call:GetWorkDir "%Program%"
(echo LnkName=wscript.arguments(0^)
echo Program=wscript.arguments(1^)
echo WorkDir=wscript.arguments(2^)
echo Desc=wscript.arguments(3^)
echo Set WshShell=CreateObject("WScript.Shell"^)
echo strDesKtop=WshShell.SpecialFolders("DesKtop"^)
echo Set oShellLink=WshShell.CreateShortcut(strDesKtop^&"\"^&LnkName^&".lnk"^)
echo oShellLink.TargetPath=Program
echo oShellLink.WorkingDirectory=WorkDir
echo oShellLink.WindowStyle=1
echo oShellLink.Description=Desc
echo oShellLink.Save)>%~dp0\makelnk.vbs

start %~dp0\makelnk.vbs %LnkName% %Program% %WorkDir% %Desc%

echo 桌面快捷方式创建成功！ 

REM del /f /q %~dp0\makelnk.vbs
exit
goto :eof
:GetWorkDir
set WorkDir=%~dp1
set WorkDir=%WorkDir:~,-1%
goto :eof

pause
