
head(df)
plot(x = df$Birth.rate, y = df$Internet.users,type = "p")

# ---------------------- Introducing to qplot() ----------------
# installing the library
install.packages('ggplot2')
# activate the library
library(ggplot2)

qplot(data = df, x = Internet.users)

qplot(data = df, x = Income.Group, y=Birth.rate, size = I(3))

qplot(data = df, x = Income.Group, y = Birth.rate, size= I(3), color= I('blue'))

qplot(data = df, x = Income.Group, y = Birth.rate, geom = 'boxplot')













