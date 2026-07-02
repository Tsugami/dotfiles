.PHONY: all setup download_git_modules setup_tmux link reload reload-tmux install-packages

UNAME := $(shell uname)

BREW_PACKAGES = git-delta gh neovim fish claude-code tmux git

all: setup
	fish

setup: download_git_modules setup_tmux link
	@echo "[INFO] Setup complete"

install-packages:
ifeq ($(UNAME), Darwin)
	@echo "[INFO] Installing packages via brew..."
	@brew install $(BREW_PACKAGES)
else
	@echo "[WARN] install-packages only supported on macOS"
endif

download_git_modules:
	@echo "[INFO] Downloading git modules..."
	@git fetch --all
	@git submodule update --init --recursive --remote
	@git submodule foreach --recursive git submodule update --init --recursive --remote

link:
	@echo "[INFO] Linking files..."
	@ln -s -f $(PWD)/.config/git $(HOME)/.config
	@ln -s -f $(PWD)/.config/starship.toml $(HOME)/.config/starship.toml
	@ln -s -f $(PWD)/.config/fish $(HOME)/.config
	@ln -s -f $(PWD)/.config/ghostty $(HOME)/.config

setup_tmux:
	@echo "[INFO] Linking tmux files..."
	@ln -s -f $(PWD)/tmux.conf $(HOME)/.tmux.conf

reload: reload-tmux

reload-tmux:
	@echo "[INFO] Reloading tmux..."
	@tmux source-file $(PWD)/tmux.conf
