#!/usr/bin/env fish

# Create the development directory if it doesn't exist
if not test -d "$DEV_HOME"
    mkdir -p "$DEV_HOME"
end

function reload
    cd "$DOTFILES" && git pull && make
    source ~/.config/fish/config.fish
end
