" Vim color file
" pacific v1.0
" Maintainer:	Rob Valentine <hjzx5ga02@sneakemail.com>

" Dark Robot
"
"
" useful help screens & commands
" :syntax
" :he group-name
" :he highlight-groups
" :he cterm-colors
"
" useful online resource
" http://www.colorpicker.com

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
		syntax reset
    endif
endif

let g:colors_name="darkrobot"

hi Normal	guibg=#1D1D1D guifg=#FFFFFF

" syntax highlighting
hi Comment	  guifg=#B8B8B8
hi Title	guifg=#FFFFFF gui=none
hi Underlined guifg=#20b0eF gui=none
hi Statement  guifg=#FF6262 gui=none
hi Type		  guifg=#FEFFBA gui=none
hi PreProc    guifg=#FFA41B
hi Constant	  guifg=#DAC5FF guibg=#141414
hi Identifier guifg=#7EFAFF 

"highlight groups
hi Ignore	guifg=grey40
hi Todo		guifg=#000000 guibg=#60FF5C
hi Cursor	 guibg=#24FFFF guifg=#aa0000
hi MatchParen guibg=#FF605C guifg=#2424FF
hi Special guifg=#466EFF
hi Directory guifg=#FEFFBA gui=underline
hi DiffAdd guifg=#07AF07 guibg=#1D1D1D
hi DiffChange guifg=#FFFFFF guibg=#1D1D1D gui=underline
hi DiffDelete guifg=#FF0000 guibg=#1D1D1D
hi DiffText guifg=#60FF5C guibg=#1D1D1D gui=underline
hi ErrorMsg guifg=#FFFFFF guibg=#FF0000
hi VertSplit	guifg=#B8B8B8 guibg=#373737 gui=none
hi Folded	guibg=#373737 guifg=#FFFFFF "#A6D5F6
hi FoldColumn	guibg=#000000 guifg=#FFFFFF gui=bold
hi LineNr   guifg=#B8B8B8 guibg=#373737
hi ModeMsg guifg=#60FF5C gui=none
hi MoreMsg guifg=#60FF5C gui=none
hi Question guifg=#60FF5C gui=none
hi NonText  guifg=#A6A6A6 guibg=#222222
hi Search	guibg=#abcdef guifg=#aa0000
hi IncSearch	guifg=slategrey guibg=#FFDFB0
hi StatusLine	guibg=#770000 guifg=#ffffff gui=BOLD
hi StatusLineNC	guibg=#aaaaaa guifg=#660000 gui=none
hi Visual   guifg=#FFFFFF guibg=#07077B
hi Pmenu	guifg=#5A5A5A guibg=#A8FF97
hi PmenuSel	guifg=#2E2E2E guibg=#62FB44 

hi cueClass     gui=BOLD guifg=#ac5f1b
hi cueNamespace gui=BOLD guifg=#cc5699

hi cppStl                gui=BOLD guifg=#aaffbb
hi cppStreams            gui=BOLD guifg=#ffbbaa
hi cppKeyword            gui=NONE guifg=#bbaaff
hi cppCasts              gui=BOLD guifg=#fedc88
hi cppMath               gui=BOLD guifg=#66ff88
hi cFunction             gui=BOLD guifg=#aaffbb
hi cppLimitsVars         gui=BOLD guifg=#aaffbb
hi cppStrFunctions       gui=BOLD guifg=#aaddff
hi cppStlIterators       gui=BOLD guifg=#abcdef
hi cppNamespace          gui=BOLD guifg=#aaffbb
hi cppStreamFuncs        gui=BOLD guifg=#aaffbb
hi cppStreamFlags        gui=BOLD guifg=#aaffbb
hi cppOptions            gui=BOLD guifg=#aaffbb
hi cppStlFunctions       gui=BOLD guifg=#ffaabb
hi cppStlFunctors        gui=ITALIC guifg=#fb99fe

hi qt4Class   gui=BOLD guifg=#eefcaa

hi pocoNamespace gui=BOLD guifg=#ffaeff
hi pocoClasses   gui=BOLD guifg=#a4d2aa
hi pocoFunctions gui=BOLD guifg=#dacb09
hi pocoException gui=BOLD guifg=#adc0ef

hi boostNamespace  gui=BOLD guifg=#ffaeff guibg=#333333
hi boostClasses    gui=BOLD guifg=#ee9999
hi boostFunctions  gui=BOLD guifg=#2bdd4f
hi boostMacros     gui=NONE guifg=#0adcfe
hi boostTypeTraits gui=BOLD,ITALIC guifg=#0adcfe
hi boostTypedef    gui=UNDERLINE guifg=#acbdfe

hi cmakeSystemVariables gui=NONE guifg=#fedcda


"vim: sw=4
