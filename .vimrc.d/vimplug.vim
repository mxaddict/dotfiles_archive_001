" Load up vim plug
call plug#begin('~/.vim/plugged')

" My Bundles here:
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer --system-libclang --system-boost' }
Plug 'airblade/vim-gitgutter'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'elzr/vim-json'
Plug 'gregsexton/gitv'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'mxaddict/pdv'
Plug 'nanotech/jellybeans.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'shawncplus/phpcomplete.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tikhomirov/vim-glsl'
Plug 'tobyS/vmustache'
Plug 'tommcdo/vim-lion'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'xsbeats/vim-blade'

" Let vim plug know we are done
call plug#end()
