% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_dss_tables.R
\name{denials_inpatient_query}
\alias{denials_inpatient_query}
\title{Denials by Inpatients}
\usage{
denials_inpatient_query()
}
\value{
A tibble
}
\description{
Get denials for inpatient visits from smsdss.c_Softmed_Denials_Detail_v and
smsmir.mir_pay where the left 4 digits of the pay code are '0974'. The data
starts at January 1st, 2013
}
\details{
\itemize{
\item Uses the \code{\link[=db_connect]{db_connect()}} and \code{\link[=db_disconnect]{db_disconnect()}} functions
\item Queries:
}
\enumerate{
\item smsdss.c_Softmed_Denials_Detail_v
\item smsmir.mir_pay
}
\itemize{
\item Includes the columns ptno_Num, bill_no, discharge_date and dollars_denied
\item This function is intended to be used with \code{\link[timetk:filter_by_time]{timetk::filter_by_time()}} if data
needs to be filtered by time. The .date_var argument should be set equal to
discharge_date
}
}
\examples{
library(timetk)
denials_inpatient_query()

}
\author{
Steven P. Sanderson II, MPH
}
