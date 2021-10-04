" TODO: add git stash, push/pull, maybe even branch mappings
" i.e. MOAR MAPPINGS
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>

nmap <leader>G :Git<CR>
nmap <leader>gd :Git diff<CR>
nmap <leader>gb :Git blame
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

" gv THIS SHIT'S FUCKIN MAGICAL
nmap <leader>gl :GV<CR>
vmap <leader>gl :GV<CR>
nmap <leader>gv :GV!<CR>
vmap <leader>gv :GV!<CR>
nmap <leader>gp :GV! --patch<CR>
vmap <leader>gp :GV! --patch<CR>

nmap <leader>gL :G log --patch<CR>
