#' @title Helper function to select all NA rows
#'
#' @description This function is used to determine which rows in data.frame or
#' data.table are completely empty.
#' @param x Either data.table or data.frame.
#' @keywords narows
#' @export
#' @examples
#' # data.frame
#' # first row is made all NA
#' mtcars[1,] <- NA
#' head(mtcars)
#' all_na_rows(mtcars)

all_na_rows <- function(x){
     rowSums(is.na(x)) != ncol(x)
}
