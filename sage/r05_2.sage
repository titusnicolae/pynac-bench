def blowup(L,n):
    for i in [0..n]:
        L.append( (L[i] + L[i+1]) * L[i+2] )

R.<x,y,z> = QQ[]
L = [x,y,z]
blowup(L,8)
time L=uniq(L)
