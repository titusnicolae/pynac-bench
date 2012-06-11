import os
from glob import glob
import shlex
import hashlib 

     
def base64_md5_file(f,block_size=2**10):
    md5=hashlib.md5()
    while True:
        data=f.read(block_size)
        if not data:
            break
        md5.update(data)
    return md5.digest().encode("base64")    

def read_hash(hashfile="hash"):
    h={} 
    try:
        f=open(hashfile)
        for line in f:
            filename,hashvalue=shlex.split(line)[2]
            h[filename]=hashvalue
        return h
    except:
        return {}
     
if __name__=="__main__":
    h=read_hash()
    for sagefile in sorted(glob("sage/*.sage")):
        pyfile=sagefile[:-4]+"py"
        print sagefile
        f=open(sagefile)
        hashvalue=base64_md5_file(f)
        if (sagefile in h and hashvalue != h[sagefile] ) or sagefile not in h:
            h[sagefile]=hashvalue
            os.system("sage -preparse "+sagefile)
        execfile(pyfile,{}) 
