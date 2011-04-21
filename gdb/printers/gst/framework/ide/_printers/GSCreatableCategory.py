from utils.prettyprinter import PrettyPrinter
from utils.typeinfo import TypeInfo

class GSCreatableCategory(PrettyPrinter, TypeInfo):
  def __init__(self, val, **kwargs):
    super(GSCreatableCategory, self).__init__(val, **kwargs)

    self.set_params(
        p_short= ['m_name'],
        p_long = [],
        p_detailed = []
        )
