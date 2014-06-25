#want to find the first ten numbers of the big sum! fun times for sure

#vim has trouble with all the numbers for some reason...

#get all of our numbers into string
stringnums = [str(i) for i in nums]

mysum = 0

for i in range(20):
    to_add = str(sum([int(j[i]) for j in stringnums]))
    for k in range(20-i):
        to_add += '0'
    mysum += int(to_add)


#it worked! one more euler under my belt

