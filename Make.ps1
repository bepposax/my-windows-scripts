New-Item -Path "E:\Documents\" -Name "AutoHotkey" -ItemType "directory"
Copy-Item -Path ".\tilde.ahk" -Destination "E:\Documents\AutoHotkey"

New-Item -Path "E:\workspace\" -Name "Powershell-Scripts" -ItemType "directory"
Copy-Item -Path ".\Clear-Temp-Folder.ps1" -Destination "E:\workspace\Powershell-Scripts"

Copy-Item -Path ".\Clear Temp Folder.ps1.lnk" -Destination "C:\Users\Ivano\Desktop"

Remove-Item ".\tilde.ahk" ".\Clear-Temp-Folder.ps1" ".\Clear Temp Folder.ps1.lnk" "make.ps1"