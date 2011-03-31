" ------------- Determine the color syntax automatically on the fly ----- "
function! SetColorSyntaxBasedOnFileType()
	if     &filetype == 'sh' || &filetype == 'csh' || &filetype == 'tcsh'
		colorscheme neon
	elseif &filetype == 'scheme'
		colorscheme blackbeauty
	elseif &filetype == 'awk'
		colorscheme nuvola
	elseif &filetype == 'make'
		colorscheme fog
	elseif &filetype == 'xy'
		colorscheme default
	elseif &filetype == 'vim' || &filetype == 'perl'
		colorscheme dusk
	elseif &filetype == "vrml"
		colorscheme darkblue
		set fdm=manual
	else
		execute "colorscheme " . g:default_color_scheme
		execute "set fdm=" . g:default_fold_method
	endif

	return
endfunction
" ------------- End function  ----- "
"
" ------------- Determine Font based on gtk version ----- "
function! SetGuiFontBasedOnGtkVersion()
	if has ("gui_gtk2")
		set guifont=SuSE\ Sans\ Mono\ 8
	else
		set guifont=-dec-terminal-medium-r-normal-*-*-140-*-*-c-*-iso8859-1
	endif
endfunction
" ------------- End function  ----- "
"
"  ------------ Set syntax for CPP Files ---------------- "

function! SetSyntaxForCppFiles()
	if has ("unix")
		if &filetype == 'cpp' || &filetype == 'c'
			source ~/.vim/after/gtkmm.vim
			source ~/.vim/after/qt4.vim
			source ~/.vim/after/boost.vim
			source ~/.vim/after/cpp.vim
			source ~/.vim/after/poco.vim
		elseif &filetype == 'java'
			source ~/.vim/after/java.vim
		elseif &filetype == 'python'
			set expandtab smartindent
			set cinwords=if,elif,else,for,while,try,except,finally,def,class
		endif
	else
		if &filetype == 'cpp'
			source $VIM/vimfiles/after/qt4.vim
			source $VIM/vimfiles/after/poco.vim
			source $VIM/vimfiles/after/boost.vim
			source $VIM/vimfiles/after/cpp.vim
		elseif &filetype == 'java'
			source $VIM/vimfiles/after/java.vim
		elseif &filetype == 'python'
			set expandtab smartindent
			set cinwords=if,elif,else,for,while,try,except,finally,def,class
		endif
	endif
endfunction

" ------------- End function  ----- "
"
"  ------------ Set Diff mode for files ---------------- "
function! SetDiffMode ()
	set diff 
	set fdm=diff
	set scb
endfunction

" ------------- End function  ----- "
"
"  ------------ Set Diff mode for files ---------------- "
function! SetNoDiffMode ()
	set nodiff 
	set noscb
endfunction