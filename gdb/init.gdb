python

import sys
import os
import glob

gdb_dir = os.path.join(os.environ['HOME'], 'Gdb')
python_dir = os.path.join(gdb_dir, 'python')
printers_dir = os.path.join(gdb_dir, 'printers')

gdb_files = glob.glob(os.path.join(gdb_dir, 'gdb/*.gdb'))
for f in gdb_files:
  print 'sourcing ' + f
  gdb.execute('source ' + f)

sys.path.insert (0, python_dir)
import preferences
preferences.init()

sys.path.insert (0, printers_dir)
from libstdcxx.v6 import libstdcxx
libstdcxx.register_libstdcxx_printers(None)

from qt.v4 import qt
qt.register_qt_printers(None)

from gst import printers
printers.register(None)

end
