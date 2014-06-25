#project euler problem12
#want to find the first triangular number which has >500 divisors

#this recursive function doesnt work
#(hits the maximum recursion depth for python)
def trianum(n):
    if n == 1:
        return 1
    return n + trianum(n - 1)

#more boring one
def trianum1(n):
    start = time.time()
    out = sum(range(n + 1))
    return out, time.time()-start

#different one (much faster)
def trianum(n):
    return (n*(n+1))/2

#get # divisors
def divisors(n):
    out = 1
    for i in range(1,(n / 2) + 1):
        if n % i == 0:
            out += 1
    return out


def divisors(n):
    divs = 2
    i = 2
    while i*i < n:
        if n % i == 0:
            divs += 1
            divs += 1
        i += 1
    if i * i == n:
        divs += 1
    return divs

def get500():
    i = 1
    while i > 0:
        if divisors(trianum(i)) == 501:
            return trianum(i)
        i += 1

def get500(n):
    if divisors(trianum(n)) == 501:
        return trianum(n)
    else:
        if divisors(trianum(n)) < 500:
            print n
            return get500(2 * n)
        elif divisors(trianum(n)) < 500:
            return get500(n - (.3 * n))
