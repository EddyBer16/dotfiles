" Install Vim Plug Plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'vim-scripts/AutoClose'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xavierd/clang_complete'

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

" Airline custom status line
let g:airline_theme='fruit_punch'

" Change between NERDTree and the editor
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Clang Settings
let g:clang_library_path='/usr/lib/llvm-11/lib'
