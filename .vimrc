" Install Vim Plug Plugins
call plug#begin('~/.vim/plugged')

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'xavierd/clang_complete'
Plug 'vim-scripts/AutoClose'
Plug 'OmniSharp/omnisharp-vim'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/sonokai'
Plug 'drewtempelmeyer/palenight.vim'

" Files Navigation Bar
Plug 'preservim/nerdtree'

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Wakatime
Plug 'wakatime/vim-wakatime'

call plug#end()

" Global Vim Settings
syntax on
set tabstop=4
set background=dark
colorscheme palenight
set number
set cursorline

" Airline custom status line
let g:airline_theme='fruit_punch'

" Open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Change between NERDTree and the editor
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Clang Settings
let g:clang_library_path='/usr/lib/llvm-11/lib'

" Toogle OmniSharp
inoremap <expr> <Tab> pumvisible() ? '<C-n>' :
\       getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'
