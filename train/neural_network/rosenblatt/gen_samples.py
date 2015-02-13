#!/usr/bin/env python
#@author ccljing                                                                                                           
"""
"""
import sys,os,json,random
local_path = os.path.dirname(os.path.abspath(sys.argv[0]))
sys.path.append(local_path + "/./")
def single():
    x = random.uniform(-1,2)
    y = random.uniform(-1,2)
    if x + y -1 < 0:
        clazz = 0
    else:
        clazz = 1
    return x, y, clazz

def multi():
    samples = []
    for i in range(10000):
        samples.append(single())
    return samples

def main():
    fout = open("samples.in", "w")
    samples = multi()
    print >> fout, json.dumps(samples)
    fout.close()

if __name__ == '__main__':
    main()
