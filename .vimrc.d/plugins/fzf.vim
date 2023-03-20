" Setup the colors
let g:fzf_colors = {
  \ "fg":      ["fg", "Normal"],
  \ "bg":      ["bg", "Normal"],
  \ "hl":      ["fg", "IncSearch"],
  \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
  \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
  \ "hl+":     ["fg", "IncSearch"],
  \ "info":    ["fg", "IncSearch"],
  \ "border":  ["fg", "Ignore"],
  \ "prompt":  ["fg", "Comment"],
  \ "pointer": ["fg", "IncSearch"],
  \ "marker":  ["fg", "IncSearch"],
  \ "spinner": ["fg", "IncSearch"],
  \ "header":  ["fg", "WildMenu"],
  \ }

" Setup the fzf layout!
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }

" Setup the fzf normal mode shortcuts
no <silent> <leader>f :Files<CR>
no <silent> <leader>g :GFiles<CR>
no <silent> <leader>r :Rg<CR>

" Setup the fzf visual mode shortcuts
vno <silent> <leader>f :Files<CR>
vno <silent> <leader>g :GFiles<CR>
vno <silent> <leader>r :Rg<CR>
