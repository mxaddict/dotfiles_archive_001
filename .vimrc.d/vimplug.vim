" Load up vim plug
call plug#begin('~/.vim/plugged')

" My Bundles here:
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'elzr/vim-json'
Plug 'evidens/vim-twig'
Plug 'gregsexton/gitv'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'miyakogi/seiya.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'shawncplus/phpcomplete.vim'
Plug 'skatzteyp/vim-ultisnips-angular2'
Plug 'terryma/vim-multiple-cursors'
Plug 'tikhomirov/vim-glsl'
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'xsbeats/vim-blade'

" Themes
Plug 'benjaminwhite/Benokai'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'

" Let vim plug know we are done
call plug#end()
