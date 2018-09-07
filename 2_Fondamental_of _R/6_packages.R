# Procedure to install and use the package 

# 1 Install the package you need
install.packages('ggplot2')


# 2 activate the package
# If you want to activate a package manually select it from the packages list
library(ggplot2)

# 3 find hepl for the package
?ggplot2()

## -----CREATION OF A PLOT USING GGPLOT2---------

# qplot() is a shortcut of ggplot2
?qplot()

# exploring the diamonds dataset
?diamonds

# Usage of the package
qplot(data = diamonds, x = carat, y = price, colour = clarity, facets = .~clarity)





