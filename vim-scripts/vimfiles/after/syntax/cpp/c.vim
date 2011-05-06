syn match cFunction "\<[f]\?\(read\|write\|gets\|puts\)\>"
syn match cFunction "\<[sf]\?printf\>"
syn match cFunction "\<[lf]\?stat\>"
syn match cFunction "\<ato[liq]\>"
syn match cFunction "\<\(set\|put\|get\)env\>"
syn match cFunction "\<mem\([c]\?cpy\|cmp\|move\|set\|chr\)\>"
syn match cFunction "\<[r]\?index\>"
syn match cFunction "\<\(set\|long\)jmp\>"

syn match cFunction "str\(cat\|cmp\|chr\|rchr\|str\|sep\|pbrk\|dup\|tok\|casecmp\|coll\|ncmp\|ncpy\|cpy\)[\s(]\?"he=e-1
syn match cFunction "str\(ncasecmp\|ncat\|len\|error\)[\s(]\?"he=e-1
syn match cFunction "[fp]\(open\|close\)[\s(]\?"he=e-1
syn match cFunction "\(c\|m\|re\)alloc[\s(]\?"he=e-1
syn match cFunction "\(mk\|rm\)dir[\s(]\?"he=e-1

syn keyword cFunction   memrchr exit memcmp bcmp casecmp isalpha free isdigit iscntrl isgraph islower isalnum isupper chmod perror execv
syn keyword cFunction   isascii isblank isprint ispunct isspace access scandir fnmatch basename dirname nftw getpid readlink
syn keyword cFunction   system get_current_dir_name atoll
