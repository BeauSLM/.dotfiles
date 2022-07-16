set termguicolors
lua require('plugins')

set nowrap
set nu
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cindent
set scrolloff=10
set colorcolumn=80
set hidden
set cmdheight=2
set incsearch
set nohlsearch
set ignorecase
set smartcase

set noswapfile

" mappings
let mapleader=' '

nnoremap <C-q> :q!<CR>

nnoremap <leader>gs :Git<CR>
nnoremap <leader>gd :DiffviewOpen<CR>
nnoremap <leader>gl :GV<CR>
vnoremap <leader>gl :GV<CR>
nnoremap <leader>gv :GV!<CR>
vnoremap <leader>gv :GV!<CR>
nnoremap <leader>gp :GV --patch<CR>
vnoremap <leader>gp :GV --patch<CR>

nnoremap <leader>F :lua vim.lsp.buf.formatting()<CR>
