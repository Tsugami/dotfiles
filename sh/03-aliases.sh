#!/bin/zsh

log_debug "Setting up aliases"

if [ -x "$(command -v exa)" ]; then
    log_debug "Setting up exa alias"
    alias ls="exa --icons"
fi

if [ -x "$(command -v bat)" ]; then
    log_debug "Setting up bat alias"
    alias cat="bat --style=auto"
fi

if [ -x "$(command -v procs)" ]; then
    log_debug "Setting up procs alias"
    alias ps="procs"
fi

if [ -x "$(command -v btm)" ]; then
    log_debug "Setting top alias to btm"
    alias top="btm"
fi

alias dev="cd $DEV_HOME"
alias k="kubectl"
alias kx="kubectx"
alias p="pnpm"
alias v="nvim"
alias c="cargo"
alias g="git"
alias t="tmux"
alias d="docker"
alias dc="docker compose"

alias ghpr="gh pr create -f"
alias ghprd="gh pr create -f -d"