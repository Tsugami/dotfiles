#!/bin/bash
# bootstrap dotfiles.

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

info() {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user() {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success() {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail() {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

# Create hard links to your machine use the files without having to copy them.
create_hard_link() {
  local src="$HOME/.dotfiles/$1" dst=$2

  if [ -f "$dst" -o -d "$dst" -o -L "$dst" ]; then
    info "Delete old file: $dst"
    rm -rf "$dst"
  fi

  ln -s "$src" "$dst"
  info "Created hard link: $dst"
}

# Install specific dotfiles in WSL
install_wsl_dotfiles() {
  if [[ -n "$IS_WSL" || -n "$WSL_DISTRO_NAME" ]]; then
    info "Install WSL dotfiles"

    # WSL paths
    create_hard_link .vscode/settings.json "$HOME/.vscode-server/data/Machine/settings.json"
  fi
}

install_dotfiles() {
  info 'installing dotfiles'

  create_hard_link zsh/zshrc/.zshrc "$HOME/.zshrc"
  create_hard_link git/.gitconfig "$HOME/.gitconfig"
}

install_dotfiles
install_wsl_dotfiles

echo ''
success 'All installed!'
