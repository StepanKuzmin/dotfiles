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

set guioptions-=L
set guioptions-=r

if has("gui_running")
    set guioptions-=T
endif

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

syntax on
filetype plugin indent on

filetype plugin on
filetype indent on
let g:tex_flavor='latex'
if has("autocmd")
	augroup module
		autocmd BufRead,BufNewFile *.cljs set filetype=clojure
		autocmd BufRead,BufNewFile *.coffee set filetype=coffee
		autocmd BufRead,BufNewFile *.styl set filetype=stylus
		autocmd BufRead,BufNewFile *.jade set filetype=jade
	augroup END
endif
