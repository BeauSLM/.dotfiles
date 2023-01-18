" TODO: rip out stuff from nvim config

call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'junegunn/gv.vim'

" Plug 'liuchengxu/vim-clap', {'do': ':Clap install-binary!'}
Plug 'mbbill/undotree'
call plug#end()

set termguicolors
colorscheme gruvbox
set background=dark

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

set incsearch
set nohlsearch
set ignorecase
set smartcase

set updatetime=50

set undodir =~/.vim/undodir
set undofile

set shortmess+=c

let mapleader = " "

nnoremap <C-q> :q!<CR>

nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>

nnoremap <Leader><CR> :so ~/.vimrc<CR>
nnoremap <silent>Q <nop>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap Y y$
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 100})
augroup END

nnoremap <leader>ga :Git fetch --all --prune<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nnoremap <leader>grbi :Git rebase -i HEAD~

nmap <leader>gd :Git diff<CR>
nmap <leader>gb :Git blame<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>

nmap <leader>gl :GV<CR>
vmap <leader>gl :GV<CR>
nmap <leader>gv :GV!<CR>
vmap <leader>gv :GV!<CR>
nmap <leader>gl :GV! --patch<CR>
vmap <leader>gl :GV! --patch<CR>
nmap <leader>gL :G log --patch<CR>
