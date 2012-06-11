def right(f,a,b,n):
    Deltax = (b-a)/n; c=a; est=0
    for i in range(n):
        c += Deltax
        est += f(x=c)
    return est*Deltax

x=var('x')
time v=right(f=x^2,a=0,b=5,n=10^4)
