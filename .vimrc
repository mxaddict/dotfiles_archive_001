" Load PLUG FIRST! So that it will manage most other plugins!
source ~/.vimrc.d/plug.vim

" Load all our plguin files files! :D
for vscript in split(glob('~/.vimrc.d/plugins/*.vim'), '\n')
	exe 'source' vscript
endfor

" Load language specific configs
for vscript in split(glob('~/.vimrc.d/lang/*.vim'), '\n')
	exe 'source' vscript
endfor

" Load MY.VIM LAST! so that we can override other configs
source ~/.vimrc.d/main.vim
