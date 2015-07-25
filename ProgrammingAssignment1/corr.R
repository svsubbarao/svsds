corr <- function(directory, threshold = 0) {
  if(grep("specdata", directory) == 1) {
    directory <- ("./specdata/")
  }
  
  files <- list.files(directory)
  filePaths <- paste(directory, "/", files, sep="")
  
  ##print(filePaths)
  
  fset <- c(1:length(files))
  okset <- fset[complete(directory, fset)[,2] > threshold]
  result <- c()
  for (i in okset) {
    data <- read.csv(filePaths[i])
    bdata <- !is.na(data)
    tdata <- data[bdata[,1]&bdata[,2]&bdata[,3]&bdata[,4],]
    result <- cbind(result,cor(tdata[,2], tdata[,3]))
  }
  as.vector(result)
}