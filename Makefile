link:
	ln -s -f $(PWD)/.config/git $(HOME)/.config
	ln -s -f $(PWD)/.zshrc $(HOME)
	ln -s -f $(PWD)/.p10k.zsh $(HOME)

setup-tmux:
	ln -s -f $(PWD)/.config/tmux/.tmux.conf $(HOME)
	ln -s -f $(PWD)/.config/tmux/.tmux.conf.local $(HOME)

ensure-development-folder:
	mkdir $(HOME)/development -p

setup: ensure-development-folder setup-tmux link
