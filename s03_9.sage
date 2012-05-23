from sympy import *
from sage.all_cmdline import misc
x,y,z=var('x,y,z')
g = expand((x^y+y^z+z^x)^50)
h = g.diff(x)
time h = g.diff(x)
