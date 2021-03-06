% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/los_ra_index.R
\name{los_ra_index_query}
\alias{los_ra_index_query}
\title{Get LOS and Readmit Index Query}
\usage{
los_ra_index_query()
}
\value{
A tibble
}
\description{
Get the Length of Stay and Readmit data with expected performance
}
\details{
\itemize{
\item Gets data from DSS query
\item Uses \code{\link[=db_connect]{db_connect()}} and \code{\link[=db_disconnect]{db_disconnect()}} functions. See documentation.
\item Gets
\enumerate{
\item Adm_Date
\item Dsch_Date
\item Encounter
\item LIHN_Svc_Line
\item ALOS
\item ELOS
\item Visit_Flag
\item Readmit_Flag
\item Readmit_Rate
}
\item Data Tables
\enumerate{
\item smsdss.bmh_plm_ptacct_v
\item smsdss.vReadmits
\item smsdss.c_elos_bench_data
\item smsdss.c_LIHN_Svc_Line_Tbl
\item Customer.Custom (APR-DRG Data)
\item smsdss.c_readmit_dashboard_bench_tbl
}
\item Filters
\enumerate{
\item tot_chg_amt > 0
\item Encounter does not start with 2 or 1999
\item Dsch_Date >= '2001-01-01'
\item Plm_Pt_Acct_Type = "I"
}
}
}
\examples{
library(DBI)
library(odbc)
library(dplyr)
library(tibble)
library(janitor)
df_tbl <- los_ra_index_query()

}
\author{
Steven P. Sanderson II, MPH
}
