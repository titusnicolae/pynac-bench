reset()
x = var('x'); S = i.parent()
i = CC(NumberField(polygen(QQ)^2+1, 'I').gen())#CC is needed instead of S, otherwise it throws RypeError: An embedding into RR or CC must be specified.
def f(z): 
    return S(1/3).sqrt()*z^2 + I/3
		# computation
time s = f(f(f(f(f(f(f(f(f(f(i/2))))))))))
