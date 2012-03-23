import sympycore
x = sympycore.Symbol('x')
y = sympycore.Symbol('y')
z = sympycore.Symbol('z')
time a = expand((x^sympycore.sin(x) + y^sympycore.cos(y) - z^(x+y))^100r)
