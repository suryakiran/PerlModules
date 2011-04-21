import gdb

class ViServerParam(gdb.Parameter):
  """Vi Server Parameter"""

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

def parameters():
  pass

ViServerParam()
