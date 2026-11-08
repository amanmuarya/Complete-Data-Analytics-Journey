# numbers = [1, 2, 3, 4, 5]

# squared = []
# for x in numbers:
#     squared.append(x * x)

# squared = [x * x for x in numbers]   


# Filtering Data
#  
"""
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = [x for x in numbers if x % 2 == 0]
print(even_numbers)
"""


# Transforming Text Data
names = [" Ali ", "Sara ", " JOHN"]
clean_names = [name.strip().lower() for name in names]

print(clean_names)


# Dictionary Comprehensions

items = ["apple", "banana", "cherry"]
prices = [0.5, 0.3, 0.2]
price_dict = {item: price for item, price in zip(items, prices)}
print(price_dict)

# =========

scores = {"math": 80, "science": 90, "english": 75}

passed = {k: v for k, v in scores.items() if v == 80}
print(passed)


# Set Comprehensions
values = [1, 2, 2, 3, 3, 4]

unique_squares = {x * x for x in values}
print(unique_squares)


# Nested Comprehensions
pairs = [(x, y) for x in [1, 2] for y in [3, 4]]
print(pairs)