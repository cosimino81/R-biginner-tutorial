# Recap
# Three ways to crate a vector

x <- c(1,2,3,4,5,6) #combine
y <- seq(1, 10) #sequence
z <- rep(3, 10) #replicate


w <- c("a","b","c","d","e")
w

#Take the firs letter
# 
w[1]

#Take all the letter except the first one
w[-1]

#Take all the letter except the second one
w[-2]

#Take a sequence (from-to) of element from a vector 
w[1:3]

#Take specific object from a vector (es. "a", "b", "e")
w[c(1,2,5)]

#All the vector except specific elements (es. no "a" and "e")
w[c(-1, -5)]

#Excluding a sequence of letters (es. no "b" and "c")
w[-2:-3]



























