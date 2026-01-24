#!/bin/zsh

log_debug "Setting up path"

# Editor
export EDITOR="vim"

# Shell
export SHELL_NAME="zsh"
export SHELL_PATH="/bin/zsh"

# Rust
export RUST_CARGO_PATH=$HOME/.cargo
export RUST_CARGO_BIN=$HOME/.cargo/bin

# ASDF
export ASDF_DIR=$HOME/.asdf

# Zsh config
export ZSH="$HOME/.oh-my-zsh"
export ZSH_PLUGINS="$HOME/.oh-my-zsh/plugins"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Development
export DEV_HOME="$HOME/development"

# Java
if [ -d "$ASDF_DIR/plugins/java" ]; then
  log_debug "Adding Java to PATH based on ASDF"
  export JAVA_HOME=$(asdf where java)
fi

# Android
export ANDROID_HOME=$HOME/Android/Sdk

# Path Java
if [ -d "$JAVA_HOME" ]; then
  export PATH=$PATH:$JAVA_HOME/bin
fi

# Path Android
if [ -d "$ANDROID_HOME" ]; then
  log_debug "Adding Android tools to PATH"
  export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
fi

# Path Neovim
if [ -d "/opt/nvim/bin" ]; then
  log_debug "Adding Neovim to PATH"
  export PATH="$PATH:/opt/nvim/bin"
fi

# Path bin
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

if [ -x "$(command -v asdf)" ]; then
  log_debug "Adding ASDF to PATH"
  export PATH="$ASDF_DIR/shims:$PATH"
fi

# Path Golang based on ASDF
if [ -d "$ASDF_DIR/plugins/golang" ]; then
  log_debug "Adding Golang to PATH based on ASDF"
  export GOPATH=$(asdf where golang)/packages
  export GOROOT=$(asdf where golang)/go
  export PATH="$PATH:$(go env GOPATH)/bin"
fi

export BUN_INSTALL="$HOME/.bun"

if [ -d "$BUN_INSTALL" ]; then
  log_debug "Adding Bun to PATH"
  export PATH="$BUN_INSTALL/bin:$PATH"
fi
