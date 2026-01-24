#!/usr/bin/env fish

log_debug "Setting up path"

# Editor
set -gx EDITOR "vim"

# Shell
set -gx SHELL_NAME "fish"
set -gx SHELL_PATH "/usr/bin/fish"

# Rust
set -gx RUST_CARGO_PATH $HOME/.cargo
set -gx RUST_CARGO_BIN $HOME/.cargo/bin

# ASDF
set -gx ASDF_DIR $HOME/.asdf

# Fish config
set -gx FISH_CONFIG "$HOME/.config/fish"

# Development
set -gx DEV_HOME "$HOME/development"

# Java
if test -d "$ASDF_DIR/plugins/java"
    log_debug "Adding Java to PATH based on ASDF"
    set -gx JAVA_HOME (asdf where java)
end

# Android
set -gx ANDROID_HOME $HOME/Android/Sdk

# Path Java
if test -d "$JAVA_HOME"
    set -gx PATH $PATH:$JAVA_HOME/bin
end

# Path Android
if test -d "$ANDROID_HOME"
    log_debug "Adding Android tools to PATH"
    set -gx PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
end

# Path Neovim
if test -d "/opt/nvim/bin"
    log_debug "Adding Neovim to PATH"
    set -gx PATH "$PATH:/opt/nvim/bin"
end

# Path bin
set -gx PATH "/usr/local/bin:$PATH"
set -gx PATH "$HOME/.local/bin:$PATH"

if command -v asdf >/dev/null 2>&1
    log_debug "Adding ASDF to PATH"
    set -gx PATH "$ASDF_DIR/shims:$PATH"
end

# Path Golang based on ASDF
if test -d "$ASDF_DIR/plugins/golang"
    log_debug "Adding Golang to PATH based on ASDF"
    set -gx GOPATH (asdf where golang)/packages
    set -gx GOROOT (asdf where golang)/go
    set -gx PATH "$PATH":(go env GOPATH)/bin
end

set -gx BUN_INSTALL "$HOME/.bun"

if test -d "$BUN_INSTALL"
    log_debug "Adding Bun to PATH"
    set -gx PATH "$BUN_INSTALL/bin:$PATH"
end
