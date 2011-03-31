" Start of script
   " Location where the temporary file (.fif.tmp) would be stored
   let g:Fif_tmp_dir = "/tmp"
   function! Fif_fun(...)
      if a:0 == 0
         " Print usage info and quit
         echo "Usage: Fif <pattern-to-be-searched> <file-pattern>. E.g:"
         echo "Fif struct *.c"
         echo "searches for the word struct in all the c files from the current directory"
         return
      endif
      if a:0 != 2
          echohl Error
          echo "Error! Wrong number of arguments. Type :Fif with no arguments to see usage"
          echohl None
          return
      endif
      let tmp_file = g:Fif_tmp_dir . "/.fif.tmp"
      execute "!touch " . tmp_file . " 2> /dev/null"
      if ! filewritable(tmp_file)
         echohl Error
         echo "No permissions to create " . tmp_file
         echo "Try setting the g:Fif_tmp_dir variable to the right value"
         echohl None
         return
      endif
      " Put quotes around the file pattern
      let com_string = '!find . -name "' . a:2 . '" '
      " Do NOT put quotes around the pattern to be searched - leave it to the user
      let com_string = com_string . '-exec grep -n ' . a:1 . ' /dev/null {} \; > ' . tmp_file
      execute com_string
      if ! filereadable(tmp_file)
         echohl Error
         echo "Can't open " . tmp_file . " for reading"
         echohl None
         return
      endif
      execute "cfile " . tmp_file
      execute '!rm -f ' . tmp_file . ' 2> /dev/null'
   endfunction
   com! -nargs=* Fif call Fif_fun(<f-args>)
   " End of script. 

" Close windows from GVIM popup menu
:amenu PopUp.Close.\ Window :confirm qu<CR>
:amenu PopUp.Close.\ Other  :confirm only<CR>

" Other mouse pointers
" see :h mouseshape for other mouse shapes
" set mouseshape=n:60
set mouseshape=n:1

" hide all function by folding it
"set foldnestmax=2
"func! HideAll()
"   syn region myFold start="{" end="}" transparent fold
"   syn sync fromstart
"   set foldnestmax=1
"   set foldmethod=syntax
"endfunc
"
":amenu PopUp.Hide.\ all  :call HideAll() <CR>

augroup filetypedetect
  au BufNewFile,BufRead */*@@*
    \ if expand("<afile>") =~ '@@' |
    \   exe "doau filetypedetect BufRead " . expand("<afile>:s?@@.*$??") |
    \ endif
augroup END

function! OpenFileUnderCursor()
let FileName = expand("<cfile>")
let OldPath = getcwd()
silent cd %:p:h
execute "silent sp +e " . FileName
execute "silent cd " . OldPath
endfunction

"inoremap ) )<c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a

"Select from buffers matching a certain pattern
"the 'pattern' argument shouldn't be prepended with a slash

function! BufSel(pattern)
   let bufcount = bufnr("$")
   let currbufnr = 1
   while currbufnr <= bufcount
      if(bufexists(currbufnr))
         let currbufname = bufname(currbufnr)
         if(match(currbufname, a:pattern) > -1)
               echo currbufnr . ":      ". bufname(currbufnr)
         endif
      endif
      let currbufnr = currbufnr + 1
   endwhile
   let desiredbufnr = input("Enter buffer number: ")
   if(strlen(desiredbufnr) != 0)
      exe ":bu ". desiredbufnr
   endif
endfunction

command! -nargs=1 Bf :call BufSel("<args>")
" ---------------------------------------------------------------------
" DrChip's additional <man.vim> stuff

syn match  manSectionHeading    "^\s\+[0-9]\+\.[0-9.]*\s\+[A-Z].*$" contains=manSectionNumber
syn match  manSectionNumber     "^\s\+[0-9]\+\.[0-9]*"              contained
syn region manDQString          start='[^a-zA-Z"]"[^", )]'lc=1      end='"'         contains=manSQString
syn region manSQString          start="[ \t]'[^', )]"lc=1           end="'"
syn region manSQString          start="^'[^', )]"lc=1               end="'"
syn region manBQString          start="[^a-zA-Z`]`[^`, )]"lc=1      end="[`']"
syn region manBQSQString        start="``[^),']"                    end="''"
syn match  manBulletZone        transparent "^\s\+o\s" contains=manBullet
syn case    match
syn keyword manBullet contained o
syn match   manBullet contained "\[+*]"
syn match   manSubSectionStart  "^\*"   skipwhite nextgroup=manSubSection
syn match   manSubSection       ".*$"   contained

hi link manSectionNumber    Number
hi link manDQString         String
hi link manSQString         String
hi link manBQString         String
hi link manBQSQString       String
hi link manBullet           Special
hi manSubSectionStart       term=NONE cterm=NONE gui=NONE ctermfg=black ctermbg=black guifg=navyblue guibg=navyblue
hi manSubSection            term=underline cterm=underline gui=underline ctermfg=green guifg=green
set ts=8
" ---------------------------------------------------------------------

" ---------------------------------------------------------------------
" TODO_ITEM
imap \q <ESC>i//TODO_ITEM<SPACE>
map \q i//TODO_ITEM<SPACE>
imap \w <ESC>:grep --exclude=*~ TODO_ITEM * <CR> :copen <CR>
map \w :grep --exclude=*~ TODO_ITEM * <CR> :copen <CR>
" ---------------------------------------------------------------------

" ---------------------------------------------------------------------
function! Foldrepl(spattern, tpattern)
    normal gg            "go to top of the file
    if &diff             "need to change fold option for diff
        exec "set diffopt=context:0"    
    endif    
    "echo a:spattern
    "echo a:tpattern
    let mycount =0
    while search(a:spattern, "W") > 0  "find the search pattern
       if foldlevel(line(".")) < 1     "not in flod
           exec "s/".a:spattern."/".a:tpattern."/g"  
           let mycount = mycount + 1      
       endif    
    endwhile        

    if &diff            "need to restore fold option, mine is 4
        set diffopt=context:4
    endif    
    echo mycount ." lines are changed"
endfunction
" ---------------------------------------------------------------------

" ----------------- Toggle Search highlighting ------------------------
function! ToggleHLSearch()
    if &hls
        set nohls
    else
        set hls
    endif
endfunction

nmap <silent> <C-n> :silent call ToggleHLSearch()<CR>
" ------------------ End Toggle Search Highlighting ------------------

"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path

if has ("unix")
   map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
   map ,w :w <C-R>=expand("%:p:h") . "/" <CR>
else
   map ,e :e <C-R>=expand("%:p:h") . "\\" <CR>
   map ,w :w <C-R>=expand("%:p:h") . "\\" <CR>
endif
"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

" ------------- Open Splitted Window Wide -----------------------------
function! OpenSplittedWindowWide()
   normal |
   normal 20+
endfunction!
" ------------- End Open Splitted Window Wide -------------------------

" ------------- Fast switching between buffers ------------------------
nmap <s-tab> :if &modifiable && !&readonly && &modified <cr> :w<cr> :endif<cr> :bn<cr>
nmap <c-m-tab> :if &modifiable && !&readonly && &modified <cr> :w<cr> :endif<cr> :bp<cr>
" ------------- End Fast switching between buffers ------------------------

"imap <Backspace> <left><del>
"" this will allow me to always use the backspace key in insert mode
"
"imap <C-j> <Esc>Ji
"" this will allow me to join a line while still in insert mode
"
"map .f v%zf
"" fold an entire block of code
"
"nnmap ,y <S-v>y
"" This will select a whole line of text or it will select
"" everything in a fold.
"
"map .; v%:s/^/;;;/<CR>:noh<CR>
"" comments out and entire block of code from paren to paren
"
":au BufRead *.lsp :loadview 1<cr>
":au BufRead *.LSP :loadview 1<cr>
"" load the first fold view file for the current file
"
"map st :set tw=70<cr>v<S-}>gq<End>
"" this will allow you to format an entire block of text




" ------------- Wordwise Ctrl-Y in insert mode -------------------------
noremap! <C-Y> <Esc>klyWjpa
" ------------- End Wordwise Ctrl-Y in insert mode -------------------------

" ------------- Automatic gates inclusion in header files --------------
function! s:insert_gates() 
        let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g") 
        execute "normal i#ifndef " . gatename 
        execute "normal o#define " . gatename . "   " 
        execute "normal Go#endif /* " . gatename . " */" 
        normal kk 
endfunction
" ------------- End Automatic gates inclusion in header files --------------

" ------------- Highlight current line --------------------------------
"<Leader>h <silent> K mk:exe 'match Search /\\%:'.line(".").'l/'<CR>
" %%% To turn off highlighting type :match<CR>
" ------------- End Hightlight current line ---------------------------













" ---------- Check the meaning of the word under cursor ---------------
" nme <silent> PopUp.&Dic :sil! !start 
" netscape "http://www.m-w.com/cgi-bin/dictionary?book=Dictionary&va=<cword>"<CR>

" ---------- End Check                                  ---------------

"------------------------------------------------------------------------------
"# Absolutely essential
"------------------------------------------------------------------------------
"vim.sf.net         : Visit frequently
"comp.editors    : "VIM" dominated newsgroup
"* # g* g#          : find word under cursor (forwards/backwards)
"%                   : match brackets {}[]()
"matchit.vim      : % now matches tags <tr><td><script> etc
"<C-N> <C-P>   : word completion in insert mode
"<C-X><C-L>    : Line complete SUPER USEFUL
"/<C-R><C-W>   : Pull <cword> onto search/command line
":set ignorecase # you nearly always want this
":syntax on    : colour syntax in Perl,HTML,PHP etc
":h slash<C-D> : type control-D and get a list all help topics containing
"                   slash (plus use TAB for Help completion)
"------------------------------------------------------------------------------
"# MAKE IT EASY TO UPDATE/RELOAD_vimrc
":nmap ,s :source $VIM/_vimrc
":nmap ,v :e $VIM/_vimrc
"------------------------------------------------------------------------------
"#VISUAL MODE Mappings
":vmap sb "zdi<b><C-R>z</b><ESC> : wrap <b></b> around VISUALLY selected Text
":vmap st "zdi<?= <C-R>z ?><ESC>  : wrap <?=   ?> around VISUALLY selected Text
"------------------------------------------------------------------------------
"# Exploring
":Ex                             : file explorer note capital Ex
"\be                             : builtin buffer explorer
":ls                             : list of buffers(eg following)
":cd ..                          : move to parent directory
"------------------------------------------------------------------------------
"# Great
"guu                             : lowercase line
"gUU                             : uppercase line
"gf                              : open file name under cursor (SUPER)
"ga                              : display hex,ascii value of character under cursor
"ggVGg?                          : rot13 whole file
"CTRL-A,CTRL-X                   : increment,decerement number under cursor
"                                  win32 users must remap CNTRL-A
"CTRL-R=5*5                      : insert 25 into text
"------------------------------------------------------------------------------
"# Makes all other tips superfluous
":h 42                          
":h holy-grail                  
":help!                        
"------------------------------------------------------------------------------
"# Markers & moving about
"'.               : jump to last modification line (SUPER)
"`.               : jump to exact spot in last modification line
"<C-O>            : retrace your movements in file (old)
"<C-I>            : retrace your movements in file (new)
":ju(mps)
":help jump-motions
":history          : list of all your commands
"------------------------------------------------------------------------------
"# Abbreviations & maps
":map   <f7>   :'a,'bw! c:/aaa/x
":map   <f8>   :r c:/aaa/x
":map   <f9>   :w<CR>:!c:/php/php.exe %<CR>
":map   <f11>  :.w! c:/aaa/xr<CR>
":map   <f12>  :r c:/aaa/xr<CR>
":ab php           : list of abbreviations beginning php
":map ,            : list of maps beginning ,
"# For use in Maps
"<CR>             : carriage Return for maps
"<ESC>            : Escape
"<LEADER>         : normally \
"<BAR>            : | pipe
"------------------------------------------------------------------------------
"# List your Registers
":reg             : display contents of all registers
""1p....          : retrieve numeric buffers
"------------------------------------------------------------------------------
"# Useful trick
""ayy@a            : execute "Vim command" in a text file
"yy@"              : same thing using unnamed register
"------------------------------------------------------------------------------
"# Get output from other commands
":r!ls.exe        : reads in output of ls
"!!date           : same thing
":%!sort -u       : use an external program to filter content
"------------------------------------------------------------------------------
"# Multiple Files Management
":wn              : write file and move to next (SUPER)
":bd              : remove file from buffer list (SUPER)
":sav php.html    : Save current file as php.html and "move" to php.html
":sp fred.txt     : open fred.txt into a split
":e!              : return to unmodified file
":w c:/aaa/%      : save file elsewhere
":e #                 : edit alternative file
":e %
":rew                : rewwind to first file in ARGS
":bn                 : next file
":bp                 : next file
":brew
"------------------------------------------------------------------------------
"# Recording (BEST TIP of ALL)
"qq  # record to q
"your commands
"q
"@q to execute
"@@ to Repeat
"# editing a register/recording
""ap
"<you can now see register contents, edit as required>
""add
"@a
"------------------------------------------------------------------------------
"# _vimrc essentials
":set incsearch : jumps to search word as you type (annoying but excellent)
":set wildignore=*.o,*.obj,*.bak,*.exe
":set shiftwidth=3
"------------------------------------------------------------------------------
"# launching Win IE
":nmap ,f :update<CR>:silent !start c:\progra~1\intern~1\iexplore.exe file://%:p<CR>
":nmap ,i :update<CR>: !start c:\progra~1\intern~1\iexplore.exe <cWORD><CR>
"------------------------------------------------------------------------------
"# FTPing from VIM
"cmap ,r  :Nread ftp://209.51.134.122/public_html/index.html
"cmap ,w  :Nwrite ftp://209.51.134.122/public_html/index.html
"gvim ftp://209.51.134.122/public_html/index.html
"------------------------------------------------------------------------------
"# appending to registers (use CAPITAL)
"# yank 5 lines into "a" then add a further 5
""a5yy
"10j
""A5yy
"------------------------------------------------------------------------------
"[I     : show lines matching word under cursor <cword>
"------------------------------------------------------------------------------
"#Conventional Shifting
":'a,'b>>
"# visual shifting (builtin-repeat)
":vnoremap < <gv
":vnoremap > >gv
"------------------------------------------------------------------------------
"# searching
"/^joe.*fred.*bill/ : normal
"/^[A-J]\+/         : search for lines beginning A-J followed by at leat 1 A-J
"/forum\(\_.\)*pent   search over possible multiple lines
"/fred\_s*joe/i    : any whitespace including newline
"/fred\|joe        : Search for FRED OR JOE
"------------------------------------------------------------------------------
"#substitution
":%s/fred/joe/igc            : general substitute command
":%s/\r//g                   : Delete DOS returns ^M
":'a,'bg/fred/s/dick/joe/gc  : VERY USEFUL
":s/\(.*\):\(.*\)/\2 :  \1/  : reverse fields separated by :
":%s/^.\{-}pdf/new.pdf/  non greedy matching (ie to first pdf)
":s/fred/<c-r>a/g substitute "fred" with contents of register "a"
":%s/^\(.*\)\n\1/\1$/  delete duplicate lines
"# non-greedy matching \{-}
":%s/^.\{-}pdf/new.pdf/
":help /\{-}
":s/fred/<c-r>a/g substitute "fred" with contents of register "a"
"# multiple commands
":%s/\f\+\.gif\>/\r&\r/g | v/\.gif$/d | %s/gif/jpg/
":%s/suck\|buck/loopy/gc  : ORing
":s/__date__/\=strftime("%c")/ : insert datestring
"------------------------------------------------------------------------------
"# global command
":g/^\s*$/d       :delete all blank lines
":g!/^dd/d        : delete lines not containing string
":v/^dd/d         : delete lines not containing string
":g/fred/,/joe/d  : not line based
":v/./.,/./-1join : compress empty lines
":'a,'b g/^Error/ . w >> errors.txt
":g/cmap\|form/p  : ORing
"------------------------------------------------------------------------------
"# Paste register *
":redir @*   : redirect commands to paste
":redir END
""*yy        : yank to paste
""*p         : insert paste buffer
"------------------------------------------------------------------------------
"# Formatting text
"gq<CR>
"gqap  (a is motion p paragraph (visual mode))
"------------------------------------------------------------------------------
"# Operate command over multiple files
":argdo %s/foo/bar/
":bufdo %s/foo/bar/
":windo %s/foo/bar/
"------------------------------------------------------------------------------
"# Command line tricks
"gvim -h
"ls | gvim -   : edit a PIPE!!
"# vg.ksh (shell script)
"# vi all files in directory containing keyword $1 and jump to $1
"gvim.exe -c "/$1"  $(grep -isl "$1" *) &
"------------------------------------------------------------------------------
