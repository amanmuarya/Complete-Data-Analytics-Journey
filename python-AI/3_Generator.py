# A generator does not store all values in memory. It gives you the next value only when you ask for it.

"""
def get_numbers():
    for i in range(5):
        yield i
     
for x in get_numbers():
    print(x)
"""

# Generator vs List
numbers = [i for i in range(5)]   
numbers = (i for i in range(5))

print(numbers)
def read_lines(filepath):
        with open(filepath) as file:
         for line in file:
          yield line.strip()


        gen = (x * x for x in range(3))
print(next(gen))  # 0
print(next(gen))  # 1
print(next(gen))  # 4

gen = (x for x in range(3))

list(gen)
list(gen)

