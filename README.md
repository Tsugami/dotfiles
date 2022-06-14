```
___________                  ________          __    _____.__.__
\__    ___/_______ __ __ __  \______ \   _____/  |__/ ____\__|  |   ____   ______
  |    | /  ___/  |  \  |  \  |    |  \ /  _ \   __\   __\|  |  | _/ __ \ /  ___/
  |    | \___ \|  |  /  |  /  |    `   (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
  |____|/____  >____/|____/  /_______  /\____/|__|  |__|  |__|____/\___  >____  >
             \/                      \/                                \/     \/
```

if you unzipped your `.ssh` folder from the FAT formatted Pendrive, It's the permissions would not have been kept, you would need to run:

```sh
sudo chmod -R 700 "$HOME/.ssh"; chmod -R 600 "$HOME/.ssh";
```
