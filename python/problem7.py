#here we want to find the 10001 prime number!

#first I think we'll try to right a test for primality
def is_prime(n):
    upper = int(sqrt(n)) + 1
    print upper
    to_test = range(upper + 1) #this is all of the numbers which could be factors of n
    to_test = [num for num in to_test if num % 2 != 0] #remove evens
    print to_test
    to_test.pop(0)
    print to_test
    #now we need to check for a remainder of zero for all those numbers
    for i in to_test:
        if n % i == 0:
            return False
    return True

def find_primes(n):     #find all primes up to a certain number of primes
    primes_found = 1
    largeprime = 0
    test = 3
    while primes_found < n:
        if (is_prime(test)):
            primes_found += 1
            largeprime = test
            test += 2
        else:
            test += 2
    return largeprime
        
#it works!!! nice
#also it's pretty quick
#I think we can use some of this to solve that other problem about primes
#this algorithm can definitely be improved though
#(there is a better version on wikipedia)
        


