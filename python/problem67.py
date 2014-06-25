with open ("/home/benpote/Code/projecteuler/python/triangle.txt", "r") as myfile:
    data = myfile.read()

big_triangle = [i.split(' ') for i in data.split('\n')]
big_triangle.pop(len(big_triangle)-1)
big_triangle = [[int(i) for i in j] for j in big_triangle]

