

# reading a dataset
setwd("~/Cosimo_Projects/Cosimo_RTesting/data")

df <- read.csv("DemographicData.csv")

head(df)

# ---------------------- Introducing to qplot() ----------------

# installing the library
install.packages('ggplot2')
# activate the library
library(ggplot2)

qplot(data = df, x = Internet.users)

qplot(data = df, x = Income.Group, y=Birth.rate, size = I(3))

qplot(data = df, x = Income.Group, y = Birth.rate, size= I(3), color= I('blue'))

qplot(data = df, x = Income.Group, y = Birth.rate, geom = 'boxplot')


# ---------------- Visualizing what we need --------------

# 1st plot not categorized
qplot(data = df, x = Internet.users, y = Birth.rate, size=I(2), color=I('red'))

# 2nd plot categorized
qplot(data = df, x = Internet.users, y = Birth.rate, size=I(2), color=Income.Group)









