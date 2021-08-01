#' @title Identify which strings start with a number
#'
#' @description This function allows to determine if columns in data.frame or data.table start with number.
#' It can only detect numbers that are either one or two digits and in snake case format.
#' For example, "20_cars" will be detected but "20 cars" or "200 cars" will not be detected.
#' Typical use case is to rename certain columns such as:
#' setnames(data, guess_numeric_names(data), paste0("name", guess_numeric_names(data)))
#' @param x Either data.table or data.frame with column names in snake format.
#' @keywords guess
#' @export
#' @import data.table
#' @examples
#' colnames(mtcars) <- c("Name", "1_Works", "1_Works %", "2 Fails", "2 Fails %",
#'      "30_Works", "30_Works %", "700_Fails", "700_Fails %", "Longer", "Longer %")
#'
#' guess_numeric_names(mtcars)


guess_numeric_names <- function(x){
     if (data.table::is.data.table(x)) {
          x <- colnames(x[, .SD, .SDcols = grepl("^[[:digit:]]{1,2}[[:punct:]]", colnames(x))])
     } else {
          x <- colnames(x[, grepl("^[[:digit:]]{1,2}[[:punct:]]", colnames(x))])
     }

     if (checkmate::test_null(x)) {
          warning("returned empty vector")
          return(x)
     } else {
          return(x)
     }
}
