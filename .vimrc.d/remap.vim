" Set our leader key to be space key
let mapleader = " "

" Turn off Ex-Mode permanently
no Q <nop>

" Magic code transformation
 no <f3> ggVGg?
ino <f3> <esc>ggVGg?
vno <f3> <esc>ggVGg?

" Smart way to move between windows
no <c-j> <c-w>j
no <c-k> <c-w>k
no <c-h> <c-w>h
no <c-l> <c-w>l

" Make sure that n and N center the search term
no n nzzzv
no N Nzzzv

" Move the cursor to the start of the line with running J to join lines
no J mzJ`z

" Move lines up/down and auto indent
vno J :m '>+1<cr>gv=gv
vno K :m '<-2<cr>gv=gv

" Center the file when moving with <c-d> and <c-u>
no <c-d> <c-d>zz
no <c-u> <c-u>zz

" Save the buffer with leaderw
no <leader>w :update<cr>

" Reload file from disk with leader+e
no <leader>e :edit<cr>

" Search visual selection with * just like word searching
vno * <esc>/<c-r>=EscapeSlash(VisualYank())<cr><cr>

" Move tabs/buffers faster with tab and shift+tab
" Close tabs/buffers with leader+tab
no <tab>         :tabnext<cr>
no <s-tab>       :tabprev<cr>
no <leader><tab> :tabclose<cr>

" Remap some shortcuts to open tab, split and vertical split
no <leader>n :tabnew<cr>
no <leader>v :vsplit<cr>
no <leader>s :split<cr>

" Close splits with leader+q
no <leader>q <c-w>q

" Close all but the active buffer
no <leader>o <c-w>o

" Better indent keys
vno < <gv
vno > >gv

" Resizing splits
no <c-up>    :resize -2<cr>
no <c-down>  :resize +2<cr>
no <c-left>  :vertical resize -2<cr>
no <c-right> :vertical resize +2<cr>

" Add execute bit to current file
no <leader>x :!chmod +x %<cr>
