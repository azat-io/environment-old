" ==========================================
" User interface
" ==========================================

" Airline

set laststatus=2                        " enable airline on open
set noshowmode                          " don't show mode as airline already does

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" NERDTree

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=0
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=0
let NERDTreeKeepTreeInNewTab=1
let NERDTreeShowHidden=1

let mapleader=","
nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

" Editorconfig

set autoindent
set smartindent
set expandtab
set tabstop=4

Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

