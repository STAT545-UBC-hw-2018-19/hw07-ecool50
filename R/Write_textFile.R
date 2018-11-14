#' @title Write a dataframe  into a textfile
#' @desciption This functions takes in a dataframe and writes it to a textfile while preserving the order of it's factors. The user can also provide
#' a name for the file as well as a given delimeter.
#' @param  dataframe A dataframe
#' @param  name The name you would like the file to be saved under
#' @param delim The delimiter you would like to use to write the dataframe
#' @usage Write_textFile()
#' @example
#' Write_textFile(dataframe, name = "default", delim = "\t")
#' @export

Write_textFile <- function(dataframe, name = "default", delim = "\t"){
  #Write a dataframe to a texfile using a specific delimiter and a name
  write.table(dataframe, name, quote = FALSE, sep = delim, row.names = FALSE)
}
