syn keyword sconsClass      Environment ARGUMENTS Export Import Options EnumOption ListOption BoolOption Help

syn keyword sconsMethod     Append Prepend Program Alias ParseConfig get RES Dictionary SharedLibrary Replace Copy Clone File MSVSProject MSVSSolution
syn keyword sconsMethod     BuildDir Add subst GenerateHelpText Object Tool StaticLibrary Install Depends AppendUnique AddPostAction AlwaysBuild

syn keyword sconsKeys       target source ENV toolpath options allowed_values tools

syn keyword sconsFlags      CPPPATH CCFLAGS LIBS LIBPATH LINKFLAGS CPPDEFINES CPPFLAGS CXX CC

syn keyword sconsExtMethod  Qt4AddModules

hi def link sconsFlags      pyEnums
hi def link sconsClass      pyModule
hi def link sconsMethod     pyFunction
hi def link sconsKeys       cppStreams
hi def link sconsExtMethod  PreProc
