def hermite(n,y):
  if n == 1: return 2*y
  if n == 0: return 1
  return expand(2*y*hermite(n-1,y) - 2*(n-1)*hermite(n-2,y))

time hermite(15,var('y'))
