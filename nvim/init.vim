if !exists('g:vscode')
" Plugins
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugins')

Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ntk148v/vim-horizon'

call plug#end()
" Colorscheme
set termguicolors
colorscheme horizon
let g:lightline = {'colorscheme' : 'horizon'}

" vimtex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = 'nvr'

" ale
let g:ale_linters = {'rust': ['rls']}

" coc
source /home/eric/.config/nvim/coc.vim

" Other

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

":set clipboard=unnamedplus " sets all yanks to use the clipboard

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
" 
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
endif
