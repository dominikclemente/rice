" Basics "
colorscheme gruvbox
hi NonText ctermbg=none
hi Normal guibg=NONE ctermbg=NONE

set termguicolors

syntax on

set encoding=utf-8

set tabstop=4 " number of visual spaces per TAB

set softtabstop=0

set expandtab " tabs are spaces

set number relativenumber " show line numbers

set showcmd " show command in bottom bar

set cursorline " highlight current line

filetype indent on " load filetype-specific indent files

set wildmenu " visual autocomplete for command menu

set lazyredraw " redraw only when we need to.
" Search "
set showmatch " highlight matching [{()}]

set incsearch " search as characters are entered
set hlsearch " highlight matches

" Folding "
set foldenable " enable folding

set foldlevelstart=10 " open most folds by default

set foldnestmax=10 " 10 nested fold max

set foldmethod=indent   " fold based on indent level

" Remaps " 
let mapleader="," " leader is comma

" NerdTree mapping
map <C-n> :NERDTreeToggle<CR>

" fzf mapping 
nnoremap <leader><leader> :FZF<CR>

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" space open/closes folds
nnoremap <space> za 

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

" jk is escape
inoremap jk <esc>

call plug#begin('~/.local/share/nvim/plugged')

        Plug 'lervag/vimtex'
                let g:tex_flavor='latex'
                let g:vimtex_view_method='zathura'
                let g:vimtex_quickfix_mode=0
                set conceallevel=1
                let g:tex_conceal='abdmg'

        Plug 'sirver/ultisnips'
                let g:UltiSnipsExpandTrigger = '<tab>'
                let g:UltiSnipsJumpForwardTrigger = '<tab>'
                let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

        Plug 'KeitaNakamura/tex-conceal.vim'
                set conceallevel=1
                let g:tex_conceal='abdmg'   

        Plug 'vim-airline/vim-airline-themes'
        Plug 'vim-airline/vim-airline'
                let g:airline_theme='onedark'
                let g:airline_powerline_fonts = 1

        Plug 'skywind3000/vim-terminal-help'        

        Plug 'preservim/nerdtree'

        " Use release branch (Recommend)
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

        " post install (yarn install | npm install)
        Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

        Plug 'tomlion/vim-solidity'

        " PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        " Both options are optional. You don't have to install fzf in ~/.fzf
        " and you don't have to run the install script if you use fzf only in Vim.
call plug#end()
