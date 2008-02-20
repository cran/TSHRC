\name{twostage}
\alias{twostage}
\title{Two-stage procedure for comparing hazard rate functions}
\description{
Two-stage procedure for comparing hazard rate functions, especially
suited for situation where hazard rate functions cross.
}
\usage{
twostage(time, delta, group, nboot, alpha = 0.05, eps = 0.1)
}
\arguments{
  \item{time}{a vector of type \code{"numeric"}.  Must be nonnegative.
      Failure time or censoring time.}
  \item{delta}{a vector of type \code{"numeric"} of the same length
      as \code{time}.  Must be zero or one.  One indicates failure,
      zero indicates censored.}
  \item{group}{a vector of type \code{"numeric"} of the same length
      as \code{time}.  Must be zero or one.  One indicates treatment group,
      zero indicates control group.}
  \item{nboot}{number of bootstrap samples.  Must be positive integer.}
  \item{alpha}{significance level, must be between zero and one.}
  \item{eps}{small number used in defining the test statistic.
      Must be between zero and one.  See cited paper for discussion.}
}
\value{
  vector of P-values.  \code{"LRPV"}: p-value of the log-rank test,
      \code{"MTPV"}: p-value of the suggested stage-II test,
      \code{"TSPV"}: p-value of the two-stage test.
}
\details{
This procedure compares two hazard rate functions in two stages. In the
first stage, the conventional log-rank test is performed, which is powerful
only when the two hazard rate functions do not cross each other. When the
two hazard rate functions cross each other, positive differences and negative
differences between the two functions would be canceled out in the log-rank 
test statistic, resulting in ineffective comparison. If the log-rank test
gives a significant result, then the entire two-stage procedure stops and
we conclude that the two hazard rate functions are significantly different.
Otherwise, the stage-II test is performed, which is designed specifically 
for detecting crossing difference between the two hazard rate functions
and has the property that its test statistic is independent of the log-rank 
test statistic. The independence property is used in properly defining the 
p-value of the two-stage procedure, based on the p-values of the two 
individual tests.}
\references{
Qiu, P. and Sheng, J. (2008).
A two-stage procedure for comparing hazard rate functions.
\emph{Journal of the Royal Statistical Society: Series B}, 70:191-208.
}
\examples{
library(TSHRC)
data(rats)
attach(rats)
twostage(time, delta, group, nboot = 100)
}
\keyword{misc}
