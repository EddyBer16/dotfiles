" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'

call plug#end()

autocmd vimenter * NERDTree

" EDITOR SETTINGS
syntax on
set tabstop=4
colorscheme onedark
set number
set cursorline

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
