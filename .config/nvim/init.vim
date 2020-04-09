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

" Limelight keymap
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" Goyo integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


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

        Plug 'junegunn/goyo.vim'

        Plug 'junegunn/limelight.vim', {'on': 'Limelight'}
                " Color name (:help cterm-colors) or ANSI code
                let g:limelight_conceal_ctermfg = 'gray'
                let g:limelight_conceal_ctermfg = 240

                " Color name (:help gui-colors) or RGB color
                let g:limelight_conceal_guifg = 'DarkGray'
                let g:limelight_conceal_guifg = '#777777'

                " Default: 0.5
                let g:limelight_default_coefficient = 0.7

                " Number of preceding/following paragraphs to include (default: 0)
                let g:limelight_paragraph_span = 1

                " Beginning/end of paragraph
                "   When there's no empty line between the paragraphs
                "   and each paragraph starts with indentation
                let g:limelight_bop = '^\s'
                let g:limelight_eop = '\ze\n^\s'

                " Highlighting priority (default: 10)
                "   Set it to -1 not to overrule hlsearch
                let g:limelight_priority = -1

        " Use release branch (Recommend)
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

        " post install (yarn install | npm install)
        Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

        Plug 'tomlion/vim-solidity'

        Plug 'Shougo/unite.vim'

        Plug 'rafaqz/citation.vim'

        let g:citation_vim_bibtex_file="/path/to/your/bib/file/library.bib"
        let g:citation_vim_mode="bibtex"
        " PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        " Both options are optional. You don't have to install fzf in ~/.fzf
        " and you don't have to run the install script if you use fzf only in Vim.
        "
        "
        " [Buffers] Jump to the existing window if possible
        let g:fzf_buffers_jump = 1

        " [[B]Commits] Customize the options used by 'git log':
        let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

        " [Tags] Command to generate tags file
        let g:fzf_tags_command = 'ctags -R'

        " [Commands] --expect expression for directly executing the command
        let g:fzf_commands_expect = 'alt-enter,ctrl-x'
call plug#end()
