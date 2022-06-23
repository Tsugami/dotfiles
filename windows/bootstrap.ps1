function New-Dir {
  param(
    [Parameter()]
    [string]$Path
  )
  New-Item $ProfileDir -ItemType Directory -Force -ErrorAction SilentlyContinue
}

$DotFileDir = Join-Path $env:USERPROFILE .dotfiles
$ProfileDir = Split-Path -parent $profile
$VscodeDir = Join-Path $env:APPDATA '\Code\User'
$DevelopmentDir = Join-Path $env:USERPROFILE '/Documents/development'

# https://docs.microsoft.com/en-us/windows/terminal/install#settings-json-file
#
# %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
# %LOCALAPPDATA%\Microsoft\Windows Terminal\settings.json
$WterminalDir = Join-Path $env:LOCALAPPDATA '\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState'
$Wterminal1Dir = Join-Path $env:LOCALAPPDATA '\Microsoft\Windows Terminal'

# Create the directories if it doesn't exist
New-Dir $VscodeDir
New-Dir $ProfileDir
New-Dir $WterminalDir
New-Dir $Wterminal1Dir
New-Dir $DevelopmentDir

Push-Location $DotFileDir
Copy-Item -Path ./git/** -Destination $home
Copy-Item -Path ./windows/powershell/** -Destination $ProfileDir
Copy-Item -Path ./windows/powershell/** -Destination $ProfileDir
Copy-Item -Path ./windows/window-terminal/** -Destination $WterminalDir
Copy-Item -Path ./windows/window-terminal/** -Destination $Wterminal1Dir
Copy-Item -Path ./.vscode/** -Destination $VscodeDir
Pop-Location
