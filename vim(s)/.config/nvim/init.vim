"--------------------init.vim----------------------

" TODO:
" - find an alternate key for tabout
" - bufferline --- do i really need one and if so which one?
" - switch from vim-vsnip to Luasnip ASAP
" - COMPE IS DEPRACATED GUESS WE'RE GOING TO CMP NOW FML

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"---------------------Vundle-----------------------
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"--------------------------------------------------
" Plugins for nvim .4
" Plugin 'neoclide/coc.nvim', {'branch' : 'release'}
" Plugin 'preservim/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'tsony-tsonev/nerdtree-git-plugin'
" Plugin 'ryanoasis/vim-devicons'
" Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'
" Plugin 'kyazdani42/nvim-web-devicons'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdcommenter'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'ThePrimeagen/vim-be-good'

Plugin 'flazz/vim-colorschemes'
" Plugin 'morhetz/gruvbox'

Plugin 'sbdchd/neoformat'

Plugin 'hrsh7th/nvim-compe'
Plugin 'L3MON4D3/LuaSnip'
Plugin 'rafamadriz/friendly-snippets'
Plugin 'cohama/lexima.vim'

Plugin 'edkolev/tmuxline.vim'
Plugin 'bling/vim-bufferline'
" Plugin 'akinsho/nvim-bufferline.lua'

Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'

Plugin 'mbbill/undotree'
"---------------Nightly/Lsp plugins----------------
Plugin 'neovim/nvim-lspconfig'
Plugin 'kabouzeid/nvim-lspinstall'
Plugin 'glepnir/lspsaga.nvim'
Plugin 'simrat39/symbols-outline.nvim'

" Telescope babeeeyyyyyyyyyy
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-lua/popup.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-telescope/telescope-fzy-native.nvim'
Plugin 'ThePrimeagen/git-worktree.nvim'

" treesitter 
Plugin 'nvim-treesitter/nvim-treesitter'
Plugin 'nvim-treesitter/playground'
Plugin 'p00f/nvim-ts-rainbow'

" that prime guy's wizardry
" Plugin 'mhinz/vim-rfc'
Plugin 'ThePrimeagen/harpoon'
Plugin 'ThePrimeagen/refactoring.nvim'

" debug
Plugin 'szw/vim-maximizer'
Plugin 'puremourning/vimspector'

" browser embed nvim
Plugin 'glacambre/firenvim'

" Plugin 'alvan/vim-closetag'

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
colorscheme monokai-chris
" highlight Normal guibg=none

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
nnoremap <leader>u :UndotreeToggle<CR>

" Help????
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>

" primeagen's remaps (some from vid) dude these are nice ngl

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <silent>Q <nop>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap Y y$
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Harpoon baby
" nnoremap <silent> <C-f> :lua require("harpoon.term").sendCommand(1, "sh ~/.config/nvim/tmux2.sh\n"); require("harpoon.term").gotoTerminal(1)<CR>

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 100})
augroup END

" -----------------------Extensions---------------------------

" source all files in ~/.config/nvim/lua/beauslm
lua require('beauslm')
