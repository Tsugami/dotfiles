# Create the development directory if it doesn't exist
if [ ! -d "$DEV_HOME" ]; then
  mkdir $DEV_HOME -p
fi

reload() {
  cd $DOTFILES && git pull && make
  source ~/.zshrc
}

