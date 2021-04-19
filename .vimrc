" Install Vim Plug Plugins
call plug#begin('~/.vim/plugged')

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'xavierd/clang_complete'
Plug 'vim-scripts/AutoClose'
Plug 'OmniSharp/omnisharp-vim'

" Themes
Plug 'dracula/vim'
" Other themes I like
" joshdick/onedark.vim
" sainhe/sonokai
" drewtempelmeyer/palenigh.vim similar to onedark

" NERDTree
Plug 'preservim/nerdtree'

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'EddyBer16/pseint.vim' " My own plugin for PSeInt Files

" Wakatime
Plug 'wakatime/vim-wakatime'

call plug#end()

" Global Vim Settings
syntax on
set smartindent
colorscheme dracula
set shiftwidth=2 " Number of spaces when shift identing
set tabstop=2 " Number of visual spaces per tab
set number " Show line numbers
set cursorline " Highlight current line
set showmatch " Highlight matching [{()}]
set incsearch " Search as characters are entered
set hlsearch " Highlight matches
set wildignore+=*/tmpt/*,*.so,*.swp,*.zip,*/node_modules/*
set noswapfile

" Airline
let g:airline_theme='fruit_punch'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = '  🦄  '
let g:airline_right_sep = '  🍕  '
let g:airline_section_warning = ''
let g:airline_section_y = ''
let g:airline_section_x = ''
set laststatus=2

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
