" ==========================================
" Syntax hightlighting
" ==========================================

" Markup

Plug 'othree/html5.vim', { 'for': 'html' }

Plug 'digitaltoad/vim-pug', { 'for': ['pug', 'jade'] }
autocmd bufnewfile,bufread *.pug set filetype=pug
autocmd bufnewfile,bufread *.jade set filetype=jade

Plug 'plasticboy/vim-markdown', { 'for': 'md' }

" Stylesheets

Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'stephenway/postcss.vim', { 'for': 'css' }

Plug 'wavded/vim-stylus', { 'for': 'styl' }

" Scripts

Plug 'othree/yajs.vim', { 'for': 'javascript' }

" Other

Plug 'posva/vim-vue', { 'for': 'vue' }
