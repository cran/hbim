\name{calc.foldrange}
\alias{calc.foldrange}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculate stadard error and fold-range from confidence interval}
\description{
Given a confidence interval and sample size, we find the standard error assuming confidence limits 
are calculated on the log10 responses by either normal confidence limits or t-distribution confidence limits. 
The fold-range is also output by either methods.
}
\usage{
calc.foldrange(n, lower, upper, conf.level = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{vector of sample size(s) used to create confidence intervals}
  \item{lower}{vector of lower confidence limits}
  \item{upper}{vector of upper confidence limits}
  \item{conf.level}{confidence level, default=.95}
}
\details{See \code{vignette("hbimdetails")}}
\value{
A vector (or matrix) with elements (or columns)
  \item{n}{sample size}
  \item{lower}{lower confidence limit}
  \item{upper}{upper confidence limit}
  \item{s.byt}{standard deviation assuming confidence intervals calculated by t-distribution}
  \item{s.byz}{standard deviation assuming confidence intervals calculated by normal distribution}
  \item{foldrange.byt}{fold-range assuming confidence intervals calculated by t-distribution}
  \item{foldrange.byz}{fold-range assuming confidence intervals calculated by normal distribution}
}
%\references{ ~put references to the literature/web site here ~ }
%\author{ ~~who you are~~ }
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
## sample size=43, lower cl=65, upper cl=85
calc.foldrange(43,65,85) }
\keyword{univar}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
