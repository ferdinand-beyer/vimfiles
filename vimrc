let $PATH.=";C:\\Apps\\Git\\bin;C:\\Program Files (x86)\\Git\\bin"

" Use <Space> for the <[Local]Leader>
nnoremap <Space> <Nop>
let mapleader = "\<Space>"
let maplocalleader = mapleader

call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'chriskempson/base16-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'

Plug 'kien/rainbow_parentheses.vim'

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }

Plug 'schmich/vim-guifont'

call plug#end()

set expandtab
set hlsearch
set number
set shiftwidth=4
set showcmd
set tabstop=4
set visualbell

let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'

colorscheme base16-tomorrow-night

if !exists('autocommands_loaded')
    let autocommands_loaded = 1

    autocmd FileType clojure RainbowParenthesesActivate
    autocmd Syntax clojure RainbowParenthesesLoadRound
    autocmd Syntax clojure RainbowParenthesesLoadSquare
    autocmd Syntax clojure RainbowParenthesesLoadBraces
endif
