"--------------------init.vim----------------------

" TODO:
" - move to williamboman/nvim-lsp-installer
" - move to mfussenegger/nvim-dap
" - move to packer?
" - load language plugins only for that language
" - don't load all plugins when used as manpage
" - fix autopairs

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')
"--------------------vim-plug----------------------

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter', { 'on': ['<plug>NERDCommenterToggle', '<plug>NERDCommenterSexy']}

" Plug 'flazz/vim-colorschemes'
Plug 'gruvbox-community/gruvbox'

" autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'ray-x/cmp-treesitter'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'windwp/nvim-autopairs'
Plug 'rafamadriz/friendly-snippets'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Plug 'saecki/crates.nvim'

Plug 'edkolev/tmuxline.vim'

" ode to tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-dadbod'

Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
"---------------Nightly/Lsp plugins----------------
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'nvim-lua/lsp_extensions.nvim', { 'for': 'rust' }
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
Plug 'ThePrimeagen/refactoring.nvim', { 'for': ['go', 'javascript', 'lua', 'python', 'typescript']}

" debug
" extensions for nvim-dap
" Plug 'mfussenegger/nvim-dap'
" Plug 'Pocco81/DAPInstall.nvim'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer', { 'on': 'MaximizerToggle'}

" browser embed nvim
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'ThePrimeagen/vim-be-good', { 'on': 'VimBeGood' }
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

" ------------------------Mapping-----------------------------
let mapleader = " "

" FINALLY WE CAN EXIT VIM EASY
nnoremap <C-q> :q!<CR>

" tabout baby
" inoremap <expr> <Tab> getline('.')[col('.')-1] =~? '[]>)}''"`]' ? '<Right>' : '<Tab>'

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

" navigation in general lets go
:tnoremap <C-h> <C-\><C-N><C-w>h
:tnoremap <C-j> <C-\><C-N><C-w>j
:tnoremap <C-k> <C-\><C-N><C-w>k
:tnoremap <C-l> <C-\><C-N><C-w>l
:inoremap <C-h> <C-\><C-N><C-w>h
:inoremap <C-j> <C-\><C-N><C-w>j
:inoremap <C-k> <C-\><C-N><C-w>k
:inoremap <C-l> <C-\><C-N><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 100})
augroup END

" -----------------------Extensions---------------------------

" source all files in ~/.config/nvim/lua/beauslm
lua require('beauslm')
