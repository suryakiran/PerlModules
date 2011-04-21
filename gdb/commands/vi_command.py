import os
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

    if match is None:
      raise gdb.GdbError ('No file to open')

    f = match.group(2)
    l = match.group(1)

    try:
      server = gdb.parameter('vi-server')
    except gdb.error:
      server = 'gdb'

    cmd = 'gvim --servername %s --remote-tab-silent +%s "%s"' % (server, l, f)
    os.system(cmd)

ViCommand()
