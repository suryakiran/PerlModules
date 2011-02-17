" Vim color file
" Maintainer: Rafal Sulejman <rms@poczta.onet.pl>
" Last Change:  08-Dec-2009 09:28:22 .18
"
" This color scheme uses a black (dark) background.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "fnaqevan"

hi Normal       guibg=#000000 guifg=#C0C0C0 gui=NONE

" Main colors
hi Constant     guibg=#000000 guifg=#00B8E0 gui=NONE
hi Identifier   guibg=#000000 guifg=#FFA850 gui=NONE
hi Special      guibg=#000000 guifg=#B899C8 gui=NONE
hi Statement    guibg=#000000 guifg=#EEE840 gui=NONE
hi Preproc      guibg=#000000 guifg=#00B098 gui=NONE
hi Type         guibg=#000000 guifg=#40D040 gui=NONE

" Secondary colors
hi Comment      guibg=#000000 guifg=#006699 gui=NONE
hi Visual       guibg=#005900 guifg=#40C940 gui=NONE
hi VisualNOS    guibg=#005900 guifg=#40C940 gui=NONE
hi Search       guibg=#707000 guifg=#FFFF00 gui=NONE
hi IncSearch    guibg=#D05000 guifg=#FFE000 gui=NONE

" Special colors
hi WarningMsg   guibg=#707000 guifg=#FFFF00 gui=NONE
hi MoreMsg      guibg=#000070 guifg=#00B8E0 gui=NONE
hi ErrorMsg     guibg=#CC0000 guifg=#FFEE00 gui=NONE
hi ModeMsg      guibg=#000000 guifg=#E8E8E8 gui=NONE
hi WildMenu     guibg=#5f5f5f guifg=#FFEE60 gui=NONE
hi StatusLineNC guifg=#1f1f1f guibg=#F0F0F0 gui=NONE
hi StatusLine   guifg=#000000 guibg=#eeaa3a gui=NONE
hi VertSplit    guibg=#1f1f1f guifg=#F0F0F0 gui=NONE
hi Error        guibg=#EE0000 guifg=#FFDD60 gui=NONE
hi Todo         guibg=#EEE000 guifg=#000000 gui=NONE
hi Title        guibg=#000000 guifg=#ffffff gui=NONE
hi Question     guibg=#005900 guifg=#40E840 gui=NONE
hi LineNr       guibg=#000000 guifg=#F0B0E0 gui=NONE
hi Directory    guibg=#000000 guifg=#D0D0D0 gui=NONE
hi NonText      guibg=#000000 guifg=#FFDDAA gui=NONE
hi SpecialKey   guibg=#000000 guifg=#FFFFFF gui=NONE

" Diff colors
hi DiffAdd      guibg=#505050 guifg=#D0D0D0 gui=NONE
hi DiffChange   guibg=#505050 guifg=#D0D0D0 gui=NONE
hi DiffDelete   guibg=#505050 guifg=#D0D0D0 gui=NONE
hi DiffText     guibg=#707070 guifg=#F0F0F0 gui=NONE

" Folding colors
hi Folded       guibg=#703070 guifg=#DDB8DD gui=NONE
hi FoldColumn   guibg=#C4153B guifg=#F0F0F0 gui=NONE

" Cursor colors
hi Cursor       guibg=#FFFFFF guifg=#000000 gui=NONE
hi icursor      guibg=#FFEE00 guifg=#000000 gui=NONE
hi ncursor      guibg=#FFFFFF guifg=#000000 gui=NONE
hi rcursor      guibg=#00CCFF guifg=#000000 gui=NONE
hi lcursor      guibg=#40D040 guifg=#000000 gui=NONE

hi pyModule   gui=BOLD guifg=#66f2fa
hi pyFunction gui=NONE guifg=#ee99ee
hi pyEnums    gui=NONE guifg=#d2f4d4
hi pyData     gui=BOLD guifg=#ffccaa

hi hoopsFunc gui=BOLD guifg=#fa8d8f

hi cFunction       gui=NONE guifg=#00aaff
hi cppStl          gui=BOLD guifg=#ffa752
hi cppNamespace    gui=NONE guifg=#afff00
hi cppStreamFlags  gui=NONE guifg=#f0ccfc
hi cppStreamFuncs  gui=NONE guifg=#68d8ff
hi cppStlFunctions gui=BOLD guifg=#ff5b5a
hi cppStlIterators gui=BOLD guifg=#82a3cb
hi cppStlFunctors  gui=BOLD guifg=#87b28f
hi cppStrFunctions gui=BOLD guifg=#33aaff
hi cppMath         gui=NONE guifg=#f4ddb2
hi cppStreams      gui=BOLD guifg=#b6af87
hi cppFlags        gui=NONE guifg=#be00be
hi cppKeyword      gui=NONE guifg=#fe9e3f
hi cppCasts        gui=NONE guifg=#00ffff

hi xmWidgets   gui=BOLD guifg=#ff52a7
hi xmClasses   gui=BOLD guifg=#ffabcd
hi xmCreates   gui=BOLD guifg=#ffc890
hi xmMacros    gui=NONE guifg=#99ee99
hi xmVars      gui=NONE guifg=#f4ddb2
hi xmArgs      gui=NONE guifg=#b6af87
hi xmFunctions gui=BOLD guifg=#eaa1a1
hi xtFunctions gui=BOLD guifg=#fff0a0
hi xmCbs       gui=NONE guifg=#00ffff
hi xmEnums     gui=BOLD guifg=#ff52a7
hi xmStructs   gui=NONE guifg=#ffcfff 
hi xlibVars    gui=NONE guifg=#ffa2a7
hi xlibFuncs   gui=BOLD guifg=#aaaaff

hi gtkWidget gui=BOLD guifg=#a0a0ff
hi gtkEnums  gui=NONE guifg=#99ee99
hi gtkFuncs  gui=BOLD guifg=#eaa1a1
hi gtkMacros gui=BOLD guifg=#33aaff
hi gtkVars   gui=NONE guifg=#f0f000
hi glibFuncs gui=BOLD guifg=#ff9eff

hi gtkmmVirtuals   gui=BOLD guifg=#eefcaa
hi gtkmmNameSpace  gui=BOLD guifg=#a0f0f0
hi gtkmmClasses    gui=BOLD guifg=#ffccaa
hi gtkmmFuncs      gui=BOLD guifg=#ffabcd
hi gtkmmSignals    gui=BOLD guifg=#0adcfe
hi gtkmmEnums      gui=NONE guifg=#99ee99
hi gtkmmEvents     gui=BOLD guifg=#aca4f9
hi gtkmmProperties gui=BOLD guifg=#bafdef

hi qt4Virtuals  gui=BOLD guifg=#eefcaa
hi qt4NameSpace gui=BOLD guifg=#a0f0f0
hi qt4Classes   gui=BOLD guifg=#aaccff
hi qt4Funcs     gui=BOLD guifg=#ffabcd
hi qt4Signals   gui=BOLD guifg=#0adcfe
hi qt4Enums     gui=NONE guifg=#99ee99
hi qt4Events    gui=BOLD guifg=#aca4f9

hi javaClass     gui=BOLD guifg=#ffccaa
hi javaFunctions gui=BOLD guifg=#eaa1a1
hi javaKeywords  gui=NONE guifg=#f4ddb2
hi javaVars      gui=NONE guifg=#99ee99
hi javaExceps    gui=BOLD guibg=#d4d0c8 guifg=#e23621 
hi javaAccess    gui=BOLD guifg=#0adcfe

hi boostNamespace gui=BOLD guifg=#ffaeff
hi boostClasses   gui=BOLD guifg=#f4ddb2
hi boostFunctions gui=BOLD guifg=#0adcfe
hi boostMacros    gui=ITALIC guifg=#a0cdef
hi boostSpirit    gui=ITALIC guifg=#88ff88

hi vtkClass    gui=BOLD guifg=#ffdece guibg=#ac5f1b
hi vtkFunction gui=NONE guifg=#f0bf89
