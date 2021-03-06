% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oppe_report_plt_funtions.R
\name{kmeans_scree_plt}
\alias{kmeans_scree_plt}
\title{OPPE CPOE K-Means Scree Plot}
\usage{
kmeans_scree_plt(.data)
}
\arguments{
\item{.data}{The data from the \code{\link[=kmeans_mapped_tbl]{kmeans_mapped_tbl()}} function}
}
\value{
A ggplot2 plot
}
\description{
Create a scree-plot from the \code{\link[=kmeans_mapped_tbl]{kmeans_mapped_tbl()}} function.
}
\details{
Outputs a scree-plot
}
\examples{
df <- oppe_cpoe_query() \%>\%
        oppe_cpoe_tbl() \%>\%
        oppe_cpoe_user_item_tbl()

kmeans_nested_tbl <- kmeans_mapped_tbl(.data = df)

kmeans_scree_plt(.data = kmeans_nested_tbl)

}
\seealso{
\url{https://en.wikipedia.org/wiki/Scree_plot}
}
\author{
Steven P. Sanderson II, MPH
}
