function! s:base16_customize() abort
	call Base16hi("Search", g:base16_gui01, g:base16_gui03, 45, g:base16_cterm00, "underline", "")
endfunction

augroup on_change_colorschema
	autocmd!
	autocmd ColorScheme * call s:base16_customize()
augroup END
