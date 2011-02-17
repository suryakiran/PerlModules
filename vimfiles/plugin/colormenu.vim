" Colormenu.vim: Vim menu for picking color schemes
" Author: Geoff Reedy <vader21@imsa.edu>
" Modified: 2002 Aug 29
" License: Public Domain

if exists("loaded_colormenu")
    finish
endif
let loaded_colormenu = 1

function! s:ReloadMenu()
    aunmenu Co&lor\ Schemes
    amenu Co&lor\ Schemes.Reload	:call <SID>ReloadMenu()<CR>
    amenu Co&lor\ Schemes.-Sep-	:
    let l:colorschemes = globpath(&rtp, "colors/*.vim")
    while strlen(l:colorschemes) > 0
	let l:newline = stridx(l:colorschemes, "\n")
	if l:newline == -1
	    break
	endif
	let l:current = strpart(l:colorschemes, 0, l:newline-1)
	let l:colorschemes = strpart(l:colorschemes, l:newline+1)
	let l:schemename = fnamemodify(l:current, ':t:r')
	execute ('amenu Co&lor\ Schemes.' . l:schemename . ' :color ' . l:schemename . '<cr>')
    endwhile
endfunction

amenu Co&lor\ Schemes.dummy :
call s:ReloadMenu()

let s:save_cpo = &cpo
set cpo&vim



let &cpo = s:save_cpo
