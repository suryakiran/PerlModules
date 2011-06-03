noremap <silent><buffer> <C-S> :w<CR>:so %<CR>
noremap <silent><buffer> [c :exec 'colo '.expand('%:t:r')<CR>
