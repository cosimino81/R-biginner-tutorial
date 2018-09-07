
# reading the df

df <- read.csv(file.choose())

head(df)

# getting some data from the df
# seconda rige e terza colonna
df[2,3]

# getting some data from the df
# seconda rige e terza colonna
df[2, "Birth.rate"]

# ---------------  Using $ ---------------
# the $ sign allow us to select an entire column as a vector
df$Birth.rate

# from the vector we can select a specific value
df$Birth.rate[1]

# If we want to know the level of the categorical values into a column
levels(df$Income.Group)

