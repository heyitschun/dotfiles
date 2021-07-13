"Make sure vim-plug is installed:
"https://github.com/junegunn/vim-plug

call plug#begin(stdpath('data') . '/plugged')

"Integration
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()   }   }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'machakann/vim-sandwich'
Plug 'vimwiki/vimwiki'

"Interface
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

"Languages
Plug 'sheerun/vim-polyglot' " https://github.com/sheerun/vim-polyglot
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'leafoftree/vim-vue-plugin'

"Themes
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'eemed/sitruuna.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'heyitschun/vim-deep-space'
Plug 'heyitschun/vim-github-dark'

call plug#end()
