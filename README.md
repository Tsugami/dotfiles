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

Create hard links to your machine use the files without having to copy (TODO: create a script to create all hard links)

```sh
# Run in dotfiles folder to ensure
cd ~/.dotfiles
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/git/.gitconfig ~/.gitconfig
```

