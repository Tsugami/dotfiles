# Powerlevel10k

log_debug "Setting up zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_DOTENV_PROMPT=Always
ZSH_CUSTOM="$DOTFILES/ohmyzsh-custom"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  command-not-found
  docker
  docker-compose
  aws
  zsh-you-should-use
) 

source $ZSH/oh-my-zsh.sh

log_debug "Setting up p10k"

[[ ! -f $DOTFILES/.p10k.zsh ]] || source $DOTFILES/.p10k.zsh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

