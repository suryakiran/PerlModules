" Vim color file
"  Maintainer: Tiza
" Last Change: 25-Nov-2010 14:29:39 .
"     version: 1.0
" This color scheme uses a light background.

set background=light
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "autumn"

hi Normal       guifg=#404040 guibg=#fff4e8

" Search
hi IncSearch    gui=UNDERLINE guifg=#404040 guibg=#e0e040
hi Search       gui=NONE guifg=#544060 guibg=#f0c0ff

" Messages
hi ErrorMsg     gui=BOLD guifg=#f8f8f8 guibg=#4040ff
hi WarningMsg   gui=BOLD guifg=#f8f8f8 guibg=#4040ff
hi ModeMsg      gui=NONE guifg=#d06000 guibg=NONE
hi MoreMsg      gui=NONE guifg=#0090a0 guibg=NONE
hi Question     gui=NONE guifg=#8000ff guibg=NONE

" Split area
hi StatusLine   gui=BOLD guifg=#f8f8f8 guibg=#904838
hi StatusLineNC gui=BOLD guifg=#cccccc guibg=#504838
hi VertSplit    gui=NONE guifg=#f8f8f8 guibg=#904838
hi WildMenu     gui=BOLD guifg=#f8f8f8 guibg=#ff3030

" Diff
hi DiffText     gui=NONE guifg=#2850a0 guibg=#c0d0f0
hi DiffChange   gui=NONE guifg=#208040 guibg=#c0f0d0
hi DiffDelete   gui=NONE guifg=#ff2020 guibg=#eaf2b0
hi DiffAdd      gui=NONE guifg=#ff2020 guibg=#eaf2b0

" Cursor
hi Cursor       gui=NONE guifg=#ffffff guibg=#ff0000
hi lCursor      gui=NONE guifg=#ffffff guibg=#8040ff
hi CursorIM     gui=NONE guifg=#ffffff guibg=#8040ff

" Fold
hi Folded       gui=NONE guifg=#804030 guibg=#ffc0a0
hi FoldColumn   gui=NONE guifg=#a05040 guibg=#f8d8c4

" Other
hi Directory    gui=NONE guifg=#7050ff guibg=NONE
"hi LineNr       gui=NONE guifg=#ff0000 guibg=NONE
hi LineNr       gui=NONE guifg=brown guibg=NONE
"hi LineNr       gui=BOLD guifg=#ffff00 guibg=#000000
hi NonText      gui=BOLD guifg=#a05040 guibg=#ffe4d4
hi SpecialKey   gui=NONE guifg=#0080ff guibg=NONE
hi Title        gui=BOLD guifg=fg      guibg=NONE
hi Visual       gui=NONE guifg=#804020 guibg=#ffc0a0
" hi VisualNOS  gui=NONE guifg=#604040 guibg=#e8dddd

" Syntax group
hi Comment      gui=NONE guifg=#ff5050 guibg=NONE
hi Constant     gui=NONE guifg=#00884c guibg=NONE
hi Error        gui=BOLD guifg=#f8f8f8 guibg=#4040ff
hi Identifier   gui=NONE guifg=#b07800 guibg=NONE
hi Ignore       gui=NONE guifg=bg guibg=NONE
hi PreProc      gui=NONE guifg=#0090a0 guibg=NONE
hi Special      gui=NONE guifg=#8040f0 guibg=NONE
hi Statement    gui=BOLD guifg=#80a030 guibg=NONE
hi Todo         gui=BOLD,UNDERLINE guifg=#0080f0 guibg=NONE
hi Type         gui=BOLD guifg=#b06c58 guibg=NONE
hi Underlined   gui=UNDERLINE guifg=blue guibg=NONE

hi cFunction       gui=NONE guifg=#00aaff
hi cppStl          gui=BOLD guifg=#ff55dd
hi cppNamespace    gui=NONE guifg=#008800
hi cppStreamFlags  gui=NONE guifg=#c000cf
hi cppStreamFuncs  gui=NONE guifg=#660faf
hi cppStlFunctions gui=BOLD guifg=#ff5b5a
hi cppStlIterators gui=BOLD guifg=#82a3cb
hi cppStlFunctors  gui=BOLD guifg=#87b28f
hi cppStrFunctions gui=BOLD guifg=#33aaff
hi cppMath         gui=NONE guifg=#3388ff
hi cppStreams      gui=BOLD guifg=#b6af87
hi cppFlags        gui=NONE guifg=#be00be
hi cppKeyword      gui=NONE guifg=#fe9e3f
hi cppCasts        gui=NONE guifg=#00aaaa

hi qt4Virtuals  gui=BOLD guifg=#eefcaa
hi qt4NameSpace gui=BOLD guifg=#a0f0f0
hi qt4Classes   gui=BOLD guifg=#aaccff
hi qt4Funcs     gui=BOLD guifg=#888800
hi qt4Signals   gui=BOLD guifg=#0adcfe
hi qt4Enums     gui=NONE guifg=#99ee99
hi qt4Events    gui=BOLD guifg=#aca4f9

hi boostNamespace gui=BOLD guifg=#aa4488
hi boostClasses   gui=BOLD guifg=#221188
hi boostFunctions gui=BOLD guifg=#00aabb
hi boostMacros    gui=NONE guifg=#0077aa

hi pocoNamespace gui=BOLD guifg=#ffaeff
hi pocoClasses   gui=BOLD guifg=#a4d2aa
hi pocoFunctions gui=BOLD guifg=#6d8aa1
hi pocoException gui=BOLD guifg=#adc0ef

hi vtkClass    gui=BOLD guifg=#ffdece guibg=#ac5f1b
hi vtkFunction gui=NONE guifg=#f0bf89

hi pyModule   gui=BOLD guifg=#f26661
hi pyFunction gui=NONE guifg=#aa88ff
hi pyEnums    gui=NONE guifg=#00b408
hi pyData     gui=BOLD guifg=#660088

hi cueClass     gui=BOLD guifg=#3288ee
hi cueNamespace gui=BOLD guifg=#26993f

hi hoopsFunc gui=NONE guifg=#0044dd
