% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shortcuts-ts-xts.R
\name{hc_add_series_ohlc}
\alias{hc_add_serie_ohlc}
\alias{hc_add_series_ohlc}
\title{Shorcut for create candlestick charts}
\usage{
hc_add_series_ohlc(hc, x, type = "candlestick", ...)

hc_add_serie_ohlc(hc, x, type = "candlestick", ...)
}
\arguments{
\item{hc}{A \code{highchart} \code{htmlwidget} object.}

\item{x}{A \code{OHLC} object from the \pkg{quantmod} package.}

\item{type}{The type of chart. Can be \code{candlestick} or \code{ohlc}.}

\item{...}{Aditional shared arguments for the data series
(\url{http://api.highcharts.com/highcharts#series}).}
}
\description{
This function helps to create candlestick from \code{xts} objects
obtaining by \code{getSymbols} function from the  \pkg{quantmod}.
}
\examples{
  

library("xts")

data(sample_matrix)

matrix_xts <- as.xts(sample_matrix, dateFormat = "Date")

head(matrix_xts)

class(matrix_xts)

highchart() \%>\% 
  hc_add_series_ohlc(matrix_xts)

\dontrun{
   
library("quantmod")

x <- getSymbols("AAPL", auto.assign = FALSE)
y <- getSymbols("SPY", auto.assign = FALSE)

highchart() \%>\% 
  hc_add_series_ohlc(x) \%>\% 
  hc_add_series_ohlc(y)
  
}
  
}

