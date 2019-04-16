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

start %~dp0\makelnk.vbs %LnkName% %Program% %WorkDir% %Desc%

echo 桌面快捷方式创建成功！ 

exit
goto :eof
:GetWorkDir
set WorkDir=%~dp1
set WorkDir=%WorkDir:~,-1%
goto :eof

pause

