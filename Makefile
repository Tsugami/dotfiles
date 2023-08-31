link:
	ln -s -f $(PWD)/.config/git $(HOME)/.config/git
	ln -s -f $(PWD)/.zshrc $(HOME)/.zshrc
	ln -s -f $(PWD)/.p10k.zsh $(HOME)/.p10k.zsh 

ensure-development-folder:
	mkdir $(HOME)/development -p

setup: ensure-development-folder link
