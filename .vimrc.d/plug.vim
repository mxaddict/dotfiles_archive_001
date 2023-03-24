" Load up vim plug
call plug#begin('~/.vim/plugged')

" Deoplete!!!
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-clangx'

" Themes
Plug 'chriskempson/base16-vim'

" Make sure we have editorconfig support
Plug 'editorconfig/editorconfig-vim'

" Fzf for fuzzy searching files and text in files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" NERDTree cause why not? Good for looking at project structure
Plug 'scrooloose/nerdtree'

" Add nerdtree syntax support
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Add git support to nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Snip support
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" ({["' HTML/XML auto close tags
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" It's like auto close tags but for ruby and other languages that have if
" endif syntax that don't have actual tags
Plug 'tpope/vim-endwise'

" Cool looking shell promptline
Plug 'edkolev/promptline.vim'

" Ale (This is for file linting)
Plug 'dense-analysis/ale'

" Cool looking status line for vim and tmux
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'maximbaz/lightline-ale'

" This plugin is for gcc ad gc commands for multiline commenting
Plug 'tpope/vim-commentary'

" Load some sensable defaults for vim
Plug 'tpope/vim-sensible'

" This will allow us to wrap text easily with matching tags/brackets
Plug 'tpope/vim-surround'

" We need this for some git support
Plug 'tpope/vim-fugitive'

" This makes our vim have a clear background
Plug 'miyakogi/seiya.vim'

" Provides support for expanding abbreviations similar to emmet for html/xml
" tags like body>ul>li syntax
Plug 'mattn/emmet-vim'

" This plugin shows a diff for code changes via git
Plug 'mhinz/vim-signify'

" Syntax related plugins
Plug 'octol/vim-cpp-enhanced-highlight'

" Allows for multi cursor edits
Plug 'mg979/vim-visual-multi'

" Allows us to align text via characters like = or spaces and tabbing
" use via ga= for example
Plug 'junegunn/vim-easy-align'

" Add icons for some plugins that support it
Plug 'ryanoasis/vim-devicons'

" Add startify start up screen for vim
Plug 'mhinz/vim-startify'

" Let vim plug know we are done
call plug#end()
