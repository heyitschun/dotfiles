"Make sure this file is sourced in `init.vim` *before* other config imports.
"Open init.vim (if it was found during start up)
command RC :e $MYVIMRC
command TD :put =strftime('%Y-%m-%d')

"Otherwise the leader mappings will not work
let mapleader=" "
nnoremap <Space> <Nop>

"Navigation
nnoremap <C-w> <C-y>
nnoremap G Gzz

"Windows clipboard
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y

"Better splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Write to file
command W :write

"Search
"Turn off search result highlights on Enter
nnoremap <esc> :noh<return><esc>
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

"Search for all words under cursor in document without moving cursor
nnoremap - *N

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
