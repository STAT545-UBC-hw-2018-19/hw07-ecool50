#' @title Checks if input is a factor or a string
#'
#' @description A function that checks if a an input x can be represented as factor or not and returns
#' a boolean value.
#' @param  x
#' @return boolean
#' @usage isFactor
#' @examples
#' isFactor(c("high", "medium", "low"))
#' @export
#'
isFactor <- function(x){

  #make sure we are working with a factor
  if(!is.factor(x)){
    stop("Input is not a factor, please make sure a factor is provided")

  }

  # compute the lenght of the unique characters
  num_unique <- length(unique(x))

  #check to see if number of unique is the same length of x
  if (num_unique == length(x))
    return(T)
  else
    return(F)
}
