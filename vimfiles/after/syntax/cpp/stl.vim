syn match cppStreams "[oi]\?\(string\)\?stream\s\+" 
syn match cppStreams "[oi]\?strstream\s\+"
syn match cppStreams "\(f\|if\|of\|o\)stream\s\+"
syn match cppStreams "[oi]\?stream_iterator\s*<"he=e-1
syn match cppStreams "c\(out\|in\|err\|log\)"
syn match cppStreams "end[sl]"

syn keyword cppStreams      streampos flush

syn match cppStlFunctions "\(count\|replace\(_copy\)\?\|remove\(_copy\)\?\|copy\|find\)\(_if\)\?[(\s]\+"he=e-1
syn match cppStlFunctions "[r]\?\(begin\|end\)[(\s]\+"he=e-1
syn match cppStlFunctions "find_\(first\|last\)\(_not\)\?_of[(\s]\+"he=e-1
syn match cppStlFunctions "\(min\|max\)\(_element\)\?[(\s]\+"he=e-1
syn match cppStlFunctions "not[12][(\s]\+"he=e-1
syn match cppStlFunctions "\(fill\|search\|copy\)\(_n\)\?[(\s]\+"he=e-1
syn match cppStlFunctions "\(c_\|sub\)\?str[(\s]\+"he=e-1
syn match cppStlFunctions "push\(_back\|_front\)\?[(\s]\+"he=e-1
syn match cppStlFunctions "pop\(_front\)\?[(\s]\+"he=e-1
syn match cppStlFunctions "\(back_\)\?inserter[(\s]\+"he=e-1
syn match cppStlFunctions "set_\(union\|difference\|intersection\)[(\s]\+"he=e-1
syn match cppStlFunctions "\(reverse\|unique\|rotate\)_copy[(\s]\+"he=e-1
syn match cppStlFunctions "\(stable_\|partial_\)\?sort[(\s]\+"he=e-1
syn match cppStlFunctions "mem_fun\(_ref\)\?[(\s]\+"he=e-1
syn match cppStlFunctions "bind\(er\)\?\(1st\|2nd\)[(\s]\+"he=e-1
syn match cppStlFunctions "\(pointer_to_\)\?\(unary\|binary\)_function[(\s]\+"he=e-1
syn match cppStlFunctions "\(re\)\?size[(\s]\+"he=e-1
syn match cppStlFunctions "\(upper\|lower\)_bound[(\s]\+"he=e-1
syn match cppStlFunctions "\(not_\)\?equal_to[(\s]\+"he=e-1
syn match cppStlFunctions "\(const_\)\?mem_fun[1]\?\(_ref\)\?_t[(\s]\+"he=e-1
syn match cppStlFunctions "\(unary\|binary\)_negate[(\s]\+"he=e-1

syn keyword cppStlFunctions reserve ptr_fun erase advance insert base what rfind mismatch for_each first second reverse transform
syn keyword cppStlFunctions precision capacity inner_product partial_sum adjacent_difference rotate binary_search lexicographical_compare
syn keyword cppStlFunctions epsilon distance length getline iter_swap front unique compare imbue getloc accumulate swap make_pair

syn match cppStlFunctors   "logical_\(and\|or\|not\)"
syn match cppStlFunctors   "\(greater\|less\)\(_equal\)\?"
syn keyword cppStlFunctors plus minus multiplies divides modulus negate
