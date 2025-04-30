export DOTFILES="$HOME/.dotfiles"

[[ ! -f ~/.zshenv ]] || source ~/.zshenv

for config_file in $DOTFILES/sh/*.sh; do
  source "$config_file"
done
