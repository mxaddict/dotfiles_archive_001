" Setup the fzf normal mode shortcuts
no <silent> f :FZF .<CR>
no <silent> r :Rg<CR>
no <silent> F :GFiles<CR>

" Setup the fzf visual mode shortcuts
vno <silent> f <Esc>:FZF -q <C-R>=VisualYank()<CR>.<CR>
vno <silent> r <Esc>:Rg <C-R>=VisualYank()<CR><CR>
vno <silent> F <Esc>:GFiles
