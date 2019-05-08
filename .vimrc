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

" open ag.vim
nnoremap <leader>a :Ag


"                                   "
"               Vimplug             "
"               Plugins             "
"                                   "
"                                   "             

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

let g:ackprg = 'ag --nogroup --nocolor --column'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'epmatsw/ag.vim'

Plug 'idbrii/vim-ack'
let g:ackprg = 'ag --nogroup --nocolor --column'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Initialize plugin system
call plug#end()

"       VUNDLE "       

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
