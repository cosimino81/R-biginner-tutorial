

# Creation of a vector and looping over it
x <- rnorm(5)

# R-specific progamming loop
for (i in x) {
  print(i)
}

# Printing the first, second..., value
print(x[1])

print(x[2])

print(x[3])


# Looping over a vector
# Conventional programming loop
for (j in 1:5) {
  print(j)
}


# Looping over a vector
for (y in seq(1,5)) {
  print(y)
}

# Looping over a vector
for (z in rep(2,6)) {
  print(z)
}

# Looping over a vector
for (v in c(1,2,3,4,5,6,7,8,9)) {
  print(v)
}

# Vectorized vs devectorized operation

N <- 100
a <- rnorm(N)
b <- rnorm(N)

# Vectorized approach (faster than devectorized)
c <- a * b

# Devectorized approach
d <- rep(NA, N)

for (i in 1:N) {
  d[i] <- a[i] * b[i] # the result in "d" will be same as in "c" 
}













