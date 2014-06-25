##want to find the largest palindrome product of two three digit numbers

##I think we can just start at 999*999 and move down until we find a palindrome, right?
def find_dromes(i,j):
    """
    finds palindromes, starting with ixj and moving down
    """
    biggest = 0
    for n in range(i+1):
        for m in range(j+1):
            prod = n*m
            if prod == int(str(prod)[::-1]):
                if prod > biggest:
                    biggest = prod
    return biggest
            
#it works! I think this is a silly way to do it though. if you were checking really big
#numbers I don't think this would perform well.
