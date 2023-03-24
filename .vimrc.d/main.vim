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
set nobackup
set nowritebackup
set noswapfile

" Make sure we always have the sign column so we don't jitter when changing
" values that show on it (Like for git changes and for errors in linter)
set signcolumn=yes

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=200

" Let's save undo info!
set undodir=~/.vim/undo
set undofile

" Updated backspacing and del behavior to allow sane usage
set backspace=indent,eol,start

" Disable octal increments
set nrformats-=octal

" turn on bracket matching/highlighting
set showmatch

" set spelling language, but don't enable it by default cause it's annoying
set nospell spelllang=en_us

" Disable vi backwards compatibility
set nocompatible

" lets hide the mode and ruler as we are using a plugin for this
set noshowmode
set noruler

" This is to fix lightline
set laststatus=2

" Make scrolling left or right on long lines less janky
set sidescroll=1
set sidescrolloff=4

" We need line numbers right?
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

" Enable the clipboard
set clipboard+=unnamed

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

" Use ripgrep for faster searching
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ -g\ '!.git'\ --fixed-strings\ --
set grepformat^=%f:%l:%c:%m

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set some whitespace characters
set list listchars=tab:→\ ,space:\ ,nbsp:␣,trail:•,eol:¬,precedes:«,extends:»

" Delete comment character when joining commented lines
set formatoptions+=j

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

" Auto save after insert if file has changed
autocmd InsertLeave * update

" Auto read/write for buffers
" this will read the changes from disk (IE git updated the file)
" this will write changes when switching buffers, etc..
set autoread
set autowriteall
