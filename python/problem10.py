#!/usr/bin/python2

#want to find the sum of all primes below a certain value (2000000)
#is_prime blatantly stolen from one of my other solutions (problem 8?)
def is_prime(n):
    upper = int(sqrt(n)) + 1
    if n == 0 or n == 1:
        return False
    to_test = range(upper + 1) #this is all of the numbers which could be factors of n
    to_test.pop(0)
    to_test.pop(0)
    #now we need to check for a remainder of zero for all those numbers
    for i in to_test:
        if n == i:
            return True
        if n % i == 0:
            return False
    return True

def sum_of_primes(n):
    sumprimes = 0
    for i in range(n):
        if (is_prime(i)):
            sumprimes += i
    return sumprimes

#it works! it's pretty slow though - took about 20 seconds to answer the problem
