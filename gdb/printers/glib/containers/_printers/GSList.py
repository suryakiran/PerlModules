import re
import gdb
from utils.typeinfo import TypeInfo

class GSList (TypeInfo):
  def __init__ (self, val):
    super(GSList, self).__init__(val)
    self.val = val
    self.char_type = gdb.lookup_type('char')
    self.char_pointer_type = self.char_type.pointer()

  def to_string(self):
    items = []
    v = self.val
    while v:
      d = v.cast(self.char_pointer_type)
      items.append(d)
      v = v['next']

    s = 'No. of items in list: %d' % len(items) 
    return s
