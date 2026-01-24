#!/usr/bin/env fish

log_debug "Setting up completions"

if test -f "$RUST_CARGO_PATH/env"
    log_debug "Adding Rust Cargo to PATH"
    fish_add_path "$RUST_CARGO_PATH/env"
end

if command -v asdf >/dev/null 2>&1
    log_debug "Adding ASDF completions"
    asdf completion fish | source
end

if command -v gh >/dev/null 2>&1
    log_debug "Adding gh completions"
    gh completion -s fish | source
end


if command -v kubectl >/dev/null 2>&1
    log_debug "Adding kubectl completions"
    kubectl completion fish | source
end

if command -v helmfile >/dev/null 2>&1
    log_debug "Adding helmfile completions"
    helmfile completion fish | source
end

if command -v terraform >/dev/null 2>&1
    log_debug "Adding terraform autocomplete"
    complete -c terraform -f
end

if command -v asdf >/dev/null 2>&1; and test -d "$ASDF_DIR/plugins/golang"
    log_debug "Adding Golang environment setup"
    . "$ASDF_DIR/plugins/golang/set-env.fish"
end

# Source all completion files from the completions directory
for file in $DOTFILES/.config/fish/completions/*
    log_debug "Adding completion for $file"
    source "$file"
end

if command -v bun >/dev/null 2>&1; and test -d "$BUN_INSTALL/_bun"
    log_debug "Adding bun completions"
    source "$BUN_INSTALL/_bun"
end
