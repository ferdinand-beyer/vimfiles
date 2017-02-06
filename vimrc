let $PATH.=";C:\\Program Files (x86)\\Git\\bin"

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
"Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"Plug 'vim-scripts/paredit.vim', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
call plug#end()

set expandtab
set number
set shiftwidth=4
set tabstop=4
set visualbell
set hlsearch

colorscheme solarized

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

