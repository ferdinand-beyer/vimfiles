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
Plug 'jistr/vim-nerdtree-tabs'

Plug 'tpope/vim-fugitive'

Plug 'kien/rainbow_parentheses.vim'

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }

Plug 'pboettch/vim-cmake-syntax'

Plug 'schmich/vim-guifont'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'hashivim/vim-terraform'

call plug#end()

set cursorline
set expandtab
set hlsearch
set number
set shiftwidth=4
set showcmd
set tabstop=4
set visualbell

let g:nerdtree_tabs_open_on_gui_startup = 0

silent nnoremap <C-N> :NERDTreeTabsToggle<CR>

" Allow .js extension for React
let g:jsx_ext_required = 0

" Default to bash
let g:is_bash = 1

if !exists('autocommands_loaded')
    let autocommands_loaded = 1

    autocmd FileType clojure RainbowParenthesesActivate
    autocmd Syntax clojure RainbowParenthesesLoadRound
    autocmd Syntax clojure RainbowParenthesesLoadSquare
    autocmd Syntax clojure RainbowParenthesesLoadBraces
endif
