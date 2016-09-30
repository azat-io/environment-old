set number
set noswapfile

set nocompatible
filetype off
set ic

set nobackup
set noundofile

"Highlighting search & incremental search

set hlsearch
set incsearch

set autoindent
set smartindent
set expandtab
set tabstop=4

call plug#begin('~/.vim/plugged')

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

" Spacing between windows

map silent <C-h> :call WinMove('h')<CR>
map silent <C-j> :call WinMove('j')<CR>
map silent <C-k> :call WinMove('k')<CR>
map silent <C-l> :call WinMove('l')<CR>

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd".a:key
  endif
endfunction

" Autocompletition

Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'

" Fast navigation between files

Plug 'kien/ctrlp.vim'
set wildignore+=*/node_modules/*

" Git

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Pug && Jade

Plug 'digitaltoad/vim-pug', { 'for': ['pug', 'jade'] }
autocmd BufNewFile,BufRead *.pug set filetype=pug
autocmd BufNewFile,BufRead *.jade set filetype=jade

" HTML

Plug 'othree/html5.vim', { 'for': 'html' }

" CSS

Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'wavded/vim-stylus', { 'for': 'styl' }

" JavaScript

Plug 'othree/yajs.vim', { 'for': ['js', 'es6'] }
Plug 'mxw/vim-jsx', { 'for': 'jsx' }

" Markdown

Plug 'plasticboy/vim-markdown', { 'for': 'md' }

call plug#end()

syntax enable
