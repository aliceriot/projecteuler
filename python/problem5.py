#want to find the smallest number evenly divisible by all numbers 1-20

def numtest(n):
    minmult = 0
    testnum = 1
    while minmult == 0:
        for i in range(n):
            if i == n and testnum % n == 0:
                minmult = testnum
            elif testnum % n == 0:
                continue
            else:
                break
        testnum += 1
    return minmult

#this doesn't seem to work, not sure why

