" Adding YouCompleteMe with Vundle
set nocompatible
filetype off

" Vundle settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()

" Set HTML autocompletion
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Install Vim Plug Plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'vim-scripts/AutoClose'
Plug 'mattn/emmet-vim'

call plug#end()

" Open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Global Vim Settings
syntax on
set tabstop=4
colorscheme onedark
set number
set cursorline

" Change between NERDTree and the editor
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Toogle NERDTree
map <C-n> :NERDToggle<CR>
