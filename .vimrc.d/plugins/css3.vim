" Add higlights for browser specific venfor prefixes
highlight VendorPrefix guifg=#00ffff gui=bold
match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/

" Fix for highlights
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END

" Highlight qss files
augroup VimQssSyntax
    autocmd!
    " Associate filetype ".qss" with CSS mode.
    autocmd BufNewFile,BufRead *.qss setfiletype css
augroup END
