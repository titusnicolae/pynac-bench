x,y,z=var('x,y,z')
g = maxima('expand((x^y+y^z+z^x)^50)')
time h = g.diff(z)
