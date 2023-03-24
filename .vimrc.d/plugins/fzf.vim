" Disable line numbers in the fzf window
autocmd! FileType fzf
autocmd  FileType fzf set nonumber norelativenumber

" Set our fzf window to be at the bottom with 30% height
let g:fzf_layout = { "down": "30%" }

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
no <silent> f :FindFiles<cr>
no <silent> F :FindGitFiles<cr>
no <silent> r /<c-r>=expand("<cword>")<cr><cr>:grep <c-r>=expand("<cword>")<cr><cr><cr>:cw<cr>
no <silent> R :FindInFiles<cr>

" Setup the fzf visual mode shortcuts
vno <silent> f <esc>:FindFiles <c-r>=VisualYank()<cr><cr>
vno <silent> F <esc>:FindGitFiles <c-r>=VisualYank()<cr><cr>
vno <silent> r <esc>/<c-r>=EscapeSlash(VisualYank())<cr><cr>:grep <c-r>=EscapeBang(shellescape(@l, 1))<cr><cr><cr>:cw<cr>
vno <silent> R <esc>:FindInFiles <c-r>=VisualYank()<cr><cr>
