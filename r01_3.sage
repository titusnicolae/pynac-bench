from sympy import *
def f(z): return sqrt(1/3)*z**2 + I/3
time e = f(f(f(f(f(f(f(f(f(f(I/2)))))))))).as_real_imag()[int(0)]
