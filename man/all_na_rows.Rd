% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_na_rows.R
\name{all_na_rows}
\alias{all_na_rows}
\title{Helper function to select all NA rows}
\usage{
all_na_rows(x)
}
\arguments{
\item{x}{Either data.table or data.frame.}
}
\description{
This function is used to determine which rows in data.frame or
data.table are completely empty.
}
\examples{
# data.frame
# first row is made all NA
mtcars[1,] <- NA
head(mtcars)
all_na_rows(mtcars)
}
\keyword{narows}
