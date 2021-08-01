#' @title Coerce strings into snake case formatting
#'
#' @description This function takes vector of strings and turns each string to snake case format.
#' The function also replaces any % symbols with "perc".
#' @param x Vector of strings to coerce to snake case.
#' @examples
#' custom_snake_case("50 % of lions")

custom_snake_case <- function(x){
     x <- gsub("[[:blank:]]", "_", gsub("%", "perc", tolower(trimws(x))))
     x <- snakecase::to_any_case(x, case = "snake")
     return(x)
}
