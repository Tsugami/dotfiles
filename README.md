# My Dotfiles

```shell
___________                  ________          __    _____.__.__
\__    ___/_______ __ __ __  \______ \   _____/  |__/ ____\__|  |   ____   ______
  |    | /  ___/  |  \  |  \  |    |  \ /  _ \   __\   __\|  |  | _/ __ \ /  ___/
  |    | \___ \|  |  /  |  /  |    `   (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
  |____|/____  >____/|____/  /_______  /\____/|__|  |__|  |__|____/\___  >____  >
             \/                      \/                                \/     \/
```

## Installation

```sh
curl -L https://raw.githubusercontent.com/Tsugami/dotfiles/master/install.sh | bash
```

## Overview

- [delta](https://github.com/dandavison/delta) - A syntax-highlighting pager for git, diff, and grep output.
- [bottom](https://github.com/ClementTsang/bottom) - alternative to `top`, interactive text-based system monitor, process viewer and process manager.
- [procs](https://github.com/dalance/procs) - alternative to `ps`, tool for getting information about processes. It provides convenient, human-readable (and colored) output format by default.
- [exa](https://github.com/ogham/exa) - alternative to `ls`, tool for listing directory contents.
- [bat](https://github.com/sharkdp/bat) - alternative to `cat`, tool for see files with syntax highlighting.
- [Github CLI](https://cli.github.com/) - Tool for working with Github from command line (create PR, issues, etc)

## FAQ

### Unzip ssh folder

if you unzipped your `.ssh` folder from the FAT formatted pendrive, It's the permissions would not have been kept, you would need to run:

```sh
sudo chmod -R 700 "$HOME/.ssh"; chmod -R 600 "$HOME/.ssh";
```
