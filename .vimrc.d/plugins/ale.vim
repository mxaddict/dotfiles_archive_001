" Setup our linters
let g:ale_linters = {}
let g:ale_linters.javascript = ['eslint']
let g:ale_linters.php = ['php', 'phpcs']

" Setup our fixers
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fixers.php = ['phpcbf']
