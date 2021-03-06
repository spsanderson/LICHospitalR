% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_series_data_manipulation_tbls.R
\name{ts_ip_census_los_daily_tbl}
\alias{ts_ip_census_los_daily_tbl}
\title{Time Series - Inpatient Census/LOS by Day Tibble}
\usage{
ts_ip_census_los_daily_tbl(.data, .keep_nulls_only = FALSE)
}
\arguments{
\item{.data}{The data passed from from \code{\link[=ts_ip_census_los_daily_query]{ts_ip_census_los_daily_query()}}}

\item{.keep_nulls_only}{A boolean that will keep only those records that have
a NULL discharge date, meaning the patient is currently admitted. The default
is FALSE which brings back all records.}
}
\value{
A tibble object
}
\description{
Sometimes it is important to know what the census was on any given day, or what
the average length of stay is on any given day, including for those patients
that are not yet discharged. This can be easily achieved. This will return one
record for every account so the data will still need to be summarised.

For those accounts that are not yet discharged the date column that returns will
be set to today (the day the function is run.)

\strong{This function can take a little bit of time to run while the join comparison runs.}
}
\details{
\itemize{
\item Requires the data from the \code{\link[=ts_ip_census_los_daily_query]{ts_ip_census_los_daily_query()}}
\item Takes a single boolean parameter
}
}
\examples{
\dontrun{
ts_ip_census_los_daily_query() \%>\%
  ts_ip_census_los_daily_tbl()

ts_ip_census_los_daily_query() \%>\%
  ts_ip_census_los_daily_tbl(.keep_nulls_only = TRUE)
}

}
\author{
Steven P. Sanderson II, MPH
}
