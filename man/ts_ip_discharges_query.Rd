% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_series_queries.R
\name{ts_ip_discharges_query}
\alias{ts_ip_discharges_query}
\title{Time Series - Inpatient Discharges Query}
\usage{
ts_ip_discharges_query()
}
\value{
A tibble
}
\description{
This query gets the data necessary to do a time series analysis on the daily
inpatient discharges.
}
\details{
\itemize{
\item Requires a connection to DSS, uses both \code{\link[=db_connect]{db_connect()}} and \code{\link[=db_disconnect]{db_disconnect()}}
\item The start date is set to 2001-01-01
\item The end date is set dynamically to the end of the previous month.
\item It gets data from smsdss.BMH_PLM_PtAcct_V
\item The data comes back aggregated by day with columns date_col and value
}
}
\examples{
\dontrun{
ts_ip_discharges_query()
}

}
\author{
Steven P. Sanderson II, MPH
}
