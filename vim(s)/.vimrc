"---------------------.vimrc-----------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"---------------------Vundle-----------------------
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"--------------------------------------------------
" Plugin 'preservim/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'tsony-tsonev/nerdtree-git-plugin'
" Plugin 'ryanoasis/vim-devicons'
" Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdcommenter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'christoomey/vim-tmux-navigator'
" " Plugin 'ThePrimeagen/vim-be-good'

Plugin 'flazz/vim-colorschemes'
" " Plugin 'morhetz/gruvbox'

Plugin 'sbdchd/neoformat'
Plugin 'hrsh7th/vim-vsnip'
Plugin 'rafamadriz/friendly-snippets'
Plugin 'cohama/lexima.vim'

Plugin 'edkolev/tmuxline.vim'
Plugin 'bling/vim-bufferline'

Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'

Plugin 'mbbill/undotree'

Plugin 'alvan/vim-closetag'

"--------------------------------------------------
call vundle#end()            " required
filetype plugin indent on    " required

"------------------BASIC SETUP---------------------
" Numbers, normal tabbing, indenting, etc.
set nu
set nowrap
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cindent
set scrolloff=10
set colorcolumn=80
set signcolumn=yes
set signcolumn=number
set hidden
set cmdheight=2
set noswapfile
syntax on

" Search things
set incsearch
set nohlsearch
set ignorecase
set smartcase

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Undo shenanigans
set undodir=~/.vim/undodir
set undofile

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Colors
set termguicolors
" colorscheme gruvbox
" colorscheme monokai-chris
" highlight Normal guibg=none

let g:bufferline_echo = 0

" Fix dmscripts using neovim
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" ------------------------Mapping-----------------------------
let mapleader = " "

" tabout baby
" inoremap <expr> <Tab> getline('.')[col('.')-1] =~? '[]>)}''"`]' ? '<Right>' : '<Tab>'

" Comments
map <leader>/ <plug>NERDCommenterToggle
map <leader>? <plug>NERDCommenterSexy

" Undotree
" nnoremap <leader>u :UndotreeToggle<CR>

" Help????
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
