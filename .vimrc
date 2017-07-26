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
set iskeyword-=_                        " make underscore as a word boundary

" Search

set ic                                  " insensitive search
set hlsearch                            " highlight search matches
set nohlsearch                          " turn off highlighting completely
set incsearch                           " find as you type search
set smartcase                           " case sensitive search if not all lowercase

" Background process

set tabstop=2                           " show existing tab with 4 spaces width
set expandtab                           " on pressing tab, insert 4 spaces
set autoread                            " update file when changed outside of vim
set autoindent                          " copy indentation from the previous line for new line
set clipboard=unnamed                   " use native clipboard
set history=200                         " store last 200 commands as history
set undolevels=1000                     " store 1000 undos
set lazyredraw                          " no unneeded redraws
set display+=lastline                    " scrolling long wrapped lines

nnoremap <silent><leader>ch :execute 'set colorcolumn=' . col('.')<CR>

" Move cursor by display lines when wrapping

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Select all

" map <C-S-a> <esc>ggVG<CR>

" Backspace to delete the previous letter in normal mode

nnoremap <BS> X

" Split

noremap <Leader>s <C-u>:split<CR>
noremap <Leader>v <C-u>:vsplit<CR>

" Moving in insert mode

inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>

" Character encoding

set tenc=utf8

if !&readonly
    set fileencoding=utf-8
endif

" Backup

if exists('$SUDO_USER')
    set nobackup                        " don't create root-owned files
    set nowritebackup                   " don't create root-owned files
else
    set backupdir=~/local/.vim/tmp/backup
    set backupdir+=~/.vim/tmp/backup    " keep backup files out of the way
    set backupdir+=.
endif

" Swap files

set noswapfile

" Show invisibles

set list
set listchars=tab:▸\ ,eol:¬

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
