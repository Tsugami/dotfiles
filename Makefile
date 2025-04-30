all: download_git_modules ensure-development-folder setup-tmux link
setup: all

download_git_modules:
	git submodule update --init --recursive
	git submodule foreach --recursive git submodule update --init --recursive

link:
	ln -s -f $(PWD)/.config/git $(HOME)/.config
	ln -s -f $(PWD)/.zshrc $(HOME)
	ln -s -f $(PWD)/.p10k.zsh $(HOME)

setup-tmux:
	ln -s -f $(PWD)/.config/tmux/.tmux.conf $(HOME)
	ln -s -f $(PWD)/.config/tmux/.tmux.conf.local $(HOME)

ensure-development-folder:
	mkdir $(HOME)/development -p
