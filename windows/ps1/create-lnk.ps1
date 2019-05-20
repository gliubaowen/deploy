# 声明采用UTF-8编码
chcp 65001

Write-Host $(Get-Date) 创建桌面快捷方式开始，请勿关闭本窗口.

<#
可选参数
$shortcut.IconLocation = "shell32.dll,23"
$shortcut.WorkingDirectory = 
$shortcut.WindowStyle=1
$shortcut.Description=Desc
#>

Function CreateLnk($Program)
{	
    $start=$Program.LastIndexOf("\")+1
    $end=$Program.LastIndexOf(".")
    
    $LnkName=$Program.Substring( $start,$end-$start )
	$WorkingDirectory=$Program.Substring( 0,$start-1 )
	
    $shortcut = $shell.CreateShortcut("$desktop\$LnkName.lnk")
	$shortcut.TargetPath = $Program
	$shortcut.WorkingDirectory = $WorkingDirectory
	$shortcut.Save()
    return
}

#设置快捷方式名称（必选）
$eclipse_LnkName="eclipse jee"
$DiskGenius_LnkName="DiskGenius"
$plsqldev_LnkName="plsqldev"
$AS_SSD_Benchmark_LnkName="AS SSD Benchmark"
$DiskMark64_LnkName="DiskMark64"
$sqldeveloper_LnkName="sqldeveloper"
$DiskInfo64_LnkName="DiskInfo64"
$aida64_LnkName="aida64"
$XshellPortable_LnkName="XshellPortable"
$XftpPortable_LnkName="XftpPortable"
#$PanDownload_LnkName="PanDownload"
$VeraCrypt_x64_LnkName="VeraCrypt-x64"
$FeiQ_LnkName="FeiQ"
$MobaXterm_LnkName="MobaXterm"

#设置程序或文件的完整路径（必选）
$eclipse_Program="D:\Workspace\eclipse\eclipse-jee-2019-03-R-win32-x86_64\eclipse.exe"
$DiskGenius_Program="D:\Workspace\tools\DiskGenius\DiskGenius\DiskGenius.exe"
$plsqldev_Program="D:\Workspace\PLSQL Developer 12\plsqldev.exe"
$AS_SSD_Benchmark_Program="D:\Workspace\tools\AS_SSD_Benchmark\AS SSD Benchmark.exe"
$DiskMark64_Program="D:\Workspace\tools\CrystalDiskMark6_0_1\DiskMark64.exe"
$sqldeveloper_Program="D:\Workspace\sqldeveloper\sqldeveloper.exe"
$DiskInfo64_Program="D:\Workspace\tools\crystaldiskinfo\DiskInfo64.exe"
$aida64_Program="D:\Workspace\tools\aida64extreme_v4577\aida64.exe"
$XshellPortable_Program="D:\Workspace\tools\XshellXftpPortable\XshellPortable.exe"
$XftpPortable_Program="D:\Workspace\tools\XshellXftpPortable\XftpPortable.exe"
#$PanDownload_Program="D:\Workspace\tools\PanDownload\PanDownload.exe"
$VeraCrypt_x64_Program="D:\Workspace\tools\VeraCrypt\VeraCrypt-x64.exe"
$FeiQ_Program="D:\Workspace\tools\FeiQ.exe"
$MobaXterm_Program="D:\Workspace\tools\MobaXterm_Portable_v11.1\MobaXterm.exe"

#首先，我们要使用到COM组件，创建桌面快捷方式，最简单的办法是调用WScript.Shell这个COM组件。
$shell = New-Object -ComObject WScript.Shell
#第二步，因为我们是要在桌面创建快捷方式，那还必须得找到桌面的位置，即桌面的物理路径。
$desktop = [System.Environment]::GetFolderPath('Desktop')

#第三步，定义快捷方式对象，并设置相关属性。
#最后，保存设置。

CreateLnk $eclipse_Program
CreateLnk $DiskGenius_Program
CreateLnk $plsqldev_Program
CreateLnk $AS_SSD_Benchmark_Program
CreateLnk $DiskMark64_Program
CreateLnk $sqldeveloper_Program
CreateLnk $DiskInfo64_Program
CreateLnk $aida64_Program
CreateLnk $XshellPortable_Program
CreateLnk $XftpPortable_Program
#CreateLnk $PanDownload_Program
CreateLnk $VeraCrypt_x64_Program
CreateLnk $FeiQ_Program
CreateLnk $MobaXterm_Program

Write-Host $(Get-Date) 创建桌面快捷方式完成.

pause
