" -----------telescope.vim------------
lua require('beauslm.telescope')

nnoremap <leader>rr :lua require('beauslm.telescope').refactors()<CR>
vnoremap <leader>rr :lua require('beauslm.telescope').refactors()<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>vrc :lua require('beauslm.telescope').search_dotfiles()<CR>
nnoremap <leader>gc :lua require('beauslm.telescope').git_branches()<CR>
nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>

nnoremap <leader>gs :lua require('telescope.builtin').git_status()<CR>

" lsp stuff
nnoremap <leader>gr :lua require('telescope.builtin').lsp_references()<CR>
nnoremap <leader>ca :lua require('telescope.builtin').lsp_code_actions()<CR>
nnoremap <leader>sd :lua require('telescope.builtin').lsp_document_diagnostics()<CR>
nnoremap <silent>gi :lua require('telescope.builtin').lsp_implementations()<CR>
nnoremap <silent>gd :lua require('telescope.builtin').lsp_definitions()<CR>
nnoremap <leader>D :lua require('telescope.builtin').lsp_type_definitions()<CR>
nnoremap <leader>so :lua require('telescope.builtin').treesitter()<CR>
