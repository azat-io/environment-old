" ==========================================
" Syntax hightlighting
" ==========================================

" Markup

Plug 'othree/html5.vim', { 'for': 'html' }

Plug 'digitaltoad/vim-pug', { 'for': ['pug', 'jade'] }
autocmd bufnewfile,bufread *.pug set filetype=pug
autocmd bufnewfile,bufread *.jade set filetype=pug

Plug 'plasticboy/vim-markdown', { 'for': 'md' }

" Stylesheets

Plug 'hail2u/vim-css3-syntax'
Plug 'hhsnopek/vim-sugarss'

" Scripts

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'fleischie/vim-styled-components', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }

" CoffeeScript

Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
au BufRead,BufNewFile *.cson set filetype=coffee

" TypeScript

Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

" YAML

Plug 'stephpy/vim-yaml'
