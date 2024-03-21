if (Test-Path -Path "E:") {
    $workspace = "E:\workspace"
    $Documents = "E:\Documents"
} else {
    $workspace = "C:\workspace"
    $Documents = "$home\Documents"
}

New-Item -Path "$Documents\" -Name "AutoHotkey" -ItemType "directory"
Copy-Item -Path ".\scripts\tilde.ahk" -Destination "$Documents\AutoHotkey"
Copy-Item -Path ".\links\tilde.ahk.lnk" -Destination "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"

New-Item -Path "$workspace\" -Name "Powershell Scripts" -ItemType "directory"
Copy-Item -Path ".\scripts\*.ps1" -Destination "$workspace\Powershell Scripts"
Copy-Item -Path ".\links\*.ps1.lnk" -Destination "$home\Desktop"

cd ..
Remove-Item "my-windows-scripts" -Recurse
