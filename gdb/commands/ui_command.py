import os
import gdb
import re

def getUiFileName():
  regex = re.compile ('Current source file is (.*)')
  file_info = gdb.execute('info source', False, True)
  match = regex.search(file_info)

  if match is None:
    raise gdb.GdbError('No file to open')

  f = match.group(1)
  (pre, ext) = os.path.splitext(f)

  ui_file = '%s.ui' % (pre)
  return ui_file


class UiCommand (gdb.Command):
  '''
  Syntax:
    open-ui [arg]

  without arg, 
    Open corresponging QtDesigner ui file for the current source file in designer

  If arg is provided,
    Open the ui file for the class name.

    Eg. 
      open-ui ClassName opens ClassName.ui in Qt designer
  '''

  def __init__(self):
    super (UiCommand, self).__init__('open-ui', gdb.COMMAND_SUPPORT)
    self.designer = os.popen('which designer').read().strip()

  def invoke(self, arg, from_tty):
    ui_file = getUiFileName()
    if self.designer is not '':
      os.system ('%s %s 2>/dev/null &' % (self.designer, ui_file))

class UiCommandVi (gdb.Command):
  '''
  Syntax:
    vi-ui [arg]

  without arg, 
    Open corresponging QtDesigner ui file for the current source file in Vi

  If arg is provided,
    Open the ui file for the class name.

    Eg. 
      vi-ui ClassName opens ClassName.ui in Vi
  '''

  def __init__(self):
    super (UiCommandVi, self).__init__('vi-ui', gdb.COMMAND_SUPPORT)

  def invoke(self, arg, from_tty):
    gdb.execute ('vi-file %s' % (getUiFileName()))

UiCommand()
UiCommandVi()
