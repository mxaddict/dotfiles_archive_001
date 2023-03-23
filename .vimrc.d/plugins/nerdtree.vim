" Setup the NERDTreeToggle shortcuts!
no <silent>  <leader>t :NERDTreeMirror<CR>:NERDTreeToggle<CR>
vno <silent> <leader>t <Esc>:NERDTreeMirror<CR>:NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
