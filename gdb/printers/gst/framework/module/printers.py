import gdb
import utils.printer
from _printers import *

module_printer = None

def register(obj):
  global module_printer

  if obj is None:
    obj = gdb

  obj.pretty_printers.append(module_printer)

def populate_module_printer():

  global module_printer

  module_printer = utils.printer.Printer('gst.framework.module')

  module_printer.add('GSEditor', 
      lambda val: GSEditor.GSEditor(val))

  module_printer.add('GSModule',
      lambda val: GSModule.GSModule(val))

  module_printer.add('GSModuleWidgetView',
    lambda val: GSModuleDocumentView.GSModuleDocumentView(val))

  module_printer.add('GSModuleDocumentView',
    lambda val: GSModuleDocumentView.GSModuleDocumentView(val))

  #module_printer_dict['GSEditor'] = lambda val: GSEditor.GSEditor(val)
  #module_printer_dict['GSModule'] = lambda val: GSModule.GSModule(val)
  #module_printer_dict['GSModuleWidgetView'] = lambda val: GSModuleDocumentView.GSModuleDocumentView(val)
  #module_printer_dict['GSModuleDocumentView'] = lambda val: GSModuleDocumentView.GSModuleDocumentView(val)

populate_module_printer()
