from sympy import *
from sage.all_cmdline import misc #sage.all_cmdline.misc probably collides with misc from sympy, it works with this fix
def hermite(n,y):
  if n == 1: return 2*y
  if n == 0: return 1
  return expand(2*y*hermite(n-1,y) - 2*(n-1)*hermite(n-2,y))

time v = hermite(15,var('y'))
