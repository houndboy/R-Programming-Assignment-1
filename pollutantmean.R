
#Week 2 Programming Assignment - pollutant mean

 pollutantmean <- function(directory = "C:/Users/trave/Documents/R-prog", pollutant, id = 1:332) {
    
  files_full <- list.files(directory, full.names = TRUE) 
  
  dat <- data.frame()
  
  for (i in id) {
    dat <- rbind(dat, read.csv(files_full[i]))
  }
  
  mean(dat[, pollutant], na.rm = TRUE)
}

source(pollutantmean.R)
pollutantmean("specdata", pollutant = "sulfate", id = 1:20)






