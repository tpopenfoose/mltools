% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/date_factor.R
\name{date_factor}
\alias{date_factor}
\title{Date Factor}
\usage{
date_factor(dateVec, type = "yearmonth", fullyears = TRUE)
}
\arguments{
\item{dateVec}{A vector of date values}

\item{type}{One of {"yearmonth", "yearquarter", "quarter", "month"}}

\item{fullyears}{Should levels will always start and end at the end of a year? 
For example \code{date_factor(as.Date(c("2016-4-1", "2016-7-1")), "yearquarter", fullyears=TRUE)} will return a factor with
four levels (Q1, Q2, Q3, Q4) even though only two date values were given.}
}
\description{
Map a vector of dates to a factor at one of these levels {"yearmonth", "yearquarter", "quarter", "month"}
}
\details{
The resulting vector is an ordered factor of the specified \code{type} (e.g. yearmonth)
}
\examples{
library(data.table)
dts <- as.Date(c("2014-1-1", "2015-1-1", "2015-6-1"))
date_factor(dts, type="yearmonth")
date_factor(dts, type="yearquarter")
date_factor(dts, type="yearquarter", fullyears=FALSE)

}

