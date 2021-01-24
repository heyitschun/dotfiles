"To see what base directories are used go to: 
"https://neovim.io/doc/user/starting.html#base-directories

source <sfile>:h/vim-plug/plugins.vim

source <sfile>:h/general/keymaps.vim
source <sfile>:h/general/settings.vim

source <sfile>:h/plug-config/coc.vim
source <sfile>:h/plug-config/easymotion.vim
source <sfile>:h/plug-config/fzf.vim
source <sfile>:h/plug-config/indentLine.vim
source <sfile>:h/plug-config/lightline.vim
source <sfile>:h/plug-config/vimwiki.vim

source <sfile>:h/languages/go.vim
source <sfile>:h/languages/python.vim

"Quick UI
colorscheme material
let g:lightline.colorscheme = 'material_vim'
let g:oceanic_for_polyglot = 1

"Language settings. Too few for a whole folder or file.
let g:vim_vue_plugin_use_sass = 1

