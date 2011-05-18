import re
from utils.typeinfo import TypeInfo

class GSList (TypeInfo):
  def __init__ (self, val):
    super(GSList, self).__init__(val)

  def to_string(self):
    return 'GSList structure'
