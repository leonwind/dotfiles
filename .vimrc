call plug#begin('~/.vim/plugged')
" Colorscheme
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'

call plug#end()

syntax on 
set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set encoding=utf-8
set clipboard+=unnamedplus
colorscheme gruvbox

