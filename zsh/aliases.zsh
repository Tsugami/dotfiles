if [ -x "$(command -v exa)" ]; then
  alias ls="exa --icons"
fi

if [ -x "$(command -v bat)" ]; then
  alias cat="bat --style=auto"
fi

if [ -x "$(command -v procs)" ]; then
  alias ps="procs"
fi

if [ -x "$(command -v btm)" ]; then
  alias top="btm"
fi

  # Gihub CLI aliases
if [ -x "$(command -v gh)" ]; then
  alias prs="gh pr create --fill && gh pr merge -sd --admin" # This alias creates a pull request and merge like squash
fi

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
if [ -x "$(command -v gh)" ]; then
  alias d='docker $*'
  alias d-c='docker-compose $*'
fi

# Node aliases
alias clear-node="find . -name "node_modules" -type d -prune | xargs du -chs"
