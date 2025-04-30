all: download_git_modules ensure-development-folder setup-tmux link
setup: all

download_git_modules:
	git fetch --all
	git submodule update --init --recursive  --remote
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

add_zsh_plugin:
	@if [ "$(url)" = "" ]; then \
		echo "Usage: make add_zsh_plugin url=<plugin_url>"; \
		exit 1; \
	fi
	@mkdir -p $(DOTFILES)/ohmyzsh-custom/plugins
	git submodule add $(url) $(DOTFILES)/ohmyzsh-custom/plugins/$(shell basename $(url) .git)
