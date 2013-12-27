colorscheme desert
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set foldenable
set number
set ts=2
set vb

set encoding=utf8
set termencoding=utf-8

" Make Vim more useful
set nocompatible

" Enhance command-line completion
set wildmenu

" Optimize for fast terminal connections
set ttyfast

" Highlight current line
set cursorline

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Disable error bells
set noerrorbells

" Show the cursor position
set ruler

execute pathogen#infect()
syntax on
filetype plugin indent on

filetype plugin on
filetype indent on
let g:tex_flavor='latex'
if has("autocmd")
	augroup module
		autocmd BufRead,BufNewFile *.module set filetype=php
		autocmd BufRead,BufNewFile *.install set filetype=php
		autocmd BufRead,BufNewFile *.test set filetype=php
		autocmd BufRead,BufNewFile *.inc set filetype=php
		autocmd BufRead,BufNewFile *.profile set filetype=php
		autocmd BufRead,BufNewFile *.view set filetype=php
		autocmd BufRead,BufNewFile *.cljs set filetype=clojure
		autocmd BufRead,BufNewFile *.coffee set filetype=coffee
		autocmd BufRead,BufNewFile *.styl set filetype=stylus
		autocmd BufRead,BufNewFile *.jade set filetype=jade
	augroup END
endif
if has("gui_running")
    set guioptions-=T
endif
syntax on

set guioptions-=L
set guioptions-=r

nmap <silent> <C-D> :NERDTreeToggle<CR>
nnoremap ,cd :cd %:p:h<CR>

" Vundle
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on     " required!
