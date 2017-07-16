" ==========================================
" Syntax hightlighting
" ==========================================

" Markup

Plug 'othree/html5.vim', { 'for': 'html' }

Plug 'digitaltoad/vim-pug', { 'for': ['pug', 'jade'] }
autocmd bufnewfile,bufread *.pug set filetype=pug
autocmd bufnewfile,bufread *.jade set filetype=pug

Plug 'joukevandermaas/vim-ember-hbs', { 'for': ['handlebars', 'hbs'] }

Plug 'plasticboy/vim-markdown', { 'for': 'md' }

" Stylesheets

Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'css' }
Plug 'hhsnopek/vim-sugarss'

" Scripts

Plug 'pangloss/vim-javascript', { 'for': 'javascript.jsx' }
let g:javascript_plugin_jsdoc = 1

Plug 'mxw/vim-jsx', { 'for': 'javascript' }
let g:jsx_ext_required = 0

" CoffeeScript

Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
au BufRead,BufNewFile *.cson set filetype=coffee

" TypeScript

Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

" YAML

Plug 'stephpy/vim-yaml'
