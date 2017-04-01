" -=========================================
" User interface
" ==========================================

" Syntax theme

set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm]]]]

highlight Normal ctermbg=black ctermfg=white
set background=dark

Plug 'morhetz/gruvbox'
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

" ------------------------------------------------------------------------------

" Plugin: AirLine
"
" About: Show informative status line
" Usage: Works automatically

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'

set laststatus=2                        " enable airline on open
set noshowmode                          " don't show mode as airline already does

let g:airline_powerline_fonts = 2
let g:airline_theme='gruvbox'

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" ------------------------------------------------------------------------------

" Plugin: NERDTree
"
" About: Allow to explore the filesystem and open files and directory
" Usage: To open or close NERDTree press twice Leader key (,). To open file or
" directory press o, to close parent of node press x, to open split press i,
" to open vsplit press s

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

" ------------------------------------------------------------------------------

" Plugin: Dev Icons
"
" About: Add file type icons
" Usage: Works automatically


Plug 'ryanoasis/vim-devicons'

" ------------------------------------------------------------------------------

" Plugin: Editorconfig
"
" About: Editorconfig support
" Usage: Works automatically

set autoindent
set smartindent
set expandtab
set tabstop=4

Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" ------------------------------------------------------------------------------

" Plugin: Syntastic
"
" About: Syntax checking for JavaScript (ESLint) and CSS (Stylelint)
" Usage: Works automatically


Plug 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

function! FindConfig(prefix, what, where)
    let cfg = findfile(a:what, escape(a:where, ' ') . ';')
    return cfg !=# '' ? ' ' . a:prefix . ' ' . shellescape(cfg) : ''
endfunction

let g:syntastic_javascript_checkers = []
let g:syntastic_css_checkers = []
let g:syntastic_javascript_flow_exe = 'flow'

function! CheckLinter(filepath, linter)
    if exists('b:syntastic_checkers')
        return
    endif
    if filereadable(a:filepath)
        let b:syntastic_checkers = [a:linter]
        let {'b:syntastic_' . a:linter . '_exec'} = a:filepath
    endif
endfunction

function! SetupLinter(linter)
    let l:current_folder = expand('%:p:h')
    let l:bin_folder = fnamemodify(syntastic#util#findFileInParent('package.json', l:current_folder), ':h')
    let l:bin_folder = l:bin_folder . '/node_modules/.bin/'
    call CheckLinter(l:bin_folder . a:linter, a:linter)
endfunction

autocmd FileType javascript call SetupLinter('eslint')
autocmd FileType css call SetupLinter('stylelint')

" ------------------------------------------------------------------------------

" Plugin: ZoomWin
"
" About: Zoom in/out of windows
" Usage: Press Ctrl + w, o and the current window zooms into a full screen, and
"        press Ctrl + w, o again to the previous set of windows is restored 

Plug 'vim-scripts/ZoomWin'

" ------------------------------------------------------------------------------

" Plugin: Win Resizer
"
" About: Resize Vim windows
" Usage: Press Ctrl + e and resize window with hjkl

Plug 'simeji/winresizer'

" ------------------------------------------------------------------------------

" Plugin: VimShell
"
" About: Allows to use shell inside Vim
" Usage: Just type :VimShell

Plug 'Shougo/vimproc.vim'
Plug 'Shougo/vimshell.vim'
 
" ------------------------------------------------------------------------------

" Plugin: Match tag Always
"
" About: Highlights the enclosing HTML tags
" Usage: Works automatically

Plug 'Valloric/MatchTagAlways'
let g:mta_filetypes = { 'javascript': 1, 'html' : 1, 'xhtml' : 1, 'xml' : 1 }
