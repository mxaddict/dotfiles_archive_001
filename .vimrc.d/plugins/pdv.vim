" Where are the rebel basis?
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

" We need to map the PDV shortcut...
nnoremap <C-P> :call pdv#DocumentWithSnip()<CR>
inoremap <C-P> <ESC>:call pdv#DocumentWithSnip()<CR>
vnoremap <C-P> <ESC>:call pdv#DocumentWithSnip()<CR>
