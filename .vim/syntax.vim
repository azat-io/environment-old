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
Plug 'wavded/vim-stylus'

" Scripts

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'fleischie/vim-styled-components', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

let g:javascript_plugin_jsdoc = 1
let g:used_javascript_libs = 'react,vue,underscore,jasmine'

" CoffeeScript

Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
