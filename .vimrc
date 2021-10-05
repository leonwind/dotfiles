call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'morhetz/gruvbox'
" Autocompletion
Plug 'Valloric/YouCompleteMe'
" LaTeX support
Plug 'lervag/vimtex'
" Set evince as default pdf viewer for vimtex
let g:vimtex_view_general_viewer = 'evince'

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

