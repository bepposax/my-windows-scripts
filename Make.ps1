if (Test-Path -Path "E:") {
    $drv = "E:"
} else {
    $drv = "C:"
}

$Documents = "$drv\Documents"
$workspace = "$drv\workspace"

New-Item -Path "$Documents\" -Name "AutoHotkey" -ItemType "directory"
Copy-Item -Path ".\scripts\tilde.ahk" -Destination "$Documents\AutoHotkey"

New-Item -Path "$workspace\" -Name "Powershell Scripts" -ItemType "directory"
Copy-Item -Path ".\scripts\*.ps1" -Destination "$workspace\Powershell Scripts"
Copy-Item -Path ".\links\*" -Destination "$home\Desktop"

cd ..
Remove-Item "my-windows-scripts" -Recurse