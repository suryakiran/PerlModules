import gdb
from _printers import *
import utils.printer

ide_printer = None

def register(obj):
  if obj is None:
    obj = gdb

  obj.pretty_printers.append(ide_printer)

def populate_ide_printers():
  global ide_printer

  ide_printer = utils.printer.Printer ('gst.framework.ide')

  ide_printer.add('GSCreatableCategory', lambda val:
      GSCreatableCategory.GSCreatableCategory(val))

populate_ide_printers()
