" Vim color file
" vim: tw=0 ts=4 sw=4
" Maintainer:	Thomas R. Kimpton <tomk@emcity.net>
" Last Change:	2001 Nov 8
" Modified By: Surya Kiran
" This color scheme is meant for the person that spends hours
" and hours and hours and... in vim and wants some contrast to
" help pick things out in the files they edit, but doesn't want
" **C**O**N**T**R**A**S**T**!

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "gmail_dusk"

hi Normal		ctermbg=White		ctermfg=Black
" 660066 = darkish purple
"hi Normal		guifg=#660066		guibg=grey80
"hi Normal			guibg=grey80 guifg=#660000
hi Normal			guibg=#e6e6dd guifg=#c7400b

hi NonText		term=bold
hi NonText		ctermfg=LightBlue
hi NonText		gui=bold			guifg=LightBlue			guibg=grey80

hi Comment		ctermfg=DarkGrey	ctermbg=White
" 444499 = darkish blue grey
hi Comment		guifg=#444499

hi Constant		term=underline
hi Constant		ctermfg=Magenta
hi Constant		guifg=#7070a0

hi Statement	term=bold
hi Statement	cterm=bold			ctermfg=DarkGreen		ctermbg=White
hi Statement	guifg=#4169db		gui=bold

hi identifier	ctermfg=DarkGreen
hi identifier	guifg=DarkGreen

hi preproc		ctermfg=DarkGreen
hi preproc		guifg=#804080 gui=ITALIC
hi cIncluded    gui=ITALIC guifg=#0000aa

hi type			ctermfg=DarkBlue
hi type			gui=NONE guifg=DarkMagenta

hi label		ctermfg=yellow
hi label		guifg=#c06000

hi operator		ctermfg=darkYellow
hi operator		guifg=DarkGreen		gui=bold

hi StorageClass	ctermfg=DarkRed			ctermbg=White
hi StorageClass	guifg=#a02060			gui=bold

hi Number		ctermfg=Blue		ctermbg=White
hi Number		guifg=Blue

hi Special		term=bold
hi Special		ctermfg=LightRed
hi Special		guifg=#ff0000

hi String		term=underline  cterm=bold ctermfg=magenta  guifg=#503000

hi Cursor		ctermbg=DarkMagenta
hi Cursor		guibg=#880088		guifg=LightGrey

hi lCursor		guibg=Cyan			guifg=Black

hi ErrorMsg		term=standout
hi ErrorMsg		ctermbg=DarkRed		ctermfg=White
hi ErrorMsg		guibg=DarkRed		guifg=White

hi DiffText		term=reverse
hi DiffText		cterm=bold			ctermbg=DarkRed
hi DiffText		gui=bold			guibg=DarkRed

hi Directory	term=bold
hi Directory	ctermfg=LightRed
hi Directory	guifg=Red gui=underline

hi LineNr		term=underline
hi LineNr		ctermfg=Yellow
hi LineNr		guifg=#ccaa22

hi MoreMsg		term=bold
hi MoreMsg		ctermfg=LightGreen
hi MoreMsg		gui=bold			guifg=SeaGreen

hi Question		term=standout
hi Question		ctermfg=LightGreen
hi Question		gui=bold			guifg=DarkGreen

hi Search		term=reverse
hi Search		ctermbg=DarkYellow	ctermfg=Black
hi Search		guibg=#887722		guifg=Black

hi SpecialKey	term=bold
hi SpecialKey	ctermfg=LightBlue
hi SpecialKey	guifg=Blue

hi SpecialChar	ctermfg=DarkGrey	ctermbg=White
hi SpecialChar	guifg=DarkGrey		gui=bold

hi Title		term=bold
hi Title		ctermfg=LightMagenta
hi Title		gui=underline			guifg=DarkMagenta

hi WarningMsg	term=standout
hi WarningMsg	ctermfg=LightRed
hi WarningMsg	guifg=DarkBlue		guibg=#9999cc

hi WildMenu		term=standout
hi WildMenu		ctermbg=Yellow		ctermfg=Black
hi WildMenu		guibg=Yellow		guifg=Black gui=underline

hi Folded		term=standout
hi Folded		ctermbg=LightGrey	ctermfg=DarkBlue
hi Folded		guibg=LightGrey		guifg=DarkBlue

hi FoldColumn	term=standout
hi FoldColumn	ctermbg=LightGrey	ctermfg=DarkBlue
hi FoldColumn	guibg=Grey			guifg=DarkBlue

hi DiffAdd		term=bold
hi DiffAdd		ctermbg=DarkBlue
hi DiffAdd		guibg=DarkBlue

hi DiffChange	term=bold
hi DiffChange	ctermbg=DarkMagenta
hi DiffChange	guibg=DarkMagenta

hi DiffDelete	term=bold
hi DiffDelete	ctermfg=Blue		ctermbg=DarkCyan
hi DiffDelete	gui=bold			guifg=Blue			guibg=DarkCyan

hi Ignore		ctermfg=LightGrey
hi Ignore		guifg=grey90

hi IncSearch	term=reverse
hi IncSearch	cterm=reverse
hi IncSearch	gui=reverse

hi ModeMsg		term=bold
hi ModeMsg		cterm=bold
hi ModeMsg		gui=bold

hi StatusLine	term=reverse,bold
hi StatusLine	cterm=reverse,bold
hi StatusLine	gui=BOLD guibg=#b37a6b guifg=#ffffff

hi StatusLineNC	term=reverse
hi StatusLineNC	cterm=reverse
hi StatusLineNC	gui=NONE guibg=#dfcbc3 guifg=#555555

hi VertSplit	term=reverse
hi VertSplit	cterm=reverse
hi VertSplit	gui=NONE guibg=#888888 guifg=#ced6d8

hi Visual		term=reverse
hi Visual		cterm=reverse
hi Visual		gui=reverse			guifg=DarkGrey		guibg=fg

hi VisualNOS	term=underline,bold
hi VisualNOS	cterm=underline,bold
hi VisualNOS	gui=underline,bold

hi Todo			gui=reverse

hi gtkmmNameSpace gui=bold guifg=#ff0000
hi qt4Class gui=bold guifg=#008888
hi gtkmmFuncs gui=bold guifg=#aa0000
hi gtkmmEvents gui=bold guifg=#ae0cba
hi gtkmmSignals gui=bold guifg=#ff0000 guibg=#bbaaff
hi gtkmmVirtuals gui=bold guifg=#fa0cfe
hi gtkmmEnums gui=bold guifg=#ff0000 guibg=#bbaaff

hi cppNamespace gui=italic guifg=#003300

hi boostClasses gui=bold guifg=#aa0000
hi boostFunctions gui=none  guifg=#800080

hi cFunction       gui=NONE guifg=#00aaff
hi cppKeyword      gui=NONE guifg=#ff52a7
hi cppStreamFlags  gui=NONE guifg=#f0ccfc
hi cppStreamFuncs  gui=NONE guifg=#68d8ff
hi cppStlFunctions gui=NONE guifg=#00aa33
hi cppStlIterators gui=BOLD guifg=#82a3cb
hi cppStlFunctors  gui=BOLD guifg=#87b28f
hi cppStrFunctions gui=BOLD guifg=#33aaff
hi cppMath         gui=NONE guifg=#f4ddb2
hi cppStreams      gui=BOLD guifg=#b6af87
hi cppFlags        gui=NONE guifg=#be00be
hi cppStl          gui=BOLD guifg=#fe5e5f
hi cppCasts        gui=NONE guifg=#00ffff
" vim: sw=2
"
hi link boostNamespace cppNamespace