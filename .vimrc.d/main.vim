" Check if we have 256 support
if $COLORTERM == 'mate-terminal' || $COLORTERM == 'gnome-terminal'
	" Now we know we have it, then use it!
	set t_Co=256
endif

" Now that we have 256bit color, we can set our colorscheme
" color vimtana
color jellybeans

" Turn on auto indention and make it smart! :)
set autoindent
set smartindent

" set scrolloff to 8 so that we always have at least 8 lines between cursor and end
" of screen in VIM while editing
set scrolloff=8

" Add a bit extra margin to the left
set foldcolumn=1

" Make sure that we have a text guide for typing at only 80 chars MAX...
set textwidth=78
set colorcolumn=80

" Turn backup off, since most stuff is in SVN, git ,etc.. anyway...  set nobackup
set nowb
set noswapfile

" turn on bracket matching/highlighting
set showmatch

" set spelling language, but don't enable it by default cause it's annoying
set nospell spelllang=en_us

" vi compatibility is lame... hahaha
set nocompatible

" lets hide the mode as we are using lightline for this :)
set noshowmode

" This is to fix lightline
set laststatus=2

" We need line numbers right? :)
" BUT WAIT, THERE'S MORE! Line numbers that make SENSE for NORMAL MODE and
" INSERT MODE? YEAH, WE GOTZ THIZZ SHIZZZ>>>>>
set relativenumber
set number

" Turn on the ruler so that we can always see the cursor position
set ruler

" Show the cursor's current line highlight
set cursorline

" Show the cmd and set height to 1 cause it looks better now that we have tmux
" setup to look like powerline/airline
set showcmd
set cmdheight=1

" turn on the wildmenu cause we love being wild
set wildmenu
set wildmode=full

" Ignore compiled files AND VCS files for git, mercurial and svn, these are
" the more common VCS that i use in my projects
set wildignore=*.o,*~,*.pyc,.git\*,.hg\*,.svn\*,vendor\*,public\vendor\*,bower_components\*,node_modules\*,platforms\*

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Enable mouse so we can move splits and stuff
set mouse=

" Enable system clipboard IF TMUX is not used
if $TMUX == ''
	set clipboard+=unnamed
else
	set clipboard=
endif

" Set encoded character set
set encoding=utf-8

" Use Unix as the standard file type
set fileformats=unix,dos,mac

" lets configure the completeopt settings to make the menu work better/faster
set completeopt=longest,menuone

" Lets show what we are searching for, might help us a bit
set hlsearch

" lets start searching as soon as we type
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set some whitespace characters
set list listchars=tab:\›\ ,trail:-,extends:>,precedes:<,eol:¬

" Set tab settings to 4 spaces and no expand tab
set smarttab
set noexpandtab
set tabstop=4
set shiftwidth=4

" Wrapping is for noobs :D hahaha!
set nowrap

" Lets actually turn on syntax highlighting, might be usefull for coding :p
syntax on

" Turn on plugin and indent support
filetype plugin on
filetype indent on

" Disable arrow keys and use UP and DOWN for code movement
no  <down>  mz:m+<CR>`z
no  <left>  <Nop>
no  <right> <Nop>
no  <up>    mz:m-2<CR>`z
ino <down>  <Esc><Esc>mz:m+<CR>`z
ino <left>  <Nop>
ino <right> <Nop>
ino <up>    <Esc><Esc>mz:m-2<CR>`z
vno <down>  :m'>+<CR>`<my`>mzgv`yo`z
vno <left>  <Nop>
vno <right> <Nop>
vno <up>    :m'<-2<CR>`>my`<mzgv`yo`z

" Turn off Ex-Mode permanently
no Q <nop>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vno <silent> * :call VisualSelection('f', '')<CR>
vno <silent> # :call VisualSelection('b', '')<CR>

" Smart way to move between windows
no <C-j> <C-W>j
no <C-k> <C-W>k
no <C-h> <C-W>h
no <C-l> <C-W>l

" Quick command to remove all GIT conflicts from merged branch
no <leader>g :%s/\([=]\{7\}\)\(\_.\{-\}[>]\{7\}.*\n\)//g<CR>:%s/\([<]\{7\}.*\n\)//g<CR>

" Quick command to remove all GIT conflicts from merged branch
no <leader>G :%s/\([<]\{7\} HEAD\)\(\_.\{-\}[=]\{7\}\n\)//g<CR>:%s/\([>]\{7\}.*\n\)//g<CR>

" Map Convert PRE php 5.4 array syntax to new 5.4+ syntax...
no <leader>as :call PHPShortHandArrayConverter()<CR>

" Insert the current file's name!
no <leader>fn a<C-R>=expand("%:t:r")<CR><ESC>

" Insert the current file's name!
vno <leader>fn s<C-R>=expand("%:t:r")<CR><ESC>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" lets clean the file before we save it!
autocmd BufWritePre,FileWritePre * :g/\s\+$/s/\s\+$//g

" FUNCTION to Convert PRE php 5.4 array syntax to new 5.4+ syntax...
function! PHPShortHandArrayConverter() range
	" Replace empty arrays first
	execute "normal :%s/[aA]rray\\(\\s\\+\\)\\?(\\(\\s\\+\\)\\?)/[]/ge\<CR>"

	" We need a place to store the count...
	" Count the number of matches
	let l:count=[0] | %s/[aA]rray\(\s\+\)\?(\zs/\=map(l:count,'v:val+1')[1:]/ge

	" Check if we have more than 1
	while l:count[0] > 0
		" Find the instances
		execute "normal gg/[aA]rray\\(\\s\\+\\)\\?(\<CR>"

		" Remove the array word
		execute "normal dwa\<CR>"

		" raplace ( with [
		execute "normal cs(]"

		" We need a place to store the count...
		" Count the number of matches
		let l:count=[0] | %s/[aA]rray\(\s\+\)\?(\zs/\=map(l:count,'v:val+1')[1:]/ge
	endwhile
endfunction

" FUNCTION FOR VISUAL SECTION SEARCHING
function! VisualSelection(direction, extra_filter) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")

	if a:direction == 'b'
		execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'gv'
		call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.' . a:extra_filter)
	elseif a:direction == 'replace'
		call CmdLine("%s" . '/'. l:pattern . '/')
	elseif a:direction == 'f'
		execute "normal /" . l:pattern . "^M"
	endif

	let @/ = l:pattern
	let @" = l:saved_reg
endfunction

" END OF FILE
