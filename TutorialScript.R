#----------------EQUALITY-----------------------------------------------------------------------------------
# write R code to see if 

TRUE == FALSE.
-6 * 14 != 17 - 101  
# if the strings "useR" and "user" are equal 
# are TRUE and 1 equal?


#----------------GREATER & LESS-------------------------------------------------------------------------------
# write R code to see if
-6 * 5 + 2 >= -10 + 1

# "raining" is less than or equal to "raining dogs"  
# TRUE is greater than FALSE


#----------------MATRIX---------------------------------------------------------------------------------------
# These dating data, of messages received per week, have been created for you

okcupid <- c(16, 9, 13, 5, 2, 17, 14)
match <- c(17, 7, 5, 16, 8, 13, 14)
messages <- matrix(c(okcupid, match), nrow = 2, byrow = TRUE)

# Use the messages matrix to return a logical matrix that answers the following questions:

messages >= 13

# For which days were the number of messages less than or equal to 14? 


#----------------LOGICALS------------------------------------------------------------------------------------
# Using the messages data from above, answer the following questions. 

# Is last under 5 or above 10? 
# Is last between 15 and 20, excluding 15 but including 20?


#----------------LOGICAL PRACTICE-----------------------------------------------------------------------------

BlackfootFish <- read.csv(file.choose())

# Which fish do no have both length and weight recorded?  

# Remove the fish you found from the dataset, renaming the new dataset ``BlackfootFish2``. 

# Subset these data so that only the Rainbow Trout (RBT) and Brown Trout (Brown) remain. 

#----------------------------------------------IF-------------------------------------------------------------

# Using the message dataset, write an if statement that prints "You're popular!" if the number of messages exceeds 10


#-----------------------------------------------ELSE-----------------------------------------------------------


# Using the if statements above add the following:  
# When the if-condition on messages is not met, R prints out "Send more messages!" 


#----------------------------------------------ELSE IF---------------------------------------------------------


# Using the ifelse statement above add the following:  
# "Your number of views is average" is printed if messages is between 15 (inclusive) and 10 (exclusive). 

#----------------------------------------------COMBINE IT ALL! ---------------------------------------------------------

# Variables related to your last day of messages
ma <- tail(match, 1)
ok <- tail(okcupid, 1)

# Code the control-flow construct
if (___ & ___) {
  sms <- 2 * (ma + ok)
} elseif (___) {
  sms <- 0.5 * (ma) + ok)
} else {
  sms <- ___
}

# 1. If both ma and ok are 15 or higher, set sms equal to double the sum of ma and ok.
# 2. If both ma and ok are strictly below 10, set sms equal to half the sum of ma and ok.
# 3. In all other cases, set sms equal to ma + ok.
# 4. Print the resulting sms variable to the console.


#----------------------------------------------LOOPS---------------------------------------------------------

# Create a vector filled with random t-values, from a distribution with 32 degrees of freedom 

sim <- 100
u <- rt(sim, 32)

# Initialize `usq` (could have used a 0 initialization)
usq <- NA

for(i in 1:sim) {
  # i-th element of `u1` squared into `i`-th position of `usq`
  usq[i] <- u[i]^2
  print(usq[i])
  
}

print(i) ## should be the same as sim, unless the loop had issues!


#----------------------------------------------NESTED LOOPS---------------------------------------------------------

# Create a matrix probabilities of drawing binomials 0-5, 
# from a population of 5, and probabilities going from 0 TO 1 by 0.1

x <- 0:5
theta <- seq(0, 1, by = 0.1)

probs <- matrix(NA, nrow = length(x), ncol = length(seq(0, 1, by = 0.1)))

# For each row and for each column, calculate the density of drawing x Binomials (row) with a specific value of theta (column)
for(i in 1:length(x)){
  for(j in 1:length(theta)){
    probs[i,j] = dbinom(x[i], 5, theta[j])
  }
}
probs


#----------------------------------------------WHILE LOOPS---------------------------------------------------------

sim <- 100
u <- rt(sim, 32)


usq <- 0  # Initialize `usq`
i <- 1  # Initialize the "control variable"

while(i %in% 1:sim){
  # i-th element of `u1` squared into `i`-th position of `usq`
  usq[i] <- u[i]^2
  i <- i + 1
}


#----------------------------------------------FUNCTIONS---------------------------------------------------------

BlackfootFish <- read.csv("BlackfootFish.csv")

## function code here!

#----------------------------------------------EVERYTHING TOGETHER!---------------------------------------------------------

matrix <- data.frame(l = BlackfootFish$length, w = BlackfootFish$weight)

# given the matrix of integers above,  
    # use a for loop, an ifelse statement, and the function you defined above, 
# to compute the condition number of each fish, and remove that fish from the dataset if it's condition is NA or greater than 2.

