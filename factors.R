blood <-c("B","AB","O","O-","O+","AB")
f <- factor(blood)
f

shirts <- c("M","M","L","XL","SM","M","SM")
shirt_factor <- factor(shirts,ordered=T,levels=c("SM","M","L","XL"))


survey <- c("R","L","R")
survey_factor <- factor( survey,levels=c("R","L"),labels=c("Right","Left") )
summary(survey_factor)