#' @title Helper function to select all NA columns
#'
#' @description This function is used to determine which columns in data.frame or
#' data.table are completely empty.
#' @param x Either data.table or data.frame.
#' @keywords nacols
#' @export
#' @import data.table
#' @note data.table behaviour is different to data.frame but the function includes
#' control-flow to address this. Please see example below to compare the outputs.
#' @examples
#' # data.table
#' mtcars$empty <- NA
#' dt_mtcars <- data.table::as.data.table(mtcars)
#' all_na_cols(dt_mtcars)
#'
#' # data.frame
#' mtcars$empty <- NA
#' all_na_cols(mtcars)

all_na_cols <- function(x){
     if (data.table::is.data.table(x)) {
          x <- colSums(is.na(x)) != nrow(x)
          x <- names(which(x == FALSE))
          return(x)
     } else {
          x <- colSums(is.na(x)) != nrow(x)
          return(x)
     }
}
