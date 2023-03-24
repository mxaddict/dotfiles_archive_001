let g:lightline = {
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ], [ 'branch', 'filename' ] ],
			\   'right': [ [ 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok', 'coc_status', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
			\ },
			\ 'component_function': {
			\   'branch': 'MyBranch',
			\   'filename': 'MyFilename',
			\   'fileformat': 'MyFileformat',
			\   'filetype': 'MyFiletype',
			\   'fileencoding': 'MyFileencoding',
			\   'mode': 'MyMode',
			\ },
			\ 'subseparator': { 'left': '|', 'right': '|' }
			\ }

call lightline#coc#register()

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
		let mark = ' '
		let _ = FugitiveHead()
		return strlen(_) ? mark._ : ''
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
