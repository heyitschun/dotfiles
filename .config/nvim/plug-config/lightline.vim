let g:lightline = {
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'lineinfo', 'readonly', 'modified' ] ],
	\   'right': [ [ 'filename', 'gitbranch' ] ]
	\ },
	\ 'component_function': {
	\   'gitbranch': 'FugitiveHead',
	\   'filename': 'FileNameForLightLine'
	\ },
	\ }

function! FileNameForLightLine()
  return expand('%')
endfunction