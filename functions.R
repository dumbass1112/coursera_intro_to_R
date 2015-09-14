# functions are first-class objects.

add2 <- function(x,y){
	x+y
}


pos <- function(x)
{
	x>=0;
}


aboveN <- function(x,n)
{
	x[ x>n ]
}


colMeans <- function(df)
{
	means<-numeric()
	for ( i in 1:ncol(df))
	{
		means <- append(means, mean(df[[i]]))
	}
	means	 
}


cube <- function(x,n)
{
	x^3
}


# Scoping example
f <- function(x)
{
	g <- function(y){
		y + z
	}
	z <- 4;
	x + g(x);
}