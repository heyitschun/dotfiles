![Neovim](https://github.com/heyitschun/nvim/blob/master/neovim-logo.svg)

Startup files for [Neovim](https://github.com/neovim/neovim).

Folder structure based on [ChristianChiarulli's setup](https://github.com/ChristianChiarulli/nvim), but not as saucy.


# Setup

## Windows
If Vim Plug is not setup yet, open up PowerShell and run:

```
> md ~\AppData\Local\nvim-data\site\autoload
> $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
> (New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim-data\site\autoload\plug.vim"
        
  ) 
)
```

Clone this repository into **~/AppData/Local/nvim/**, open up init.vim and run:

```
:PlugInstall
```

This will install all the listed plugins into **~/AppData/local/nvim-data/plugged**.

# Startup Report
If the Vim is slow to start (as in more than 3 seconds) you can create a startup time report:

```
nvim --startuptime vim-report.txt
```

# More Plugins
Visit [VimAwesome](https://vimawesome.com/) for more plugins.
