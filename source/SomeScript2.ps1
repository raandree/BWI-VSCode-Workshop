# 10 Most Useful PowerShell One-Liners
# Each command includes an explanation and example usage

# 1. Get System Information
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber, OSArchitecture

# 2. List All Running Processes Sorted by Memory Usage (Top 10)
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 10 Name, WS, CPU

# 3. Find Large Files (>100MB) in Current Directory and Subdirectories
Get-ChildItem -Path . -Recurse | Where-Object { $_.Length -gt 100MB } | Select-Object FullName, @{Name="Size(MB)";Expression={$_.Length / 1MB}}

# 4. Get List of Installed Applications
Get-WmiObject -Class Win32_Product | Select-Object Name, Version, Vendor

# 5. Check Disk Space on All Drives
Get-WmiObject -Class Win32_LogicalDisk | Where-Object {$_.DriveType -eq 3} | Select-Object DeviceID, @{Name="Size(GB)";Expression={$_.Size/1GB}}, @{Name="FreeSpace(GB)";Expression={$_.FreeSpace/1GB}}

# 6. Test Network Connectivity with Continuous Ping
Test-Connection -ComputerName 8.8.8.8 -Count 4

# 7. List All Services and Their Status
Get-Service | Where-Object {$_.Status -eq 'Running'} | Select-Object Name, Status, DisplayName

# 8. Get Last Boot Time
$LastBoot = (Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime
Write-Output "Last Boot Time: $LastBoot"

# 9. List Recent Event Log Errors (Last 10)
Get-EventLog -LogName System -EntryType Error -Newest 10 | Select-Object TimeGenerated, Source, Message

# 10. Get All Network Adapters and Their IP Addresses
Get-NetAdapter | Where-Object Status -eq 'Up' | Get-NetIPAddress | Select-Object InterfaceAlias, IPAddress, AddressFamily

# Bonus: Quick System Health Check (combines multiple checks)
Write-Output "`nSystem Health Summary:"
$CPU = Get-Counter '\Processor(_Total)\% Processor Time' | Select-Object -ExpandProperty CounterSamples | Select-Object -ExpandProperty CookedValue
$Memory = Get-Counter '\Memory\% Committed Bytes In Use' | Select-Object -ExpandProperty CounterSamples | Select-Object -ExpandProperty CookedValue
Write-Output "CPU Usage: $([math]::Round($CPU,2))%"
Write-Output "Memory Usage: $([math]::Round($Memory,2))%"
