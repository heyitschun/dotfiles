<p>
    <img src="https://heyitschun-assets.s3.amazonaws.com/images/gear.svg" alt="Icon by: Pixel perfect">
</p>

Dotfile management without symlinks based on [this method](https://www.atlassian.com/git/tutorials/dotfiles).

# Setup From Scratch

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

The `config` alias is simply a `git` command for the dotfiles directory. To prevent running `config status` from showing all the files in the `$HOME` folder, run:

```bash
config config --local status.showUntrackedFiles no
```

# Installing dotfiles on a new system

## 1. Define alias for dotfile management

```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

Or add it to `.bashrc` manually.

## Ignore cloned folder

To prevent recursion problems:

```bash
echo "dotfiles" >> .gitignore
```

## Clone dotfiles into bare repository

```bash
git clone --bare https://github.com/heyitschun/dotfiles $HOME/dotfiles
```

## Checkout the content

```bash
config checkout
```

## Remove offending files (in case of error)

```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

Try the `checkout` command again.

```bash
config checkout
```

## Hide untracked files

```bash
config config --local status.showUntrackedFiles no
```

# Usage

All built-in `git` commands will work with `config`. To add all modified files, run `config add -u`.

Do not run `config add -A`. This will add every file in the `$HOME`.
