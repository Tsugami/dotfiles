function Write-Log {
  param(
    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$Message,

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [ValidateSet("Info", 'Warn', 'Error', 'Success')]
    [string]$Type = 'Info'
  )

  $Prompt = "";
  $Color = "";

  switch ($Type) {
    'Warn' {
      $Prompt = '???'
      $Color = 'Yellow'
    }

    'Error' {
      $Prompt = '---'
      $Color = 'Red'
    }

    'Success' {
      $Prompt = '!!!'
      $Color = 'Green'
    }

    default {
      $Prompt = '...'
      $Color = 'Cyan'

    }
  }

  Write-Host "[ $Prompt ] $Message" -ForegroundColor $Color
}

function touch($file) { "" | Out-File $file -Encoding ASCII }

function sudo() {
  if ($args.Length -eq 1) {
    start-process $args[0] -verb "runAs"
  }
  if ($args.Length -gt 1) {
    start-process $args[0] -ArgumentList $args[1..$args.Length] -verb "runAs"
  }
}

function Reload-Powershell {
  $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
  $newProcess.Arguments = "-nologo";
  [System.Diagnostics.Process]::Start($newProcess);
  exit
}

function Edit-Hosts {
  Invoke-Expression "sudo $(if($env:EDITOR -ne $null)  {$env:EDITOR } else { 'notepad' }) $env:windir\system32\drivers\etc\hosts"
}
function Edit-Profile {
  Invoke-Expression "$(if($env:EDITOR -ne $null)  {$env:EDITOR } else { 'notepad' }) $profile"
}
