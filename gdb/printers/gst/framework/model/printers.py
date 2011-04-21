import gdb
from _printers import *
import utils.printer

model_printer = None

def register(obj):
  if obj is None:
    obj = gdb

  obj.pretty_printers.append(model_printer)

def populate_model_printers():
  global model_printer

  model_printer = utils.printer.Printer('gst.framework.model')
  model_printer.add('GSDocument', lambda val: GSDocument.GSDocument(val))

populate_model_printers()
