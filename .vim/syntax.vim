" ==========================================
" Syntax hightlighting
" ==========================================

" Markup

Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'tpope/vim-markdown', { 'for': 'md' }
Plug 'digitaltoad/vim-pug', { 'for': ['pug', 'jade'] }

autocmd bufnewfile,bufread *.pug set filetype=pug
autocmd bufnewfile,bufread *.jade set filetype=pug
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'css', 'js=javascript.jsx', 'bash=sh']

" Stylesheets

Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

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

" Vue

Plug 'posva/vim-vue', { 'for': 'vue' }
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" YAML

Plug 'stephpy/vim-yaml'

" GraphQL
Plug 'jparise/vim-graphql'
