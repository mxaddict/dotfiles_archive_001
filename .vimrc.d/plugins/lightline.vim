let g:lightline = {
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ], [ 'branch', 'filename' ] ],
			\   'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
			\ },
			\ 'component_function': {
			\   'branch': 'MyBranch',
			\   'filename': 'MyFilename',
			\   'fileformat': 'MyFileformat',
			\   'filetype': 'MyFiletype',
			\   'fileencoding': 'MyFileencoding',
			\   'mode': 'MyMode',
			\ },
			\ 'component_expand': {
			\   'linter_checking': 'lightline#ale#checking',
			\   'linter_warnings': 'lightline#ale#warnings',
			\   'linter_errors': 'lightline#ale#errors',
			\   'linter_ok': 'lightline#ale#ok',
			\ },
			\ 'component_type': {
			\   'linter_checking': 'left',
			\   'linter_warnings': 'warning',
			\   'linter_errors': 'error',
			\   'linter_ok': 'left',
			\ },
			\ 'subseparator': { 'left': '|', 'right': '|' }
			\ }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

function! MyModified()
	return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
	return &ft !~? 'help' && &readonly ? 'x' : ''
endfunction

function! MyFilename()
	let fname = expand('%:t')
	return fname == '__Tagbar__' ? g:lightline.fname :
				\ fname =~ 'NERD_tree' ? '' :
				\ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
				\ ('' != fname ? fname : '[No Name]') .
				\ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyBranch()
	try
		if expand('%:t') !~? 'Tagbar\|NERD' && exists('FugitiveHead')
			let mark = ' '
			let _ = FugitiveHead()
			return strlen(_) ? mark._ : ''
		endif
	catch
	endtry
	return ''
endfunction

function! MyFileformat()
	return winwidth(0) > 60 ? &fileformat : ''
endfunction

function! MyFiletype()
	return winwidth(0) > 60 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
	return winwidth(0) > 60 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
	let fname = expand('%:t')
	return fname == '__Tagbar__' ? 'Tagbar' :
				\ fname =~ 'NERD_tree' ? 'NERDTree' :
				\ winwidth(0) > 60 ? lightline#mode() : ''
endfunction
