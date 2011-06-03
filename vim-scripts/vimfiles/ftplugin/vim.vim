noremap <silent><buffer> <C-S> :w<CR>:so %<CR>
noremap <silent><buffer> \cc :exec 'colo '.expand('%:t:r')<CR>
