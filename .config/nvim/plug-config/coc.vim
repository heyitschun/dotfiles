"Extensions
let g:coc_global_extensions = [
    \ 'coc-explorer',
    \ 'coc-json',
    \ 'coc-python',
    \ 'coc-rls',
    \ 'coc-tailwindcss',
    \ 'coc-tsserver',
    \ 'coc-vetur'
    \ ]

"CoC GoTo Navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Explorer presets
let g:coc_explorer_global_presets = {
    \   'floating': {
    \      'position': 'floating',
    \   },
    \   'floatingLeftside': {
    \      'position': 'floating',
    \      'floating-position': 'left-center',
    \      'floating-width': 30,
    \   },
    \   'floatingRightside': {
    \      'position': 'floating',
    \      'floating-position': 'right-center',
    \      'floating-width': 30,
    \   },
    \   'simplify': {
    \     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
    \   }
    \ }

"Keymappings
nmap <leader>e :CocCommand explorer --preset floating<CR>

"Ensure that coc-explorer closes if it is the last buffer left after closing
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
