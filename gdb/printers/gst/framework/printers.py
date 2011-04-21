from gst.framework.module import printers as module_printers
from gst.framework.model import printers as model_printers
from gst.framework.ide import printers as ide_printers

def register(obj):
  module_printers.register(obj)
  model_printers.register(obj)
  ide_printers.register(obj)
