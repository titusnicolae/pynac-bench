x=var('x')
y=var('y')
z=var('z')
f=expand((x^y+y^z+z^x)^500)
time g=f.diff(x)
