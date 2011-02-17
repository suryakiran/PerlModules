syn keyword cFunction   printf sprintf strcat strcmp strchr strrchr strstr memchr strsep strpbrk index strdup fopen free
syn keyword cFunction   rindex strtok spn memrchr exit memcmp strcasecmp strcoll bcmp casecmp strncmp isalpha fclose
syn keyword cFunction   strncpy strcpy strncasecmp isdigit atoi atol iscntrl isgraph islower isalnum isupper pclose
syn keyword cFunction   isascii isblank isprint ispunct isspace setenv putenv memcpy memccpy memmove memset malloc
syn keyword cFunction   strncat setjmp longjmp calloc realloc read write stat lstat fstat chmod perror execv fgets fputs getenv
syn keyword cFunction   setenv access strlen popen scandir fnmatch basename dirname nftw mkdir getpid strerror readlink rmdir
syn keyword cFunction   system get_current_dir_name

syn keyword cppStreams      cout cin endl cerr clog istringstream ostringstream streampos flush ends
syn keyword cppStreams      fstream ifstream ofstream ostream istream ostream_iterator istream_iterator
syn keyword cppStreams      ostrstream istrstream stringstream

syn keyword cppStlFunctions count_if mem_fun_ref begin end reserve size ptr_fun erase advance insert upper_bound base what rfind back_inserter count remove_copy remove_copy_if copy copy_n remove_if not1 not2 swap pop
syn keyword cppStlFunctions for_each bind2nd bind1st min_element max_element less_equal first lower_bound replace replace_if replace_copy replace_copy_if remove second find_first_of min max reverse reverse_copy
syn keyword cppStlFunctions push_back push_front c_str str precision rbegin rend search search_n capacity substr transform inner_product partial_sum accumulate adjacent_difference rotate binary_search mismatch
syn keyword cppStlFunctions rotate_copy sort stable_sort partial_sort find find_if mem_fun find_last_of find_first_not_of find_last_not_of epsilon distance length getline iter_swap push front pop_front
syn keyword cppStlFunctions inserter unique_copy set_intersection set_union set_difference unique compare imbue getloc resize make_pair lexicographical_compare fill fill_n

syn keyword cppLimitsVars   is_integer is_signed

syn keyword cppStrFunctions open close clear seekp tellp seekg tellg fill width


syn keyword cppStlIterators iterator reference npos size_type pointer
syn keyword cppStlIterators iterator reverse_iterator const_iterator const_reverse_iterator difference_type const_reference

syn keyword cppStlFunctors  negate plus minus multiplies divides modulus equal_to not_equal_to less greater
syn keyword cppStlFunctors  less_equal greater_equal logical_not logical_and logical_or

syn keyword cppStl          vector string list queue deque map set multiset multimap pair auto_ptr locale exception
syn keyword cppStl          binary_function unary_function numeric_limits numpunct_byname

syn keyword cppMath         sin cos tan asin acos atan sqrt ceil floor abs fabs pow log log10

syn keyword cppCasts        static_cast const_cast reinterpret_cast dynamic_cast

syn keyword cppNamespace    ios_base std
syn keyword cppStreamFuncs  setprecision resetiosflags setiosflags precision setw setfill setbase
syn keyword cppStreamFlags  fixed uppercase scientific showpoint dec hex boolalpha

syn keyword cppOptions      FTW_CHDIR FTW_DEPTH

syn keyword qt4Namespace Qt QDir
