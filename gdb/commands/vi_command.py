import os
import sys
import gdb
import re

class ViCommand (gdb.Command):
  def __init__(self):
    super(ViCommand, self).__init__('vi-file', gdb.COMMAND_SUPPORT)
    self.regex = re.compile ('Line (\d+) of "([^"]*)"')
    pass

  def invoke (self, arg, from_tty):
    line_info = gdb.execute('info line', False, True)
    match = self.regex.search(line_info)
    f = match.group(2)
    l = match.group(1)
    cmd = 'gvim --servername GDB --remote-tab-silent +%s "%s"' % (l, f)
    os.system(cmd)

ViCommand()
