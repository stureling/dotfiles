" Plugins
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugins')

Plug 'lervag/vimtex'
Plug 'junegunn/vim-easy-align'
Plug 'dense-analysis/ale'

call plug#end()

" vimtex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = 'nvr'

" ale
let g:ale_completion_enabled = 1

" Sets how many lines of history neovim has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable syntax highlighting
syntax enable

" Set to auto read to function like gvim
set autoread
au FocusGained * :checktime

" Set the minimum number of lines over/under cursor
set so=7

" Set linenumbers to hybrid: normal mode relative, insert mode absolute
set number relativenumber


augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Set linenumber colors
hi CursorLineNr ctermfg=Red

" Turn on the Wild menu
set wildmenu
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap 
