from sympy import *
from sage.all_cmdline import misc #sage.all_cmdline.misc probably collides with misc from sympy, it works with this fix
def f(z): return sqrt(1/3)*z**2 + I/3
time e = f(f(f(f(f(f(f(f(f(f(I/2)))))))))).as_real_imag()[int(0)]
