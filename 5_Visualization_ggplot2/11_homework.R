# Calculate the Movies Domestic Gross %
# Link to the exercise: 
# https://www.superdatascience.com/wp-content/uploads/2016/02/Section6-Homework-The-Challenge.pdf

# Set the working directory 
getwd()
setwd("/home/CURIACOSI1/Cosimo_Projects/Cosimo_RTesting/data")

# Read the dataset
data <- read.csv("Section6-Homework-Dataset.csv")
head(data)

# Rename the columns
colnames(data) <- c("Day.of.Week", "Director", "Genre", "Movie.Title", "Release.Date",
                  "Studio", "Adjusted.Gross", "Budget.mill", "Gross.mill", "IMDb.Rating",
                  "MovieLens.Rating", "Overseas.mill", "Overseas.perc", "Profit.mill", 
                  "Profit.perc", "Runtime.min", "US.mill", "Gross.perc")

head(data)
str(data)

# filtering the dataframe
library(dplyr)

dframe <- filter(data, Genre %in% c("action", "adventure", "animation", "comedy", "drama"))
str(dframe)

dframe <- filter( dframe, Studio %in% c("Fox", "Buena Vista Studios", "Sony", "Paramount Pictures","Universal", "WB"))
str(dframe)


# creating the plot

# aeshtetic
z <- ggplot(data = dframe, aes(x= Genre, y= Gross.perc))

q <- z + # add geometry
        geom_jitter(aes(color=Studio, size= Budget.mill)) + 
        geom_boxplot(alpha = 0.5, outlier.color = NA) +
        # axis label 
        ylab("Gross % US") + xlab("Genre") +
        # adding title 
        ggtitle("Domestic Gross % by Genre") +
        # adding theme
        theme(axis.title.x = element_text(colour = "Blue", size = 12),
              axis.title.y = element_text(color = "Blue", size = 12),
              plot.title = element_text(size = 15),
              text = element_text(family = "comic Sans MS"))

q

# last touch (changing the legend name)
q&labels$size <- "Budget $M"
q


