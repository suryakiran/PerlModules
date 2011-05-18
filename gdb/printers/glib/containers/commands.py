import gdb
from type_checker import TypeChecker

class GlibPrefix (gdb.Command):
  def __init__(self):
    super (GlibPrefix, self).__init__ (
        'glib',
        gdb.COMMAND_SUPPORT,
        gdb.COMPLETE_NONE,
        True
        )

class GlistPrint (gdb.Command):
  def __init__(self):
    super (GlistPrint, self).__init__ (
        'glib print',
        gdb.COMMAND_SUPPORT
        )

  def invoke(self, arg, from_tty):
    args = gdb.string_to_argv(arg)
    v = gdb.parse_and_eval(args[0])
    type = TypeChecker(args[1]).getType()

    items = []
    while v:
      d = v['data'].cast(type.pointer())
      if type == gdb.lookup_type('char'):
        items.append(d.string())
      else:
        items.append(d.dereference())
      v = v['next']

    print 'List with %d items: [ %s ]' % (len(items), ', '.join(items))


GlibPrefix()
GlistPrint()
