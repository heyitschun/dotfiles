#!/usr/bin/bash

<<'###COMMENT'

Creates a `list-aur-packages.txt` file in the home directory Containing
all packages installed from the AUR.

To use, make sure `cronie` is installed, then create a symlink in the
appropriate directory:

```
ln -s ~/.config/scripts/list-aur-packages.sh /etc/cron.daily/
```

###COMMENT


DATE=$(date +%d-%m-%Y%%%T)

echo "# $DATE" > $HOME/list-aur-packages.txt
pacman -Qqem >> $HOME/list-aur-packages.txt
