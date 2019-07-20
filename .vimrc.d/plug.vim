" Load up vim plug
call plug#begin('~/.vim/plugged')

" Deoplete!!!
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" My Bundles here:
Plug '2072/PHP-Indenting-for-VIm'
Plug 'SirVer/ultisnips'
Plug 'StanAngeloff/php.vim'
Plug 'alvan/vim-closetag'
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'elzr/vim-json'
Plug 'evidens/vim-twig'
Plug 'gabesoft/vim-ags'
Plug 'gregsexton/gitv'
Plug 'hail2u/vim-css3-syntax'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'maximbaz/lightline-ale'
Plug 'mhinz/vim-signify'
Plug 'miyakogi/seiya.vim'
Plug 'mxw/vim-jsx'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'skatzteyp/vim-ultisnips-angular2'
Plug 'terryma/vim-multiple-cursors'
Plug 'tikhomirov/vim-glsl'
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tweekmonster/deoplete-clang2'
Plug 'vim-scripts/matchit.zip'
Plug 'w0rp/ale'
Plug 'xsbeats/vim-blade'

" Themes
Plug 'chriskempson/base16-vim'

" Let vim plug know we are done
call plug#end()
