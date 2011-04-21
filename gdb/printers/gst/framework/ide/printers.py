import gdb
from _printers import *

module_printers_dict = {}

def lookup_function(val):
  global module_printers_dict
  type = val.type
  if type.code == gdb.TYPE_CODE_REF:
    type = type.target()
  elif type.code == gdb.TYPE_CODE_PTR:
    type = type.target()

  type = type.unqualified ().strip_typedefs ()
  typename = type.tag

  if module_printers_dict.has_key(typename):
    return module_printers_dict[typename](val)
  else:
    return None

def register(obj):
  if obj is None:
    obj = gdb

  obj.pretty_printers.append(lookup_function)

def populate_module_printers():
  module_printers_dict['GSCreatableCategory'] = lambda val: GSCreatableCategory.GSCreatableCategory(val)

populate_module_printers()
