" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:modified()
	let files = systemlist('git ls-files -m 2>/dev/null')
	return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:untracked()
	let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
	return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
			\ { 'type': 'files',                 'header': ['   MRU'] },
			\ { 'type': 'dir',                   'header': ['   MRU '. getcwd()] },
			\ { 'type': 'sessions',              'header': ['   Sessions'] },
			\ { 'type': 'bookmarks',             'header': ['   Bookmarks'] },
			\ { 'type': function('s:modified'),  'header': ['   GIT modified'] },
			\ { 'type': function('s:untracked'), 'header': ['   GIT untracked'] },
			\ { 'type': 'commands',              'header': ['   Commands'] },
			\ ]
