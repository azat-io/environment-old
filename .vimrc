set number
set noswapfile

set nocompatible
filetype off
set ic

set nobackup
set noundofile

set autoindent
set smartindent

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'digitaltoad/vim-pug'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/tComment'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'ahmedelgabri/vim-ava-snippets'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'dracula/vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'isRuslan/vim-es6'
Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript', {'autoload':{'filetypes':['javascript']}}

syntax enable
syntax on

autocmd BufNewFile,BufRead *.pug set filetype=pug
autocmd BufNewFile,BufRead *.jade set filetype=jade

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
set foldmethod=syntax

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

call vundle#end()
filetype plugin indent on

color dracula


