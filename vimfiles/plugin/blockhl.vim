" blockhl.vim: highlights different levels of {} with different shades of
"              grey.  Only good for gvim and C/C++.
"  Author: Charles E. Campbell, Jr.
"  Date:   November 30, 2000
if has("gui_running")
  if version < 508
    command! -nargs=+ HiLink hi <args>
  else
    command! -nargs=+ HiLink hi def <args>
  endif

  syn cluster cCurlyGroup	contains=cConditional,cConstant,cLabel,cOperator,cRepeat,cStatement,cStorageClass,cStructure,cType,cBitField,cCharacter,cCommentError,cInclude,cNumbers,cParenError,cPreCondit,cSpaceError,cSpecialCharacter,cSpecialError,cUserCont,cBracket,cComment,cCommentL,cCppOut,cCppString,cDefine,cMulti,cParen,cPreCondit,cPreProc,cString
  syn region cCurly1           matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=@cCurlyGroup,cCurly2
  syn region cCurly2 contained matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=@cCurlyGroup,cCurly3
  syn region cCurly3 contained matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=@cCurlyGroup,cCurly4
  syn region cCurly4 contained matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=@cCurlyGroup,cCurly5
  syn region cCurly5 contained matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=@cCurlyGroup,cCurly6
  syn region cCurly6 contained matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=@cCurlyGroup,cCurly7
  syn region cCurly7 contained matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=@cCurlyGroup,cCurly1
  
  HiLink cCurly1 term=NONE cterm=NONE gui=NONE guibg=grey10
  HiLink cCurly2 term=NONE cterm=NONE gui=NONE guibg=grey20
  HiLink cCurly3 term=NONE cterm=NONE gui=NONE guibg=grey25
  HiLink cCurly4 term=NONE cterm=NONE gui=NONE guibg=grey30
  HiLink cCurly5 term=NONE cterm=NONE gui=NONE guibg=grey35
  HiLink cCurly6 term=NONE cterm=NONE gui=NONE guibg=grey40
  HiLink cCurly7 term=NONE cterm=NONE gui=NONE guibg=grey45
endif
