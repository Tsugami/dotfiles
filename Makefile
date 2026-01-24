.PHONY: all setup download_git_modules setup_tmux link

all: setup
	fish

setup: download_git_modules setup_tmux link
	@echo "[INFO] Setup complete"

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
