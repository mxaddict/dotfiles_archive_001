" Setup the fzf normal mode shortcuts
no <silent> f :FZF .<CR>
no <silent> r :Rg<CR>
no <silent> F :GFiles<CR>

" Setup the fzf visual mode shortcuts
vno <silent> f <Esc>:FZF -q <C-R>=VisualYank()<CR> .<CR>
vno <silent> r <Esc>/<C-R>=VisualYank()<CR><CR>:grep <C-R>=@l<CR> -r .<CR><CR>:cw<CR>
vno <silent> F <Esc>:GFiles<CR>
