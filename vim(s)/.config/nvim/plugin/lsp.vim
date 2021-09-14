"--------------------lsp.vim-----------------------

set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" From the nvim-compe readme - the lexima bindings
" NOTE: Order is important. You can't lazy loading lexima.vim.
let g:lexima_no_default_rules = v:true
call lexima#set_default_rules()
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm(lexima#expand('<LT>CR>', 'i'))
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" toggle symbols outline
nnoremap <leader>so :SymbolsOutline<CR>

" nnoremap gD :lua vim.lsp.buf.declaration()<CR>
" nnoremap gd :lua vim.lsp.buf.definition()<CR>
" nnoremap K :lua vim.lsp.buf.hover()<CR>
" nnoremap gi :lua vim.lsp.buf.implementation()<CR>
" nnoremap <leader>D :lua vim.lsp.buf.type_definition()<CR>
" nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
" nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
" nnoremap gr :lua vim.lsp.buf.references()<CR>

highlight link CompeDocumentation NormalFloat
