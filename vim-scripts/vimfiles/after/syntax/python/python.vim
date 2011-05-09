syn keyword pyModule   os sys path re sets glob stdout fnmatch string shutil zipfile socket platform

syn keyword pyData     set list tuple

syn keyword pyFunction len append getenv access range istype open join insert globals remove islink basename str
syn keyword pyFunction read readline readlines startswith endswith Set environ popen dirname readlink copy
syn keyword pyFunction replace add close sort write union locals copy2 all_children exists extract
syn keyword pyFunction gethostname findall int getcwd node processor release system version match sub groups upper splitext

syn keyword pyEnums    F_OK R_OK W_OK X_OK
syn keyword pyClass    Dir map unzip

syn match pyFunction "[lr]\?strip[\s(]"he=e-1
syn match pyFunction "r\?\(find\|split\)[\s(]"he=e-1
syn match pyFunction "\(list\|is\|ch\|mk\|rm\)dir[\s(]"he=e-1
