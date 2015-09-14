# mtcars is a data frame available at the R prompt.
str(mtcars)


# Remember, a data frame is a *list* of *vectors*, so 
# each column is a vector ( they all have the same type)
# and can be extracted like:
mpg_vec <- mtcars$mpg
mpg_vec <- mtcars[,"mpg"]
mpg_vec <- mtcars[,1]
mpg_vec <- mtcars[[1]]

# Note that "mtcars[1]" does NOT return a vector, it returns another
# data frame!
str( mtcars[1])

# You can extract multiple columns into your slice...
# but its still a data frame that's been sliced out.
big_slice <- mtcars[c(1,2,3)]

# You can extract ROWS too.
mtcars[1,]
mtcars[c(1,2,3),]

# Extracting cars that meet a criterion defined by a logical equation
# can be obtained by creating a logical vector using the criterion, and then
# using the vector in the extract rows form.
meets_criterion <- (mtcars$mpg > 23) & ( mtcars$cyl > 4)
mtcars[ meets_criterion,]









