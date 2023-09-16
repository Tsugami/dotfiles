link:
	ln -s -f $(PWD)/.config/git $(HOME)/.config
	ln -s -f $(PWD)/.zshrc $(HOME)
	ln -s -f $(PWD)/.p10k.zsh $(HOME)

setup-tmux:
	mkdir $(HOME)/.config/tmux -p
	ln -s -f $(PWD)/.config/tmux/.tmux.conf $(HOME)/.config/tmux
	ln -s -f $(PWD)/.config/tmux/.tmux.conf.local $(HOME)/.config/tmux

ensure-development-folder:
	mkdir $(HOME)/development -p

setup: ensure-development-folder setup-tmux link
