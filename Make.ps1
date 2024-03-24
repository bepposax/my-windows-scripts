if (Test-Path -Path "E:") {
    $workspace = "E:\workspace"
    $Documents = "E:\Documents"
}
else {
    $workspace = "C:\workspace"
    $Documents = "$home\Documents"
}

# add ahk script
$ahkPath = "$Documents\AutoHotkey"
if (!(Test-Path -Path $ahkPath)) {
    New-Item -Path "$Documents\" -Name "AutoHotkey" -ItemType "directory"
}
Copy-Item -Path "$PSScriptRoot\scripts\tilde.ahk" -Destination $ahkPath
$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\tilde.ahk.lnk")
$shortcut.TargetPath = "$ahkPath\tilde.ahk"
$shortcut.Save()

# add ps1 scripts
$scriptsPath = "$workspace\Powershell Scripts"
if (!(Test-Path -Path $scriptsPath)) {
    New-Item -Path "$workspace\" -Name "Powershell Scripts" -ItemType "directory"
}
# if using laptop 
if ((Get-WmiObject -Class Win32_ComputerSystem -Property PCSystemType).PCSystemType -eq 2) {
    Copy-Item -Path "$PSScriptRoot\scripts\*.ps1" -Destination "$scriptsPath"
}
else {
    Copy-Item -Path "$PSScriptRoot\scripts\Clear Temp Folder.ps1" -Destination "$scriptsPath"
}

foreach ($file in Get-ChildItem -Path "$scriptsPath" -File) {
    $shell = New-Object -ComObject WScript.Shell
    $shortcut = $shell.CreateShortcut("$home\Desktop\$file.lnk")
    $shortcut.TargetPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
    $shortcut.Arguments = "-ExecutionPolicy Bypass -File `"$scriptsPath\$file`""
    $shortcut.Save()
}
if ($PWD.Path -eq $PSScriptRoot) { Set-Location .. }
Remove-Item $PSScriptRoot -Recurse