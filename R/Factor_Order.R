#' @title Compute levels of factor
#' @description This function computes the levels of a given factor by returning the unique ordering found in the dataset.
#' @usage Factor_Order(x)
#' @param x is a factor
#' @return Return levels to the order in which they appear in the data,
#' An error is raised if the input is not a factor
#' @examples
#' Factor_Order(c("high", "med", "low"))
#' @export


Factor_Order <- function(x) {
  #make sure we are working with a factor
  if(!is.factor(x)){
    stop("Input is not a factor, please make sure a factor is provided")
  }
  #compute the levels by computing the unique order in the dataset
  temp <- as.character(unique(x))

  #set the levels of x as this order
  levels(x) <- temp

  #return the new factor with it's levels
  return(x)
}
