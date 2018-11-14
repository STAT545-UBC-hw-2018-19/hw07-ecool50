#' @title Reorder a factor X in descending order
#' @description This function takes in a factor x and reorder its levels in descending order. We appeal to the desc function from dplyr
#' @usage Factor_Reorder
#' @param x Factor for reordering
#' @return Returns the same factor x with levels ordered in descending fashion
#' Note: The input must be a factor or an exception will be thrown.
#' @examples
#' Factor_Reorder(c("high", "med", "low"))
#' @export


Factor_Reorder <- function(x) {
  #make sure we are working with a factor
  if(!is.factor(x)){
    stop("Input is not a factor, please make sure a factor is provided")
  }

  #Reorder the factor levels
  fact_sorted <- reorder(x, dplyr::desc(x))

  #compute the new levels of the sorted factor
  sorted_levels <- levels(fact_sorted)

  #return the new levels
  return(sorted_levels)
}
