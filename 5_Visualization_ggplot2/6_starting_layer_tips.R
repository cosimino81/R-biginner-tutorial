


# Load the data
getwd()
setwd("/home/CURIACOSI1/Cosimo_Projects/Cosimo_RTesting/data")

df <- read.csv('Movie-Ratings.csv')
head(df)

# Chenge the columns name
colnames(df) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(df)

# Look at the structure
# In a df the "Factor" are categorical variable whom are assigned with numbers
str(df)

# Summary of the df
summary(df)

# As we can see, the "year" variable is not considerated as a "factor", so we will
# convert this variable to factor
df$Year <- factor(df$Year)
str(df)


# ------------------------ Aesthetics --------------------

# Aesthetics: how the data are mapped in order to be visualized

# Load the packege
library(ggplot2)

# 1st step aesthetic
ggplot(data = df, aes(x = CriticRating, y = AudienceRating)) 

# 2nd geom
ggplot(data = df, aes(x = CriticRating, y = AudienceRating)) +
  geom_point()

# 3th add colors
ggplot(data = df, aes(x = CriticRating, y = AudienceRating, colour= Genre)) +
  geom_point()

# 4th add size
ggplot(data = df, aes(x = CriticRating, y = AudienceRating, colour= Genre, size=BudgetMillions,
                      alpha= 0.5)) +
  geom_point()

# --------------------- Plotting with Layer ------------
# Using layers we combine objects sequentially 
p <- ggplot(data = df, aes(x = CriticRating, y = AudienceRating, colour= Genre, alpha= 0.5)) 

# second layer
p + geom_point()

# third layer
p + geom_point() + geom_line()


# ------------------- Overriding Aesthetics ---------------

q <- ggplot(data = df, aes(x= CriticRating, y=AudienceRating, color= Genre))

q + geom_point()

# overriding aes
q + geom_point(aes(size= BudgetMillions, alpha = 0.5))

# overriding the axis
q + geom_point(aes(x= BudgetMillions)) + xlab("Budget Millions $$$")

# more example
q + geom_point() + geom_line()

# line size
q + geom_point() + geom_line(size = 1)


# ---------------- Mapping vs Setting
r <- ggplot(data = df, aes(x= CriticRating, y=AudienceRating))
r + geom_point()

# Add color 
# If we want to "map" a color we use the function aes()
# If we want to "set" a color we don't use it

# 1. By mapping (what we have done so far)
r + geom_point(aes(color=Genre))

# 2. By setting
r + geom_point(color="red")


# 1. mapping the size
r + geom_point(aes(size= BudgetMillions))

# 2. setting the size
r + geom_point(size = 5)

# 1. mapping the transparency and color
r + geom_point(aes(alpha = 0.5, color= Genre))

# 2. setting the transparency and color
r + geom_point(alpha = 0.5, color= "red")


# ------------------------- Histogram and Density Charts --------------------

s <- ggplot(data = df, aes(x = BudgetMillions)) 
s + geom_histogram(binwidth = 10)

# adding the color by filling the bars
s + geom_histogram(binwidth = 10, aes(fill= Genre)) 

# adding the color on the borders
s + geom_histogram(binwidth = 10, aes(fill= Genre), color= "Black")

# ------------------------- Density Chart -------------------------------
s + geom_density(aes(fill = Genre), alpha =0.6, position = "stack")


# ------------------- Starting Layer ---------------------
t <- ggplot(data = df, aes(x = AudienceRating )) 
t + geom_histogram(binwidth = 10, fill= "White", color= "Blue")

# Another way: override the aesthetic
t <- ggplot(data = df) 
t + geom_histogram(binwidth = 10, aes(x = AudienceRating ), fill= "White", color= "Blue")

# Critich rating
t <- ggplot(data = df) 
t + geom_histogram(binwidth = 10, aes(x = CriticRating ), fill= "White", color= "Blue")


head(df)










