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















