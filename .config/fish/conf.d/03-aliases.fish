#!/usr/bin/env fish

log_debug "Setting up aliases"

if command -v exa >/dev/null 2>&1
    log_debug "Setting up exa alias"
    alias ls="exa --icons"
end

if command -v bat >/dev/null 2>&1
    log_debug "Setting up bat alias"
    alias cat="bat --style=auto"
end

if command -v procs >/dev/null 2>&1
    log_debug "Setting up procs alias"
    alias ps="procs"
end

if command -v btm >/dev/null 2>&1
    log_debug "Setting top alias to btm"
    alias top="btm"
end

alias dev="cd $DEV_HOME"
alias dotfiles="cd $DOTFILES"
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

alias gp="git push origin HEAD"
alias glrm="git pull origin main --rebase"

