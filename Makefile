.PHONY: all setup download_git_modules setup_tmux link add_zsh_plugin

all: setup
setup: download_git_modules setup_tmux link
	@echo "[INFO] Setup complete"
	@echo "[WARNING] Please reload your shell to apply the changes"

download_git_modules:
	@echo "[INFO] Downloading git modules..."
	@git fetch --all
	@git submodule update --init --recursive --remote
	@git submodule foreach --recursive git submodule update --init --recursive --remote

link:
	@echo "[INFO] Linking files..."
	@ln -s -f $(PWD)/.config/git $(HOME)/.config
	@ln -s -f $(PWD)/.p10k.zsh $(HOME)
	@ln -s -f $(PWD)/.config/starship.toml $(HOME)/.config/starship.toml
	@ln -s -f $(PWD)/.config/fish $(HOME)/.config

setup_tmux:
	@echo "[INFO] Linking tmux files..."
	@ln -s -f $(PWD)/.config/tmux/.tmux.conf $(HOME)
	@ln -s -f $(PWD)/.config/tmux/.tmux.conf.local $(HOME)

add_zsh_plugin:
	@if [ "$(url)" = "" ]; then \
		echo "Usage: make add_zsh_plugin url=<plugin_url>"; \
		exit 1; \
	fi
	@mkdir -p $(DOTFILES)/ohmyzsh-custom/plugins
	git submodule add $(url) $(DOTFILES)/ohmyzsh-custom/plugins/$(shell basename $(url) .git)
