" Disable line numbers in the fzf window
autocmd! FileType fzf
autocmd  FileType fzf set nonumber norelativenumber

" Set our fzf window to be at the bottom with 30% height
let g:fzf_layout = { "down": "30%" }

function! s:visual_yank()
	try
		normal! gv"ly
		return @l
	endtry
	return ''
endfunction

function! s:escape_slash(text)
	return substitute(escape(a:text, "\\/.*$^~[]"), "\n$", "", "")
endfunction

function! s:escape_bang(text)
	return substitute(escape(a:text, "|"), '\\!', "!", "")
endfunction

function! s:edit_file(file)
	" Remove the icon
	let full = get(split(a:file, " "), 1, "")

	" Get the line/column
	let parts = split(full, ":")
	let file = get(parts, 0, "")
	let line = get(parts, 1, "0")
	let column = get(parts, 2, "0")

	execute "silent edit" file
	call cursor(line, column)
endfunction

function! FindFiles(type, query)
	let spec = 
				\{
				\  "sink": function("s:edit_file"),
				\  "options":
				\  [
				\    "--ansi",
				\    "--query", a:query,
				\    "--delimiter", "[ :]",
				\    "--preview", "~/.vim/plugged/fzf.vim/bin/preview.sh {2..}",
				\    "--info", "default",
				\    "--preview-window", "right:50%,border-left,+{3}-/2"
				\  ]
				\}
	let cmd = "rg --files --hidden -g '!.git'"
	let prompt = "Files> "

	if a:type == "git"
		let cmd = "git ls-files"
		let prompt = "Git Files> "
	endif

	if a:type == "grep"
		let cmd = "rg --column --line-number --no-heading --color=always --smart-case --hidden -g '!.git' --fixed-strings -- %s"
		let prompt = "RipGrep> "
	endif

	let cmd = cmd . " | devicon-lookup --prefix ':' --color"

	if a:type != "grep"
		let init_cmd = cmd
	else
		let init_cmd = printf(cmd, shellescape(a:query))
		let reload_cmd = printf(cmd, '{q}')
		let spec.options = spec.options + ["--disabled", '--bind', 'change:reload:'.reload_cmd]
	endif

	let spec.options = spec.options + ["--prompt", prompt]

	try
		let prev_default_command = $FZF_DEFAULT_COMMAND
		let $FZF_DEFAULT_COMMAND = init_cmd
		call fzf#run(fzf#wrap(spec))
	finally
		let $FZF_DEFAULT_COMMAND = prev_default_command
	endtry
endfunction

command! -nargs=* FindFiles    call FindFiles("",     <q-args>)
command! -nargs=* FindInFiles  call FindFiles("grep", <q-args>)
command! -nargs=* FindGitFiles call FindFiles("git",  <q-args>)

" Setup the fzf normal mode shortcuts
no <silent> f :FindFiles<CR>
no <silent> F :FindGitFiles<CR>
no <silent> r /<C-R>=expand("<cword>")<CR><CR>:grep <C-R>=expand("<cword>")<CR><CR><CR>:cw<CR>
no <silent> R :FindInFiles<CR>

" Setup the fzf visual mode shortcuts
vno <silent> f <Esc>:FindFiles <C-R>=<SID>visual_yank()<CR><CR>
vno <silent> F <Esc>:FindGitFiles <C-R>=<SID>visual_yank()<CR><CR>
vno <silent> r <Esc>/<C-R>=<SID>escape_slash(<SID>visual_yank())<CR><CR>:grep <C-R>=<SID>escape_bang(shellescape(@l, 1))<CR><CR><CR>:cw<CR>
vno <silent> R <Esc>:FindInFiles <C-R>=<SID>visual_yank()<CR><CR>
