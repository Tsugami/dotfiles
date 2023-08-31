#!/bin/sh
# This script downloads dotfiles in the folder expected by the files for a linux environment.

if [ ! -d "$HOME/.dotfiles" ]; then
    echo "Installing Tsu Dotfiles for the first time in $HOME/.dotfiles"
    git clone --depth=1 git@github.com:Tsugami/dotfiles.git "$HOME/.dotfiles"
    cd "$HOME/.dotfiles"
    make setup
else
    echo ".dotfiles folder already exists. Make sure if it's correctly the repository e run ./bootstrap.sh"
fi
