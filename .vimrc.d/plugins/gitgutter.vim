" we need to slow down VIM gitgutter, cause it causes the Editor to lock up
" while updating the gutter signs...
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" make gitgutter highlight the lines by default
let g:gitgutter_highlight_lines = 0
