" Add Python files in the directory to a newly created menu "Python Files"

function! s:CreatePythonFilesMenu()
	if has ("gui_running")
		silent! unmenu  &Python\ Files
		silent! unmenu! &Python\ Files

		amenu &Python\ Files.&Edit :call <SID>ListFiles()<CR>
		amenu &Python\ Files.&Source :print "Sourcing Python Files"
	endif
endfunction

function! s:ListFiles()
	python import vim
endfunction

autocmd BufEnter * call s:CreatePythonFilesMenu()
