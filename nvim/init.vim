" Plugin Setup --------------------------------------------------- {{{

" Store plugins in the specified directory
call plug#begin('~/.config/nvim/plugged')

" Utility plugins
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'lilydjwg/colorizer'
Plug '/usr/local/opt/fzf'

" Language plugins
Plug 'rust-lang/rust.vim'

" Themes
Plug 'altercation/vim-colors-solarized'

" All plugins must be listed above here
call plug#end()


" }}}

" Color Scheme -------------------------------------------------- {{{
syntax enable
set background=light
"colorscheme solarized
" }}}

" Leader Keys --------------------------------------------------- {{{

let mapleader = "\<space>"
let maplocalleader = ","

" }}}

" Line Numbers -------------------------------------------------- {{{ 
set ruler 
set number 
set norelativenumber
" }}}

" Indentation --------------------------------------------------- {{{
set expandtab
set shiftwidth=4
set tabstop=4
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
nnoremap q] :cnext<cr>
nnoremap q[ :cprev<cr>
nnoremap Q] :clast<cr>
nnoremap Q[ :cfirst<cr>

" Quick edit init.vim
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" }}}

" Fuzzy Finder ----------------------------------------------- {{{
nnoremap <leader>/ :FZF<cr>
" }}}

" VimScript Files ----------------------------------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
