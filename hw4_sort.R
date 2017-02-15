my_sort <- function(input_vector,decreasing=FALSE){
  vector_len <- length(input_vector)
  is_exchange <- FALSE
  
  for (i in 1:(vector_len-1)){
    for (j in (i+1):vector_len){
      if(decreasing){
        is_exchange <-input_vector[i]<input_vector[j] 
      }else{
        is_exchange <-input_vector[i]>input_vector[j] 
      }
      if (is_exchange){
        temp <- input_vector[i]
        input_vector[i] <- input_vector[j]
        input_vector[j] <- temp
      }
    }
  }
  return (input_vector)
}

set.seed(87)
test_vec <- ceiling(runif(10)*100)
my_sort(test_vec)
my_sort(test_vec,decreasing = TRUE)