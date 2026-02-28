
function __complete_terragrunt
    set -lx COMP_LINE (commandline -cp)
    test -z (commandline -ct)
    and set COMP_LINE "$COMP_LINE "
    $HOME/.terragrunt/bin/terragrunt
end
complete -f -c terragrunt -a "(__complete_terragrunt)"

