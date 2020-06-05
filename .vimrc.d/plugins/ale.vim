" Setup our linters
let g:ale_linters = {}
let g:ale_linters.javascript = ['standard', 'eslint']
let g:ale_linters.php = ['php', 'phpcs']

" Setup our fixers
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['standard', 'eslint']
let g:ale_fixers.php = ['phpcbf']

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
