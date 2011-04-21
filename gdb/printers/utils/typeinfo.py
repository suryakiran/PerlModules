import gdb

class TypeInfo(object):
  def __init__(self, val, **kwargs):
    super(TypeInfo, self).__init__()
    self.val = val
    self.dynamic_type = self.val.dynamic_type
    self.fields = self.val.type.fields()
    self.isPtr = self.val.type.code == gdb.TYPE_CODE_PTR

    if self.dynamic_type is None:
      self.my_type = str(self.val.type.target())
    else:
      self.my_type = str(self.dynamic_type.target())
