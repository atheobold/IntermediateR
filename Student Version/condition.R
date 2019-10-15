condition <- function(w, l){
  ## function to compute condition number of fish 
  ## w = width  
  ## l = length  
  
  ## checks if w OR l are NA before computing condition
  ifelse(is.na(w) == FALSE | is.na(l) == FALSE, 
         ((w^(1/3))/l)*50, 
         NA)
}


## looping over the rows ([1] of dim) of weights and lengths 
## to calculate the condition  
for(i in 1:dim(matrix)[1]){
  matrix$c[i] <- condition(matrix$w[i], matrix$l[i])
}

clean_matrix <- subset(matrix, is.na(c) != TRUE | c < 2)

########################################## ALTERNATIVELY ################################################

condition <- function(data){
  ## function to compute condition number of fish 
  ## data = dataframe, with columns named l & w  
  
  ## checks if weight OR length are NA before computing condition
  w <- data$w
  l <- data$l
  ifelse(is.na(w) == FALSE | is.na(l) == FALSE, 
         c <- ((w^(1/3))/l)*50, 
         c <- NA
  )
  
  return(c)
}

## using the function to create a new column in the matrix dataframe
matrix$condition <- condition(matrix)

## using subset to remove the rows where the condition index is NA
clean_matrix <- subset(matrix, is.na(condition) != TRUE | condition < 2)
