" Plugin Setup --------------------------------------------------- {{{

" Store plugins in the specified directory
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'

" All plugins must be listed above here
call plug#end()
" }}}

" Leader Keys --------------------------------------------------- {{{

let mapleader = "\<space>"
let maplocalleader = ","

" }}}

" Line Numbers -------------------------------------------------- {{{ 
set ruler 
set number 
set relativenumber
" }}}

" Window Navigation --------------------------------------------- {{{

" Leader and direction to move window
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l

"Managing splits
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>x :split<cr>
nnoremap <leader>q :quit<cr>
nnoremap <leader>o :only<cr>

" Quickfix menu
:nnoremap q] :cnext<cr>
:nnoremap q[ :cprev<cr>
:nnoremap Q] :clast<cr>
:nnoremap Q[ :cfirst<cr>

" }}}

" VimScript Files ----------------------------------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
