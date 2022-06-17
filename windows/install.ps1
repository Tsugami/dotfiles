#Requires -RunAsAdministrator

try {
  cinst | Out-Null
}
catch [System.Management.Automation.CommandNotFoundException] {
  throw "Please, install the chocolatey package manager first. see: https://chocolatey.org/install"
}

try {
  git | Out-Null
}
catch [System.Management.Automation.CommandNotFoundException] {
  choco install git.install  --limit-output -params '"/GitAndUnixToolsOnPath /NoShellIntegration /NoGuiHereIntegration /WindowsTerminalProfile"'
}

$DotfileDir = Join-Path $env:USERPROFILE ".dotfiles"

git clone https://github.com/Tsugami/dotfiles.git $DotfileDir

$DotfileWindowDir = Join-Path $DotfileDir "window"

Push-Location $DotfileWindowDir
. ./bootstrap.ps1
Pop-Location

