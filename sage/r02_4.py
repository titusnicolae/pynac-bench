# This file was *autogenerated* from the file sage/r02_4.sage.
from sage.all_cmdline import *   # import sage library
_sage_const_2 = Integer(2); _sage_const_1 = Integer(1); _sage_const_0 = Integer(0); _sage_const_15 = Integer(15)
from sympy import *
from sage.all_cmdline import misc #sage.all_cmdline.misc probably collides with misc from sympy, it works with this fix
def hermite(n,y):
  if n == _sage_const_1 : return _sage_const_2 *y
  if n == _sage_const_0 : return _sage_const_1 
  return expand(_sage_const_2 *y*hermite(n-_sage_const_1 ,y) - _sage_const_2 *(n-_sage_const_1 )*hermite(n-_sage_const_2 ,y))

__time__=misc.cputime(); __wall__=misc.walltime(); v = hermite(_sage_const_15 ,var('y')); print "Time: CPU %.2f s, Wall: %.2f s"%(misc.cputime(__time__), misc.walltime(__wall__))
