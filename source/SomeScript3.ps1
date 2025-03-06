# 10 Most Useful PowerShell One-Liners
# Each command includes an explanation and example usage

# 1. Get System Information
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber, OSArchitecture

# 2. List All Running Processes Sorted by Memory Usage (Top 10)
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 10 Name, WS, CPU
