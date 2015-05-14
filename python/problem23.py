#looking for abundant numbers!

def trialDivide(n):
    factors = [1]
    for i in range(2,n-1):
        if n % i == 0:
            factors.append(i)
    return factors

def checkNums(n):
    abundant = []
    for i in range(12,n+1):
        if sum(trialDivide(i)) > i:
            abundant.append(i)
    return abundant


cannot = range(1,25)

def produceAbundants():
    abundantNums = {}
    for i in range(12,1000):
        if i in abundantNums:
            pass
        if sum(trialDivide(i)) > i:
            abundantNums[i] = 1
            running = i
            while running < 28124:
                running += i
                if running in abundantNums:
                    pass
                else:
                    abundantNums[running] = 1
    return abundantNums
