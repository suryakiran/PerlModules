from gst.framework import *
import parameters

def init_parameters():
  parameters.VerboseParameter()
  pass

def register(obj):
  printers.register(obj)

init_parameters()
