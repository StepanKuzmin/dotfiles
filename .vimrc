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
	augroup END
endif
if has("gui_running")
    set guioptions-=T
endif
syntax on
