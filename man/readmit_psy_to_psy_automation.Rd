% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/automations.R
\name{readmit_psy_to_psy_automation}
\alias{readmit_psy_to_psy_automation}
\title{Readmit Psyh To Psyc Automation}
\usage{
readmit_psy_to_psy_automation(.data, .delete_file = FALSE, .email)
}
\arguments{
\item{.data}{The output from the tbl function \code{\link[=readmit_psy_to_psy_tbl]{readmit_psy_to_psy_tbl()}}}

\item{.delete_file}{Default is FALSE, TRUE will delete file}

\item{.email}{Provide the email address for the recipient. The email must be
in double quotes like so: \\email{c("person@licommunityhospital.org;person2@licommunityhospital.org")}
using a semi-colon if there is more than one address.}
}
\description{
This takes in the data from \code{\link[=readmit_psy_to_psy_query]{readmit_psy_to_psy_query()}} and \code{\link[=readmit_psy_to_psy_tbl]{readmit_psy_to_psy_tbl()}}
puts it into an excel file using save_to_excel.

The RDCOMClient Library must be called into the \code{namespace} first with any of the following
\itemize{
\item library(RDCOMClient)
\item require(RDCOMClient)
\item if(!require(pacman)) {install.packages("pacman")}
\item pacman::p_load("RDCOMClient")
}
}
\details{
Takes the output from \code{\link[=readmit_psy_to_psy_tbl]{readmit_psy_to_psy_tbl()}} and saves it to
an excel workbook using the \link[writexl:write_xlsx]{writexl::write_xlsx} function. The file is saved
to a location specified by the user and upon successful function completion the
file is deleted.
}
\examples{
\dontrun{
library(RDCOMClient)
library(magritter)
readmit_psy_to_psy_query() \%>\%
  readmit_psy_to_psy_tbl() \%>\%
  readmit_psy_to_psy_automation(.email = "someone@email.com")
}

}
\author{
Steven P. Sanderson II, MPH
}
