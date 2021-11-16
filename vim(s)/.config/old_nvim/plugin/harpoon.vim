" ---------harpoon.vim----------
lua require("beauslm")

nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>h :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>y :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <leader>j :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>k :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>l :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>; :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>tj :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>tk :lua require("harpoon.term").gotoTerminal(2)<CR>
tnoremap <leader>tj :lua require("harpoon.term").gotoTerminal(1)<CR>
tnoremap <leader>tk :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <leader>cj :lua require("harpoon.term").sendCommand(1, 1)<CR>
nnoremap <leader>ck :lua require("harpoon.term").sendCommand(1, 2)<CR>