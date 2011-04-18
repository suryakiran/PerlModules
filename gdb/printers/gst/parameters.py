import gdb

class VerboseParameter(gdb.Parameter):
  """Gst pretty printer verbosity"""

  set_doc = 'Set Gst pretty printing verbosity to True/False'
  show_doc = 'Show Gst pretty printing verbosity'

  def __init__(self):
    super(VerboseParameter, self).__init__(
        'gst-verbose',
        gdb.COMMAND_SUPPORT,
        gdb.PARAM_BOOLEAN
        )

    self.value = False

  def get_set_string(self):
    s = 'Verbose Gst pretty printing is now turned '
    if self.value:
      s += 'on.'
    else:
      s += 'off.'
    return s

  def get_show_string(self, svalue):
    s = 'Verbose Gst pretty printing is turned ' + svalue
    return s
