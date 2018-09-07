
# Testing the Law of large numbers

# In probability theory, the law of large numbers (LLN) is a theorem that describes
# the result of performing the same experiment a large number of times. 
# According to the law, the average of the results obtained from a large number of trials 
# should be close to the expected value,
# and will tend to become closer as more trials are performed.


i <- 0
result <- 0
count <- 0

while (i < 10) {
      rm(answer)
      answer <- rnorm(1, mean = 0, sd = 1)
      i <- i +1 
      
if ( answer <= 1 & answer >= -1) {
    count <- count + 1 
    } 
}

result <- (count/i)

# Other solution, more compact 
N <- 0
counter <- 0
 for (i in rnorm(1000)) {
   N <- N +1
   if (i <= 1 & i >= -1 ) {
     counter <- counter + 1
   }
 }

result <- counter/N









