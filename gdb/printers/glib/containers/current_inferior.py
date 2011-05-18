import gdb

class CurrentInferior:
  def __init__(self):
    self._name = None
    self._type = None

  def name(self):
    return self._name

  def type(self):
    return self._type

  def setName(self, name):
    self._name = name
    return self

  def setType (self, type):
    self._type = type
    return self

  def isNone(self):
    return (self._name is None) and (self._type is None)

  def clear(self):
    self._name = None
    self._type = None


