pollutantmean <- function(directory, pollutant, id = 1:332) {
  filelist <- list.files(path = "specdata", pattern = ".csv", full.names = TRUE)
  value <- numeric()
  
  for(i in id) {
    data <- read.csv(filelist[i])
    values <- c(values, data[[pollutant]])
  }
  mean(values, na.rm = TRUE)
}
pollutantmean("specdata", "sulfate", 1:10)

