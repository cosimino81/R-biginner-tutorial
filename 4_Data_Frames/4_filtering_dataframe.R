# First we import the dataset
setwd("~/Cosimo_Projects/Cosimo_RTesting/data")

df <- read.csv("DemographicData.csv")


# ---------- Filtering df --------
head(df)

# first we save into a variable the values we have filtered
filter <- df$Internet.users < 2
filter

# than we apply the filter to the df
df[filter, ]

# shorter form
df[df$Birth.rate > 40, ]

# combined form
df[df$Birth.rate > 40 & df$Internet.users < 2,]

df[df$Income.Group == 'Low income', ]

# all information about malta
df[df$Country.Name == 'Malta', ]

















