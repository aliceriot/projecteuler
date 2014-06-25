#euler time!
#factorial digit sum! kind of cool
#we find the factorial of a number (e.g. 10! = 3628800)
#and we find the sum 3+6+2+8+0+0 = 27

import math

def facsum(n):
    factorial = str(math.factorial(n))
    sum = 0
    for i in factorial:
        sum += int(i)
    return sum

#super easy in python!
#lets try to build our own factorial method though

def myfac(n):
    numout = 1
    while n > 1:
        numout *= n
        n -= 1
    return numout

# recursive version

def myfac(n):
    if n == 1:
        return 1
    return n * myfac(n-1)
        
#a version of facsum above using myfac instead

def myfacsum(n):
    factorial = str(myfac(n))
    mysum = 0
    for i in factorial:
        mysum += int(i)
    return mysum

def myfacsum(n):
    out = sum([int(i) for i in str(myfac(n))])
    return out

    

#that wasn't very hard either...
#calling either facsum or myfacsum on 100 returns 648, which proj euler accepts as the right
#answer. sweet!
