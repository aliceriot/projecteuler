#euler! problem 9
#find a pythagorean triple which has:
# a^2 + b^2 = c^2
# AND
# a + b + c = 1000

#how do we do this?

#we have an upper bound, at least, of 1000

for a in range(1001):
    for b in range(1001):
        csq = (a ** 2) + (b ** 2)
        c = sqrt(csq)
        if a + b + c == 1000:
            print a * b * c
            break

#this is few enough numbers that it's ok to just brute-force it, but this is obviously not
#so great a way to do this



