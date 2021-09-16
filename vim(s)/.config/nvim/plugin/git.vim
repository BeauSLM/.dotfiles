" TODO: add git stash, push/pull, maybe even branch mappings
" i.e. MOAR MAPPINGS
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nnoremap <leader>grbi :Git rebase -i HEAD~

nmap <leader>gd :Git diff<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gl :Git log<CR>

