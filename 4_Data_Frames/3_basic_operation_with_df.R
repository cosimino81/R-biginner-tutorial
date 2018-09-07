
# First we import the dataset
setwd("~/Cosimo_Projects/Cosimo_RTesting/data")

df <- read.csv("DemographicData.csv")

head(df)

# -------------------- Basic operation with df

# subsets first 10 rows
df[1:10, ]

# specific subset
df[3:8, ]

df[c(4,20), ]

# we check if it's a df
is.data.frame(df[1:20, ])

# if we extrac only a column it will be a vector
# except we will use the drop function
is.data.frame(df[,1])

is.data.frame(df[,1, drop=F])

df[,1, drop=F]

#multiply columns
head(df)

df$Birth.rate * df$Internet.users

# addition
df$Birth.rate + df$Internet.users

# adding a column to the df
df$myCalc <- df$Birth.rate * df$Internet.users
head(df)

# if we add a column (vector) shorter than the rows of the df it must be a multiple of it
# otherwise we will get an error
df$Multiple.col <- 1:5
head(df, n = 12)

# remove a column
df$Multiple.col <- NULL
df$myCalc <- NULL
head(df)









