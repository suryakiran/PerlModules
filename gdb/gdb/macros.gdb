define cls
  shell clear
end
document cls
  Clears the screen
end

define bpl
  info breakpoints
end
document bpl
  List breakpoints
end

define bpe
  enable $arg0
end
document bpe
  Enable breakpoint #
  Usage: bpe num
end

define bpd
  disable $arg0
end
document bpd
  Disable breakpoint #
  Usage: bpd num
end

define pp
  python print $arg0
end
document pp
  Alias for python print
  Usage: pp <arg>
end

define argv
  show args
end
document argv
  Print program arguments
end
