import gdb
import re

class GSEditor:
  def __init__(self, val):
    self.val = val

  def to_string(self):
    return 'GSEditor'

  def display_hint(self):
    return 'GSEditor'
