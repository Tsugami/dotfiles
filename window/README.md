## Installation

1. Install [Chocolatey](https://chocolatey.org/).
2. Run this command in PowerShell as administrator

```powershell
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/Tsugami/dotfiles/master/window/install.ps1'))
```

To install window dependents, run the `deps.ps1`:

```powershell
. deps.ps1
```

You should run `bootstrap.ps1` to update something:

```powershell
. bootstrap.ps1
```

## Overview

- [nvm-windows](https://github.com/coreybutler/nvm-windows) Manage multiple installations of node.js on a Windows machine.
- [chocolatey](https://chocolatey.org/) The package manager for Windows.
  - [vscode](https://code.visualstudio.com/) IDE for multi languages.
  - [git](https://git-scm.com/) Version control system for tracking changes in files and coordinating the work.
  - [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=pt-br&gl=BR) The modern terminal for Windows.
