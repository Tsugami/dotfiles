# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export DOTFILES_ROOT="$HOME/.dotfiles"

# Loads user exports variables
if [[ -a $DOTFILES_ROOT/zsh/.exports.zsh ]]; then
  source $DOTFILES_ROOT/zsh/.exports.zsh
fi


source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Syntax highlighting bundle.
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle command-not-found
antigen bundle gitignore
antigen bundle nvm
antigen bundle npm

plugins=(asdf ssh-agent)

source $HOME/.asdf

# Load aliases
if [[ -a $DOTFILES_ROOT/zsh/aliases.zsh ]]; then
  source $DOTFILES_ROOT/zsh/aliases.zsh
fi

# Load functions
if [[ -a $DOTFILES_ROOT/zsh/functions.zsh ]]; then
  source $DOTFILES_ROOT/zsh/functions.zsh
fi

# Load the theme.
antigen theme romkatv/powerlevel10k

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Tell Antigen that you're done.
antigen apply
