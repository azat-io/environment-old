" ==========================================
" Snippets and completitions
" ==========================================

set wildmenu                            " enable wildmenu
set wildmode=longest:full,full          " configure wildmenu"

" Insert and delete brackets, parens, quotes in pair 

Plug 'jiangmiao/auto-pairs'

" Git wrapper

Plug 'tpope/vim-fugitive'

" Emmet

Plug 'mattn/emmet-vim'
" Remapping <C-y>, just doesn't cut it.
  function! s:expand_html_tab()
" try to determine if we're within quotes or tags.
" if so, assume we're in an emmet fill area.
   let line = getline('.')
   if col('.') < len(line)
     let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
     if len(line) >= 2
        return "\<C-n>"
     endif
   endif
" expand anything emmet thinks is expandable.
  if emmet#isExpandable()
    return "\<C-y>,"
  endif
" return a regular tab character
  return "\<tab>"
  endfunction
autocmd FileType html,markdown imap <buffer><expr><tab> <sid>expand_html_tab()
let g:user_emmet_mode='a'
let g:user_emmet_complete_tag = 0
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Fuzzy search

Plug 'kien/ctrlp.vim'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Comment stuff out

Plug 'tpope/vim-commentary'
