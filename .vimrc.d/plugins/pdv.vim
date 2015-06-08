let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <C-P> :call pdv#DocumentWithSnip()<CR>
inoremap <C-P> <ESC>:call pdv#DocumentWithSnip()<CR>
vnoremap <C-P> <ESC>:call pdv#DocumentWithSnip()<CR>
