alias ls="exa --icons"
alias cat="bat --style=auto"
alias ps="procs"
alias top="btm"

# Git aliases
alias gcb="git checkout -b"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gph="git push -u origin HEAD"
alias gm="git commit -m"
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
