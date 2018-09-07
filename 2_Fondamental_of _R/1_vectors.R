
# Creating some vector
# We use the function "c" to combine a list of object

MyFirstVect <- c(3, 34, 56, 76)

# Check if our vector is numeric
is.numeric(MyFirstVect)

# We check if the array is integer
is.integer(MyFirstVect)

# Check if it's double
is.double(MyFirstVect)

# Integer vector
v2 <- c(1L, 5L, 23L)
is.integer(v2)

# Character vector
v3 <- c("a", "4r", "tt")

# If we put a number into a character vector it will be coverted in number too,
# but not vice versa

v4 <- c("a", "4r", "tt", 88, 3)
is.character(v4)
is.numeric(v4)


# Other function to create a vector
seq() # sequence like "1:5" but we can add steps 
rep() # replicate a number or a character n times

x <- seq(1,30,2)
x

y <- rep(3, 10)
y

# Replication of a tuple 
t <- c(20,30)
vv <- rep(t, 10)
vv

# Replication of a character
z <- rep("J", 6)
z












