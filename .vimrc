" Load vim plug to manage plugins
source ~/.vimrc.d/plug.vim

" Load our helper functions
source ~/.vimrc.d/funcs.vim

" Load the main.vim
source ~/.vimrc.d/main.vim

" Load the remap.vim
source ~/.vimrc.d/remap.vim

" Load all our plugin specific files
for vscript in split(glob('~/.vimrc.d/plugins/*.vim'), '\n')
	exe 'source' vscript
endfor
