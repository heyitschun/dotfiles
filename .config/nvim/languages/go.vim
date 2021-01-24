au BufNewFile,BufRead *.go
    \ set shiftwidth=4
    \| set softtabstop=4
    \| set tabstop=4


let g:go_highlight_extra_types=1
let g:go_highlight_fields=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1
let g:go_highlight_operators=1

let g:go_fmt_autosave=1
let g:go_fmt_command="goimports"

