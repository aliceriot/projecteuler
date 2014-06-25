#want to find the sum of all of the digits in a number (2^1000)

def digitsum(n):
    numstring = str(n)
    sumout = 0
    for i in numstring:
        sumout += int(i)
    return sumout

#it works! this one is really easy
#going to do it in scheme too
