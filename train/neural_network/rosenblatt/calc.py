#!/usr/bin/env python
#@author ccljing                                                                                                           
"""
"""
import sys,os,json
local_path = os.path.dirname(os.path.abspath(sys.argv[0]))
sys.path.append(local_path + "/./")
def calmult(x,y):
    assert(len(x) == len(y))
    re = 0
    for i in range (0, len(x)):
        re += x[i] * y[i]
    return re
def caladd(x,y):
    assert(len(x) == len(y))
    re = []
    for i in range(0, len(x)):
        re.append(x[i] + y[i])
    return re
def caleve(x,y):
    assert(len(x) == len(y))
    re = []
    for i in range(0, len(x)):
        re.append(x[i] - y[i])
    return re
def single(w):
    fin = open("samples.in", "r")
    samples = json.loads(fin.readlines()[0])
    isok = True 
    for i in range (0,len(samples)):
        tmp = samples[i]
        tmp2 = [1]
        tmp2.extend(tmp[0:-1])
        re = calmult(w, tmp2)
        if re >= 0:
            re = 1
        else:
            re = 0
        if re == 1 and tmp[-1] == 0:
            w = caleve(w, tmp2)
            isok = False
        elif re == 0 and tmp[-1] == 1:
            w = caladd(w, tmp2)
            isok = False
    print "w = ", w
    fin.close()
    return w,isok
def main():
    w = [0,0,0]
    while True:
        w,isok = single(w)
        if isok:
            print w
            break
if __name__ == '__main__':
    main()
