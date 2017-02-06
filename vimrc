let $PATH.=";C:\\Program Files (x86)\\Git\\bin"

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'kien/rainbow_parentheses.vim'
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight'
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

if !exists("autocommands_loaded")
  let autocommands_loaded = 1

  autocmd VimEnter *       RainbowParenthesesToggle
  autocmd Syntax   clojure RainbowParenthesesLoadRound
  autocmd Syntax   clojure RainbowParenthesesLoadSquare
  autocmd Syntax   clojure RainbowParenthesesLoadBraces
endif
