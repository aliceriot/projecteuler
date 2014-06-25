#problem 22 project euler: big list of names, we want to find the sum across all
#names of this strange quantity

import numpy as np

#first, we've got to read in that file!

#read in the file, split on commas
with open("/home/benpote/Code/projecteuler/names.txt", "r") as myfile:
    names = myfile.read().split(',')

#strip off the extra "names" quotes
names = [i[1:len(i)-1] for i in names]

#use numpy sort to alphabetize (cheating!)
sortnames = np.sort(names)

alphabet = {'a':1,'b':2,'c':3,'d':4,'e':5,'f':6,'g':7,'h':8,'i':9,'j':10,'k':11,'l':12,'m':13,'n':14,'o':15,'p':16,'q':17,'r':18,'s':19,'t':20,'u':21,'v':22,'w':23,'x':24,'y':25,'z':26}


def namescore(name, pos):
    return pos * sum([alphabet[i] for i in name.lower()])

def scoretotal(names):
    return sum([namescore(names[i],i+1) for i in range(len(names))])


#it works! first try too! lovely.
