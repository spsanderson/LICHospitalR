% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oppe_consultant_report_functions.R
\name{coded_consults_seasonal_diagnositcs_plt}
\alias{coded_consults_seasonal_diagnositcs_plt}
\title{OPPE Coded Consults Seasonal Diagnostics}
\usage{
coded_consults_seasonal_diagnositcs_plt(.data, .date_col, .value_col)
}
\arguments{
\item{.data}{The data you want to analyze}

\item{.date_col}{The column that has the date you want to use, typically dsch_date}

\item{.value_col}{The column that holds the value, can use record_flag from the query}
}
\value{
A plotly plot
}
\description{
Get the seasonal diagnostics of the last 6 months consulant usage
}
\details{
\itemize{
\item Must have data supplied either by import or by \code{\link[=coded_consults_query]{coded_consults_query()}} function
\item Must have a date column (adm_date or dsch_date)
\item Must have a value column (should just use record_flag from the query)
}
}
\examples{
library(timetk)
library(dplyr)
library(tibble)
coded_consults_seasonal_diagnositcs_plt(
  .data = coded_consults_query(.resp_pty = "013128")
  , .date_col = dsch_date
  , .value_col = record_flag
  )

}
\author{
Steven P. Sanderson II, MPH
}
