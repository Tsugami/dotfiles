#!/bin/sh

if [ ! -d "$HOME/.dotfiles" ]; then
    echo "Installing Tsuu Dotfiles for the first time in $HOME/.dotfiles"
    git clone --depth=1 https://github.com/Tsugami/dotfiles.git "$HOME/.dotfiles"
    cd "$HOME/.dotfiles"
else
    echo ".dotfiles folder already exists"
fi
