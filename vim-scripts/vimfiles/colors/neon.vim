" Vim color file
"  Maintainer: Tiza
" Last Change: 10-Sep-2010 14:56:31 .
"     version: 1.2
" This color scheme uses a dark background.

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "neon"

hi Normal       guifg=#f0f0f0 guibg=#303030

" Search
hi IncSearch    gui=UNDERLINE guifg=#80ffff guibg=#0060c0
hi Search       gui=NONE guifg=#ffffa8 guibg=#808000
" hi Search       gui=NONE guifg=#b0ffb0 guibg=#008000

" Messages
hi ErrorMsg     gui=BOLD guifg=#ffa0ff guibg=NONE
hi WarningMsg   gui=BOLD guifg=#ffa0ff guibg=NONE
hi ModeMsg      gui=BOLD guifg=#a0d0ff guibg=NONE
hi MoreMsg      gui=BOLD guifg=#70ffc0 guibg=#8040ff
hi Question     gui=BOLD guifg=#e8e800 guibg=NONE

" Split area
hi StatusLine   gui=BOLD guifg=#aa0000 guibg=#c4c4c4
hi StatusLineNC gui=NONE guifg=#707070 guibg=#c4c4c4
hi VertSplit    gui=NONE guifg=#707070 guibg=#c4c4c4
hi WildMenu     gui=NONE guifg=#000000 guibg=#ff80c0

" Diff
hi DiffText     gui=NONE guifg=#ff78f0 guibg=#a02860
hi DiffChange   gui=NONE guifg=#e03870 guibg=#601830
hi DiffDelete   gui=NONE guifg=#a0d0ff guibg=#0020a0
hi DiffAdd      gui=NONE guifg=#a0d0ff guibg=#0020a0

" Cursor
hi Cursor       gui=NONE guifg=#000000 guibg=#ffff00
hi lCursor      gui=NONE guifg=#ffffff guibg=#8800ff
hi CursorIM     gui=NONE guifg=#ffffff guibg=#8800ff

" Fold
hi Folded       gui=NONE guifg=#40f0f0 guibg=#006090
hi FoldColumn   gui=NONE guifg=#40c0ff guibg=#404040

" Other
hi Directory    gui=NONE guifg=#c8c8ff guibg=NONE
hi LineNr       gui=NONE guifg=#d4d0c8 guibg=NONE
hi NonText      gui=BOLD guifg=#d84070 guibg=#383838
hi SpecialKey   gui=BOLD guifg=#8888ff guibg=NONE
hi Title        gui=BOLD guifg=fg      guibg=NONE
hi Visual       gui=NONE guifg=#b0ffb0 guibg=#008000
hi VisualNOS    gui=NONE guifg=#ffe8c8 guibg=#c06800

" Syntax group
hi Comment      gui=NONE guifg=#c0c0c0 guibg=NONE
"hi Constant     gui=NONE guifg=#92d4ff guibg=NONE
hi Constant     gui=NONE guifg=#faafbf guibg=NONE
hi Error        gui=BOLD guifg=#ffffff guibg=#8000ff
hi Identifier   gui=NONE guifg=#40f8f8 guibg=NONE
hi Ignore       gui=NONE guifg=bg      guibg=NONE
hi PreProc      gui=NONE guifg=#ffa8ff guibg=NONE
hi Special      gui=BOLD guifg=#ffc890 guibg=NONE
hi Statement    gui=NONE guifg=#dcdc78 guibg=NONE
hi Todo         gui=BOLD,UNDERLINE guifg=#ff80d0 guibg=NONE
hi Type         gui=NONE guifg=#60f0a8 guibg=NONE
hi Underlined   gui=UNDERLINE guifg=fg guibg=NONE
hi Boolean      gui=ITALIC guifg=#fedcba
hi cIncluded    gui=ITALIC guifg=#00ffff guibg=#555555

hi fxSignal   gui=NONE guibg=#163a7a guifg=#ffff00
hi fxMacro    gui=BOLD guibg=#d4d0c8 guifg=#e23621 
hi fxFunction gui=BOLD guifg=#eaa1a1
hi fxClass    gui=BOLD guifg=#ffc890
hi fxOptions  gui=NONE guifg=#99ee99

hi cFunction       gui=NONE guifg=#00aaff
hi cppStl          gui=BOLD guifg=#ff52a7
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

hi qt4Virtuals  gui=BOLD guifg=#eefcaa
hi qt4NameSpace gui=BOLD guifg=#a0f0f0
hi qt4Class     gui=BOLD guifg=#ffaacc
hi qt4Funcs     gui=NONE guifg=#aaccff
hi qt4Signals   gui=BOLD guifg=#0adcfe
hi qt4Enums     gui=NONE guifg=#99ee99
hi qt4Events    gui=BOLD guifg=#aca4f9
hi qt4Macro     gui=ITALIC guifg=#aabbff

hi javaClass     gui=BOLD guifg=#ffccaa
hi javaFunctions gui=BOLD guifg=#eaa1a1
hi javaKeywords  gui=NONE guifg=#f4ddb2
hi javaVars      gui=NONE guifg=#99ee99
hi javaExceps    gui=BOLD guibg=#d4d0c8 guifg=#e23621 
hi javaAccess    gui=BOLD guifg=#0adcfe

hi boostNamespace gui=BOLD guifg=#ffaeff
hi boostClasses   gui=BOLD guifg=#f4ddb2
hi boostFunctions gui=BOLD guifg=#0adcfe
hi boostMacros    gui=NONE guifg=#efcda0

hi pocoNamespace gui=BOLD guifg=#ffaeff
hi pocoClasses   gui=BOLD guifg=#a4d2aa
hi pocoFunctions gui=BOLD guifg=#dacb09
hi pocoException gui=BOLD guifg=#adc0ef

hi vtkClass    gui=BOLD guifg=#ffdece guibg=#ac5f1b
hi vtkFunction gui=NONE guifg=#f0bf89

hi cueClass     gui=BOLD guifg=#ac5f1b
hi cueNamespace gui=NONE guibg=#345678 guifg=#ffff00

hi pyModule   gui=BOLD guifg=#f26661
hi pyFunction gui=NONE guifg=#99ee99
hi pyEnums    gui=NONE guifg=#f4ddb2
hi pyData     gui=BOLD guifg=#ffccaa

hi hoopsFunc gui=BOLD guifg=#faadff

