reset()
x = var('x',ns=1); S = x.parent()
i = S(NumberField(polygen(QQ)^2+1, 'i').gen())
def f(z): 
    return S(1/3).sqrt()*z^2 + i/3
		# computation
time s = f(f(f(f(f(f(f(f(f(f(i/2))))))))))
