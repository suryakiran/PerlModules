import os
import gdb

class ViServerParam(gdb.Parameter):
  '''
  Vi Server Parameter
  '''

  set_doc = 'Set Vi Server Name'
  show_doc = 'Show Vi Server Name'

  def __init__(self):
    super(ViServerParam, self).__init__(
        'vi-server',
        gdb.COMMAND_SUPPORT,
        gdb.PARAM_STRING
        )

    self.value = 'gdb'

  def get_set_string(self):
    s = 'Vi server name is now set to ' + self.value
    return s

  def get_show_string(self, svalue):
    s = 'Vi server name is set to ' + svalue
    return s

class ViDebugParam(gdb.Parameter):
  '''
  Vi Debugging Flag
  '''

  set_doc = 'Set Vi Debugging Flag'
  show_doc = 'Show Vi Debugging Flag'

  def __init__(self):
    super(ViDebugParam, self).__init__(
        'vi-debug',
        gdb.COMMAND_SUPPORT,
        gdb.PARAM_BOOLEAN
        )

    self.value = False

  def get_set_string(self):
    s = ('Vi Commands debugging flag is now turned %s') % ('on' if self.value else 'off')
    return s

  def get_show_string(self, svalue):
    s = 'Vi Commands debugging flag is set to ' + svalue
    return s

class ViInitDirParam(gdb.Parameter):
  '''
  Vi initial directory
  '''

  set_doc = 'Set Vi Initial Directory'
  show_doc = 'Show Vi Initial Directory'

  def __init__(self):
    super (ViInitDirParam, self).__init__(
        'vi-init-dir',
        gdb.COMMAND_SUPPORT,
        gdb.PARAM_STRING
        )
    self.value = os.environ['HOME']

  def get_set_string(self):
    s = 'Vi initial directory is now set to %s' % (self.value)
    return s

  def get_show_string(self, svalue):
    s = 'Vi initial directory is set to %s' % (svalue)
    return s

def parameters():
  pass

ViServerParam()
ViDebugParam()
ViInitDirParam()
