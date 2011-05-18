import gdb
from gdb.printing import PrettyPrinter
from switch import case, switch

class Printer(gdb.printing.PrettyPrinter):
  def __init__(self, name):
    super(Printer, self).__init__(name)
    self.name = name
    self.enabled = True
    self.printers = {}

  def add(self, name, printer):
    self.printers[name] = printer

  def __call__ (self, val):
    tp = val.type

    try:
      switch(tp.code)
    except (case(gdb.TYPE_CODE_VOID)):
      return None
    except (case(gdb.TYPE_CODE_REF), case(gdb.TYPE_CODE_PTR)):
      tp = tp.target()
    except (case(gdb.TYPE_CODE_TYPEDEF)):
      tp = tp.unqualified().strip_typedefs()

    if (tp.code == gdb.TYPE_CODE_VOID):
      return None

    tp = tp.unqualified().strip_typedefs()
    typename = tp.tag

    if self.printers.has_key(typename):
      return self.printers[typename](val)

    return None
