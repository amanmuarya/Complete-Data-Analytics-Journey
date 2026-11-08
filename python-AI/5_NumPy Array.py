"""data = [1, 2, 3, 4]
result = []

for x in data:
    result.append(x * 2)
    print(x)"""

# NumPy array:
# import numpy as np

"""import numpy as np 
data = np.array([1, 2, 3, 4])
result = data * 2    
print(result)"""


"""import numpy as np

a = np.array([10, 20, 30])
b = np.zeros(5)
c = np.ones(3)
d = np.arange(1, 6)

print( a, b, c, d)"""



# Vectorized Operations

import numpy as np 
"""a = np.array([1, 2, 3])

a + 10
a * 2
a > 1

print(a)
"""



matrix = np.array([[1, 2], [3, 4]])
tensor = np.array([[[1, 2], [3, 4]], [[5, 6], [7, 8]]])
print(matrix)
print(tensor)

