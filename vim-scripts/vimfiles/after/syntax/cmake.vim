syn keyword cmakeStatement
	\ FLEX_TARGET FUNCTION ENDFUNCTION RETURN

syn match cmakeStatement "CHECK_INCLUDE_FILE\(_CXX\|S\)\?[\s(]"he=e-1
syn match cmakeStatement "QT4_\(ADD_RESOURCES\|WRAP_UI\)[\s(]"he=e-1
syn match cmakeStatement "\(SET\|GET\)_PROPERTY[\s(]"he=e-1
syn match cmakeStatement "CHECK_\(TYPE_SIZE\|\(SYMBOL\|LIBRARY\)_EXISTS\)[\s(]"he=e-1

syn keyword cmakeOperators
	\ DEPENDS

syn keyword cmakeSystemVariables
	\ UNIX
