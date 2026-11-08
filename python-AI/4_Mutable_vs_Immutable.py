"""
a = [1, 2, 3]
b = a

b.append(4)

print(a)
"""

# Copying Data Correctly
a = [1, 2, 3]
b = a.copy()

record = {"name": "Ali", "marks": [80, 90]}
copy_record = record.copy()

print(copy_record)


# Hidden Mutation Inside Functions
def add_item(items):
    items.append(10)

data = [1, 2, 3]
add_item(data)

print(data)




#     python 4_Mutable_vs_Immutable.py