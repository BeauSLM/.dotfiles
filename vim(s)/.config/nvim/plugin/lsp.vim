"--------------------lsp.vim-----------------------

set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" toggle symbols outline
nnoremap <leader>sO :SymbolsOutline<CR>

highlight link CompeDocumentation NormalFloat
lua require('lspkind').init()
autocmd CursorMoved,BufAdd,BufNew,BufNewFile,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs :lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', enabled = {"ChainingHint", "ParameterHint", "TypeHint"} }
