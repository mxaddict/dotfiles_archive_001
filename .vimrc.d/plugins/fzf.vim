" Disable line numbers in the fzf window
autocmd! FileType fzf
autocmd  FileType fzf set nonumber norelativenumber

" Set our fzf window to be at the bottom with 30% height
let g:fzf_layout = { 'down': '30%' }

" Setup the fzf normal mode shortcuts
no <silent> f :Files .<CR>
no <silent> F :GFiles .<CR>
no <silent> r /<C-R>=expand('<cword>')<CR><CR>:grep --fixed-strings <C-R>=expand('<cword>')<CR> .* .<CR>:cw<CR>
no <silent> R :Rg<CR>

" Setup the fzf visual mode shortcuts
vno <silent> f <Esc>:Files .<CR>
vno <silent> F <Esc>:GFiles .<CR>
vno <silent> r <Esc>/<C-R>=VisualYank()<CR><CR>:grep --fixed-strings <C-R>=shellescape(@k, 1)<CR> .* .<CR><CR>:cw<CR>
vno <silent> R <Esc>:Rg<CR>
