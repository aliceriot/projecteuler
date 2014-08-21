import math
#dataproject euler problem12
#want to find the first triangular number which has >500 divisors

#this recursive function doesnt work
#(hits the maximum recursion depth for python)

def get_trianglenums(n,nums=[1]):
    for i in range(len(nums),n):
        nums.append(nums[i-1] + (i+1))
    return nums
           

def factors(n):
    fact = 2
    check = 2
    rootn = math.sqrt(n)
    while check < rootn:
        if n % check == 0:
            fact += 2
        check += 1
    if rootn == check:
        fact += 1
    return fact

def answer():
    n = 2
    nums = [1]
    while factors(nums[n-2]) < 500:
        nums = get_trianglenums(n,nums)
        n += 1
        print n
    return nums

#it works! hooray!
