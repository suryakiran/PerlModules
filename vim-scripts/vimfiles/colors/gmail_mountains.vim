" Vim color file
" vim: tw=0 ts=4 sw=4
" Maintainer:	Thomas R. Kimpton <tomk@emcity.net>
" Last Change:	2001 Nov 8
" Modified By: Surya Kiran
" This color scheme is meant for the person that spends hours
" and hours and hours and... in vim and wants some contrast to
" help pick things out in the files they edit, but doesn't want
" **C**O**N**T**R**A**S**T**!

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "gmail_mountains"

hi Normal			guifg=#a0d6fe guibg=#5e574d
hi StatusLine	    gui=BOLD guifg=#4e5862 guibg=#ffffff
hi StatusLineNC	    gui=NONE guibg=#808080 guifg=#ffffc0
hi Special 		    guifg=#00ff00
hi StorageClass 	guifg=#60d0a0			gui=none
hi Number		    guifg=#b1d28f
hi Type			    gui=NONE guifg=#ffdca8
hi Constant		    guifg=#dfbfff
hi Comment		    guifg=#b3925d
hi Cursor		    guibg=#f9ccca guifg=DarkRed
hi LineNr 		    guifg=#ccaa22
hi PreProc		    guifg=#a8774e
hi cIncluded        gui=ITALIC guifg=#a8dde0
hi Function         gui=ITALIC guifg=#f29b68
hi Statement	    gui=NONE guifg=#e5ff00
hi String		    gui=ITALIC guifg=#d5d1cf
hi Operator         gui=ITALIC guifg=#f2bb88

hi NonText		term=bold
hi NonText		ctermfg=LightBlue
hi NonText		gui=bold			guifg=LightBlue			guibg=grey80


hi identifier	ctermfg=DarkGreen
hi identifier	guifg=DarkGreen



hi label		ctermfg=yellow
hi label		guifg=#c06000

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

hi cppNamespace gui=italic guifg=#f9ccca

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
hi cppStreams      gui=BOLD,ITALIC guifg=#78af6b
hi cppFlags        gui=NONE guifg=#be00be
hi cppStl          gui=BOLD guifg=#fe5e5f
hi cppCasts        gui=NONE guifg=#00ffff
" vim: sw=2
"
hi link boostNamespace cppNamespace
