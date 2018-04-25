call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'

call plug#end()

set nocompatible

" syntax highlighting
syntax on

" show line numbers
set number

" mouse support
set mouse=a

" show line and column number
set ruler

" disable word wrap
set nowrap

" show command
set showcmd

" always show last status line
set laststatus=2

" scrolloff settings
set scrolloff=10
set sidescrolloff=15
set sidescroll=1

" rulers
set colorcolumn=81,101,121
:highlight ColorColumn ctermbg=242

" color scheme
let base16colorspace=256
colorscheme base16-tomorrow-night
