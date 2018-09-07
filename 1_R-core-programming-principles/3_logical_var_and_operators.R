# Logical operator:
# <
# >
# == (equal)
# <=(smaller equal)
# >= 
# != (different equal)
# !
# | (or)
# & (and)
# isTRUE(x)



# check some numbers with logical operator
result <- 4 < 5
typeof(result)

# using the ! operator
result2 <- !TRUE
result2

result3 <- !(5>2)
result3

# either or operators
# we will get TRUE if one of the variable is true
result | result2

# and operator
# we will get TRUE if both are true
result & result2

# isTRUE() we will get true if the attribute is true
isTRUE(result & result2)


















