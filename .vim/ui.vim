" -=========================================
" User interface
" ==========================================

" Syntax theme

"highlight Normal ctermbg=black ctermfg=white
set background=dark

Plug 'morhetz/gruvbox'
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

function! s:setColors()
  if (&t_Co >= 256)
    execute 'highlight jsonKeyword ctermfg=14'
    execute 'highlight jsonQuote ctermfg=14'
    execute 'highlight jsonBraces ctermfg=11'
    execute 'highlight jsonString ctermfg=11'
  endif
endfunction

autocmd ColorScheme * call s:setColors()

" ------------------------------------------------------------------------------

" Plugin: LightLine
"
" About: Show informative status line
" Usage: Works automatically

Plug 'itchyny/lightline.vim'
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

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
nmap <leader>n :NERDTreeFind<CR>

highlight! link NERDTreeFlags NERDTreeDir

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

" Plugin: ALE
"
" About: Syntax checking for JavaScript (ESLint) and CSS (Stylelint)
" Usage: Works automatically. Press Ctrl + z or Ctrl + x for quick navigation
"        between errors

Plug 'w0rp/ale'

highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight! link ALEErrorSign GruvboxRedSign
highlight! link ALEWarningSign GruvboxYellowSign

nmap <silent> <C-z> <Plug>(ale_previous_wrap)
nmap <silent> <C-x> <Plug>(ale_next_wrap)

let g:ale_lint_on_text_changed = 'never'
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '-'
let g:ale_linters = {
\   'javascript': ['eslint','jshint'],
\   'css': ['stylelint'],
\}

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

" ------------------------------------------------------------------------------

" Plugin: Relative number current window
"
" About: Only show relative numbers in the currently active window
" Usage: Works automatically

Plug 'vim-scripts/RelativeNumberCurrentWindow'
set relativenumber
augroup CLNRSet
    autocmd! ColorScheme * hi CursorLineNR cterm=bold ctermbg=NONE
augroup END

" ------------------------------------------------------------------------------

" Plugin: Rainbow
"
" About: Bracket pair colorizer
" Usage: Works automatically

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
