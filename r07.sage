x=var('x') 
f = x^24+34*x^12+45*x^3+9*x^18 +34*x^10+ 32*x^21
time a = [f(random()) for _ in xrange(10^4)]
