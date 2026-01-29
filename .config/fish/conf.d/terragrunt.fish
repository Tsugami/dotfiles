set TERRAGRUNT_BIN_PATH "$HOME/.terragrunt/bin"

if test -d $TERRAGRUNT_BIN_PATH
  fish_add_path $TERRAGRUNT_BIN_PATH
end