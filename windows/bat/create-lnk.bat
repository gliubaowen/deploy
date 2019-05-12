@echo off
REM 声明采用UTF-8编码
chcp 65001

setlocal

echo 正在创建桌面快捷方式，请勿关闭本窗口.

::设置快捷方式名称（必选）
set "eclipse_LnkName=eclipse jee"
set "DiskGenius_LnkName=DiskGenius"
set "plsqldev_LnkName=plsqldev"
set "AS_SSD_Benchmark_LnkName=AS SSD Benchmark"
set "DiskMark64_LnkName=DiskMark64"
set "sqldeveloper_LnkName=sqldeveloper"
set "DiskInfo64_LnkName=DiskInfo64"
set "aida64_LnkName=aida64"
set "XshellPortable_LnkName=XshellPortable"
set "XftpPortable_LnkName=XftpPortable"
set "PanDownload_LnkName=PanDownload"
set "VeraCrypt-x64_LnkName=VeraCrypt-x64"
set "FeiQ_LnkName=FeiQ"
set "MobaXterm_LnkName=MobaXterm"

::设置程序或文件的完整路径（必选）
set "eclipse_Program=D:\Workspace\eclipse\eclipse-jee-2019-03-R-win32-x86_64\eclipse.exe"
set "DiskGenius_Program=D:\Workspace\tools\DiskGenius\DiskGenius\DiskGenius.exe"
set "plsqldev_Program=D:\Workspace\PLSQL Developer 12\plsqldev.exe"
set "AS_SSD_Benchmark_Program=D:\Workspace\tools\AS_SSD_Benchmark\AS SSD Benchmark.exe"
set "DiskMark64_Program=D:\Workspace\tools\CrystalDiskMark6_0_1\DiskMark64.exe"
set "sqldeveloper_Program=D:\Workspace\sqldeveloper\sqldeveloper.exe"
set "DiskInfo64_Program=D:\Workspace\tools\crystaldiskinfo\DiskInfo64.exe"
set "aida64_Program=D:\Workspace\tools\aida64extreme_v4577\aida64.exe"
set "XshellPortable_Program=D:\Workspace\tools\XshellXftpPortable\XshellPortable.exe"
set "XftpPortable_Program=D:\Workspace\tools\XshellXftpPortable\XftpPortable.exe"
set "PanDownload_Program=D:\Workspace\tools\PanDownload\PanDownload.exe"
set "VeraCrypt-x64_Program=D:\Workspace\tools\VeraCrypt\VeraCrypt-x64.exe"
set "FeiQ_Program=D:\Workspace\tools\FeiQ.exe"
set "MobaXterm_Program=D:\Workspace\tools\MobaXterm_Portable_v11.1\MobaXterm.exe"

::设置程序的工作路径，一般为程序主目录，此项若留空，脚本将自行分析路径
set WorkDir=

::设置快捷方式显示的说明（可选）
::set Desc=DiskGenius
set Desc=""

::start %~dp0\makelnk.vbs %LnkName% %Program% %WorkDir% %Desc%
call:GetWorkDir "%eclipse_Program%"
start %~dp0\makelnk.vbs "%eclipse_LnkName%" "%eclipse_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%DiskGenius_Program%"
start %~dp0\makelnk.vbs "%DiskGenius_LnkName%" "%DiskGenius_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%plsqldev_Program%"
start %~dp0\makelnk.vbs "%plsqldev_LnkName%" "%plsqldev_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%AS_SSD_Benchmark_Program%"
start %~dp0\makelnk.vbs "%AS_SSD_Benchmark_LnkName%" "%AS_SSD_Benchmark_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%DiskMark64_Program%"
start %~dp0\makelnk.vbs "%DiskMark64_LnkName%" "%DiskMark64_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%sqldeveloper_Program%"
start %~dp0\makelnk.vbs "%sqldeveloper_LnkName%" "%sqldeveloper_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%DiskInfo64_Program%"
start %~dp0\makelnk.vbs "%DiskInfo64_LnkName%" "%DiskInfo64_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%aida64_Program%"
start %~dp0\makelnk.vbs "%aida64_LnkName%" "%aida64_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%XshellPortable_Program%"
start %~dp0\makelnk.vbs "%XshellPortable_LnkName%" "%XshellPortable_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%XftpPortable_Program%"
start %~dp0\makelnk.vbs "%XftpPortable_LnkName%" "%XftpPortable_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%PanDownload_Program%"
start %~dp0\makelnk.vbs "%PanDownload_LnkName%" "%PanDownload_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%VeraCrypt-x64_Program%"
start %~dp0\makelnk.vbs "%VeraCrypt-x64_LnkName%" "%VeraCrypt-x64_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%FeiQ_Program%"
start %~dp0\makelnk.vbs "%FeiQ_LnkName%" "%FeiQ_Program%" "%WorkDir%" %Desc%
call:GetWorkDir "%MobaXterm_Program%"
start %~dp0\makelnk.vbs "%MobaXterm_LnkName%" "%MobaXterm_Program%" "%WorkDir%" %Desc%

echo 桌面快捷方式创建成功！ 

goto :eof

:GetWorkDir
set WorkDir=%~dp1
set WorkDir=%WorkDir:~,-1%
goto :eof

pause
