"function! ShowColorSyntaxFile()
"  perl << end_of_perl
"  use File::Find::Rule;
"  ($ret, $val) = VIM::Eval('g:colors_name');
"  my $curSyn;
"  if ($ret) {
"    $curSyn = sprintf("%s.vim", $val);
"    }
"  ($ret, $val) = VIM::Eval('&rtp');
"  @rtp = split(',', $val);
"  my @files;
"  foreach (@rtp) {
"    push @files, File::Find::Rule->file
"                                 ->name($curSyn)
"                                 ->in($_ . '/');
"  }
"  @windows = VIM::Windows();
"  ($ret, $val) = VIM::Eval('tabs');
"  VIM::Msg($val, WarningMsg);
"end_of_perl
"endfunction
"
function! ShowCurrentColorSyntaxFile()
  python << end_of_python
import vim
import os
curSyn = '%s.vim' % (vim.eval('g:colors_name'))
runtime_path = vim.eval('&rtp').split(',')
currentSyntaxFile = None
for rtp in runtime_path:
  if currentSyntaxFile is not None:
    break
  for root, dirs, names in os.walk(rtp):
    if curSyn in names:
      currentSyntaxFile = os.path.join(root, curSyn)
      break

vim.command("call OpenFile('%s')" % currentSyntaxFile)
end_of_python
endfunction

nmap ,c :call ShowCurrentColorSyntaxFile()<CR>
