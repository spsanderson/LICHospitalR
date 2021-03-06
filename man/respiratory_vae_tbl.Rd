% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_data_mainpulation_tbls.R
\name{respiratory_vae_tbl}
\alias{respiratory_vae_tbl}
\title{Respiratory VAE Tibble}
\usage{
respiratory_vae_tbl(.data)
}
\arguments{
\item{.data}{The data passed in from \code{\link[=respiratory_vae_query]{respiratory_vae_query()}}}
}
\value{
A tibble
}
\description{
This takes data from the \code{\link[=respiratory_vae_query]{respiratory_vae_query()}} and performs the necessary
calculations to see if a possible VAE has occurred.
}
\details{
\itemize{
\item Returns a tibble
\item Expects \code{\link[=respiratory_vae_query]{respiratory_vae_query()}} as the data argument
\item Makes the calculations according to the CDC NHSN VAE Calculator
\url{https://nhsn.cdc.gov/VAECalculator/vaecalc_v7.html}
}
}
\examples{
\dontrun{
respiratory_vae_query() \%>\%
  respiratory_vae_tbl()

respiratory_vae_query() \%>\%
  respiratory_vae_tbl() \%>\%
  save_to_excel(.file_name = "respiratory_vae")
}

}
\seealso{
This one works better, more concise and works in 3.6.x and 4.0.x
\url{https://stackoverflow.com/questions/26553638/calculate-elapsed-time-since-last-event}

VAE Calculator (requires javascript)
\url{https://nhsn.cdc.gov/VAECalculator/vaecalc_v7.html}

Adding data.table to Depends: issue
\url{https://stackoverflow.com/questions/27980835/r-data-table-works-in-direct-call-but-same-function-in-a-package-fails}
}
\author{
Steven P. Sanderson II, MPH
}
