" Use 256 colors
if !has('gui_running')
  set t_Co=256
endif

" Access colors present in 256 colorspace
let base16colorspace=256

" Now that we have 256bit color, we can set our colorscheme
colorscheme base16-monokai

" Turn on auto indention and make it smart! :)
set autoindent
set smartindent

" set scrolloff to 8 so that we always have at least 8 lines between cursor
" and end of screen in VIM while editing
set scrolloff=8

" Add a bit extra margin to the left
set foldcolumn=1

" Make sure that we have a text guide for typing at only 80 chars MAX...
set colorcolumn=80

" Turn backup off. We use GIT for that!
set nowb
set noswapfile

" turn on bracket matching/highlighting
set showmatch

" set spelling language, but don't enable it by default cause it's annoying
set nospell spelllang=en_us

" vi compatibility is lame... hahaha
set nocompatible

" lets hide the mode and ruler as we are using a plugin for this
set noshowmode
set noruler

" This is to fix lightline
set laststatus=2

" We need line numbers right? :)
" BUT WAIT, THERE'S MORE! Line numbers that make SENSE for NORMAL MODE and
" INSERT MODE? YEAH, WE GOTZ THIZZ SHIZZZ>>>>>
set relativenumber
set number

" Show the cursor's current line highlight
set cursorline

" Show the cmd and set height to 1 cause it looks better now that we have tmux
" setup to look like powerline/airline
set showcmd
set cmdheight=1

" turn on the wildmenu cause we love being wild
" And this is usefull for seing the command completion when using it
set wildmenu
set wildmode=full

" Ignore compiled files AND VCS files for git, mercurial and svn, these are
" the more common VCS that i use in my projects
set wildignore=*.o,*~,*.pyc,.git\*,.hg\*,.svn\*,vendor\*,public\vendor\*,bower_components\*,node_modules\*,platforms\*

" Ignore case when searching all small letters
" but respect case when you have a capped letter in the search
set ignorecase
set smartcase

" Disable mouse cause only noobs use it.
set mouse=

" Enable system clipboard IF TMUX is not used
if $TMUX == ''
	set clipboard+=unnamed
else
	set clipboard=
endif

" Set encoded character set to utf-8 so we can read and write unicode text
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

" Magic code transformation
no  <F3> ggVGg?
ino <F3> ggVGg?
vno <F3> ggVGg?

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

" Smart way to move between windows
no <C-j> <C-W>j
no <C-k> <C-W>k
no <C-h> <C-W>h
no <C-l> <C-W>l

" Insert the current file's name!
no <leader>f a<C-R>=expand("%:t:r")<CR><ESC>

" Insert the current file's name!
vno <leader>f s<C-R>=expand("%:t:r")<CR><ESC>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null
