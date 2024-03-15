New-Item -Path "E:\Documents\" -Name "AutoHotkey" -ItemType "directory"
Copy-Item -Path ".\tilde.ahk" -Destination "E:\Documents\AutoHotkey"

New-Item -Path "E:\workspace\" -Name "Powershell Scripts" -ItemType "directory"
Copy-Item -Path ".\Clear Temp Folder.ps1" -Destination "E:\workspace\Powershell Scripts"
Copy-Item -Path ".\Battery Report.ps1" -Destination "E:\workspace\Powershell Scripts"

Copy-Item -Path ".\Clear Temp Folder.ps1.lnk" -Destination "%home\Desktop"
Copy-Item -Path ".\Battery Report.ps1.lnk" -Destination "%home\Desktop"

cd ..
Remove-Item "my-windows-scripts" -Recurse