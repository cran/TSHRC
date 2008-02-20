
\name{rats}
\docType{data}
\alias{rats}
\title{Litter-matched Time-to-response Data}
\description{
Rats were taken from 50 distinct litters and one rat from the litter
was randomly selected and given the drug.  For each litter two rats were
selected as controls and were given a placebo.  In the treatment group,
there are 29 censored observations of the times to tumor.
}
\usage{data(rats)}
\format{
  A data frame with records for 150 rats.
   \describe{
    \item{time}{Time to tumor or censoring.}
    \item{delta}{Zero or one, zero indicates censoring.}
    \item{group}{Zero or one, one indicates treatment group.}
  }
}
\references{
Qiu, P. and Sheng, J. (2008).
A two-stage procedure for comparing hazard rate functions.
\emph{Journal of the Royal Statistical Society: Series B}, 70:191-208.

Mantel, N., Bohidar, N. R. and Ciminera, J. L. (1977).
Mantel-Haenszel analysis of litter-matched time-to-response data,
with modifications for recovery of interlitter information.
\emph{Cancer Research}, 37:3863-3868.
}
\examples{
library(TSHRC)
data(rats)
}
\keyword{datasets}

