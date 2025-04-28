#!/bin/sh
# This script downloads dotfiles in the folder expected by the files for a Linux environment.

if [ ! -d "$HOME/.dotfiles" ]; then
    echo "Installing Tsu Dotfiles for the first time in $HOME/.dotfiles"
    git clone --recursive git@github.com:Tsugami/dotfiles.git "$HOME/.dotfiles"
    cd "$HOME/.dotfiles"
    make
else
    echo ".dotfiles folder already exists. Make sure if it's correctly the repository e run ./bootstrap.sh"
fi
