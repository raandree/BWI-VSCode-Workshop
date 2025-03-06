# VSCode

## Installation and other useful tools

- [VSCode](https://code.visualstudio.com/download)
- [Git](https://git-scm.com/downloads)
- [PowerShell 7](https://github.com/PowerShell/PowerShell/releases)

## Extensions

- PowerShell
- Copilot Chat
- Copilot
- Cline https://cline.bot/
- GitLense

regex

## Git

```
git init
```

The script lists All Running Processes Sorted by Memory Usage (Top 10)

```powershell
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 10 Name, WS, CPU
```