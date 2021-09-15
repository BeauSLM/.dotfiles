"--------------------lsp.vim-----------------------

set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" toggle symbols outline
nnoremap <leader>so :SymbolsOutline<CR>

highlight link CompeDocumentation NormalFloat
