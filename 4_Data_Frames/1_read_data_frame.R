
?read.csv()


# Method 1: Manually selection
stats <- read.csv(file.choose())
stats

# Method 2: Set WD and read data
# First we get the working dir
getwd()

# If we want to change the working directory we have to set a new one
setwd("~/Cosimo_Projects/Cosimo_RTesting/data")
# than we read the 
stats2 <- read.csv("DemographicData.csv")
stats2


# ------------- Exploring data -------------
stats

# Number of rows
nrow(stats)

#  Number of columns
ncol(stats)

# Top 5 rows
head(stats, n = 5)

# Last 5 rows
tail(stats, n = 5)

# Structure of the df
str(stats)

# Summary of the df
summary(stats)

# --------------------- Using $ sign ----------------
head(stats)

# Getting a value from the df
# With row and column index
stats[3, 3]

# Same as before (index + colname)
stats[3, "Birth.rate"]

# We can't do this operation because rows are numerated but columns have names
stats["Angola", 3]

# The $ sign enable us to select an entire column as vector
stats$Country.Code

# The second row in the column
stats$Country.Code[2]

# If we want to know the level of the categorical values into a column
levels(stats$Income.Group)
























