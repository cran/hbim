\name{hbim-internal}
\alias{hbrr.integrate1}
\alias{hbrr.integrate2}
\alias{hbrr.integrate2.rhoeq1}
\alias{hbrr.integrate3}
\alias{hbrr.integrate3.rhoeq1}
\alias{hbrr.simulate}
\alias{hbpp.integrate1}
\alias{hbpp.integrate2}
\alias{hbpp.integrate3}
\alias{hbpp.simulate}
\title{Internal functions not be to called directly}
\description{ These are functions that are called by the \code{\link{hbrr}} and \code{\link{hbpp}} 
functions. They integrate 1, 2 or 3 component models or integrate by simulation. Special functions 
ending in .rhoeq1 are for when rho equals 1.}
\usage{
hbpp.integrate1(MU, V, A = 1, RP = 0.1, ...)
hbpp.integrate2(MU, V, A = c(1, 1), RP = 0.1, ...)
hbpp.integrate3(MU, V, A = c(1, 1, 1),RP=0.1, ...)
hbpp.simulate(MU, V, A, RP = 0.1, NSIM = 10^5)
hbrr.integrate1(MU, V, A = 1, ...)
hbrr.integrate2(MU, V, A = c(1, 1), ...)
hbrr.integrate2.rhoeq1(MU, V, A = c(1, 1), ...)
hbrr.integrate3(MU, V, A = c(1, 1, 1), ...)
hbrr.integrate3.rhoeq1(MU, V, A = c(1, 1, 1), ...)
hbrr.simulate(MU, V, A, NSIM = 10^4)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{MU}{mean vector of the log10 dose}
  \item{V}{variance matrix of the log10 dose}
  \item{A}{vector of slope parameters in the Hill model, one for each component}
  \item{NSIM}{number of simulations}
  \item{RP}{protection bound, an individual is protected if relative risk is greater than RP}
  \item{\dots}{additional parameters to pass to the \code{\link{integrate}} function}
}
%\details{}
\value{a numeric value of the expected relative risk or percent protected.}
\references{ Saul A, Fay MP (2007).  Human Immunity and the Design of Multi-Component, Single Target Vaccines. PLoS ONE 2(9): e850. doi:10.1371/jounal.pone.0000850
 }
\author{M.P. Fay}
%\note{ ~~further notes~~  ~Make other sections like Warning with \section{Warning }{....} ~}
%\seealso{ \code{\link{hbpp}} }
%\examples{}
\keyword{internal}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
