# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

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

source $ZSH/oh-my-zsh.sh
source $HOME/.asdf

# Load aliases
if [[ -a $DOTFILES_ROOT/zsh/aliases.zsh ]]; then
  source $DOTFILES_ROOT/zsh/aliases.zsh
fi

# Load the theme.
antigen theme spaceship-prompt/spaceship-prompt

# Theme settings.
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
    time    # Time stamps section
    user    # Username section
    dir     # Current directory section
    git     # Git section (git_branch + git_status)
    char    # Prompt character
    node    # Node.js section
    golang  # Go section
    haskell # Haskell Stack section
    elixir  # Elixir section
    rust    # Rust section
    docker  # Docker section

)

SPACESHIP_PROMPT_ADD_NEWLINE=true

SPACESHIP_CHAR_SYMBOL="λ"
# SPACESHIP_CHAR_PREFIX="\n"
SPACESHIP_CHAR_SUFFIX=" "

SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_FORMAT="%T"

SPACESHIP_USER_SHOW=needed
SPACESHIP_PACKAGE_SHOW=false

# Tell Antigen that you're done.
antigen apply
