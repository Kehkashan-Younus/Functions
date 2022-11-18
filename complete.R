
complete <- function(directory, id = 1:332) {
  filelist <- list.files(path = "specdata", pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  
  for(i in id) {
    data <- read.csv(filelist[i])
    nobs <- sum(nobs, complete.cases(data))
  }
  data.frames <- c(id, nobs)
}



