" Add my menu to vim

function! s:CreateMyMenu()
   if has ("gui_running")
      silent! unmenu  My\ &Menu
      silent! unmenu! My\ &Menu

      amenu My\ Men&u.\ Fo&lds.\ Manual :set fdm=manual <CR>
      amenu My\ Men&u.\ Fo&lds.\ Indent :set fdm=indent <CR>
      amenu My\ Men&u.\ Fo&lds.\ Expr   :set fdm=expr   <CR>
      amenu My\ Men&u.\ Fo&lds.\ Marker :set fdm=marker <CR>
      amenu My\ Men&u.\ Fo&lds.\ Syntax :set fdm=syntax <CR>
      amenu My\ Men&u.\ Fo&lds.\ Diff   :set fdm=diff   <CR>
   endif
endfunction

autocmd BufEnter * call s:CreateMyMenu()
