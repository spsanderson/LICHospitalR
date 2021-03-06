% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_series_data_manipulation_tbls.R
\name{ts_readmit_excess_tbl}
\alias{ts_readmit_excess_tbl}
\title{Time Series - Monthly Readmission Excess Tibble}
\usage{
ts_readmit_excess_tbl(.data, .by_time = "month", .date_col)
}
\arguments{
\item{.data}{The data passed in from \code{\link[=ts_readmit_excess_query]{ts_readmit_excess_query()}}}

\item{.by_time}{The choices are "year", "month", "week", defaults to "month"}

\item{.date_col}{The column containing the date variable of interest}
}
\value{
A tibble
}
\description{
This takes data from the \code{\link[=ts_readmit_excess_query]{ts_readmit_excess_query()}} and makes an internal summary table using \code{timetk::summarise_by_time}
with the following possible choices: "year", "month", "week", these are checked
inside of the function, if something else is chose an error will be thrown
and the function will exit. It defaults to "month".
}
\details{
\itemize{
\item Returns a tibble
\item Expects \code{\link[=ts_readmit_excess_query]{ts_readmit_excess_query()}} as the data argument
\item Cleans the table names and selects the following columns
}
\enumerate{
\item dsch_date
\item dsch (which just equals 1 as a record column)
\item ra_flag
\item rr_bench
}
\itemize{
\item dsch_date gets mutated using \code{lubridate::ymd(dsch_date)}
\item The output columns are:
}
\enumerate{
\item date_col
\item value - the excess readmit rate.
}
}
\examples{
\dontrun{
library(healthyR)

data <- ts_monthly_readmit_excess_query()

data \%>\%
  ts_readmit_excess_tbl(.by_time = "year")

data \%>\%
  ts_readmit_excess_tbl(.by_time = "month") \%>\%
  ts_plt(.date_col = dsch_date, .value_col = value)

data \%>\%
  ts_readmit_excess_tbl()

data \%>\%
  ts_readmit_excess_tbl(.by_time = "week") \%>\%
  save_to_excel(.file_name = "weekly_readmit_excess")
}

}
\author{
Steven P. Sanderson II, MPH
}
