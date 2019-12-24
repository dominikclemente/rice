"	    	    		    	"
"		    	        		"
"	      Configuration	    	"
"				            	"
"				            	"

" Taken from https://dougblack.io/words/a-good-vimrc.html "
"               How to make a good vimrc                  "

"   Vundle config

set nocompatible         " be iMproved, required

filetype off             " required (off)


"   UI Config"
filetype pluginon 

syntax on

syntax enable 		" enable syntax processing

hi QuickFixLine term=reverse ctermbg=52

hi Search guibg=peru guifg=wheat

hi Search cterm=NONE ctermfg=red ctermbg=red

set number 		" show line numbers

set tabstop=4 		" number of visual spaces per TAB
 
set softtabstop=4 	" number of spaces in tab when editing

set expandtab     	" tabs are spaces

set showcmd             " show command in bottom bar

set cursorline          " highlight current line

filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]

set relativenumber      " relative line numbers

"   Searching

set incsearch           " search as characters are entered

"set hlsearch            " highlight matches

"   Folding

set foldenable          " enable folding

set foldlevelstart=10   " open most folds by default

" turn off search highlight
nnoremap <space><space> :nohlsearch<CR>

" space open/closes folds
nnoremap <space> za

set foldmethod=indent   " fold based on indent level

"   Movement

" move vertically by visual line
nnoremap j gj
nnoremap k gk


" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

"   Leader Shortcuts

let mapleader=","       " leader is comma

let maploacalleader = "\\"

" jk is escape
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" save session
nnoremap <leader>s :mksession<CR>
