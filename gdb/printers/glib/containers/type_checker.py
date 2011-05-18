import gdb

class TypeChecker:
  def __init__(self, type):
    self.type_map = {}
    self.type_map['s'] = 'char'
    self.type_map['string'] = 'char'
    self.type_map['i'] = 'int'
    self.type_map['f'] = 'float'

    self.type = gdb.lookup_type(self.type_map.get(type))

    if self.type is None:
      try:
        self.type = gdb.lookup_type(type)
      except RuntimeError, e:
        raise gdb.GdbError ('Type %s is not found' % type)

  def getType(self):
    return self.type
