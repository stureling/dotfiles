" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Number of rows over/under cursor while scrolling
set so=7

" Set linenumbers to hybrid mode: normal mode relative, insert mode absolute
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Enable wildmenu
set wildmenu


" Enable syntax highlighting
syntax enable

" Colorscheme
set background=dark

