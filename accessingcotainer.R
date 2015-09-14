# Using the  single bracket [ ] notation, you always get back an object with
# the same type as is in the container.The exception is matrix indexing , where
# you get back a vector , not another matrix.
v <- list(1,2,3)
> class(v)
"list"
> class( v[2] )
"list"

# You can use a LOGICAL index in single brackets instead of NUMERIC index
# where the logcial expression operates on each element of v.
>v[ v>10 ]

# Get an indicator vector out like:
> u <- v > 2
> u 
[1] FALSE TRUE TRUE


# The double bracket '[[' ,
# notation is used to extract from a LIST or a DATA FRAME, and the type
# of the thing returned might be different than the enclosing container.

class(v[[1]])
> "numeric"
# Using '[[', you can use a COMPUTED INDEX, e.g. a variable that has taken 
# on a value computed by some formula.
> idx <- length(v)
> v[[idx]]

# '$' extracts frmo a LIST or a DATA FRAME by NAME. But the return is like using
# '[['




