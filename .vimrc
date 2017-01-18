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

call plug#begin('~/.vim/plugged')

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

" Syntax theme

set t_Co=256
highlight Normal guibg=black guifg=white
set background=dark

Plug 'morhetz/gruvbox'
colorscheme gruvbox

" Including other VIM configuration files

for f in glob('.vim/*.vim', 0, 1)
    execute 'source' f
endfor

call plug#end()

syntax enable

