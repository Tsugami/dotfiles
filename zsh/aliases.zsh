alias ls="exa --icons"
alias cat="bat --style=auto"
alias ps="procs"
alias top="btm"

# Gihub CLI aliases
alias prs="gh pr create --fill && gh pr merge -sd --admin" # This alias creates a pull request and merge like squash

# Common aliases
alias cls='clear'
alias reload!='. ~/.zshrc'

# Directory aliases
alias dotfiles="cd $HOME/.dotfiles"
alias dev="cd $HOME/development"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Docker aliases
alias d='docker $*'
alias d-c='docker-compose $*'

# Node aliases
alias clear-node="find . -name "node_modules" -type d -prune | xargs du -chs"
