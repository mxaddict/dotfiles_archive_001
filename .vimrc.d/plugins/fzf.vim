" Setup the fzf normal mode shortcuts
no <silent> f :FZF .<CR>
no <silent> F :GFiles<CR>
no <silent> r /<C-R>=expand('<cword>')<CR><CR>:grep <C-R>=expand('<cword>')<CR> .* .<CR>:cw<CR>
no <silent> R :Rg<CR>

" Setup the fzf visual mode shortcuts
vno <silent> f <Esc>:FZF -q <C-R>=VisualYank()<CR> .<CR>
vno <silent> F <Esc>:GFiles<CR>
vno <silent> r <Esc>/<C-R>=VisualYank()<CR><CR>:grep <C-R>=@l<CR><CR> .* .<CR>:cw<CR>
vno <silent> R <Esc>:Rg<CR>
