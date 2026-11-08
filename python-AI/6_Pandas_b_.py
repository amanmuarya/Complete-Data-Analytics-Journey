import pandas as pd

data = {
    "name": ["Ali", "Sara", "John"],
    "marks": [85, 90, 78]
}
df = pd.DataFrame(data)

df.head()
df.info()
df.describe()

df["marks"]
df[["name", "marks"]]

df["marks"]
df[["name", "marks"]]

