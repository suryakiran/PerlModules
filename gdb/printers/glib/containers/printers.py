import gdb
from _printers import *
import utils.printer

containers_printer = None

def register(obj):
  global containers_printer

  if obj is None:
    obj = gdb

  obj.pretty_printers.append(containers_printer)

def populate_containers_printer():
  global containers_printer

  containers_printer = utils.printer.Printer('glib.containers')

  containers_printer.add('_GSList',
      lambda val: GSList.GSList(val))

populate_containers_printer()
