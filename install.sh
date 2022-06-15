#!/bin/sh

if [ ! -d "$HOME/.dotfiles" ]; then
    echo "Installing Tsu Dotfiles for the first time in $HOME/.dotfiles"
    git clone --depth=1 https://github.com/Tsugami/dotfiles.git "$HOME/.dotfiles"
    cd "$HOME/.dotfiles"
    ./bootstrap.sh
else
    echo ".dotfiles folder already exists. Make sure if it's correctly the repository e run ./bootstrap.sh"
fi
