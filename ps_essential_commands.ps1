Get-WmiObject -Class Win32_Product | Select-Object -Property Name - list all installed programs with their names
-------------------------------------------------------------------------------------
Get-Help Get-Command - Get detailed help information for the Get-Command cmdlet.
-------------------------------------------------------------------------------------
Get-Command -Noun Service - Get all cmdlets that contain the word "Service".
-------------------------------------------------------------------------------------
Set-ExecutionPolicy RemoteSigned - Set the policy to allow scripts that are written on the local computer and not downloaded from the Internet.
-------------------------------------------------------------------------------------
Get-ExecutionPolicy - Display the current PowerShell script execution policy.
-------------------------------------------------------------------------------------
Get-Service -Name "wuauserv" - Get the status of the Windows Update service.
-------------------------------------------------------------------------------------
Start-Service -Name "wuauserv" - Start the Windows Update service.
-------------------------------------------------------------------------------------
Stop-Service -Name "wuauserv" - Stop the Windows Update service.
-------------------------------------------------------------------------------------
Restart-Service -Name "wuauserv" - Restart the Windows Update service.
-------------------------------------------------------------------------------------
Set-Service -Name "wuauserv" -StartupType Disabled - Disable the Windows Update service.
-------------------------------------------------------------------------------------
Get-Process -Name "notepad" - Get information about all processes named "notepad".
-------------------------------------------------------------------------------------
Stop-Process -Name "notepad" - Stop the process named "notepad".
-------------------------------------------------------------------------------------
Start-Process -FilePath "notepad.exe" - Start Notepad.
-------------------------------------------------------------------------------------
Get-EventLog -LogName System -Newest 10 - Get the 10 most recent entries in the System event log.
-------------------------------------------------------------------------------------
Clear-EventLog -LogName Application - Clear all entries from the Application event log.
-------------------------------------------------------------------------------------
Get-Content -Path "C:\log.txt" - Display the contents of "log.txt".
-------------------------------------------------------------------------------------
Set-Content -Path "C:\log.txt" -Value "New content" - Replace the contents of "log.txt" with "New content".
-------------------------------------------------------------------------------------
Add-Content -Path "C:\log.txt" -Value "Additional content" - Append "Additional content" to "log.txt".
-------------------------------------------------------------------------------------
Copy-Item -Path "C:\log.txt" -Destination "C:\backup\log.txt" - Copy "log.txt" to the "backup" folder.
-------------------------------------------------------------------------------------
Move-Item -Path "C:\log.txt" -Destination "C:\backup\log.txt" - Move "log.txt" to the "backup" folder.
-------------------------------------------------------------------------------------
Remove-Item -Path "C:\backup\log.txt" - Delete "log.txt" from the "backup" folder.
-------------------------------------------------------------------------------------
Rename-Item -Path "C:\log.txt" -NewName "log_backup.txt" - Rename "log.txt" to "log_backup.txt".
-------------------------------------------------------------------------------------
New-Item -Path "C:\new_folder" -ItemType Directory - Create a new folder named "new_folder".
-------------------------------------------------------------------------------------
Get-Item -Path "C:\log.txt" - Get the item object for "log.txt".
-------------------------------------------------------------------------------------
Get-ItemProperty -Path "C:\log.txt" -Name "LastWriteTime" - Retrieve the "LastWriteTime" property for "log.txt".
-------------------------------------------------------------------------------------
Set-ItemProperty -Path "C:\log.txt" -Name "ReadOnly" -Value $true - Set "log.txt" to be read-only.
-------------------------------------------------------------------------------------
Remove-ItemProperty -Path "C:\log.txt" -Name "ReadOnly" - Remove the read-only property from "log.txt".
-------------------------------------------------------------------------------------
Get-ChildItem -Path "C:\" - List all items in the C: drive.
-------------------------------------------------------------------------------------
Test-Path -Path "C:\log.txt" - Check if "log.txt" exists.
-------------------------------------------------------------------------------------
Get-Location - Display the current directory path.
-------------------------------------------------------------------------------------
Set-Location -Path "C:\Windows" - Change the current directory to "C:\Windows".
-------------------------------------------------------------------------------------
Push-Location -Path "C:\" - Push the current location to the stack and change to C:.
-------------------------------------------------------------------------------------
Pop-Location - Pop the location from the stack and change to it.
-------------------------------------------------------------------------------------
Resolve-Path -Path "C:\Program*\Windows*" - Resolve the paths that match the wildcard pattern.
-------------------------------------------------------------------------------------
Get-History - Get a list of commands that have been entered in the session.
-------------------------------------------------------------------------------------
Invoke-Command -ScriptBlock { Get-Date } -ComputerName Server01 - Run Get-Date on the computer named Server01.
-------------------------------------------------------------------------------------
Invoke-Expression -Command "1 + 2" - Evaluate the string "1 + 2" as a PowerShell expression.
-------------------------------------------------------------------------------------
Invoke-Item -Path "C:\report.xlsx" - Open the file "report.xlsx" with the default program.
-------------------------------------------------------------------------------------
Import-Csv -Path "C:\data.csv" - Import data from a CSV file into PowerShell objects.
-------------------------------------------------------------------------------------
`Export-Csv -InputObject (Get-Process) -Path "C:\processes.csv" -NoTypeInformation- Export the current processes to a CSV file without type information. 40.ConvertTo-Json -InputObject (Get-Date)` - Convert the current date and time to a JSON string.
-------------------------------------------------------------------------------------
ConvertFrom-Json -InputObject '{"Name": "John", "Age": 30}' - Convert a JSON formatted string to a PowerShell object.
-------------------------------------------------------------------------------------
Get-Alias -Name "dir" - Get the alias information for 'dir'.
-------------------------------------------------------------------------------------
New-Alias -Name "list" -Value "Get-ChildItem" - Create a new alias 'list' for the cmdlet Get-ChildItem.
-------------------------------------------------------------------------------------
Export-Alias -Path "C:\aliases.txt" - Export the defined aliases to a text file.
-------------------------------------------------------------------------------------
Import-Alias -Path "C:\aliases.txt" - Import aliases from a text file.
-------------------------------------------------------------------------------------
Get-PSDrive - Get information about PowerShell drives.
-------------------------------------------------------------------------------------
New-PSDrive -Name "TempDrive" -PSProvider "FileSystem" -Root "C:\Temp" - Create a new PowerShell drive mapped to C:\Temp.
-------------------------------------------------------------------------------------
Remove-PSDrive -Name "TempDrive" - Remove the PowerShell drive named 'TempDrive'.
-------------------------------------------------------------------------------------
Get-PSSession - Get information about PowerShell sessions.
-------------------------------------------------------------------------------------
Enter-PSSession -ComputerName Server01 - Start an interactive session with the computer named Server01.
-------------------------------------------------------------------------------------
