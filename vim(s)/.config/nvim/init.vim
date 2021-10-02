"--------------------init.vim----------------------

" TODO:
" - find an alternate key for tabout
" - COMPE IS DEPRACATED GUESS WE'RE GOING TO CMP NOW FML

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')
"--------------------vim-plug----------------------

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'christoomey/vim-tmux-navigator'

" Plug 'flazz/vim-colorschemes'
Plug 'gruvbox-community/gruvbox'

Plug 'sbdchd/neoformat'

Plug 'windwp/nvim-autopairs'
Plug 'hrsh7th/nvim-compe'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-bufferline'

" ode to tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'

Plug 'mbbill/undotree'
Plug 'voldikss/vim-floaterm'
"---------------Nightly/Lsp plugins----------------
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'simrat39/symbols-outline.nvim'
Plug 'onsails/lspkind-nvim'

" Telescope babeeeyyyyyyyyyy
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'ThePrimeagen/git-worktree.nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'

" that prime guy's wizardry
" Plug 'mhinz/vim-rfc'
Plug 'ThePrimeagen/harpoon'
Plug 'ThePrimeagen/refactoring.nvim'

" debug
Plug 'szw/vim-maximizer'
Plug 'puremourning/vimspector'

" browser embed nvim
Plug 'glacambre/firenvim'

Plug 'ThePrimeagen/vim-be-good'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"--------------------------------------------------
" Initialize plugin system
call plug#end()

filetype plugin indent on

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

" Fix dmscripts using neovim
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" ------------------------Mapping-----------------------------
let mapleader = " "

" FINALLY WE CAN EXIT VIM EASY
nnoremap <C-q> :q!<CR>

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
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 100})
augroup END

" -----------------------Extensions---------------------------

" source all files in ~/.config/nvim/lua/beauslm
lua require('beauslm')
