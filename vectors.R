
cores <- c("SCC","TMC","HC","OMC","HRU","REC")
core_id <- c(0,1,2,3,4,8)
names(core_id) <- cores
str(core_id)

x <- 5
is.vector(x)
length(x)


a_vec <- c(1,2,3)
b_vec <- c(4,5,6)


days_of_week <- c("Mon","Tu","Wed","Th","Fri","Sat","Su")

chores_vector <- c("Dishes","Toilets","Garden","Cooking","Car","Off","Off")

names(chores_vector) <- days_of_week

end_of_week_chores <- chores_vector[ c("Th","Fri")]

middle_week_chores <- chores_vector[ 2:3 ] 