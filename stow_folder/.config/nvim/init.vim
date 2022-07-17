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

nnoremap <leader>m :MaximizerToggle!<CR>

" fugitive
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gd :DiffviewOpen<CR>
nnoremap <leader>gl :GV<CR>
vnoremap <leader>gl :GV<CR>
nnoremap <leader>gv :GV!<CR>
vnoremap <leader>gv :GV!<CR>
nnoremap <leader>gp :GV --patch<CR>
vnoremap <leader>gp :GV --patch<CR>

" harpoon
nnoremap <leader>a <Cmd>lua require('harpoon.mark').toggle_file()<CR>
nnoremap <leader>h <Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>
nnoremap <leader>y <Cmd>lua require('harpoon.cmd-ui').toggle_quick_menu()<CR>
nnoremap <leader>1 <Cmd>lua require('harpoon.ui').nav_file(1)<CR>
nnoremap <leader>2 <Cmd>lua require('harpoon.ui').nav_file(2)<CR>
nnoremap <leader>3 <Cmd>lua require('harpoon.ui').nav_file(3)<CR>
nnoremap <leader>4 <Cmd>lua require('harpoon.ui').nav_file(4)<CR>

" dap
nnoremap <leader>dl <Cmd>lua require('dap').continue()<CR>
nnoremap <leader>dk <Cmd>lua require('dap').step_over()<CR>
nnoremap <leader>dj <Cmd>lua require('dap').step_into()<CR>
nnoremap <leader>dh <Cmd>lua require('dap').step_out()<CR>
nnoremap <leader>db <Cmd>lua require('dap').toggle_breakpoint()<CR>
nnoremap <leader>dB <Cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <Leader>dr <Cmd>lua require('dap').repl.open()<CR>
nnoremap <Leader>drl <Cmd>lua require('dap').run_last()<CR>
nnoremap <Leader>dc <Cmd>lua require('dap').terminate()<CR>
