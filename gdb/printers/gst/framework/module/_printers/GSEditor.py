import re
from utils.typeinfo import TypeInfo

class GSEditor (TypeInfo):
  def __init__(self, val):
    super(GSEditor, self).__init__(val)

  def to_string(self):
    try:
      doc = self.val['m_document']
      mod = self.val['m_module']
      rs = '<%s> {File name : %s, Module: %s}' % (
          self.my_type, 
          str(doc['m_fileName']),
          str(mod['m_name'])
          )
    except RuntimeError, error:
      rs = '<%s> { NO DOCUMENT }' % (self.my_type)

    return rs
