#' @title Read a text file  into a dataframe
#' @desciption This functions reads a dataframe into a textfile and detects it delimiter.
#' @param  file name of the file you'd like to read in
#' @usage Read_textFile()
#' @example
#' Read_textFile(name)
#' @export

Read_textFile <- function(file){
  #Read a text file into a dataframe
  df <- read.delim(file)
  return(df)
}
