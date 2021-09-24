" ------------saga.vim------------
" nnoremap <silent>gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
" vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
" nnoremap <silent>K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"
" " may be optional, scroll command
" " nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" " nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
"
" " signature help
" nnoremap <leader>sh <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
"
" " rename
" nnoremap <leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>
"
" " preview defintion
" nnoremap <leader>pd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
"
" " diagnostics schtuff
" nnoremap <silent><leader>sd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
" nnoremap <silent><leader>scd <cmd>lua require('lspsaga.diagnostic').show_cursor_diagnostics()<CR>
" nnoremap <silent><leader>vp <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
" nnoremap <silent><leader>vn <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
"
" " TERMINAL YAYYYYY
nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>
tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
