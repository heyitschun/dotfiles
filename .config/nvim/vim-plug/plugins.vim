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
Plug 'dylanaraps/wal.vim'

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
Plug 'challenger-deep-theme/vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'adrian5/oceanic-next-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'eemed/sitruuna.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'lighthaus-theme/vim-lighthaus'

call plug#end()
