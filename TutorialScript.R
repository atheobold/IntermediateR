#----------------EQUALITY-----------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------

TRUE == FALSE
-6 * 14 != 17 - 101 

###################################################### EXERCISE 1 ###############################################

# write R code to see if 

# "useR" and "user" are equal. 

# TRUE and 1 are equal.


#----------------GREATER & LESS-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------

-6 * 5 + 2 >= -10 + 1

###################################################### EXERCISE 2 ###############################################

# write R code to see if

# "raining" is less than or equal to "raining dogs". 

# TRUE is greater than FALSE.


#----------------MATRIX-------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------

# The following are dating data, of one person's messages received per day for one week

okcupid <- c(16, 9, 13, 5, 2, 17, 14)

match <- c(17, 7, 5, 16, 8, 13, 14)

messages <- matrix(c(okcupid, match), ncol = 2, byrow = FALSE)
# This makes the data from OkCupid the first column and the data from Match the second column

###################################################### EXERCISE 3 ###############################################

# Use the messages matrix to return a logical matrix that answers the following questions:


# For which days and sites were the messages equal to 13?


# For which days and sites were the number of messages less than or equal to 14? 


#----------------LOGICALS-----------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------

###################################################### EXERCISE 4 ###############################################

# Using the okcupid vector from above, answer the following questions:

# Is the last day of the week under 5 messages or above 10 messages? (hint: last <- tail(okcupid, 1) could be helpful)

# Is the last day of the week between 15 and 20 messages, excluding 15 but including 20?


#----------------CONDITIONAL STATEMENTS---------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------

###################################################### EXERCISE 5 ###############################################

# Using the okcupid vector from above, write an if statement that prints "You're popular!" if the number of messages exceeds 10


###################################################### EXERCISE 6 ###############################################

# Using the if statement from Exercise 5 add the following else statement: 

# When the if-condition on messages is not met, R prints out "Send more messages!" 



#----------------------------------------------LOOPS--------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------

# Create a vector filled with random t-values, from a distribution with 32 degrees of freedom 
sim <- 1:100
u <- rt(sim, 32)

# Initialize `usq` (could have used a single NA or 0 initialization)
usq <- rep(NA, length(sim))

for(i in sim) {
  # i-th element of `u1` squared into i-th position of `usq`
  usq[i] <- u[i]^2
  print(c(u[i], usq[i]))
}

print(i) 
## should be the same as sim, unless the loop had issues!


#----------------------------------------------NESTED LOOPS-------------------------------------------------
#-----------------------------------------------------------------------------------------------------------

# Create a 30 x 30 matrix (of 30 rows and 30 columns)
mymat <- matrix(nrow = 30, ncol = 30)

# verify the dimensions of mymat
dim(mymat)

# pull off number of rows for first loop
dim(mymat)[1]

# pull off number of columns for second loop
dim(mymat)[2]

# For each entry in the matrix: assign values based on its position (the product of two indices)
for(i in 1:dim(mymat)[1]){
  for(j in 1:dim(mymat)[2]){
    mymat[i,j] <- i*j
  }
}

# Just show the upper left 13x13 piece of matrix 
mymat[1:13, 1:13]


#----------------------------------------------WHILE LOOPS--------------------------------------------------
#-----------------------------------------------------------------------------------------------------------

sim <- 100
u <- rt(sim, 32)


usq <- 0  # Initialize `usq`
i <- 1  # Initialize the "control variable"

# verifying a relational statement, checking if i is in the range of 1 to sim
while(i < sim){
  # i-th element of `u1` squared into `i`-th position of `usq`
  usq[i] <- u[i]^2
  i <- i + 1
}

#----------------------------------------------FUNCTIONS----------------------------------------------------
#-----------------------------------------------------------------------------------------------------------

###################################################### EXERCISE 7 ###############################################

# Arguments:  

# Outputs: 

# Body:
  
###################################################### EXERCISE 8 ###############################################

# Arguments:  

# Outputs: 

# Body:

###################################################### EXERCISE 9 ###############################################

BlackfootFish <- read.csv("BlackfootFish.csv")

## function for condition index code here!


###################################################### EXERCISE 10 ###############################################
################################################### EVERYTHING TOGETHER ##########################################

matrix <- data.frame(NA, l = BlackfootFish$length, w = BlackfootFish$weight)

# Given the matrix of integers above, 

    # use a for loop,
    # an ifelse statement, and
    # the function you defined above,

# to compute the condition number of each fish, and output "NA" if that fish's condition index is NA or greater than 2.



