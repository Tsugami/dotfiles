$DotFileDir = Join-Path $env:USERPROFILE .dotfiles
$ProfileDir = Split-Path -parent $profile

New-Item $ProfileDir -ItemType Directory -Force -ErrorAction SilentlyContinue

# https://docs.microsoft.com/en-us/windows/terminal/install#settings-json-file
#
# %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
# %LOCALAPPDATA%\Microsoft\Windows Terminal\settings.json
$WterminalDir = Join-Path $env:LOCALAPPDATA '\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState'
$Wterminal1Dir = Join-Path $env:LOCALAPPDATA '\Microsoft\Windows Terminal'

New-Item $WterminalDir -ItemType Directory -Force -ErrorAction SilentlyContinue
New-Item $Wterminal1Dir -ItemType Directory -Force -ErrorAction SilentlyContinue

Push-Location $DotFileDir
Copy-Item -Path ./git/** -Destination $home
Copy-Item -Path ./windows/powershell/** -Destination $ProfileDir
Copy-Item -Path ./windows/powershell/** -Destination $ProfileDir
Copy-Item -Path ./windows/window-terminal/** -Destination $WterminalDir
Copy-Item -Path ./windows/window-terminal/** -Destination $Wterminal1Dir
Pop-Location
