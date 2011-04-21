import gdb
from _printers import *

model_printers_dict = {}

def lookup_function(val):
  global model_printers_dict
  type = val.type
  if type.code == gdb.TYPE_CODE_REF:
    type = type.target()
  elif type.code == gdb.TYPE_CODE_PTR:
    type = type.target()

  type = type.unqualified ().strip_typedefs ()
  typename = type.tag

  if model_printers_dict.has_key(typename):
    return model_printers_dict[typename](val)
  else:
    return None

def register(obj):
  if obj is None:
    obj = gdb

  obj.pretty_printers.append(lookup_function)

def populate_model_printers():
  model_printers_dict['GSDocument'] = lambda val: GSDocument.GSDocument(val)

populate_model_printers()
