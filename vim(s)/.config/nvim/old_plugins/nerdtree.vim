" ----------------------nerdtree.vim--------------------------

" Mapping
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" git plugin stuff
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
" let g:NERDTreeGitStatusGitBinPath = '/usr/bin/git' " default: git (auto find in path)
let g:NERDTreeGitStatusShowClean = 1 " default: 0


" tsony git plugin colors
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:NERDTreeGitStatusNodeColorization = 1
" let g:NERDTreeColorMapCustom = {
"     \ "Staged"    : "#0ee375",
"     \ "Modified"  : "#d9bf91",
"     \ "Renamed"   : "#51C9FC",
"     \ "Untracked" : "#FCE77C",
"     \ "Unmerged"  : "#FC51E6",
"     \ "Dirty"     : "#FFBD61",
"     \ "Clean"     : "#87939A",
"     \ "Ignored"   : "#808080"
"     \ }
" let g:NERDTreeColorMapCustom = {
"     \ "Modified"  : ["#528AB3", "NONE", "NONE", "NONE"],
"     \ "Staged"    : ["#538B54", "NONE", "NONE", "NONE"],
"     \ "Untracked" : ["#BE5849", "NONE", "NONE", "NONE"],
"     \ "Dirty"     : ["#299999", "NONE", "NONE", "NONE"],
"     \ "Clean"     : ["#87939A", "NONE", "NONE", "NONE"],
"     \ "Ignored"   : ["#808080", "NONE", "NONE", "NONE"]
"     \ }
