call plug#begin()
Plug 'gruvbox-community/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'

Plug 'gruvbox-community/gruvbox'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

Plug 'mbbill/undotree'

Plug 'szw/vim-maximizer'
Plug 'puremourning/vimspector'
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

nnoremap <leader>ga :Git fetch --all<CR>
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

set termguicolors
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
set background=dark
colorscheme gruvbox

fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1

" Debugger remaps
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>dte :call GotoWindow(g:vimspector_session_windows.terminal)<CR>

nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#ClearLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

let g:vimspector_install_gadgets = [ 'vscode-cpptools', 'CodeLLDB', 'debugpy', 'vscode-bash-debug', 'local-lua-debugger-vscode', 'debugger-for-chrome', 'vscode-java-debug', 'netcoredbg' ]
