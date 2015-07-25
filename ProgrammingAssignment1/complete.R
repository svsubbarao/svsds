complete <- function(directory, id = 1:332) {

  if(grep("specdata", directory) == 1) {
    directory <- ("./specdata/")
  }
  
  nobsNum <- numeric(0)
  for(i in id){
    filePath <- file.path(directory, paste(sprintf("%03d", as.numeric(i)), ".csv", sep=""))
    ##print(filePath);
    data <- read.csv(filePath)
    ok <- sum(complete.cases(data))
    nobsNum <- c(nobsNum,ok)
    ##print(nobsNum)
    
  }
  data.frame(id = id, nobs = nobsNum)
}