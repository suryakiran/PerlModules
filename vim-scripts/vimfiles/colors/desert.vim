" Vim color file
" Maintainer:   Hans Fugal <hans@fugal.net>
" Last Change:  9 Jul 2002
" URL:		http://fugal.net/vim/colors/desert.vim 

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="desert"

hi Normal	guifg=White guibg=grey20

" highlight groups
hi Cursor	guibg=khaki guifg=slategrey
"hi CursorIM	
"hi Directory	
"hi DiffAdd				
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
"hi ErrorMsg	
hi VertSplit	guibg=#c2bfa5 guifg=grey50 gui=none
hi Folded	guibg=grey30 guifg=gold
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=yellow guibg=blue
"hi LineNr				
hi ModeMsg	guifg=goldenrod
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=LightBlue guibg=grey30
hi Question	guifg=springgreen
hi Search	guibg=peru guifg=wheat
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=#c2bfa5 guifg=black gui=none
hi StatusLineNC	guibg=#c2bfa5 guifg=grey50 gui=none
hi Title	guifg=indianred
hi Visual	gui=none guifg=khaki guibg=olivedrab
"hi VisualNOS	
hi WarningMsg	guifg=salmon
"hi WildMenu	
"hi Menu				
"hi Scrollbar	
"hi Tooltip				

" syntax highlighting groups
hi Comment	 guifg=SkyBlue
hi Constant	 guifg=#ffa0a0
hi Identifier	 guifg=palegreen
hi Statement	 guifg=khaki
hi PreProc	 guifg=indianred
hi Type		 guifg=darkkhaki
hi Special	 guifg=navajowhite
"hi Underlined	
hi Ignore	 guifg=grey40
"hi Error			
hi Todo		 guifg=orangered guibg=yellow2

" color terminal definitions
hi SpecialKey    ctermfg=darkgreen
hi NonText       cterm=bold ctermfg=darkblue
hi Directory     ctermfg=darkcyan
hi ErrorMsg      cterm=bold ctermfg=7 ctermbg=1
hi IncSearch     cterm=NONE ctermfg=yellow ctermbg=green
hi Search        cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg       ctermfg=darkgreen
hi ModeMsg       cterm=NONE ctermfg=brown
hi LineNr        ctermfg=3
hi Question      ctermfg=green
hi StatusLine    cterm=bold,reverse
hi StatusLineNC  cterm=reverse
hi VertSplit     cterm=reverse
hi Title         ctermfg=5
hi Visual        cterm=reverse
hi VisualNOS     cterm=bold,underline
hi WarningMsg    ctermfg=1
hi WildMenu      ctermfg=0 ctermbg=3
hi Folded        ctermfg=4 ctermbg=7
hi FoldColumn    ctermfg=4 ctermbg=7
hi DiffAdd       ctermbg=4
hi DiffChange    ctermbg=5
hi DiffDelete    cterm=bold ctermfg=4 ctermbg=6
hi DiffText      cterm=bold ctermbg=1
hi Comment       ctermfg=darkcyan
hi Constant      ctermfg=brown
hi Special       ctermfg=5
hi Identifier    ctermfg=6
hi Statement     ctermfg=3
hi PreProc       ctermfg=5
hi Type          ctermfg=2
hi Underlined    cterm=underline ctermfg=5
hi Ignore        cterm=bold ctermfg=7
hi Error         cterm=bold ctermfg=7 ctermbg=1

hi fxMacro gui=BOLD guibg=#bbbbbb guifg=#a00000
hi fxSignal  gui=NONE guibg=#aaaaaa guifg=#a000a0
hi fxClass   gui=BOLD guifg=#abcdff
hi fxOptions gui=NONE guifg=#efbdff
hi fxFunction gui=BOLD guifg=#ff55aa

"hi cppStl gui=BOLD guifg=#faab00
"hi cppStlFunctions gui=BOLD guifg=#ffb0c0

hi cFunction       gui=NONE guifg=#00aaff
hi cppStl          gui=BOLD guifg=#55ddff
hi cppNamespace    gui=NONE guifg=#dd8866
hi cppStreamFlags  gui=NONE guifg=#c0f0cf
hi cppStreamFuncs  gui=NONE guifg=#faf066
hi cppStlFunctions gui=BOLD guifg=#5aff5b
hi cppStlIterators gui=BOLD guifg=#82a3cb
hi cppStlFunctors  gui=BOLD guifg=#87b28f
hi cppStrFunctions gui=BOLD guifg=#33aaff
hi cppMath         gui=NONE guifg=#3388ff
hi cppStreams      gui=BOLD guifg=#b6af87
hi cppFlags        gui=NONE guifg=#be00be
hi cppKeyword      gui=NONE guifg=#fe9e3f
hi cppCasts        gui=NONE guifg=#00aa00

hi gtkWidget gui=BOLD guifg=#a0a0ff
hi gtkEnums  gui=NONE guifg=#99ee99
hi gtkFuncs  gui=BOLD guifg=#eaa1a1
hi gtkMacros gui=BOLD guifg=#33aaff
hi gtkVars   gui=NONE guifg=#f0f000
hi glibFuncs gui=BOLD guifg=#ff9eff

hi gtkmmVirtuals   gui=BOLD guifg=#dd88cc
hi gtkmmNameSpace  gui=BOLD guifg=#f0a0a0
hi gtkmmClasses    gui=BOLD guifg=#88bbee
hi gtkmmFuncs      gui=BOLD guifg=#adcbaa
hi gtkmmSignals    gui=BOLD guifg=#edbcea
hi gtkmmEnums      gui=NONE guifg=#dd9933
hi gtkmmEvents     gui=BOLD guifg=#aca4f9
hi gtkmmProperties gui=BOLD guifg=#fe8888

hi qt4Virtuals  gui=BOLD guifg=#eefcaa
hi qt4NameSpace gui=BOLD guifg=#a0f0f0
hi qt4Classes   gui=BOLD guifg=#aaccff
hi qt4Funcs     gui=NONE guifg=#ffdcba
hi qt4Signals   gui=BOLD guifg=#0adcfe
hi qt4Enums     gui=NONE guifg=#99ee99
hi qt4Events    gui=BOLD guifg=#aca4f9

hi boostNamespace gui=BOLD   guifg=#aa4488
hi boostClasses   gui=BOLD   guifg=#22bb77
hi boostFunctions gui=NONE   guifg=#abcdef
hi boostMacros    gui=ITALIC guifg=#00aa77

hi vtkClass    gui=BOLD guifg=#ffdece guibg=#ac5f1b
hi vtkFunction gui=NONE guifg=#f0bf89

hi pyModule   gui=BOLD guifg=#f26661
hi pyFunction gui=NONE guifg=#aa88ff
hi pyEnums    gui=NONE guifg=#00b408
hi pyData     gui=NONE guifg=#66ff88

hi cueClass     gui=BOLD guifg=#ee3288
hi cueNamespace gui=BOLD guifg=#26993f

hi qt4Class    gui=BOLD   guifg=#aaffbb
hi qt4Function gui=BOLD   guifg=#00aabb
hi qt4Macro    gui=ITALIC guifg=#aabbff

hi hoopsFunc gui=NONE guifg=#0044dd
"vim: sw=4
