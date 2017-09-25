condition <- function(w, l){
  c <- ((w^(1/3))/l)*50}

for(i in 1:dim(matrix)[1]){
  c <- condition(matrix$w[i], matrix$l[i])
  if((is.na(c) != TRUE) & c < 2){
    matrix$c[i] <- c
  }else{matrix[-i, ]}
}