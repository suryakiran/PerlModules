import os
import gdb
import re

class ViCommand (gdb.Command):
  '''
  Syntax:
    vi-file [arg]

  with optional argument arg, vi-file opens file arg in gvim.
  When no argument given, vi-file opens the currently opened file.
  '''
  def __init__(self):
    super(ViCommand, self).__init__('vi-file', gdb.COMMAND_SUPPORT)
    self.regex = re.compile ('Line (\d+) of "([^"]*)"')

  def invoke (self, arg, from_tty):
    f = ''
    l = 1
 
    if arg == '':
      line_info = gdb.execute('info line', False, True)
      match = self.regex.search(line_info)

      if match is None:
        raise gdb.GdbError ('No file to open')

      f = match.group(2)
      l = match.group(1)
    else:
      f = arg

    try:
      server = gdb.parameter('vi-server')
    except gdb.error:
      server = 'gdb'

    cmd = 'gvim --servername %s --remote-tab-silent +%s "%s"' % (server, l, f)
    os.system(cmd)

class ViAltCommand (gdb.Command):
  '''
  Syntax:
    vi-alt-file
  
  Opens the header/source file for C/C++ language for the corresponding
  source/header file opened by gdb.

  vi-alt-file behavior will be same as vi-file if no alternative file found.
  '''
  def __init__(self):
    super(ViAltCommand, self).__init__(
        'vi-alt-file', 
        gdb.COMMAND_SUPPORT
        )
    self.regex = re.compile ('Current source file is (.*)')
    self.extMap = {
        '.c'  : ['.h'],
        '.cpp': ['.hpp', '.h', '.hxx'],
        '.cxx': ['.hxx', '.h', '.hpp'],
        '.C'  : ['.h'],
        '.h'  : ['.c', '.cpp', '.cxx'],
        '.hpp': ['.cpp', 'C', '.cxx'],
        '.hxx': ['.cxx', '.cxx', 'C']
        }

  def invoke (self, arg, from_tty):
    source_info = gdb.execute('info source', False, True)
    match = self.regex.search (source_info)

    try:
      debug = gdb.parameter('vi-debug')
    except gdb.error:
      debug = False

    if match is None:
      raise gdb.GdbError ('No source file to open')

    f = match.group(1)

    (pre, ext) = os.path.splitext(f)
    header_extns = self.extMap.get(ext)

    file_to_open = f
    alt_file = ''
    file_found = False

    if header_extns is not None:
      for he in header_extns:
        alt_file = pre + he
        if os.path.exists(alt_file):
          file_found = True
          break

    (pth, fn) = os.path.split(f)

    if debug:
      print 'File Extn: ' + ext
      print 'File to open is: %s' % (
          alt_file if file_found else file_to_open
          )

    if file_found:
      file_to_open = alt_file

    gdb.execute('vi-file %s' % (file_to_open))

ViCommand()
ViAltCommand()
