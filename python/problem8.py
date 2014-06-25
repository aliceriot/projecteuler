#want to find the largest product of five consecutive digits in a really big number (1000 digits)

def string_product(nums):
    prod = 1
    for i in nums:
        prod *= float(i)
    return prod


def find_largest_set(nums):
    large_prod = 0
    best_one = ''
    numsets = [nums[i:i+5] for i in range(0, len(nums), 5)]
    for i in numsets:
        if string_product(i) > large_prod:
            large_prod = string_product(i)
            best_one = i
    numsets = [nums[i:i+5] for i in range(1, len(nums), 5)]
    for i in numsets:
        if string_product(i) > large_prod:
            large_prod = string_product(i)
            best_one = i
    numsets = [nums[i:i+5] for i in range(2, len(nums), 5)]
    for i in numsets:
        if string_product(i) > large_prod:
            large_prod = string_product(i)
            best_one = i
    numsets = [nums[i:i+5] for i in range(3, len(nums), 5)]
    for i in numsets:
        if string_product(i) > large_prod:
            large_prod = string_product(i)
            best_one = i
    numsets = [nums[i:i+5] for i in range(4, len(nums), 5)]
    for i in numsets:
        if string_product(i) > large_prod:
            large_prod = string_product(i)
            best_one = i
    return large_prod, best_one

#so then you would just call
find_largest_set(numbers)


#it works! This is a pretty bad implementation though.....

def better_find(nums):
    largest = 0
    for i in range(nums):
        if string_product(nums[i:i+5]) > largest:
            largest = string_product(nums[i:i+5])
    return largest
