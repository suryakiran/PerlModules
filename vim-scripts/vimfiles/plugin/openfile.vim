function! OpenFile(buf)
  python << end_of_python
import os, vim
f = vim.eval(str('a:buf'))
be = int(vim.eval("bufexists('%s')" % f))
if be:
  bw=int(vim.eval("bufwinnr('%s')" % f))
  if bw != -1:
    vim.command('%d wincmd w' % bw)
  else:
    vim.command('b %s' % f)
else:
  vim.command('e %s' % f)
end_of_python
endfunction
