pollutantmean <- function(directory, pollutant, id = 1:332) {

  if(grep("specdata", directory) == 1) {
    directory <- ("./specdata/")
  }
  print(directory)
  filesList <- list.files(directory)
  print(filesList)
  actualFiles <- filesList[id]
  file_paths <- paste(directory, actualFiles, sep="")
  print(file_paths)
  actualData <- do.call(rbind,(lapply(file_paths,"read.csv")))
  ##print(actualData)
  mean(actualData[[pollutant]],na.rm=TRUE)
  
}