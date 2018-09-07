
# ----- -2 ----- -1 ----- 0 -----1 ----- 2 -------

# Generating a random number (close to 0) from a normal distribution set of numbers.
# The function rnorm generate a set of numbers randomly distributed from
# a normal distribution

# we remove the variable answer
rm(answer)

x <- rnorm(1, mean = 0, sd = 1)

# Now we use the if statement
if (x >= 1) {
    answer <- "x is >= 1"
} else{
  
  if (x <= -1){
    answer <- "x is <= -1 "
  }else{
    answer <- " -1 < x < 1"
  }
  
}

# Shorter way

rm(answer)

y <- rnorm(1, mean = 0, sd = 1)

if (y >= 1) {
  answer <- "y >= 1"
} else if (y <= -1) {
  answer <- "y <= -1"
}else{
  answer <- "-1 < y < 1"
}

















