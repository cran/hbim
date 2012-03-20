\name{hbrr}
\alias{hbrr}
%\alias{hbrr.integrate1}
%\alias{hbrr.integrate2}
%\alias{hbrr.integrate2.rhoeq1}
%\alias{hbrr.integrate3}
%\alias{hbrr.integrate3.rhoeq1}
%\alias{hbrr.simulate}
\alias{hbpp}
%\alias{hbpp.integrate1}
%\alias{hbpp.integrate2}
%\alias{hbpp.integrate3}
%\alias{hbpp.simulate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculate expected relative risk or percent protected from Hill model with Bliss Independence}
\description{
Assuming that the log10 transformed doses are normally distributed, we calculate the 
expected relative risk (using \code{hbrr}) or percent protected (using \code{hbpp}) 
from the Hill model using Bliss Independence. Numeric integration 
is the default for up to three components for \code{hbrr}, while simulation is the default for 
two or three components for \code{hbpp}. }
\usage{
hbrr(mu, v, a = rep(1, length(mu)), simulate = FALSE, nsim = 10^4, ...)
hbpp(mu, v, a = rep(1, length(mu)), rp = 0.1, simulate = FALSE, nsim = 10^5, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mu}{mean vector of the log10 dose}
  \item{v}{variance matrix of the log10 dose}
  \item{a}{vector of slope parameters in the Hill model, one for each component}
  \item{simulate}{estimation by simulation (TRUE) or numeric integration (FALSE)}
  \item{nsim}{number of simulations, ignored if simulate=FALSE}
  \item{rp}{protection bound, an individual is protected if relative risk is greater than rp}
  \item{\dots}{additional parameters to pass to the \code{\link{integrate}} function}
}
\details{
Although the package \code{adapt} can do multidimensional integration, we have written 
specific functions to do this for up to 3 dimensions. This allows faster and more accurate integration.
The integration is done by repeated calls to the \code{integrate} function. The functions which do the 
actual integration or simulation are internal functions which are not intended to be called by the user. 
These internal functions are: for \code{hbrr}, when 
 simulate=FALSE, the function
calls one of either \code{\link{hbrr.integrate1}}, \code{\link{hbrr.integrate2}}, \code{\link{hbrr.integrate2.rhoeq1}}, \code{\link{hbrr.integrate3}},
or \code{\link{hbrr.integrate3.rhoeq1}}
(for 1,2, or 3 component, with or without rho=1, taken from the size of the mu vector and dimension of the v matrix) 
and when simulation=TRUE it calls \code{\link{hbrr.simulate}}. Similar functions exist for \code{hbpp}; however, 
the \code{\link{hbpp.integrate2}} and  \code{\link{hbpp.integrate3}} may have problems because of the discontinuity 
in the integration function. That is why for two or three component models \code{\link{hbpp.simulate}} is used by default. 
}
\value{
a numeric value of the expected relative risk or percent protected.
}
\references{ Saul A, Fay MP (2007).  Human Immunity and the Design of Multi-Component, Single Target Vaccines. PLoS ONE 2(9): e850. doi:10.1371/jounal.pone.0000850
 }
\author{M.P. Fay}
%\note{ ~~further notes~~  ~Make other sections like Warning with \section{Warning }{....} ~}
%\seealso{ \code{\link{hbpp}} }
\examples{ 
## example of two dimensional integral
hbrr(c(.123,.432),matrix(c(1,.5,.5,1),2,2))
## faster but less accurate estimation by simulatin
hbrr(c(.123,.432),matrix(c(1,.5,.5,1),2,2),simulate=TRUE,nsim=10^4)

}
\keyword{models}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
