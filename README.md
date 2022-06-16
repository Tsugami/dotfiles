```
___________                  ________          __    _____.__.__
\__    ___/_______ __ __ __  \______ \   _____/  |__/ ____\__|  |   ____   ______
  |    | /  ___/  |  \  |  \  |    |  \ /  _ \   __\   __\|  |  | _/ __ \ /  ___/
  |    | \___ \|  |  /  |  /  |    `   (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
  |____|/____  >____/|____/  /_______  /\____/|__|  |__|  |__|____/\___  >____  >
             \/                      \/                                \/     \/
```

if you unzipped your `.ssh` folder from the FAT formatted pendrive, It's the permissions would not have been kept, you would need to run:

```sh
sudo chmod -R 700 "$HOME/.ssh"; chmod -R 600 "$HOME/.ssh";
```
## Installation

```sh
curl -L https://raw.githubusercontent.com/Tsugami/dotfiles/master/install.sh | bash
```

## Overview

- [zsh](https://github.com/zsh-users/zsh)  - Highly customizable interactive login shell and command interpreter for shell scripting
- [curl](https://github.com/curl/curl) - Tool for transferring data using various protocols
- [git](https://git-scm.com/) - Version control system for tracking changes in files and coordinating the work
- [bottom](https://github.com/ClementTsang/bottom) - alternative to `top`, interactive text-based system monitor, process viewer and process manager.
- [procs](https://github.com/dalance/procs) - alternative to `ps`, tool for getting information about processes. It provides convenient, human-readable (and colored) output format by default.
- [exa](https://github.com/ogham/exa) - alternative to `ls`, tool for listing directory contents.
- [bat](https://github.com/sharkdp/bat) - alternative to `cat`, tool for see files with syntax highlighting.
