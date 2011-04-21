import gdb
from switch import case, switch

class PrettyPrinter(object):
  def __init__(self, val, **kwargs):
    super(PrettyPrinter, self).__init__(val, **kwargs)
    self.val = val
    self.kwargs = kwargs
    self.results = {}
    self._short_params = []
    self._long_params = []
    self._detailed_params = []

  def evaluate(self, s):
    str_to_eval = len(s.split('.')) * "['%s']"
    str_to_eval = 'self.val' + str_to_eval % (tuple(s.split('.')))
    try:
      rv = eval(str_to_eval)
    except:
      rv = None

    return rv

  def convert_results_to_string(self):
    rs = '{'
    for k in self.results.keys():
      rs += "%s: %s" % (k, self.results[k])
    rs += '}'
    return rs

  def set_params(self, p_long=[], p_short=[], p_detailed=[]):
    for s in p_short:
      self._short_params.append(s)
      self._long_params.append(s)
      self._detailed_params.append(s)

    for l in p_long:
      self._long_params.append(l)
      self._detailed_params.append(l)

    for d in p_detailed:
      self._detailed_params.append(d)

  def to_string_short(self):
    for s in self._short_params:
      self.results[s] = self.evaluate(s)

    return self.convert_results_to_string()

  def to_string_long(self):
    pass

  def to_string_detailed(self):
    pass

  def to_string(self):
    if self.kwargs is None:
      return self.to_string_short()
    
    if self.kwargs.has_key('print-control-parameter'):
      pcp = self.kwargs['print-control-parameter']
      try:
        verbose = gdb.parameter(pcp)
      except error:
        verbose = 'short'
    else:
      verbose = 'short'

    try:
      switch(pcp)
    except ( case('long') ):
      return self.to_string_long()
    except ( case('detailed') ):
      return self.to_string_detailed()
    except:
      return self.to_string_short()
