" syntax
let g:polyglot_disabled = ['markdown']

" plugins
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'dart-lang/dart-vim-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'thosakwe/vim-flutter'
Plug 'altercation/vim-colors-solarized' 
call plug#end()

" basics
filetype plugin indent on
syntax on

set nowrap
set ai 
set clipboard=unnamedplus 
set number 
set noswapfile
set tabstop=4
set expandtab
set softtabstop=4
set noundofile
set smarttab 
set hlsearch
set ignorecase
set autochdir
set smartindent
set shiftwidth=4
set autowrite
set nocompatible
set noshowmode
set relativenumber
set laststatus=2
set number
set term=screen-256color
set background=dark
set mouse=a

" macros
autocmd FileType python map <buffer> <F4> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F4> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
nnoremap <c-c> :!clear; g++ -o %:r.out % -std=c++14 <enter>
nnoremap <c-x> :!clear; ./%:r.out<ENTER>
nnoremap <C-n> :NERDTree<CR>

" prettify
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
colorscheme solarized 



