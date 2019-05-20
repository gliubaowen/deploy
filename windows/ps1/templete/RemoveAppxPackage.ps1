$ProgressPreference = "SilentlyContinue"
$ErrorActionPreference = "SilentlyContinue"

Start-Job -Name Job1 -ScriptBlock { Get-AppxPackage -AllUsers *DellInc.DellSupportAssistforPCs* | Remove-AppxPackage } 

Wait-Job -Name Job1

Start-Job -Name Job2 -ScriptBlock { Get-AppxPackage -AllUsers *DellInc.DellSupportAssistforPCs* | Remove-AppxPackage -AllUsers} 

Wait-Job -Name Job2

Start-Job -Name Job4 -ScriptBlock { Get-AppxPackage *DellInc.DellSupportAssistforPCs* | Remove-AppxPackage} 

Wait-Job -Name Job4

$sidList = Get-WmiObject -Class Win32_UserAccount | where {$_.SID -Match "S-1-5-21"} | Select SID
$appName = Get-AppxPackage -AllUsers | where {$_.PackageFullName -Match "DellInc.DellSupportAssistforPCs"}

foreach ($sid in $sidList) {
	Start-Job -Name Job3 -ScriptBlock { Remove-AppxPackage -User $sid.SID -Package $appName }
	Wait-Job -Name Job3
}

$App = Get-AppXProvisionedPackage -Online | Where {$_.DisplayName -Match "DellInc.DellSupportAssistforPCs" }
Remove-AppXProvisionedPackage -Online -PackageName $App.PackageName > $null