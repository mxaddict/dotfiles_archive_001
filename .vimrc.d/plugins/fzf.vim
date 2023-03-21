" Setup the fzf normal mode shortcuts
no <silent> f :FZF .<CR>
no <silent> r :Rg<CR>
no <silent> F :GFiles<CR>
no <silent> * /<C-R>=expand('<cword>')<CR><CR>:grep <C-R>=expand('<cword>')<CR><CR>:cw<CR>

" Setup the fzf visual mode shortcuts
vno <silent> f <Esc>:FZF -q <C-R>=VisualYank()<CR> .<CR>
vno <silent> r <Esc>/<C-R>=VisualYank()<CR><CR>:grep <C-R>=@"<CR><CR><CR>:cw<CR>
vno <silent> F <Esc>:GFiles<CR>
vno <silent> * <Esc>/<C-R>=VisualYank()<CR><CR>:grep <C-R>=@"<CR><CR><CR>:cw<CR>
