Dotfile management without symlinks based on [this method](https://www.atlassian.com/git/tutorials/dotfiles).

# Setup from scratch

## 1. Create a bare git repository in your home folder

```bash
git init --bare $HOME/dotfiles
```

## 2. Define alias for dotfile management

```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

The alias can also be added manually to `.bashrc`.

## 3. Hide untracked files

The `config` alias is simply a `git` command the dotfiles directory. To prevent running `config status` from showing all the files in the `$HOME` folder, run:

```bash
config config --local status.showUntrackedFiles no
```
