"  ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   
"  ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ 
"  ███    ███ ███▌ ███   ███   ███ 
"  ███    ███ ███▌ ███   ███   ███ 
"  ███    ███ ███▌ ███   ███   ███ 
"  ███    ███ ███  ███   ███   ███ 
"  ███    ███ ███  ███   ███   ███ 
"   ▀██████▀  █▀    ▀█   ███   █▀  
"
" Author: Azat S.
" Twitter: @azat_io
" Source: https://github.com/azat-io/enviorenment

" ==========================================
" General Settings
" ==========================================

" Base

set number                              " show line numbers
set nocompatible                        " vim is not vi

syntax on                               " syntax highlighting
set showmatch                           " highlight the matching bracket 

set nobackup                            " don't save backups
set noswapfile                          " disabling creation .swp files

" Search

set ic                                  " insensitive search
set hlsearch                            " highlight search matches
set incsearch                           " find as you type search
set smartcase                           " case sensitive search if not all lowercase

" Interface

set termguicolors                       " enable true colors"

" Background process

set autoread                            " update file when changed outside of vim
set autoindent                          " copy indentation from the previous line for new line
set clipboard=unnamed                   " use native clipboard
set history=200                         " store last 200 commands as history
set undolevels=1000                     " store 1000 undos
set lazyredraw                          " no unneeded redraws

" character encoding

if !&readonly
        set fileencoding=utf-8
endif

" Spacing between windows using Ctrl + \"hjkl\"

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

" Plugins

call plug#begin('~/.vim/plugged')

for f in glob('~/.vim/*.vim', 0, 1)
    execute 'source' f
endfor

call plug#end()

syntax enable

