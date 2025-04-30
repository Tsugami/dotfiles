#!/bin/zsh

log_debug "Setting up completions"

if [   ! -f $RUST_CARGO_PATH/env ]; then
  log_debug "Adding Rust Cargo to PATH"
  source $RUST_CARGO_PATH/env
fi

if [ -x "$(command -v asdf)" ]; then
  log_debug "Adding ASDF completions to $DOTFILES/completions/_asdf"
  asdf completion zsh > "$DOTFILES/completions/_asdf"
fi

if [ -x "$(command -v gh)" ]; then
  log_debug "Adding gh completions"
  gh completion -s $SHELL_NAME > "$DOTFILES/completions/_gh"
fi

if [ -x "$(command -v kubectl)" ]; then
  log_debug "Adding kubectl completions"
  source <(kubectl completion $SHELL_NAME)
fi

if [ -x "$(command -v terraform)" ]; then
  log_debug "Adding terraform autocomplete"
  complete -C $(which terraform) terraform
fi


if [ -x "$(command -v asdf)" ] && [ -d "$ASDF_DIR/plugins/golang" ] && [ "$SHELL_NAME" = "zsh" ]; then
  log_debug "Adding Golang to PATH based on ASDF"
  . $ASDF_DIR/plugins/golang/set-env.zsh
fi

for file in $DOTFILES/completions/*; do
  log_debug "Adding completion for $file"
  source $file
done
