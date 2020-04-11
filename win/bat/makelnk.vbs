LnkName=wscript.arguments(0)
Program=wscript.arguments(1)
WorkDir=wscript.arguments(2)
Desc=wscript.arguments(3)
Set WshShell=CreateObject("WScript.Shell")
strDesKtop=WshShell.SpecialFolders("DesKtop")
Set oShellLink=WshShell.CreateShortcut(strDesKtop&"\"&LnkName&".lnk")
oShellLink.TargetPath=Program
oShellLink.WorkingDirectory=WorkDir
oShellLink.WindowStyle=1
oShellLink.Description=Desc
oShellLink.Save
