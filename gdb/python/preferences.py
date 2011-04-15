import gdb
import sys
import re

def __set_charsets():
  gdb.execute('set target-charset ' + gdb.target_charset())
  gdb.execute('set target-wide-charset ' + gdb.target_wide_charset())

def init():
  __set_charsets()
