% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_na_cols.R
\name{all_na_cols}
\alias{all_na_cols}
\title{Helper function to select all NA columns}
\usage{
all_na_cols(x)
}
\arguments{
\item{x}{Either data.table or data.frame.}
}
\description{
This function is used to determine which columns in data.frame or
data.table are completely empty.
}
\note{
data.table behaviour is different to data.frame but the function includes
control-flow to address this. Please see example below to compare the outputs.
}
\examples{
# data.table
mtcars$empty <- NA
dt_mtcars <- data.table::as.data.table(mtcars)
all_na_cols(dt_mtcars)

# data.frame
mtcars$empty <- NA
all_na_cols(mtcars)
}
\keyword{nacols}
