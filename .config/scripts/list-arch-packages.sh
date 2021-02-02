#!/usr/bin/bash

<<'###COMMENT'

Creates a `list-arch-packages.txt` file in the home directory containing
all packages installed from the official Arch repositories.

To use, make sure `cronie` is installed, then create a symlink in the
appropriate directory:

```
ln -s ~/.config/scripts/list-arch-packages.sh /etc/cron.daily/
```

###COMMENT

DATE=$(date +%d-%m-%Y%%%T)

echo "# $DATE" > $HOME/list-arch-packages.txt
pacman -Qqen >> $HOME/list-arch-packages.txt
