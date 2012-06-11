# This file was *autogenerated* from the file sage/r05_2.sage.
from sage.all_cmdline import *   # import sage library
_sage_const_2 = Integer(2); _sage_const_1 = Integer(1); _sage_const_0 = Integer(0); _sage_const_8 = Integer(8)
def blowup(L,n):
    for i in (ellipsis_range(_sage_const_0 ,Ellipsis,n)):
        L.append( (L[i] + L[i+_sage_const_1 ]) * L[i+_sage_const_2 ] )

R = QQ['x, y, z']; (x, y, z,) = R._first_ngens(3)
L = [x,y,z]
blowup(L,_sage_const_8 )
__time__=misc.cputime(); __wall__=misc.walltime(); L=uniq(L); print "Time: CPU %.2f s, Wall: %.2f s"%(misc.cputime(__time__), misc.walltime(__wall__))
