
```shell
___________                  ________          __    _____.__.__
\__    ___/_______ __ __ __  \______ \   _____/  |__/ ____\__|  |   ____   ______
  |    | /  ___/  |  \  |  \  |    |  \ /  _ \   __\   __\|  |  | _/ __ \ /  ___/
  |    | \___ \|  |  /  |  /  |    `   (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
  |____|/____  >____/|____/  /_______  /\____/|__|  |__|  |__|____/\___  >____  >
             \/                      \/                                \/     \/
```
# My Dotfiles

This repository contains my personal configurations for development and daily use.

## Overview

- [delta](https://github.com/dandavison/delta) - A syntax-highlighting pager for git, diff, and grep output.
- [bottom](https://github.com/ClementTsang/bottom) - alternative to `top`, interactive text-based system monitor, process viewer and process manager.
- [procs](https://github.com/dalance/procs) - alternative to `ps`, tool for getting information about processes. It provides convenient, human-readable (and colored) output format by default.
- [exa](https://github.com/ogham/exa) - alternative to `ls`, tool for listing directory contents.
- [bat](https://github.com/sharkdp/bat) - alternative to `cat`, tool for see files with syntax highlighting.
- [Github CLI](https://cli.github.com/) - Tool for working with Github from command line (create PR, issues, etc)

- [Fish shell](https://fishshell.com/) - shell user-friendly
- [starship](https://starship.rs/) - cool shell theme
- [ASDF](https://asdf-vm.com/) - Version manager for same languages
- [Tmux](https://github.com/tmux/tmux) - Terminal multiplexer
- [Neovim](https://neovim.io/) - Modern text editor

## Installation

```sh
curl -L https://raw.githubusercontent.com/Tsugami/dotfiles/main/install.sh | bash
```

## 🔧 Project Structure

```
.dotfiles/
├── .config/
│   ├── git/          # Git configurations
│   └── tmux/         # Tmux configurations
│   └── fish/         # fish configurations
└── Makefile         # Automation scripts
```

## 🎯 Useful Commands

Update all submodules:
```bash
make download_git_modules
```
## 🔄 Maintenance

To update all configurations:

```bash
make setup
```

## Tmux Shortcuts

Prefix: `Ctrl+b` or `Ctrl+a`

### Sessions

| Shortcut | Action |
|---|---|
| `prefix + C-c` | New session |
| `prefix + C-f` | Find session |
| `prefix + BTab` | Last session |

### Windows

| Shortcut | Action |
|---|---|
| `prefix + C-h` | Previous window |
| `prefix + C-l` | Next window |
| `prefix + Tab` | Last active window |

### Panes

| Shortcut | Action |
|---|---|
| `prefix + -` | Split horizontal |
| `prefix + _` | Split vertical |
| `prefix + h/j/k/l` | Navigate panes |
| `prefix + H/J/K/L` | Resize pane |
| `prefix + <` / `>` | Swap pane |
| `prefix + +` | Maximize pane |
| `prefix + z` | Toggle zoom pane |
| `prefix + q` | Show pane indexes |

### Copy mode

| Shortcut | Action |
|---|---|
| `prefix + Enter` | Enter copy mode |
| `v` | Begin selection |
| `y` | Copy selection |
| `C-v` | Rectangle selection |

### General

| Shortcut | Action |
|---|---|
| `prefix + r` | Reload config |
| `prefix + e` | Edit local config |
| `prefix + m` | Toggle mouse |
| `prefix + t` | Clock |

## FAQ

### Unzip ssh folder

if you unzipped your `.ssh` folder from the FAT formatted pendrive, It's the permissions would not have been kept, you would need to run:

```sh
sudo chmod -R 700 "$HOME/.ssh"; chmod -R 600 "$HOME/.ssh";
```
