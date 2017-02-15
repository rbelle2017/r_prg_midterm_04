my_sd <- function(input_vector){
  vector_sum <- 0
  vector_len <- 0
  average_value <- 0
  for (i in input_vector){
    vector_sum <- vector_sum + i
    vector_len <- vector_len + 1
  }
  average_value <- vector_sum/vector_len
  sd_sum <- 0
  for (i in input_vector){
    sd_sum <- sd_sum + (i - average_value)^2
  }
  sd_value <- (sd_sum/(vector_len - 1))^0.5
  return(sd_value)
}


test_vector <- round(runif(10)*100)
my_sd(test_vector)
sd(test_vector)