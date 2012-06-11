import os
from glob import glob
import shlex
import hashlib 
from cStringIO import StringIO
import sys
from multiprocessing import Process,Queue
     
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

def process(q,pyfile):
    sys.stdout=temp=StringIO()
    
    execfile(pyfile,{}) 
    q.put((    
    
    
     
if __name__=="__main__":
    h=read_hash()
    q=Queue()
    old_stdout=sys.stdout
    output={}
    processes=[]
    for sagefile in sorted(glob("sage/*.sage")):
        pyfile=sagefile[:-4]+"py"
        f=open(sagefile,"r")
        hashvalue=base64_md5_file(f)
        if (sagefile in h and hashvalue != h[sagefile] ) or sagefile not in h:
            h[sagefile]=hashvalue
         #   os.system("sage -preparse "+sagefile)
        var={}
        print sagefile
        sys.stdout=temp=StringIO()
        p=Process(target=process,args=(pyfile,q))
        p.start()
         
        execfile(pyfile,{})
        output[sagefile]=temp.getvalue()
        sys.stdout=old_stdout 
        print temp.getvalue()[:-1] #don't print newline again
        temp.close()
    for p in processes:
        p.join()
