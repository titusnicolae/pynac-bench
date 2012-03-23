def right(f,a,b,n):
   Deltax = (b-a)/n; c=a; est=0
   for i in range(n):
       c += Deltax
       est += f(c)
   return est*Deltax

var('x')
time v = right(x^2,0,5,10^4)
