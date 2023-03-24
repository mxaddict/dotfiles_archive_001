" Used for visual yank in some remaps
function! VisualYank()
	try
		normal! gv"ly
		return @l
	endtry
	return ''
endfunction

" Used when escaping text for / seach
function! EscapeSlash(text)
	return substitute(escape(a:text, "\\/.*$^~[]"), "\n$", "", "")
endfunction

" Additional escape for grep to terminal
function! EscapeBang(text)
	return substitute(escape(a:text, "|"), '\\!', "!", "")
endfunction
