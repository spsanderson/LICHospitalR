% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/automations.R
\name{geocode_discharges_automation}
\alias{geocode_discharges_automation}
\title{Automatically Geocode Addresses}
\usage{
geocode_discharges_automation()
}
\value{
A tibble
}
\description{
Get discharged accounts from DSS and geocode them with Nominatim OpenStreet Maps
}
\details{
\itemize{
\item Requires a connection to DSS, uses both \code{\link[=db_connect]{db_connect()}} and \code{\link[=db_disconnect]{db_disconnect()}}
\item Uses the \code{\link[=geocode_discharges_query]{geocode_discharges_query()}} internally.
\item Saves a file to where you specify for accounts that could not be automatically geocoded
\item This can be run numerous times a day since the records are inserted into a table after
geocoding and lookedup to make sure they do not already exist there.
\item This will look back at discharges starting with a discharge date of six months prior
to the SQL GETEDATE() function
}
}
\author{
Steven P. Sanderson II, MPH
}
