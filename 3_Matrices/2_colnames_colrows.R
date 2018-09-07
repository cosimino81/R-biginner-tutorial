
# ------------ Naming a Vector ----------------
# First we create a vector
alpha <- 1:5
alpha

# Then we check if it has names
names(alpha)


# Now we give names to the vector
# Pay attention, to give the names we insert the value (vector) into a function
names(alpha) <- c("a", "b", "d", "e", "f")

# Now we chech the names again
names(alpha)

# get an element of the vector
alpha["d"]

# We can clear the names
names(alpha) <- NULL

names(alpha)


# ------------- Naming a Matrix dimension 1 -----------
# First we create a vector
vec1 <- rep(c("a", "b", "c"), each =3)
vec1

# Create a matrix
mx <- matrix(data = vec1, nrow = 3, ncol = 3)
mx

# Rename the rows
rownames(mx) <- c("X", "Y", "Z")
colnames(mx)<- c("alpha", "beta", "gamma")
mx
# replace a value into the matrix

mx["Z", "gamma"] <- 0
mx










