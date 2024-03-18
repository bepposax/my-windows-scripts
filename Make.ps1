if (Test-Path -Path "E:") {
    $drv = "E:"
} else {
    $drv = "C:"
}

$Documents = "$drv\Documents"
$workspace = "$drv\workspace"

New-Item -Path "$Documents\" -Name "AutoHotkey" -ItemType "directory"
Copy-Item -Path ".\tilde.ahk" -Destination "$Documents\AutoHotkey"

New-Item -Path "$workspace\" -Name "Powershell Scripts" -ItemType "directory"
Copy-Item -Path ".\Clear Temp Folder.ps1" -Destination "$workspace\Powershell Scripts"
Copy-Item -Path ".\Battery Report.ps1" -Destination "$workspace\Powershell Scripts"
Copy-Item -Path ".\Energy Report.ps1" -Destination "$workspace\Powershell Scripts"

Copy-Item -Path ".\Clear Temp Folder.ps1.lnk" -Destination "%home\Desktop"
Copy-Item -Path ".\Battery Report.ps1.lnk" -Destination "%home\Desktop"
Copy-Item -Path ".\Energy Report.ps1.lnk" -Destination "%home\Desktop"

cd ..
Remove-Item "my-windows-scripts" -Recurse