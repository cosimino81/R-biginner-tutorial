
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

# Load (activate) the packege
library(ggplot2)

# 1st step aesthetic
ggplot(data = df, aes(x = CriticRating, y = AudienceRating)) 

# 2nd geom
ggplot(data = df, aes(x = CriticRating, y = AudienceRating)) +
  geom_point()

head(df)

# 3th add colors
ggplot(data = df, aes(x = CriticRating, y = AudienceRating, colour= Genre)) +
  geom_point()

# 4th add size and transparency
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

# Critic rating
t <- ggplot(data = df) 
t + geom_histogram(binwidth = 10, aes(x = CriticRating ), fill= "White", color= "Blue")


# -------------------------- Statistical transformation ----------------
?geom_smooth()

u <- ggplot(data = df, aes(x = CriticRating, y = AudienceRating, color= Genre))
u + geom_point(size=1) + geom_smooth(fill = NA, size = 0.5)


# boxplot
u <- ggplot(data = df, aes(x = Genre, y = AudienceRating, color = Genre))
u + geom_jitter(size=0.5) + geom_boxplot(alpha=0.5) 

# my boxplot
s <- ggplot(data = df, aes(x = Year, y= BudgetMillions, color= Year))
s + geom_jitter(size= 0.5) + geom_boxplot(size = 0.5, alpha = 0.5)


# ------------------ Using Facet ----------------

v <- ggplot(data = df, aes(x = BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill= Genre), color="black")

# Facets
v <- ggplot(data = df, aes(x = BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill= Genre), color="black") +
  facet_grid(Genre~., scales = 'free') #Genre on the rows


# Scatterplots 1
w <- ggplot(data = df, aes(x=CriticRating, y=AudienceRating, color= Genre))
w + geom_point()+ facet_grid(Genre~., scales = 'free')

# Scatterplots 2
w + geom_point()+ facet_grid(.~Year, scales = 'free')

# Scatterplots 3
w + geom_point(aes(size= BudgetMillions, alpha = 0.5))+ 
  geom_smooth(size=0.5)+
  facet_grid(Genre~Year, scales = 'free')


# -------------- COORDINATES ---------------
# Limits
# Zoom

m <- ggplot(data = df, aes(x= CriticRating, y = AudienceRating, 
                           size= BudgetMillions, color = Genre ))
m + geom_point()

# visualize the half right quadrant
m + geom_point() + xlim(50, 100)

# visualizing the top right quadrant
m + geom_point() + xlim(50, 100) + ylim(50, 100)


# ATTENTION: It doesn't work well in every case
n <- ggplot(data = df, aes(x= BudgetMillions))
n + geom_histogram(binwidth = 10, color="Black", aes(fill= Genre))

# It cut the data
n + geom_histogram(binwidth = 10, color="Black", aes(fill= Genre)) + ylim(50,100)

# INSTEAD WE ZOOM IN:
n + geom_histogram(binwidth = 10, color="Black", aes(fill= Genre)) + 
    coord_cartesian(ylim = c(0,50))

# Now we improve the scatterplot #3 
w + geom_point(aes(size= BudgetMillions, alpha = 0.5))+ 
  geom_smooth(size=0.5)+
  facet_grid(Genre~Year, scales = 'free') +
  coord_cartesian(ylim = c(0,100))



















