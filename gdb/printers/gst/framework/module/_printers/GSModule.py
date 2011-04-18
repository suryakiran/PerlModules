import gdb
import re

class GSModule:
  def __init__(self, val):
    self.val = val
    self.dynamic_type = self.val.dynamic_type
    self.isPtr = self.val.type.code == gdb.TYPE_CODE_PTR

  def to_string(self):
    if self.dynamic_type is None:
      my_type = str(self.val.type.target())
    else:
      my_type = str(self.dynamic_type.target())

    rs = my_type + ': {Name: '
    rs += str(self.val['m_name'])
    rs += '}'
    return rs

  def display_hint(self):
    return 'GSModule'
