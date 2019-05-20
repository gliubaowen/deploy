Get-AppxPackage -AllUsers | Where-Object {$_.PackageFamilyName -like "*DellInc.DellSupportAssistforPCs_htrsf667h5kn2*"} | Remove-AppxPackage

Get-AppxPackage -AllUsers | Where-Object {$_.PackageFamilyName -like "*DellInc.DellSupportAssistforPCs_htrsf667h5kn2*"} | Remove-AppxPackage -AllUsers

Get-AppxPackage | Where-Object {$_.PackageFamilyName -like "*DellInc.DellSupportAssistforPCs_htrsf667h5kn2*"} | Remove-AppxPackage