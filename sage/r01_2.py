# This file was *autogenerated* from the file sage/r01_2.sage.
from sage.all_cmdline import *   # import sage library
_sage_const_3 = Integer(3); _sage_const_2 = Integer(2); _sage_const_1 = Integer(1)
reset()
x = var('x'); S = i.parent()
i = CC(NumberField(polygen(QQ)**_sage_const_2 +_sage_const_1 , 'I').gen())#CC is needed instead of S, otherwise it throws RypeError: An embedding into RR or CC must be specified.
def f(z): 
    return S(_sage_const_1 /_sage_const_3 ).sqrt()*z**_sage_const_2  + I/_sage_const_3 
		# computation
__time__=misc.cputime(); __wall__=misc.walltime(); s = f(f(f(f(f(f(f(f(f(f(i/_sage_const_2 )))))))))); print "Time: CPU %.2f s, Wall: %.2f s"%(misc.cputime(__time__), misc.walltime(__wall__))
