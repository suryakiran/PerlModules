" Vim color file
"  Maintainer: Surya
"  Last Change: 12-Nov-2008 09:36:20 . 
"     version: 1.0
" This color scheme uses a dark background.
set background=dark
hi clear
if exists("syntax_on")
   syntax reset 
endif

let g:colors_name = "blackbeauty"
hi Normal		  guifg=white  guibg=black
hi Scrollbar	  guibg=darkgray guifg=darkgray
hi Menu			  guifg=black guibg=gray
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=Blue
hi NonText		  term=bold  cterm=bold  ctermfg=darkred  gui=bold	guifg=Blue
hi Directory	  term=bold  cterm=bold  ctermfg=brown	guifg=Blue
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=grey  ctermbg=blue  gui=bold guifg=White  guibg=brown
hi Search		  term=reverse	ctermfg=white  ctermbg=red	gui=bold guifg=#000000 guibg=Magenta
hi MoreMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg		  term=bold  cterm=bold  gui=bold  guifg=White	guibg=Blue
hi LineNr		  term=underline  cterm=bold  ctermfg=darkcyan	guibg=brown guifg=white
hi Question		  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guibg=white guifg=brown
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title		  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=Magenta
hi Visual		  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkblue  gui=bold guifg=cyan guibg=Black
hi Cursor		  guifg=bg	guibg=cyan
hi Comment		  term=bold  cterm=bold ctermfg=cyan  guifg=#80a0ff
hi Constant		  term=underline  cterm=bold ctermfg=magenta  guifg=#ffa0a0
hi String		  term=underline  cterm=bold ctermfg=magenta  guifg=#00a0a0
hi Number		  term=underline  cterm=bold ctermfg=magenta  guifg=#00ffff
hi Special		  term=bold  gui=bold cterm=bold ctermfg=red  guifg=Orange
hi Identifier	  term=underline   ctermfg=brown  guifg=#40ffff
hi Statement	  term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
hi PreProc		  term=underline  ctermfg=darkblue	guifg=#ff80ff
hi Type			  term=underline  cterm=bold ctermfg=lightgreen  gui=bold  guifg=#60ff60
hi Error		    gui=bold guifg=#00ffff guibg=Black
hi Todo			  term=standout  ctermfg=black	ctermbg=darkcyan  guifg=Blue  guibg=Yellow
"hi VertSplit	guifg=#00FFFF guibg=#000000 gui=bold
hi link IncSearch		Visual
hi link Character		Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special

hi fxSignal gui=NONE guibg=#163a7a guifg=#ffff00
hi fxMacro gui=BOLD guibg=#d4d0c8 guifg=#e23621 
hi fxFunction gui=BOLD guifg=#eaa1a1
hi fxClass gui=BOLD guifg=#ffc890
hi fxOptions gui=NONE guifg=#99ee99

"hi cppStl gui=BOLD guifg=#ff52a7
"hi cppStlFunctions gui=BOLD guifg=#a52a2a
"hi cppStlIterators gui=BOLD guifg=#fddcbc
"hi cppStlFunctions gui=BOLD guifg=#ffaaff
"hi cppStlFunctors  gui=BOLD guifg=#87b28f
"hi cppMath gui=NONE guifg=#68d8ff
"hi cppStreams gui=BOLD guifg=#b6af87
"hi cppStrFunctions gui=BOLD guifg=#ff0000

hi cFunction       gui=NONE guifg=#00aaff
hi cppStl          gui=BOLD guifg=#ff52a7
hi cppNamespace    gui=NONE guifg=#afff00
hi cppStreamFlags  gui=NONE guifg=#f0ccfc
hi cppStreamFuncs  gui=NONE guifg=#68d8ff
hi cppStlFunctions gui=BOLD guifg=#ff5b5a
hi cppStlIterators gui=BOLD guifg=#82a3cb
hi cppStlFunctors  gui=BOLD guifg=#87b28f
hi cppLimitsVars   gui=NONE guifg=#88ffa8
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

hi hoopsFunc gui=BOLD guifg=#aafadf

hi gtkmmVirtuals   gui=BOLD guifg=#eefcaa
hi gtkmmNameSpace  gui=BOLD guifg=#a0f0f0
hi gtkmmClasses    gui=BOLD guifg=#ffccaa
hi gtkmmFuncs      gui=BOLD guifg=#ffabcd
hi gtkmmSignals    gui=BOLD guifg=#0adcfe
hi gtkmmEnums      gui=NONE guifg=#99ee99
hi gtkmmEvents     gui=BOLD guifg=#aca4f9
hi gtkmmProperties gui=BOLD guifg=#fca4f9

hi javaClass     gui=BOLD guifg=#ffccaa
hi javaFunctions gui=BOLD guifg=#eaa1a1
hi javaKeywords  gui=NONE guifg=#f4ddb2
hi javaVars      gui=NONE guifg=#99ee99
hi javaExceps    gui=BOLD guibg=#d4d0c8 guifg=#e23621 
hi javaAccess    gui=BOLD guifg=#0adcfe

hi boostNamespace gui=BOLD guifg=#ffaeff
hi boostClasses   gui=BOLD guifg=#f4ddb2
hi boostFunctions gui=BOLD guifg=#0adcfe
hi boostFlags     gui=NONE guifg=#ffffcc
hi boostMacros    gui=NONE guifg=#aaaaff

hi vtkClass    gui=BOLD guifg=#ffdece guibg=#ac5f1b
hi vtkFunction gui=NONE guifg=#f0bf89

hi pyModule   gui=BOLD guifg=#f26661
hi pyFunction gui=NONE guifg=#99ee99
hi pyEnums    gui=NONE guifg=#f4ddb2
hi pyData     gui=BOLD guifg=#ffccaa

hi pngFunctions gui=BOLD guifg=#fbcdef
hi pngVariables gui=NONE guifg=#fedcba
hi pngConstants gui=NONE guifg=#99ee99

hi qt4Class     gui=BOLD guifg=#ffdece
