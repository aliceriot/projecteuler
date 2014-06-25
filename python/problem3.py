#attempting to have a go at this with python instead of scheme, we'll see

#first off, we'll make sure we have a good (fast) way to test if something is prime or not

def is_prime(n):
    if n < 2:
        return False
    if n in (2, 3):
        return True
    if n % 2 == 0 or n % 3 == 0:
        return False
    max_divisor = int(n ** 0.5) # square root of n
    divisor = 5
    while divisor <= max_divisor:
        if n % divisor == 0 or n % (divisor + 2) == 0:
            return False
        divisor += 6
    return True
#So this algorithm is MUCH faster than the one I wrote for problem 7
#but I don't need it (see below)
#integer factorization algorithm
def get_factors(n):
    factors = []
    z = 2
    while (z * z) <= n:
        if n % z == 0:
            factors.append(z)
            n = n / z
        else:
            z += 1
    if n > 1:
        factors.append(n)
    return factors
#would be good to write this out and try to make sure I understand why it works sometime
            
 
