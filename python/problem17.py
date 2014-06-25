#Problem 17, numbers 1 to 1000 written out in words-how many letters would this use?

#dictionaries to hold strings
ones = {0: '',1: 'one',2: 'two',3: 'three',4: 'four',5: 'five',6: 'six',7: 'seven',8: 'eight',9: 'nine',}

teens = {10: 'ten',11: 'eleven',12: 'twelve',13: 'thirteen',14: 'fourteen',15: 'fifteen',16: 'sixteen',17: 'seventeen',18: 'eighteen',19: 'nineteen'}

tens = {0: '',2: 'twenty',3: 'thirty',4: 'forty',5: 'fifty',6: 'sixty',7: 'seventy',8: 'eighty',9: 'ninety'}

hundreds = {1: 'onehundred',2: 'twohundred',3: 'threehundred',4: 'fourhundred',5: 'fivehundred',6: 'sixhundred',7: 'sevenhundred',8: 'eighthundred',9: 'ninehundred'}

thousands = {1000: 'onethousand'}

#first we'll write a function to take a number and return the number of letters required
def count_letters(n):
    """
    takes a number and returns the number of letters it would require to write it out
    """
    count = 0
    let = str(n)
    if len(let) == 1:
        count = len(ones[int(let)])
    elif len(let) == 2:
        if n < 20:
            count = len(teens[n])
        else:
            count = len(tens[int(let[0])]) + count_letters(int(let[1]))
    elif len(let) == 3:
        if n % 100 == 0:
            count = len(hundreds[int(let[0])])
        else:
            count = len(hundreds[int(let[0])] + 'and') + count_letters(int(let[1:]))
    elif len(let) == 4:
        count = len(thousands[n])
    return count

#now we'll write a function which adds up the letter numbers for all 
#numbers up to a given number

def cumulative_count(n):
    start = time()
    count = 0
    for i in range(1,n+1):
        count += count_letters(i)
    end = time() - start
    return count, end










