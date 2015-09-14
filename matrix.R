m <- matrix(nrow=10,ncol=10)
dim(m)
attributes(m)mijljlikjvsdfdfdfd

x <- matrix( 1:6, nrow = 3)
y <- matrix( 1:6, ncol = 3)
z <- matrix (1:6, nrow = 3, byrow=TRUE)


A <- rbind( 1:3,4:6,7:9)
B <- cbind( 1:3, 4:6, 7:9)


x_aug <- cbind( x,100:102)

box <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)


new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

x <- rbind(new_hope,empire_strikes, return_jedi)

new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)



rownames(star_wars_matrix)<- c("A New Hope","The Empire Strikes Back", "Return of the Jedi")
colnames(star_wars_matrix)<- c("US","Non-US")

rowSums(star_wars_matrix)





#Subset
# Sample 12 elements from the range 1...150, put them into
# a matrix with three rows.
m <- matrix(sample(1:150,12),nrow=3)




