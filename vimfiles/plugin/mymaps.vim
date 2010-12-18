" Last Change: 2003 Jan 15
" mapped keys
"  <F1>            Help
"  <F2>            set diff            
"  <F3>            set nodiff          
"  <F4>            Grep
"  <F5>            Rgrep
"  <F6>            GrepBuffer (Grep in buffers)
"  <F7>            call F()<CR> (Search and fold) 
"  <Alt-F7>        :!make<CR>
"  <F8>            unfold
"  <F9>            Horizontal split
"  <F10>           Vertical Split
"  <F11>           Toggle file explorer
"  <F12>           Generate Tags           
"  <S-F1>          :source ~/.vim/plugin/blockhl.vim
"  <C-J>           down  buffer
"  <C-K>           up    buffer
"  <C-H>           left  buffer
"  <C-L>           right buffer
"  <C-C>           Change to title case.                                
"  <C-Z>           Minimize gvim window.                                
"  <TAB>           cycle thru buffers
"  <TAB>           in insert mode -> completion
"  <S-TAB>         in insert mode -> backward manipulation
"  <C-X>           open file under cursor.                   
"   B              insert braces
"  :A              opens corresponding .h or .cc file
"  :AS             splits and opens the file
"  :AV             vertical split and opens the file
"  :<space><space> Open splitted window wide.
"  :<C-Up>         :bn<CR>  (Next Buffer)                           
"  :<C-Down>       :bp<CR>  (Previous Buffer)                           
"  :<C-S-F8>       :Toggle scratch buffer.                              

" commands
" \. gives window name
" \, update list
" \\ cycle thru windows
" \vc vertical calendar 
" \hc horizontal calendar 
" :Tlist create ahd show tags
" \be buffer explorer
" \bs same as \be but in a split buffer
" :Bs searches in current buffer
" \te TagExplorer
" zo   open a fold a bit
" zE   open all folds
" zO   open fold completely

map <Del> <C-H>
map <TAB> <C-W><C-W>
map <F2>  :call SetDiffMode() <CR>
map <F3>  :call SetNoDiffMode() <CR>
"map <F2>  :set diff<CR> :set fdm=diff<CR> :set scb 
"map <F3>  :set nodiff<CR>
map <F5>  :Rgrep<CR>
map <F6>  :GrepBuffer<CR>
map <F7>  :call F()<CR>
map <A-F7>  :!make<CR>
map <F9>  <C-W>s
map <F8>  <C-W>v
map <C-F9> :call ShowBlockName('quiet')<CR>
map <S-F1> :source ~/.vim/plugin/blockhl.vim<CR>
map <S-F2> :TlistShowPrototype<CR>
map <S-F3> :Ex<CR>
map <C-K> <C-W><C-K>
map <C-J> <C-W><C-J>
map <C-H> <C-W><C-H>
map <C-L> <C-W><C-L>
map <C-E> :n<CR>
map <C-P> :tabnew<CR>
map <C-Left> <C-PageUp>
map <C-Right> <C-PageDown>
map <Leader>te :TagExplorer<CR>
map <Leader>s :call SetSyntaxForCppFiles()
map <C-X> :call OpenFileUnderCursor()<CR>
map <space><space> :call OpenSplittedWindowWide ()<CR>
map <C-D> ggVG
map <C-Up> :bn<CR>
map <C-Down> :bp<CR>
map B o{<CR>}O
map <C-S-F4> :BufClose<CR>
:nmap ,b :e $HOME/.bashrc <CR>
if has ("unix")
	:nmap ,v :e $HOME/.gvimrc <CR>
else
	:nmap ,v :e $VIM/_gvimrc <CR>
endif
map <C-A> :cs add ${FLUENT_INC}/fluent_cscope_reference.out ${FLUENT_INC} <CR>
map <C-R> :cs reset <CR>
map <C-S> :cs show <CR>
map <C-c> :set cmdheight=1 <CR>

map <C-q> :%s/\([A-Z]\)\([A-Z]\+\)/\1\L\2/gc <CR>

"nmap n nmzz.`z 
"nmap N Nmzz.`z 
"nmap * *mzz.`z 
"nmap # #mzz.`z 
"nmap g* g*mzz.`z 
"nmap g# g#mzz.`z
"
"map <M-g> mn"my'm`n
"map <M-q> \"md'm
"map <M-v> \"mp 
